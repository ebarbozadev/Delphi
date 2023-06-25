unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtEscrever1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    // Criar a variável que vai ser armazenado
    escrito : String;

    // Criar a procedure
    procedure PegaEscrita(Valor : String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Botão
procedure TForm1.Button1Click(Sender: TObject);
begin
  // Pegamos a variável que criamos e colocamos de uma forma que o que escrevemos no input
  // edtEscrever é o que renomeamos lá no 'name' do nosso campo de texto
  // .Text é o atributo que esta o que escrevemos lá dentro
  escrito := edtEscrever1.Text;
  PegaEscrita(escrito)
end;

procedure TForm1.PegaEscrita(Valor : String);
begin
  ShowMessage(Valor);
end;

end.
