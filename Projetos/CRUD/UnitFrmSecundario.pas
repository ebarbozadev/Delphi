unit UnitFrmSecundario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoa = record
    nome: String;
    idade: Integer;
  end;

type
  TfrmSecundario = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    edtName: TEdit;
    Label2: TLabel;
    edtIdade: TEdit;
    Label3: TLabel;
    edtID: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // Criando uma array de objetos do tipo TPessoa
    Pessoa: array [0 .. 9] of TPessoa;
  end;

var
  frmSecundario: TfrmSecundario;


implementation

{$R *.dfm}

// Voltar
procedure TfrmSecundario.Button3Click(Sender: TObject);
begin
  Close;
end;

// Consultar
procedure TfrmSecundario.Button5Click(Sender: TObject);
begin
  try
    if (edtID.Text = '') then
    begin
      MessageDlg('Informe um ID', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
    end
    else if StrToInt(edtID.Text) > 10 then
    begin
      edtID.Text := '';
      MessageDlg('O ID � superior a 10', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0)
    end
    else
    begin
      if Pessoa[StrToInt(edtID.Text)].idade = 0 then
      begin
        edtName.Text := '';
        edtIdade.Text := '';
        edtID.Text := '';
        MessageDlg('Este usu�rio n�o est� cadastrado', TMsgDlgType.mtError,
          [TMsgDlgBtn.mbOK], 0)
      end
      else
      begin
        ShowMessage('ID: ' + edtID.Text + #13 + 'Nome: ' +
          Pessoa[StrToInt(edtID.Text)].nome + #13 + 'Idade: ' +
          IntToStr(Pessoa[StrToInt(edtID.Text)].idade));
        edtName.Text := '';
        edtIdade.Text := '';
        edtID.Text := '';
      end;
    end;
  except
    begin
      MessageDlg('Erro inesperado, fale com o administrador',
        TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;

// Cadastrar
procedure TfrmSecundario.Button4Click(Sender: TObject);
var
  NovaPessoa: TPessoa;
begin
  try
    if (edtID.Text = '') then
    begin
      MessageDlg('Informe um ID', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
    end
    else if (StrToInt(edtID.Text) > 10) then
    begin
      MessageDlg('O ID tem que ser um n�mero menor que onze (11)',
        TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
    end
    else if (edtName.Text = '') then
    begin
      MessageDlg('O nome n�o pode estar vazio', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
      edtName.Text := '';
    end
    else if (edtIdade.Text = '') then
    begin
      MessageDlg('A idade n�o pode estar vazia', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
      edtIdade.Text := '';
    end
    else if (StrToInt(edtIdade.Text)) = 0 then
    begin
      MessageDlg('A idade tem que ser maior que zero (0)', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
      edtIdade.Text := '';
    end
    else
    begin
      NovaPessoa.nome := edtName.Text;
      NovaPessoa.idade := StrToInt(edtIdade.Text);
      Pessoa[StrToInt(edtID.Text)] := NovaPessoa;
      edtName.Text := '';
      edtIdade.Text := '';
      edtID.Text := '';
      MessageDlg('Cadastrado', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    end;
  except
    begin
      MessageDlg('Erro inesperado, fale com o administrador',
        TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;

// Alterar
procedure TfrmSecundario.Button1Click(Sender: TObject);
var
  PessoaAlterada: TPessoa;
begin
  try
    if (edtID.Text = '') then
    begin
      MessageDlg('Informe um ID', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
    end
    else if (StrToInt(edtID.Text) > 10) then
    begin
      MessageDlg('O ID tem que ser um n�mero menor que onze (11)',
        TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
    end
    else if (edtName.Text = '') then
    begin
      MessageDlg('O nome n�o pode estar vazio', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
      edtName.Text := '';
    end
    else if (edtIdade.Text = '') or ((StrToInt(edtIdade.Text)) = 0) then
    begin
      MessageDlg('A idade tem que ser maior que zero (0)', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
      edtIdade.Text := '';
    end
    else if Pessoa[StrToInt(edtID.Text)].nome = '' then
    begin
      edtID.Text := '';
      MessageDlg('Este usu�rio n�o est� cadastrado', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
      edtIdade.Text := '';
      edtName.Text := '';
    end
    else
    begin
      PessoaAlterada.nome := edtName.Text;
      PessoaAlterada.idade := StrToInt(edtIdade.Text);
      Pessoa[StrToInt(edtID.Text)] := PessoaAlterada;
      edtName.Text := '';
      edtIdade.Text := '';
      edtID.Text := '';
      MessageDlg('Alterado', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    end;
  except
    begin
      MessageDlg('Erro inesperado, fale com o administrador',
        TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;

// Excluir
procedure TfrmSecundario.Button2Click(Sender: TObject);
var
  PessoaExcluida: TPessoa;
begin
  try
    if (edtID.Text = '') then
    begin
      MessageDlg('Informe um ID', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
    end
    else if (StrToInt(edtID.Text) > 10) then
    begin
      MessageDlg('O ID tem que ser um n�mero menor que onze (11)',
        TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
    end
    else if Pessoa[StrToInt(edtID.Text)].nome = '' then
    begin
      edtID.Text := '';
      MessageDlg('Este usu�rio n�o est� cadastrado', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
      edtIdade.Text := '';
      edtName.Text := '';
    end
    else
    begin
      Pessoa[StrToInt(edtID.Text)].nome:= '';
      Pessoa[StrToInt(edtID.Text)].idade:= 0;

      edtName.Text := '';
      edtIdade.Text := '';
      edtID.Text := '';
      MessageDlg('Exclu�do', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    end;
  except
    begin
      MessageDlg('Erro inesperado, fale com o administrador',
        TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;

end.
