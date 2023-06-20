program Gerence;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {GS};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGS, GS);
  Application.Run;
end.
