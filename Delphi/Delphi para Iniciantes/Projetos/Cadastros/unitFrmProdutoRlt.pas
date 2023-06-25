unit unitFrmProdutoRlt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmProdutoRlt = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutoRlt: TfrmProdutoRlt;

implementation

{$R *.dfm}

procedure TfrmProdutoRlt.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
