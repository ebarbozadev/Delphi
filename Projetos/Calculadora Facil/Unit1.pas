unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtResultado: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }

    function somar(valor1, valor2 : Currency) : Currency;
    function subtrair(valor1, valor2 : Currency) : Currency;
    function dividir(valor1, valor2 : Currency) : Currency;
    function multiplicar(valor1, valor2 : Currency) : Currency;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Somar
procedure TForm1.Button1Click(Sender: TObject);
var
  Resultado : Currency;
begin
  Resultado := somar(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text));
  edtResultado.Text := CurrToStr(Resultado);
end;
// Somar função
function TForm1.somar(valor1: Currency; valor2: Currency): Currency;
begin
  Result := valor1 + valor2;
end;

// Subtrair
procedure TForm1.Button2Click(Sender: TObject);
var
  Resposta : Currency;
begin
  Resposta := subtrair(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text));
  edtResultado.Text := CurrToStr(Resposta);
end;

// Subtrair função
function TForm1.subtrair(valor1: Currency; valor2: Currency): Currency;
begin
  Result := valor1 - valor2;
end;

// Dividir
procedure TForm1.Button4Click(Sender: TObject);
var
  Resultado : Currency;
begin
  Resultado := dividir(StrToCurr(edtValor1.text), StrToCurr(edtValor2.text));
  edtResultado.Text := CurrToStr(Resultado);
end;
// Dividir função
function TForm1.dividir(valor1: Currency; valor2: Currency): Currency;
begin
  Result := valor1 / valor2;
end;

// Multiplicar
procedure TForm1.Button3Click(Sender: TObject);
var
  Resultado : Currency;
begin
  Resultado := multiplicar(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text));
  edtResultado.Text := CurrToStr(Resultado);
end;
// Multiplicar função
function TForm1.multiplicar(valor1: Currency; valor2: Currency): Currency;
begin
  Result := valor1 * valor2;
end;

end.
