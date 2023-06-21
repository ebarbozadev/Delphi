unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
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
  i: Integer;
begin
  Memo1.Lines.Clear;
  i:= 1;
//  while i <= 10 do
//  begin
//    Memo1.Lines.Add('Adicionando Linha: ' + IntToStr(i));
//    Inc(i);
//  end;
  repeat
    Memo1.Lines.Add('Adicionando Linha: ' + IntToStr(i));
    Inc(i);
  until (i > 10);
end;

end.
