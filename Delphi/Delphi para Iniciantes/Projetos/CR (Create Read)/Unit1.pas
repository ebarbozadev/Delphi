unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoa = record
    Nome: String;
    Idade: Integer;
  end;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Cadastrados: TMemo;
    Edit3: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Pessoa: array[0..9] of TPessoa;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
  NovaPessoa: TPessoa;
begin
  NovaPessoa.Nome:= Edit2.Text;
  NovaPessoa.Idade:= StrToInt(Edit3.Text);
  Pessoa[StrToInt(Edit1.Text)]:= NovaPessoa;
  Cadastrados.Lines.Add('ID: ' + Edit1.Text + ' Nome: ' + Edit2.Text + ' Idade: ' + Edit3.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(Pessoa[StrToInt(Edit1.Text)].Nome + ' ' + IntToStr(Pessoa[StrToInt(Edit1.Text)].Idade));
end;

end.
