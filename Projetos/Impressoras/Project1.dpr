program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Impressoras};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TImpressoras, Impressoras);
  Application.Run;
end.
