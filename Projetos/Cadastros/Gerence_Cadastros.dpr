program Gerence_Cadastros;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmPrincipal},
  unitFrmProduto in 'unitFrmProduto.pas' {frmProduto},
  Unit2 in 'Unit2.pas' {frmProdutosRlt};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmProdutosRlt, frmProdutosRlt);
  Application.Run;
end.
