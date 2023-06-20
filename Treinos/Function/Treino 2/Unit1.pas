unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edtInput: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

    guardaOQueFoiEscrito : String;

    procedure mostraNaTela(Valor : String);

    function pegaOQueFoiEscrito : String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  guardaOQueFoiEscrito := pegaOQueFoiEscrito;
  mostraNaTela(guardaOQueFoiEscrito);
end;

procedure TForm1.mostraNaTela(Valor: string);
begin
  ShowMessage(Valor)
end;

function TForm1.pegaOQueFoiEscrito;
begin
  Result := edtInput.Text;
end;

end.
