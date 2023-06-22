unit UnitFrmSecundario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSecundario = class(TForm)
    Button1: TButton;
    Button2: TButton;
    edtNome: TEdit;
    edtPatrimonio: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nome: String;
    patrimonio: Currency;

    cadastro: String;
  end;

var
  frmSecundario: TfrmSecundario;

implementation

{$R *.dfm}

procedure TfrmSecundario.Button1Click(Sender: TObject);
begin
  nome:= edtNome.Text;
  patrimonio:= StrToCurr(edtPatrimonio.Text);
  cadastro:= cadastro + #13 + 'Nome: ' + nome + ' Patrimonio: ' + CurrToStr(patrimonio);
  ShowMessage('Empresa cadastrada! Volte para visualizar o cadastro');
end;

procedure TfrmSecundario.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
