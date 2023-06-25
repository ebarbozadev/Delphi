unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtDigitar: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

    digitado : String;

    procedure EscreveDigitado(Valor : String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  digitado := edtDigitar.Text;
  EscreveDigitado(digitado);
end;

procedure TForm1.EscreveDigitado(Valor: string);
begin
  ShowMessage(Valor);
end;

end.
