unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  RazaoSocial : String;
  CNPJ : String;
  NomeFantasia : String;
begin
  RazaoSocial := InputBox('Entrada de Dados', 'Informe a Razão Social', '');
  CNPJ := InputBox('Entrada de Dados', 'Informe o CNPJ', '');
  NomeFantasia := InputBox('Entrada de Dados', 'Informe o Nome Fantasia', '');
  ShowMessage('Cliente cadastrado: ' + RazaoSocial + ' ' + CNPJ + ' ' + NomeFantasia);
end;

end.
