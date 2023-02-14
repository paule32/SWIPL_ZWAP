// -----------------------------------------------------------------------
// File:   SWIPL-ZWAPL prolog.hpp
//
// Author: Jens Kallup - paule32 <paule32.jk@gmail.com>
// Rights: (c) 2023 kallup non-profit.
// -----------------------------------------------------------------------
#ifdef __GNUC__
#define prama once
#endif

#if !defined(_PROLOG_H_)
#define _PROLOG_H_

#ifdef __GNUC__
# include <iostream>
# include <ostream>
#else
# include <iostream.h>
# include <ostream.h>
#endif

#include <string>
#include <list>
#include <iterator>

namespace Prolog_impl {

#include <SWI-Prolog.h>

class Atom;
class Engine;
class ForeignPredicate;
class Frame;
class Functor;
class Module;
class Predicate;
class Query;
class RecordedTerm;
class StaticAtom;
class StaticFunctor;
class StaticPredicate;
class StaticQuery;
class StaticTerm;
class Term;
class PrologException;
class SafePrologException;
class UnsafePrologException;

extern string itoa(int, int=10);
extern void itoa(int, char*, int);
extern Term copy_term(Term);

// start or restart the prolog engine
void prolog_init(int argc, char const * const * argv);

// halt the engine, clean up
void prolog_halt();

// note: the _Term objects_ are constant, not the terms they point to
bool unify(const Term& t1, const Term& t2);

ostream& operator << (ostream&, const Term&);
ostream& operator << (ostream&, const Atom&);
ostream& operator << (ostream&, const Functor&);
ostream& operator << (ostream&, const Predicate&);
ostream& operator << (ostream&, const Module&);

template <typename T> bool operator == (const Term&, const T&);
template <typename T> bool operator == (const T&,    const Term&);
template <typename T> bool operator != (const Term&, const T&);
template <typename T> bool operator != (const T&,    const Term&);
template <typename T> bool operator >  (const Term&, const T&);
template <typename T> bool operator >  (const T&,    const Term&);
template <typename T> bool operator <  (const Term&, const T&);
template <typename T> bool operator <  (const T&,    const Term&);
template <typename T> bool operator >= (const Term&, const T&);
template <typename T> bool operator >= (const T&,    const Term&);
template <typename T> bool operator <= (const Term&, const T&);
template <typename T> bool operator <= (const T&,    const Term&);

inline Term make_term(const char*);
inline Term make_term(const char*, Term);
inline Term make_term(const char*, Term, Term);
inline Term make_term(const char*, Term, Term, Term);
inline Term make_term(const char*, Term, Term, Term, Term);
inline Term make_term(const char*, Term, Term, Term, Term, Term);
inline Term make_term(const char*, Term, Term, Term, Term, Term, Term);
inline Term make_term(const char*, Term, Term, Term, Term, Term, Term, Term);
inline Term make_term(const char*, Term, Term, Term, Term, Term, Term, Term, Term);
inline Term make_term(const char*, Term, Term, Term, Term, Term, Term, Term, Term, Term);

inline Term make_term(Functor);
inline Term make_term(Functor, Term);
inline Term make_term(Functor, Term, Term);
inline Term make_term(Functor, Term, Term, Term);
inline Term make_term(Functor, Term, Term, Term, Term);
inline Term make_term(Functor, Term, Term, Term, Term, Term);
inline Term make_term(Functor, Term, Term, Term, Term, Term, Term);
inline Term make_term(Functor, Term, Term, Term, Term, Term, Term, Term);
inline Term make_term(Functor, Term, Term, Term, Term, Term, Term, Term, Term);
inline Term make_term(Functor, Term, Term, Term, Term, Term, Term, Term, Term, Term);

enum TermType {
  tt_variable = PL_VARIABLE,
  tt_atom = PL_ATOM,
  tt_string = PL_STRING,
  tt_integer = PL_INTEGER,
  tt_float = PL_FLOAT,
  tt_compound = PL_TERM
};

// private
struct Defer {};
const Defer defer = Defer();

// types of pointers to foreign predicate implementations
typedef bool (*Fopre0)();
typedef bool (*Fopre1)(Term);
typedef bool (*Fopre2)(Term,Term);
typedef bool (*Fopre3)(Term,Term,Term);
typedef bool (*Fopre4)(Term,Term,Term,Term);
typedef bool (*Fopre5)(Term,Term,Term,Term,Term);
typedef bool (*Fopre6)(Term,Term,Term,Term,Term,Term);
typedef bool (*Fopre7)(Term,Term,Term,Term,Term,Term,Term);
typedef bool (*Fopre8)(Term,Term,Term,Term,Term,Term,Term,Term);
typedef bool (*Fopre9)(Term,Term,Term,Term,Term,Term,Term,Term,Term);


// singleton class; private
struct Engine
{
  enum { running, halted } status;
  void init(int argc, char const * const * argv, const char*);
  void halt();
  Engine();
  ~Engine();
  static Query* active_query;
};

extern Engine the_engine; // private


struct Init
{
  Init*  next;
  Init** prev;

  Init() {
    next = 0;
    prev = 0;
  }

  ~Init() {
    *prev = next;
    if (next) next->prev = prev;
  }

  void enqueue(Init** p) {
    prev = p;
    next = *p;
    *p = this;
    if (the_engine.status == Engine::running)
      thaw();
  }

  virtual void thaw() = 0;
  virtual void freeze() = 0;

  void freeze_all();
  void thaw_all();
};

extern Init* engine_queue;
extern Init* frame_queue;


class Module
{
  module_t handle;
  static Module user_module;

  Module(module_t m)          { handle = m; }
  operator module_t () const  { return handle; }

public:
  Module() {
    handle = (module_t) 0;
  }

  Module(const char* name);

  Module(string);

  const char* name() const;

  static Module context() {
    return Module(PL_context());
  }

  static Module user() {
    return user_module;
  }

  // note: the handle _uniquely_ identifies a module, so the following is correct

  // [Equality Comparable]
  bool operator == (const Module& m) const { return handle == m.handle; }
  bool operator != (const Module& m) const { return handle != m.handle; }

  // [Less Than Comparable]
  bool operator >  (const Module& m) const { return handle > m.handle; }
  bool operator <  (const Module& m) const { return handle < m.handle; }
  bool operator >= (const Module& m) const { return handle >= m.handle; }
  bool operator <= (const Module& m) const { return handle <= m.handle; }

  // [Assignable]
  // copy constructor: default
  // assignment operator: default
  void swap(Module& m) {
    module_t tmp = handle;
    handle = m.handle;
    m.handle = tmp;
  }

  friend Term;
  friend Predicate;
  friend Query;
  friend Engine;
};


// not default constructable
class Functor
{
protected:
  functor_t handle;

  Functor(functor_t f) { handle = f; }
  Functor(Defer)       { handle = (functor_t) -1; }

public:
  Functor(const Term&);

  Functor(const char * name, int arity) {
    handle = PL_new_functor(PL_new_atom(name), arity);
  }

  Functor(string name, int arity) {
    handle = PL_new_functor(PL_new_atom(name.c_str()), arity);
  }

  const char* name() const {
    atom_t a = PL_functor_name(handle);
    return PL_atom_chars(a);
  }

  int arity() const {
    return PL_functor_arity(handle);
  }

  // note: the handle _uniquely_ identifies a functor, so the following is correct

  // [Equality Comparable]
  bool operator == (const Functor& f) const { return handle == f.handle; }
  bool operator != (const Functor& f) const { return handle != f.handle; }

  // [Less Than Comparable]
  bool operator >  (const Functor& f) const { return handle > f.handle; }
  bool operator <  (const Functor& f) const { return handle < f.handle; }
  bool operator >= (const Functor& f) const { return handle >= f.handle; }
  bool operator <= (const Functor& f) const { return handle <= f.handle; }

  // [Assignable]
  // copy constructor: default
  // assignment operator: default
  void swap(Functor& f) {
    functor_t tmp = handle;
    handle = f.handle;
    f.handle = tmp;
  }

  string info() const {
    return string(name())+"/"+itoa(arity());
  }

  friend Term;
  friend Predicate;
  friend Query;
};


class StaticFunctor : public Functor, protected Init
{
  const char* init_name;
  int         init_arity;

  void thaw();
  void freeze();

public:
  StaticFunctor(const char * name, int arity)
    : init_name(name),
      init_arity(arity),
      Functor(defer)
  { enqueue(&engine_queue);
  }

  ~StaticFunctor();

  friend Term;
};


// not default constructable
class Predicate
{
protected:
  predicate_t handle;

  Predicate(predicate_t p) {
    handle = p;
  }

  Predicate(Defer) {
    handle = (predicate_t) -1;
  }

public:
  Predicate(Functor f, Module module = Module::context());
  Predicate(const char* name, int arity, Module module = Module::context());

  void info(char const ** name, size_t* arity, Module * module) const {
    atom_t at;
    module_t mod;
    PL_predicate_info(handle, &at, arity, &mod);
    *module = Module(mod);
    *name = PL_atom_chars(at);
  }

  const char* name() const {
    const char* n;
    Module m;
    size_t a;
    info(&n, &a, &m);
    return n;
  }

  int arity() const {
    const char* n;
    Module m;
    size_t a;
    info(&n, &a, &m);
    return a;
  }

  Module module() const {
    const char* n;
    Module m;
    size_t a;
    info(&n, &a, &m);
    return m;
  }

  string info() const {
    const char* n;
    Module m;
    size_t a;
    info(&n, &a, &m);
    return string(m.name()) + ":" + n + "/" + itoa(a);
  }

  // note: the handle _uniquely_ identifies a predicate, so the following
  // is correct

  // [Equality Comparable]
  bool operator == (const Predicate& p) const { return handle == p.handle; }
  bool operator != (const Predicate& p) const { return handle != p.handle; }

  // [Less Than Comparable]
  bool operator >  (const Predicate& p) const { return handle > p.handle; }
  bool operator <  (const Predicate& p) const { return handle < p.handle; }
  bool operator >= (const Predicate& p) const { return handle >= p.handle; }
  bool operator <= (const Predicate& p) const { return handle <= p.handle; }

  // [Assignable]
  // copy constructor: default
  // assignment operator: default
  void swap(Predicate& p) {
    predicate_t tmp = handle;
    handle = p.handle;
    p.handle = tmp;
  }

  friend Term;
  friend Query;
};


class StaticPredicate : public Predicate, protected Init
{
  const char*  init_name;
  int          init_arity;
  const char*  init_module;

  void thaw();
  void freeze();

public:
  StaticPredicate(const char* name, int arity, const char* module = "user")
    : init_name(name),
      init_arity(arity),
      init_module(module),
      Predicate(defer)
  { enqueue(&engine_queue);
  }

  ~StaticPredicate();
};


class Atom
{
protected:
  atom_t handle;

  Atom(atom_t a) {
    handle = a;
  }

  Atom() {
    handle = (atom_t) -1;
  }

public:

  Atom(const char * text) {
    handle = PL_new_atom(text);
  }

  Atom(const Term&);

  Atom(string text) {
    handle = PL_new_atom(text.c_str());
  }

  operator const char *() const
  { return PL_atom_chars(handle);
  }

  // note: the handle _uniquely_ identifies an atom, so the following is correct

  // [Equality Comparable]
  bool operator == (const Atom& a) const { return handle == a.handle; }
  bool operator != (const Atom& a) const { return handle != a.handle; }

  // [Less Than Comparable]
  bool operator >  (const Atom& a) const { return handle > a.handle; }
  bool operator <  (const Atom& a) const { return handle < a.handle; }
  bool operator >= (const Atom& a) const { return handle >= a.handle; }
  bool operator <= (const Atom& a) const { return handle <= a.handle; }

  // [Assignable]
  // copy constructor: default
  // assignment operator: default
  void swap(Atom& a) {
    atom_t tmp = handle;
    handle = a.handle;
    a.handle = tmp;
  }

  friend Term;
  friend RecordedTerm;
  friend Query;
  friend Module;
  friend StaticFunctor;
};


class StaticAtom : public Atom, protected Init
{
  const char* init_text;

  void thaw();
  void freeze();

public:
  StaticAtom(const char* text)
    : init_text(text)
  { enqueue(&engine_queue);
  }

  ~StaticAtom();
};


class Term
{
protected:
  term_t lsi; // local stack index

  Term(term_t t) {
    lsi = t;
  }

  template <typename ForwardIterator>
  void init_from_seq(Functor f, ForwardIterator begin, ForwardIterator end);

protected:

  Term(Defer) {
    lsi = (term_t) -1;
  }

public:
  struct Binding;

  // creation of terms
  Term() {
    lsi = PL_new_term_ref();
  }

  template <typename ForwardIterator>
  Term(const char*, ForwardIterator, ForwardIterator);

  template <typename ForwardIterator>
  Term(string, ForwardIterator, ForwardIterator);

  template <typename ForwardIterator>
  Term(Functor, ForwardIterator, ForwardIterator);

  Term(const long &);
  Term(const int &);
  Term(const double &);
  Term(void * const  &);
  Term(const Atom &);
  Term(const Functor &);
  Term(char const *);
  Term(string const &);

  template <typename InputIterator>
  Term(InputIterator begin, InputIterator end);

  // conversion to other types
  operator long () const;
  operator int () const;
  operator double () const;
  operator Atom () const;
  operator void* () const;
  operator const char* () const;
  operator Binding () const;
  template <typename T> operator list<T> () const;

  // methods
  template <typename TargetType, class OutputIterator>
  OutputIterator copy_list(OutputIterator);

  static const unsigned default_cvt_flags = CVT_WRITE|CVT_VARIABLE;
  char* to_str(unsigned flags = default_cvt_flags) const;
  string to_string(unsigned flags = default_cvt_flags) const;


  // [Assignable]
  Term(const Term & t) {
    lsi = t.lsi;
  }

  Term& operator = (const Term& t) {
    lsi = t.lsi;
    return *this;
  }

  void swap(Term& t) {
    term_t tmp = lsi;
    lsi = t.lsi;
    t.lsi = tmp;
  }

  // comparision of the terms pointed to, _not_ of the pointers
  bool operator == (const Term& t) const { return PL_compare(lsi, t.lsi) == 0; }
  bool operator != (const Term& t) const { return PL_compare(lsi, t.lsi) != 0; }
  bool operator >  (const Term& t) const { return PL_compare(lsi, t.lsi) > 0; }
  bool operator <  (const Term& t) const { return PL_compare(lsi, t.lsi) < 0; }
  bool operator >= (const Term& t) const { return PL_compare(lsi, t.lsi) >= 0; }
  bool operator <= (const Term& t) const { return PL_compare(lsi, t.lsi) <= 0; }


  // general methods

  // unification
  template <typename T>
  bool unify(const T&) const;

  // decomposition
  Term operator [] (int index) const;

  // get term's functor
  Functor functor() const;

  // get term's type
  TermType type() const {
    return TermType(PL_term_type(lsi));
  }

  // copy the actual term
  void copy() {
    *this = copy_term(*this);
  }

  // dangerous! The user must guarantee that there are no copies of the
  // Term object
  void assign(Term t1) {
    PL_put_term(lsi, t1.lsi);
  }


  inline string to_external(void);
  inline static Term from_external(string ext);

  // friends
  friend Query;
  friend Atom;
  friend Functor;
  friend StaticFunctor;
  friend StaticQuery;
  friend Predicate;
  friend RecordedTerm;
  template <Fopre0 fp> friend foreign_t fp_wrapper(term_t);
  template <Fopre1 fp> friend foreign_t fp_wrapper(term_t);
  template <Fopre2 fp> friend foreign_t fp_wrapper(term_t);
  template <Fopre3 fp> friend foreign_t fp_wrapper(term_t);
  template <Fopre4 fp> friend foreign_t fp_wrapper(term_t);
  template <Fopre5 fp> friend foreign_t fp_wrapper(term_t);
  template <Fopre6 fp> friend foreign_t fp_wrapper(term_t);
  template <Fopre7 fp> friend foreign_t fp_wrapper(term_t);
  template <Fopre8 fp> friend foreign_t fp_wrapper(term_t);
  template <Fopre9 fp> friend foreign_t fp_wrapper(term_t);
  friend bool atom_to_term(const char*, Term*, list<Term::Binding>*);
  friend Term copy_term(Term);
  friend UnsafePrologException;
};

struct Term::Binding
{
  string name;
  Term   var;
  Binding(string n, Term v) : name(n), var(v) {}
};

bool atom_to_term(const char* text, Term* term, list<Term::Binding>* bindings);


class RecordedTerm : protected Init
{
private:
  // prevent unintended expensive copying
  RecordedTerm(const RecordedTerm&);
  void operator=(const RecordedTerm&);

protected:
  record_t rec;

  void thaw();
  void freeze();

  RecordedTerm(Defer) { }

public:

  RecordedTerm() {
    rec = (record_t) -1;
    enqueue(&engine_queue);
  }

  RecordedTerm(Term t) {
    rec = (record_t) -1;
    *this = t;
    enqueue(&engine_queue);
  }

  virtual ~RecordedTerm();

  Term term() {
    if (rec == (record_t) -1)
      return Term();
    else {
      term_t t = PL_new_term_ref();
      PL_recorded(rec, t);
      return Term(t);
    }
  }

  operator Term () {
    return term();
  }

  void operator = (Term t) {
    if (rec != (record_t) -1)
      PL_erase(rec);
    rec = PL_record(t.lsi);
  }

  void clear () {
    if (rec != (record_t) -1)
      PL_erase(rec);
    rec = (record_t) -1;
  }

  // [Equality Comparable]
  bool operator == (const RecordedTerm& rt) const { return rec == rt.rec; }
  bool operator != (const RecordedTerm& rt) const { return rec != rt.rec; }

  // [Less Than Comparable]
  bool operator >  (const RecordedTerm& rt) const { return rec >  rt.rec; }
  bool operator <  (const RecordedTerm& rt) const { return rec <  rt.rec; }
  bool operator >= (const RecordedTerm& rt) const { return rec >= rt.rec; }
  bool operator <= (const RecordedTerm& rt) const { return rec <= rt.rec; }

  void swap(RecordedTerm&);
  void duplicate(const RecordedTerm&);
};


class StaticTerm : public RecordedTerm
{
  const char* init_text;

  void thaw();
  void freeze();

  // prevent unintended expensive copying
  StaticTerm(const StaticTerm&);
  void operator=(const StaticTerm&);

public:
  StaticTerm() : RecordedTerm(defer)
  {
    rec = (record_t) -1;
    init_text = 0;
    enqueue(&engine_queue);
  }

  StaticTerm(const char* txt) : RecordedTerm(defer)
  {
    rec = (record_t) -1;
    init_text = txt;
    enqueue(&engine_queue);
  }

  void operator = (const char* txt) {
    init_text = txt;
  }

  void operator = (Term t) {
    RecordedTerm::operator = (t);
  }

  void swap(StaticTerm&);
  void duplicate(const StaticTerm&);
};


class Query : protected Init
{
protected:
  qid_t         qid;            // query id
  Module        ctx;            // context module
  Predicate     pred;           // id of predicate being called
  int           arity;          // number of arguments
  term_t        predargs;       // begin of array of arguments for pred
  bool          open;           // if the query is running

  void thaw();
  void freeze();

  Query(Defer) : pred(defer) { }

  void start_call(int);
  void finish_call();

public:
  bool unsafe_exceptions;

  Query(const char *, int, Module = Module());
  Query(Predicate, Module = Module());
  ~Query();

  template <typename ForwardIterator>
  Query& operator () (ForwardIterator begin, ForwardIterator end);

  Query& operator () (Term, Term, Term, Term, Term, Term, Term, Term, Term);
  Query& operator () (Term, Term, Term, Term, Term, Term, Term, Term);
  Query& operator () (Term, Term, Term, Term, Term, Term, Term);
  Query& operator () (Term, Term, Term, Term, Term, Term);
  Query& operator () (Term, Term, Term, Term, Term);
  Query& operator () (Term, Term, Term, Term);
  Query& operator () (Term, Term, Term);
  Query& operator () (Term, Term);
  Query& operator () (Term);
  Query& operator () ();

  bool next();
  void cut();
  void close();
};


class StaticQuery : public Query
{
  RecordedTerm callterm;
  enum { from_pred, from_callterm } calltype;
  int nargs;

  void engine_thaw();
  void engine_freeze();

  struct Init_Engine : public Init {
    StaticQuery* sq;
    void thaw();
    void freeze();
  };
  Init_Engine ie;
  friend Init_Engine;

  const char* init_pred;
  const char* init_text;
  const char* init_module;

  void init(const char* m) {
    init_module = m;
    qid = (qid_t) -1;
    predargs = (term_t) -1;
    open = false;
    enqueue(&engine_queue);
    ie.sq = this;
    ie.enqueue(&engine_queue);
  }

public:

  StaticQuery(const char * name, int ar, const char* mod = 0)
    : Query(defer)
  {
    init_pred = name;
    arity = ar;
    init_text = 0;
    calltype = from_pred;
    init(mod);
  }

  StaticQuery(const char* text, const char* mod = 0)
    : Query(defer)
  {
    init_pred = 0;
    init_text = text;
    calltype = from_callterm;
    init(mod);
    // nargs initialised in StaticQuery::engine_thaw()
  }

  template <typename ForwardIterator>
  StaticQuery& operator () (ForwardIterator begin, ForwardIterator end);

  StaticQuery& operator () (Term, Term, Term, Term, Term, Term, Term, Term, Term);
  StaticQuery& operator () (Term, Term, Term, Term, Term, Term, Term, Term);
  StaticQuery& operator () (Term, Term, Term, Term, Term, Term, Term);
  StaticQuery& operator () (Term, Term, Term, Term, Term, Term);
  StaticQuery& operator () (Term, Term, Term, Term, Term);
  StaticQuery& operator () (Term, Term, Term, Term);
  StaticQuery& operator () (Term, Term, Term);
  StaticQuery& operator () (Term, Term);
  StaticQuery& operator () (Term);
  StaticQuery& operator () ();
};


class Frame
{
  fid_t         fid;
  static Frame* last_frame;
  Frame*        previous_frame;
  Init*         previous_frame_queue;

  Frame(const Frame&);
  void operator =(const Frame&);

public:

  Frame();
  ~Frame();

  void rewind();
};


struct PlError
{
  virtual Term   as_term() const = 0;
  virtual string message() const = 0;
};

struct PrologException : public PlError
{
  virtual Term   as_term() const = 0;
  virtual string message() const = 0;
};

struct SafePrologException : public PrologException
{
protected:
  string external;
public:
  SafePrologException(Term e) { external = e.to_external(); }
  Term   as_term() const;
  string message() const;
};

class UnsafePrologException : public PrologException
{
  Term ex;

public:
  UnsafePrologException(Term e) : ex(e) {}

  Term   as_term() const;
  string message() const;

  void PL_raise_exception() {
    Prolog_impl::PL_raise_exception(ex.lsi);
  }
};

struct LogicError : public PlError
{
  const char* place;
  const char* msg;
  LogicError(const char* p, const char* m) : place(p), msg(m) {}
  Term   as_term() const;
  string message() const;
};

struct FormatError : public PlError
{
  const char* place;
  const char* msg;
  FormatError(const char* p, const char* m) : place(p), msg(m) {}
  Term   as_term() const;
  string message() const;
};

struct ParseError : public PlError
{
  const char* place;
  const char* text;
  ParseError(const char* p, const char* t) : place(p), text(t) {}
  Term   as_term() const;
  string message() const;
};

struct ConversionError : public PlError
{
  const char* place;
  const char* msg;
  ConversionError(const char* p, const char* m) : place(p), msg(m) {}
  Term   as_term() const;
  string message() const;
};

struct CvtError : public ConversionError
{
  CvtError(const char* p)
    : ConversionError(p, "not to be converted") {}
  Term   as_term() const;
};

struct GeneralError : public PlError
{
  const char* place;
  const char* msg;
  GeneralError(const char* p, const char* m) : place(p), msg(m) {}
  Term   as_term() const;
  string message() const;
};


class ForeignPredicate : protected Init
{
  void thaw();
  void freeze();

  pl_function_t          wrapper;
  const char*            name;
  int                    arity;

public:

  ForeignPredicate(Fopre0, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(0)
  { enqueue(&engine_queue); }

  ForeignPredicate(Fopre1, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(1)
  { enqueue(&engine_queue); }

  ForeignPredicate(Fopre2, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(2)
  { enqueue(&engine_queue); }

  ForeignPredicate(Fopre3, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(3)
  { enqueue(&engine_queue); }

  ForeignPredicate(Fopre4, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(4)
  { enqueue(&engine_queue); }

  ForeignPredicate(Fopre5, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(5)
  { enqueue(&engine_queue); }

  ForeignPredicate(Fopre6, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(6)
  { enqueue(&engine_queue); }

  ForeignPredicate(Fopre7, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(7)
  { enqueue(&engine_queue); }

  ForeignPredicate(Fopre8, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(8)
  { enqueue(&engine_queue); }

  ForeignPredicate(Fopre9, const char* n, foreign_t (*wrp)(term_t, int, control_t))
    : wrapper((pl_function_t) wrp), name(n), arity(9)
  { enqueue(&engine_queue); }
};


#define SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS \
catch (PlError& err) {                                                        \
  ret = PL_raise_exception(err.as_term().lsi);                                \
} catch (const char* ex) {                                                    \
  ret = PL_raise_exception(Term(Atom(ex)).lsi);                               \
} catch (...) {                                                               \
  ret = PL_raise_exception(                                                   \
          make_term("error", Atom("unknown_exception"),                       \
            make_term("context", Atom("foreign predicate"),                   \
                      Atom("caught an unconvertible C++ exception"))).lsi);   \
}

template <Fopre0 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp() ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}

template <Fopre1 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp(Term(t0)) ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}

template <Fopre2 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp(Term(t0), Term(t0+1)) ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}

template <Fopre3 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp(Term(t0),Term(t0+1),Term(t0+2)) ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}

template <Fopre4 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp(Term(t0),Term(t0+1),Term(t0+2),Term(t0+3)) ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}

template <Fopre5 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp(Term(t0),Term(t0+1),Term(t0+2),Term(t0+3),Term(t0+4)) ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}

template <Fopre6 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp(Term(t0),Term(t0+1),Term(t0+2),Term(t0+3),Term(t0+4),Term(t0+5)) ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}

template <Fopre7 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp(Term(t0),Term(t0+1),Term(t0+2),Term(t0+3),Term(t0+4),Term(t0+5),Term(t0+6)) ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}

template <Fopre8 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp(Term(t0),Term(t0+1),Term(t0+2),Term(t0+3),Term(t0+4),Term(t0+5),Term(t0+6),Term(t0+7)) ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}

template <Fopre9 fp>
inline foreign_t fp_wrapper(term_t t0)
{
  foreign_t ret;
  try {
    ret = (fp(Term(t0),Term(t0+1),Term(t0+2),Term(t0+3),Term(t0+4),Term(t0+5),Term(t0+6),Term(t0+7),Term(t0+8)) ? TRUE : FALSE);
  } SWIPCPP_WRAPPER_HANDLE_EXCEPTIONS
  return ret;
}


#define foreign(cppfunc, plname, arity)                                       \
                                                                              \
Prolog_impl::foreign_t fp_wrapper__ ## cppfunc ## __ ## arity (               \
  Prolog_impl::term_t t0, int, Prolog_impl::control_t)                        \
{                                                                             \
  return Prolog_impl::fp_wrapper<cppfunc>(t0);                                \
}                                                                             \
                                                                              \
ForeignPredicate fp_init__ ## cppfunc ## __ ## arity (                        \
  cppfunc, plname, fp_wrapper__ ## cppfunc ## __ ## arity);


// Implementations --------------------------------------------------------

// class Init

inline void Init::freeze_all()
{
  for (Init* fq = this; fq; fq = fq->next)
    fq->freeze();
}

inline void Init::thaw_all()
{
  for (Init* fq = this; fq; fq = fq->next)
    fq->thaw();
}


// class Module

inline Module::Module(const char* name) {
  if (name) {
    Atom at(name);
    handle = PL_new_module(at.handle);
  } else
    handle = (module_t) 0;
}

inline Module::Module(string name) {
  Atom at(name.c_str());
  handle = PL_new_module(at.handle);
}

inline const char* Module::name() const {
  if (handle == (module_t) 0) return 0;
  return Atom(PL_module_name(handle));
}


// class Atom

inline Atom::Atom(const Term& t)
{
  if ( !PL_get_atom(t.lsi, &handle) )
    throw ConversionError("Atom::Atom(const Term&)","not an atom");
}

// class Functor

inline Functor::Functor(const Term& t)
{
  if ( !PL_get_functor(t.lsi, &handle) )
    throw ConversionError("Functor::Functor(const Term&)", "not a compound term or atom");
}

// class Predicate

inline Predicate::Predicate(Functor f, Module module) {
  handle = PL_pred(f.handle, module.handle);
}

inline Predicate::Predicate(const char* name, int arity, Module module) {
  handle = PL_predicate(name, arity, module.name());
}


// class Term

inline string Term::to_external(void)
{
  size_t size;
  char *str = PL_record_external(lsi, &size);
  string ext(str, size);
  PL_erase_external(str);
  return ext;
}

inline Term Term::from_external(string ext)
{
  Term t; // free Variable
  if (!PL_recorded_external(ext.c_str(), t.lsi))
    throw FormatError("Term::from_external()", "format error in external representation");
  return t;
}


template <typename ForwardIterator>
inline Term::Term(const char* functor, ForwardIterator begin, ForwardIterator end) {
  init_from_seq(Functor(functor, distance(begin,end)), begin, end);
}

template <typename ForwardIterator>
inline Term::Term(string functor, ForwardIterator begin, ForwardIterator end) {
  init_from_seq(Functor(functor.c_str(), distance(begin,end)), begin, end);
}

template <typename ForwardIterator>
inline Term::Term(Functor f, ForwardIterator begin, ForwardIterator end) {
  if (distance(begin,end) != f.arity())
    throw LogicError("Term::Term<>(Functor, ForwardIterator, ForwardIterator)",
                     "wrong number of subterms for supplied functor");
  init_from_seq(f, begin, end);
}

template <typename T>
inline bool Term::unify(const T& v) const
{
  Term tmp(v);
  return unify(tmp);
}

template <>
inline bool Term::unify(const Term& t) const
{
  return PL_unify(lsi, t.lsi);
}

template <>
inline bool Term::unify(const Atom& v) const
{
  return PL_unify_atom(lsi, v.handle);
}

template <>
inline bool Term::unify(const int& v) const
{
  return PL_unify_integer(lsi, v);
}

template <>
inline bool Term::unify(const long& v) const
{
  return PL_unify_integer(lsi, v);
}

template <>
inline bool Term::unify(const double& v) const
{
  return PL_unify_float(lsi, v);
}

template <>
inline bool Term::unify(void* const & v) const
{
  return PL_unify_pointer(lsi, v);
}

template <>
inline bool Term::unify(const Functor& v) const
{
  return PL_unify_functor(lsi, v.handle);
}

inline Term::operator long() const
{
  long v;
  if ( PL_get_long(lsi, &v) )
    return v;
  throw ConversionError("Term::operator long ()",
                        "term does not contain an integer or a representable floating point number");
}

inline Term::operator int() const
{
  int v;
  if ( PL_get_integer(lsi, &v) )
    return v;
  throw ConversionError("Term::operator int ()",
                        "term does not contain an integer or a representable floating point number");
}

inline Term::operator double() const
{
  double v;
  if ( PL_get_float(lsi, &v) )
    return v;
  throw ConversionError("Term::operator double ()",
                        "term does not contain a floating point number or an integer");
}

inline Term::operator Atom() const
{
  return Atom(*this);
}

inline Term::operator void*() const
{
  void *ptr;
  if ( PL_get_pointer(lsi, &ptr) )
    return ptr;
  throw ConversionError("Term::operator void* ()",
                        "term does not contain a the representation of a pointer");
}

inline Term::operator const char*() const
{
  return to_str();
}

template <typename T>
Term::operator list<T>() const
{
  list<T> l;
  term_t head = PL_new_term_ref();
  term_t tail = PL_copy_term_ref(lsi);
  while (!PL_get_nil(tail)) {
    if (!PL_get_list(tail, head, tail))
      throw ConversionError("Term::operator list<>()",
                            "not a list");
    l.push_back((T) Term(head));
  }
  return l;
}

template <>
Term::operator list<char*>() const;


template <typename T>
T convert_one_element(Term t) {
  return (T) t;
}

template <>
inline char * convert_one_element<char*>(Term t) {
  return t.to_str(Term::default_cvt_flags|BUF_MALLOC);
}

template <typename TargetType, class OutputIterator>
OutputIterator Term::copy_list(OutputIterator it)
{
  term_t head = PL_new_term_ref();
  term_t tail = PL_copy_term_ref(lsi);
  while (!PL_get_nil(tail)) {
    if (!PL_get_list(tail, head, tail))
      throw "not a list";
    *it = convert_one_element<TargetType>(Term(head));
    ++it;
  }
  return it;
}


inline Term::Term(char const * text) {
  lsi = PL_new_term_ref();
  if ( !PL_chars_to_term(text, lsi) )
    throw ParseError("Term::Term(char const *)", text);
}

inline Term::Term(string const & text) {
  lsi = PL_new_term_ref();
  if ( !PL_chars_to_term(text.c_str(), lsi) )
    throw ParseError("Term::Term(char const *)", text.c_str());
}

inline Term::Term(const long& val) {
  lsi = PL_new_term_ref();
  PL_put_integer(lsi, val);
}

inline Term::Term(const int& val) {
  lsi = PL_new_term_ref();
  PL_put_integer(lsi, val);
}

inline Term::Term(const double& val) {
  lsi = PL_new_term_ref();
  PL_put_float(lsi, val);
}

inline Term::Term(void * const & ptr) {
  lsi = PL_new_term_ref();
  PL_put_pointer(lsi, ptr);
}

inline Term::Term(const Atom& a) {
  lsi = PL_new_term_ref();
  PL_put_atom(lsi, a.handle);
}

inline Term::Term(const Functor& f) {
  lsi = PL_new_term_ref();
  PL_put_functor(lsi, f.handle);
}


template <typename InputIterator>
inline Term::Term(InputIterator begin, InputIterator end)
{
  lsi = PL_new_term_ref();
  term_t tailref = PL_copy_term_ref(lsi);
  term_t elref   = PL_new_term_ref();

  while (begin != end) {
    Term el(*begin);
    if (!PL_unify_list(tailref, elref, tailref) ||
        !PL_unify(elref, el.lsi))
      throw LogicError("Term::Term<>(InputIterator, InputIterator)",
                       "Bug in SwiProlog-C++");
    ++begin;
  }

  PL_unify_nil(tailref);
}

inline Term Term::operator [] (int index) const
{
  if (index < 0)
    throw LogicError("Term::operator [] (int)", "range error, index < 0");

  term_t t = PL_new_term_ref();
  if ( PL_get_arg(index+1, lsi, t) )
    return Term(t);

  if ( !PL_is_compound(lsi) )
    throw LogicError("Term::operator [] (int)", "not a compound term");
  else
    throw LogicError("Term::operator [] (int)", "range error, index >= arity");
}

inline Functor Term::functor() const {
  functor_t f;
  if (PL_get_functor(lsi, &f))
    return Functor(f);
  throw ConversionError("Term::functor()", "not a compound term or atom");
}

inline char* Term::to_str(unsigned flags) const {
  if (!(flags & (BUF_DISCARDABLE|BUF_MALLOC|BUF_RING)))
    flags |= BUF_RING;
  char* str;
  if (!PL_get_chars(lsi, &str, flags))
    throw CvtError("Term::to_str(unsigned)");
  return str;
}

inline string Term::to_string (unsigned flags) const {
  flags = (flags & ~BUF_RING & ~BUF_MALLOC) | BUF_DISCARDABLE;
  char* str;
  if (!PL_get_chars(lsi, &str, flags))
    throw CvtError("Term::to_string()");
  return string(str);
}

// Makes a new term whose parts are the ones pointed to by the Terms in the
// sequence.
template <typename ForwardIterator>
void Term::init_from_seq(Functor f, ForwardIterator begin, ForwardIterator end)
{
  int n = distance(begin, end);
  term_t args = PL_new_term_refs(n);

  for (int i = 0; begin != end; ++begin, i++) {
    Term t(*begin);
    PL_put_term(args+i, t.lsi);
  }

  lsi = PL_new_term_ref();
  PL_cons_functor_v(lsi, f.handle, args);
}


// class RecordedTerm


// class Query

inline Query::Query(const char * name, int ar, Module context_module)
  : pred(name, ar),
    ctx(context_module)
{
  arity = ar;
  qid = (qid_t) -1;
  predargs = (term_t) -1;
  open = false;
  unsafe_exceptions = false;
  enqueue(&frame_queue);
}

inline Query::Query(Predicate p, Module context_module)
  : pred(p),
    ctx(context_module)
{
  arity = pred.arity();
  qid = (qid_t) -1;
  predargs = (term_t) -1;
  open = false;
  unsafe_exceptions = false;
  enqueue(&frame_queue);
}

inline Query::~Query()
{
  if (open) close();
}

inline void Query::start_call(int noa)
{
  if (noa != arity)
    throw LogicError("Query::operator ()", "wrong number of arguments");

  if (Engine::active_query)
    throw LogicError("Query::operator ()", "another query is already running");

  if (predargs == (term_t) -1)
    predargs = PL_new_term_refs(arity);
}

inline void Query::finish_call()
{
  Engine::active_query = this;
  open = true;
  //for (int i = 0; i < arity; ++i) logvar(Term(predargs+i));///
  qid = PL_open_query(ctx, PL_Q_CATCH_EXCEPTION, pred.handle, predargs);
}

template <typename ForwardIterator>
Query& Query::operator () (ForwardIterator begin, ForwardIterator end)
{
  start_call(distance(begin, end));
  for (int i = 0; begin != end; ++begin, ++i)
    PL_put_term(predargs+i, begin->lsi);
  finish_call();
  return *this;
}

inline Query& Query::operator () (Term t1, Term t2, Term t3, Term t4, Term t5,
                                      Term t6, Term t7, Term t8, Term t9) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7, t8, t9 };
  return operator () (args, args + 9);
}

inline Query& Query::operator () (Term t1, Term t2, Term t3, Term t4, Term t5,
                                      Term t6, Term t7, Term t8) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7, t8 };
  return operator () (args, args + 8);
}

inline Query& Query::operator () (Term t1, Term t2, Term t3, Term t4, Term t5,
                                      Term t6, Term t7) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7 };
  return operator () (args, args + 7);
}

inline Query& Query::operator () (Term t1, Term t2, Term t3, Term t4, Term t5,
                                      Term t6) {
  Term args[] = { t1, t2, t3, t4, t5, t6 };
  return operator () (args, args + 6);
}

inline Query& Query::operator () (Term t1, Term t2, Term t3, Term t4, Term t5)
{
  Term args[] = { t1, t2, t3, t4, t5 };
  return operator () (args, args + 5);
}

inline Query& Query::operator () (Term t1, Term t2, Term t3, Term t4) {
  Term args[] = { t1, t2, t3, t4 };
  return operator () (args, args + 4);
}

inline Query& Query::operator () (Term t1, Term t2, Term t3) {
  Term args[] = { t1, t2, t3 };
  return operator () (args, args + 3);
}

inline Query& Query::operator () (Term t1, Term t2) {
  Term args[] = { t1, t2 };
  return operator () (args, args + 2);
}

inline Query& Query::operator () (Term t1) {
  Term args[] = { t1 };
  return operator () (args, args + 1);
}

inline Query& Query::operator () () {
  return operator () ((Term*) 0, (Term*) 0);
}

inline bool Query::next() {
  if (!open)
    throw LogicError("Query::next()", "query is not running");

  Engine::active_query = 0;
  bool ret = PL_next_solution(qid);
  Engine::active_query = this;
  if (ret) return true;

  // no more solutions
  term_t ex = PL_exception(qid);
  if (ex) {
    if (unsafe_exceptions)
      throw UnsafePrologException(ex);
    else
      throw SafePrologException(ex);
  }
  close();
  return false;
}

inline void Query::cut() {
  if (open) {
    PL_cut_query(qid);
    open = false;
    Engine::active_query = 0;
  } else
    throw LogicError("Query::cut()", "query is not running");
}

inline void Query::close() {
  if (open) {
    PL_close_query(qid);
    open = false;
    Engine::active_query = 0;
  } else
    throw LogicError("Query::close()", "query is not running");
}


// class StaticQuery

template <typename ForwardIterator>
StaticQuery& StaticQuery::operator () (ForwardIterator begin, ForwardIterator end)
{
  if (calltype == from_pred)
    Query::operator()(begin, end);
  else 
  {
    start_call(distance(begin,end));

    Term ct = callterm.term();
    for (int i = 0; i < arity; i++)
      unify(Term(predargs+i), ct[i]);
    for (int i = arity; begin != end; ++begin, ++i)
      unify(ct[i], *begin);

    finish_call();
  }
  return *this;
}

inline StaticQuery& StaticQuery::operator () (Term t1, Term t2, Term t3, Term t4, Term t5,
                                      Term t6, Term t7, Term t8, Term t9) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7, t8, t9 };
  return operator () (args, args + 9);
}

inline StaticQuery& StaticQuery::operator () (Term t1, Term t2, Term t3, Term t4, Term t5,
                                      Term t6, Term t7, Term t8) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7, t8 };
  return operator () (args, args + 8);
}

inline StaticQuery& StaticQuery::operator () (Term t1, Term t2, Term t3, Term t4, Term t5,
                                      Term t6, Term t7) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7 };
  return operator () (args, args + 7);
}

inline StaticQuery& StaticQuery::operator () (Term t1, Term t2, Term t3, Term t4, Term t5,
                                      Term t6) {
  Term args[] = { t1, t2, t3, t4, t5, t6 };
  return operator () (args, args + 6);
}

inline StaticQuery& StaticQuery::operator () (Term t1, Term t2, Term t3, Term t4, Term t5)
{
  Term args[] = { t1, t2, t3, t4, t5 };
  return operator () (args, args + 5);
}

inline StaticQuery& StaticQuery::operator () (Term t1, Term t2, Term t3, Term t4) {
  Term args[] = { t1, t2, t3, t4 };
  return operator () (args, args + 4);
}

inline StaticQuery& StaticQuery::operator () (Term t1, Term t2, Term t3) {
  Term args[] = { t1, t2, t3 };
  return operator () (args, args + 3);
}

inline StaticQuery& StaticQuery::operator () (Term t1, Term t2) {
  Term args[] = { t1, t2 };
  return operator () (args, args + 2);
}

inline StaticQuery& StaticQuery::operator () (Term t1) {
  Term args[] = { t1 };
  return operator () (args, args + 1);
}

inline StaticQuery& StaticQuery::operator () () {
  return operator () ((Term*) 0, (Term*) 0);
}

// class Frame

inline Frame::Frame() {
  fid = PL_open_foreign_frame();
  previous_frame = last_frame;
  last_frame = this;
  previous_frame_queue = frame_queue;
  frame_queue = 0;
}

inline Frame::~Frame() {
  if (last_frame != this)
    throw LogicError("Frame::~Frame()", "frames are being closed in wrong order");
  last_frame = previous_frame;
  PL_close_foreign_frame(fid);
  frame_queue->freeze_all();
  frame_queue = previous_frame_queue;
}

inline void Frame::rewind() {
  PL_rewind_foreign_frame(fid);
}


// global functions

inline bool unify(const Term& t1, const Term& t2)
{
  return t1.unify(t2);
}

template <typename T>
inline bool unify(const Term& t, const T& v)
{
  return t.unify(v);
}

template <typename T>
inline bool unify(const T& v, const Term& t)
{
  return t.unify(v);
}

inline ostream& operator << (ostream& os, const Term& t)
{
  os << t.to_str(Term::default_cvt_flags|BUF_DISCARDABLE);
  return os;
}

inline ostream& operator << (ostream& os, const Atom& a)
{
  os << (const char*) a;
  return os;
}

inline ostream& operator << (ostream& os, const Functor& f)
{
  os << f.info();
  return os;
}

inline ostream& operator << (ostream& os, const Predicate& p)
{
  os << p.info();
  return os;
}

inline ostream& operator << (ostream& os, const Module& mod)
{
  const char* n = mod.name();
  os << (n ? n : "(null module)");
  return os;
}

template <typename T>
inline bool operator == (const Term& t, const T& v) {
  return (T) t == v;
}

template <typename T>
inline bool operator == (const T& v, const Term& t) {
  return t == v;
}

template <typename T>
inline bool operator != (const Term& t, const T& v) {
  return t != v;
}

template <typename T>
inline bool operator != (const T& v, const Term& t) {
  return t != v;
}

template <typename T>
inline bool operator >  (const Term& t, const T& v) {
  return (T) t > v;
}

template <typename T>
inline bool operator >  (const T& v, const Term& t) {
  return v > (T) t;
}

template <typename T>
inline bool operator <  (const Term& t, const T& v) {
  return (T) t < v;
}

template <typename T>
inline bool operator <  (const T& v, const Term& t) {
  return v < (T) t;
}

template <typename T>
inline bool operator >= (const Term& t, const T& v) {
  return (T) t >=v;
}

template <typename T>
inline bool operator >= (const T& v, const Term& t) {
  return v >= (T) t;
}

template <typename T>
inline bool operator <= (const Term& t, const T& v) {
  return (T) t <= v;
}

template <typename T>
inline bool operator <= (const T& v, const Term& t) {
  return v <= (T) t;
}

inline Term make_term(const char* f) {
  return Term(Atom(f));
}
inline Term make_term(const char* f, Term t1) {
  return Term(f, &t1, &t1+1);
}
inline Term make_term(const char* f, Term t1, Term t2) {
  Term args[] = { t1, t2 };
  return Term(f, args, args+2);
}
inline Term make_term(const char* f, Term t1, Term t2, Term t3) {
 Term args[] = { t1, t2, t3 };
 return Term(f, args, args+3);
}
inline Term make_term(const char* f, Term t1, Term t2, Term t3, Term t4) {
  Term args[] = { t1, t2, t3, t4 };
  return Term(f, args, args+4);
}
inline Term make_term(const char* f, Term t1, Term t2, Term t3, Term t4, Term t5) {
 Term args[] = { t1, t2, t3, t4, t5 };
 return Term(f, args, args+5);
}
inline Term make_term(const char* f, Term t1, Term t2, Term t3, Term t4, Term t5, Term t6) {
  Term args[] = { t1, t2, t3, t4, t5, t6 };
  return Term(f, args, args+6);
}
inline Term make_term(const char* f, Term t1, Term t2, Term t3, Term t4, Term t5, Term t6, Term t7) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7 };
  return Term(f, args, args+7);
}
inline Term make_term(const char* f, Term t1, Term t2, Term t3, Term t4, Term t5, Term t6, Term t7, Term t8) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7, t8 };
  return Term(f, args, args+8);
}
inline Term make_term(const char* f, Term t1, Term t2, Term t3, Term t4, Term t5, Term t6, Term t7, Term t8, Term t9) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7, t8, t9 };
  return Term(f, args, args+9);
}

inline Term make_term(Functor f) {
  return Term(f, (Term*) 0, (Term*) 0);
}
inline Term make_term(Functor f, Term t1) {
  return Term(f, &t1, &t1+1);
}
inline Term make_term(Functor f, Term t1, Term t2) {
  Term args[] = { t1, t2 };
  return Term(f, args, args+2);
}
inline Term make_term(Functor f, Term t1, Term t2, Term t3) {
 Term args[] = { t1, t2, t3 };
 return Term(f, args, args+3);
}
inline Term make_term(Functor f, Term t1, Term t2, Term t3, Term t4) {
  Term args[] = { t1, t2, t3, t4 };
  return Term(f, args, args+4);
}
inline Term make_term(Functor f, Term t1, Term t2, Term t3, Term t4, Term t5) {
 Term args[] = { t1, t2, t3, t4, t5 };
 return Term(f, args, args+5);
}
inline Term make_term(Functor f, Term t1, Term t2, Term t3, Term t4, Term t5, Term t6) {
  Term args[] = { t1, t2, t3, t4, t5, t6 };
  return Term(f, args, args+6);
}
inline Term make_term(Functor f, Term t1, Term t2, Term t3, Term t4, Term t5, Term t6, Term t7) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7 };
  return Term(f, args, args+7);
}
inline Term make_term(Functor f, Term t1, Term t2, Term t3, Term t4, Term t5, Term t6, Term t7, Term t8) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7, t8 };
  return Term(f, args, args+8);
}
inline Term make_term(Functor f, Term t1, Term t2, Term t3, Term t4, Term t5, Term t6, Term t7, Term t8, Term t9) {
  Term args[] = { t1, t2, t3, t4, t5, t6, t7, t8, t9 };
  return Term(f, args, args+9);
}

} // namespace Prolog_impl


namespace Prolog
{
  using Prolog_impl::Atom;
  using Prolog_impl::Frame;
  using Prolog_impl::Functor;
  using Prolog_impl::Module;
  using Prolog_impl::Predicate;
  using Prolog_impl::Query;
  using Prolog_impl::RecordedTerm;
  using Prolog_impl::StaticAtom;
  using Prolog_impl::StaticFunctor;
  using Prolog_impl::StaticPredicate;
  using Prolog_impl::StaticQuery;
  using Prolog_impl::StaticTerm;
  using Prolog_impl::ForeignPredicate;
  using Prolog_impl::Term;
  using Prolog_impl::TermType;
  using Prolog_impl::operator !=;
  using Prolog_impl::operator <;
  using Prolog_impl::operator <<;
  using Prolog_impl::operator <=;
  using Prolog_impl::operator ==;
  using Prolog_impl::operator >;
  using Prolog_impl::operator >=;
  using Prolog_impl::prolog_halt;
  using Prolog_impl::prolog_init;
  using Prolog_impl::unify;
  using Prolog_impl::PlError;
  using Prolog_impl::PrologException;
  using Prolog_impl::SafePrologException;
  using Prolog_impl::UnsafePrologException;
  using Prolog_impl::LogicError;
  using Prolog_impl::FormatError;
  using Prolog_impl::ParseError;
  using Prolog_impl::ConversionError;
  using Prolog_impl::CvtError;
  using Prolog_impl::GeneralError;
  using Prolog_impl::atom_to_term;
};

#endif
