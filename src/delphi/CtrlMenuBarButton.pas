unit CtrlMenuBarButton;

interface

uses
  SysUtils, Classes, Controls, JvExControls, JvSpeedButton;

type
  TCtrlMenuBarButton = class(TJvSpeedButton);

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('KALLUP', [TCtrlMenuBarButton]);
end;

end.

