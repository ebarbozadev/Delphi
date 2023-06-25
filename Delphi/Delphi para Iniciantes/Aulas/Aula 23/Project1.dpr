program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FrmPrincipal},
  Unit2 in 'Unit2.pas' {frmSecundario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TfrmSecundario, frmSecundario);
  Application.Run;
end.
