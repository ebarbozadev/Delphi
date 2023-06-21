unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
  RetornoYes: Integer;
  RetornoNo: Integer;
  RetornoCancel: Integer;
begin
  case MessageDlg('Deseja imprimir?', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo, TMsgDlgBtn.mbCancel], 0) of
    6: ShowMessage('Imprimindo');
    7: ShowMessage('Cancelando Impress�o');
    2: ShowMessage('Atividade Cancelada');
  end;
//  ShowMessage(IntToStr(RetornoYes)); // 6
//  ShowMessage(IntToStr(RetornoNo)); // 7
//  ShowMessage(IntToStr(RetornoCancel)); // 2
end;

end.
