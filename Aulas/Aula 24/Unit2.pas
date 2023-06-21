unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSecundario = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nome: String;
  end;

var
  frmSecundario: TfrmSecundario;

implementation

{$R *.dfm}

procedure TfrmSecundario.Button1Click(Sender: TObject);
begin
  nome:= Edit1.Text;
  Close;
end;

end.
