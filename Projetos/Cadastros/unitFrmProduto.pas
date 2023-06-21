unit unitFrmProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmProduto = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    EdtPainel: TPanel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nomeProduto: String;
    categoriaProduto: String;
    fornecedorProduto: String;

    listaProdutosCadastrados: String;
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

procedure TfrmProduto.Button1Click(Sender: TObject);
begin
  nomeProduto:= Edit1.Text;
  categoriaProduto:= Edit2.Text;
  fornecedorProduto:= Edit5.Text;

  listaProdutosCadastrados:= 'Produto: ' + nomeProduto + #13 +'Categoria: ' + categoriaProduto + #13 +'Fornecedor: ' + fornecedorProduto;

  case MessageDlg('Cadastrar mais produtos?', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) of
    6:
    begin
      Edit1.Text:= '';
      Edit2.Text:= '';
      Edit5.Text:= '';
    end;
    7: Close;
  end;
end;

procedure TfrmProduto.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
