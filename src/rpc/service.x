/*
** ----------------------------------------------------------- **
** File  : service.x                                           **
** Author: Jens Kallup - paule32                               **
** Copy  : (c) 2023 all rights reserved.                       **
** ----------------------------------------------------------- **
*/

struct netuser {
	char *name;
	int     id;
};

#define NLEN 255
#define USER  21

%int
%xdr_netuser(XDR *xdrs, struct netuser *nu)
%{
%	return (xdr_string(xdrs, &nu->name, NLEN));
%}
