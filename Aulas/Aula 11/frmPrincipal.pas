unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TGS = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    edtInput: TEdit;
    Cadastrados: TMemo;
    Button2: TButton;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Empresas1: TMenuItem;
    Funcionrios1: TMenuItem;
    Inicio1: TMenuItem;
    Informaes1: TMenuItem;
    Empresas2: TMenuItem;
    Equipe1: TMenuItem;
    GerenceSistemas1: TMenuItem;
    GerenceHelp1: TMenuItem;
    GerenceHelp2: TMenuItem;
    GerenceWhatsapp1: TMenuItem;
    GerenceComerAqui1: TMenuItem;
    Button3: TButton;
    PopupMenu1: TPopupMenu;
    PopUpPanel: TMenuItem;
    PopupMenu2: TPopupMenu;
    Limpar1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Equipe1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PopUpPanelClick(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
  private
    { Private declarations }

    // Vari�veis

    Equipe : String;
  public
    { Public declarations }
  end;

var
  GS: TGS;

implementation

{$R *.dfm}

procedure TGS.Button1Click(Sender: TObject);
begin
  {
    Ao clicar no bot�o de enviar ir� adicionar no campo linhas com o texto do input
  }
  Cadastrados.Lines.Add(edtInput.Text);
  edtInput.Clear;
end;
procedure TGS.Button2Click(Sender: TObject);
begin
  Cadastrados.Lines.Clear;
end;

procedure TGS.Button3Click(Sender: TObject);
begin
  ShowMessage('Fechando o Sistema');
  Close;
end;

procedure TGS.Equipe1Click(Sender: TObject);
begin
  ShowMessage(Equipe);
end;

procedure TGS.Funcionrios1Click(Sender: TObject);
var
  usuarioEquipeNome : String;
  usuarioEquipeCargo : String;
  usuarioEquipeSalario : String;
begin
  usuarioEquipeNome := InputBox('Cadastrar Funcion�rio', 'Nome:', '');
  usuarioEquipeCargo := InputBox('Cadastrar Funcion�rio', 'Cargo:', 'Estagi�rio');
  usuarioEquipeSalario := InputBox('Cadastrar Funcion�rio', 'Sal�rio:', '0');
  Equipe := usuarioEquipeNome + ' ' + usuarioEquipeCargo + ' ' + usuarioEquipeSalario + '; ' + Equipe;
end;

procedure TGS.Limpar1Click(Sender: TObject);
begin
  Cadastrados.Lines.Clear;
end;

procedure TGS.PopUpPanelClick(Sender: TObject);
begin
  ShowMessage('Fechando o Sistema');
  Close;
end;

end.
