unit UnitFrmSecundario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoa = record
    id: Integer;
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
    Cadastrados: TMemo;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

// Cadastrar
procedure TfrmSecundario.Button4Click(Sender: TObject);
var
  NovaPessoa: TPessoa;
  I: Integer;
  X: Integer;
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
      if (StrToInt(edtID.Text) = Pessoa[StrToInt(edtID.Text)].id) and
        (Pessoa[StrToInt(edtID.Text)].nome <> '') then
      begin
        MessageDlg('O usu�rio j� existe! Insira outro ID', TMsgDlgType.mtError,
          [TMsgDlgBtn.mbOK], 0);
        edtID.Text := '';
      end
      else
      begin
        NovaPessoa.id := StrToInt(edtID.Text);
        NovaPessoa.nome := edtName.Text;
        NovaPessoa.idade := StrToInt(edtIdade.Text);
        Pessoa[StrToInt(edtID.Text)] := NovaPessoa;
        Cadastrados.Lines.Add('Id: ' + IntToStr(Pessoa[StrToInt(edtID.Text)].id)
          + ' Nome: ' + Pessoa[StrToInt(edtID.Text)].nome + ' Idade: ' +
          IntToStr(Pessoa[StrToInt(edtID.Text)].idade));
        edtName.Text := '';
        edtIdade.Text := '';
        edtID.Text := '';

        MessageDlg('Cadastrado', TMsgDlgType.mtInformation,
          [TMsgDlgBtn.mbOK], 0);
      end;
    end;

  except
    begin
      MessageDlg('Erro inesperado, fale com o administrador',
        TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;

// Consultar
procedure TfrmSecundario.Button5Click(Sender: TObject);
begin
  try
    if (edtID.Text = '') then
    begin
      edtName.Text := '';
      edtIdade.Text := '';
      edtID.Text := '';
      MessageDlg('Informe um ID', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end
    else if StrToInt(edtID.Text) > 10 then
    begin
      edtName.Text := '';
      edtIdade.Text := '';
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

// Alterar
procedure TfrmSecundario.Button1Click(Sender: TObject);
var
  // �ndice
  Index: Integer;
  // Nova pessoa
  PessoaAlterada: TPessoa;
  // ID que quero alterar
  IDProcurado: Integer;
  // Para o la�o
  I: Integer;
  NovaPessoa: TPessoa;
begin
  try
    // Se n�o informar um ID
    if (edtID.Text = '') then
    begin
      MessageDlg('Informe um ID', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      Exit;
    end;

    // Colocamos o ID que estamos procurando em uma vari�vel
    IDProcurado := StrToInt(edtID.Text);

    // Coloca -1 no Index para indicar erro
    Index := -1;
    //
    for I := 0 to Cadastrados.Lines.Count - 1 do
    begin
      if Pos('Id: ' + IntToStr(IDProcurado), Cadastrados.Lines[I]) = 1 then
      begin
        // A linha com o ID procurado foi encontrada
        // Armazena o �ndice encontrado (I) e interrompe o loop
        Index := I;
        Break;
      end;

    end;

    if Index <> -1 then
      begin
        // Linha encontrada, fa�a as altera��es desejadas
      if (edtName.Text = '') then
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
        MessageDlg('A idade tem que ser maior que zero (0)',
          TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
        edtIdade.Text := '';
      end
      else
      begin
        Cadastrados.Lines[Index] := 'Id: ' + IntToStr(IDProcurado) + ' Nome: ' +
          edtName.Text + ' Idade: ' + edtIdade.Text;
        NovaPessoa.nome := edtName.Text;
        NovaPessoa.idade := StrToInt(edtIdade.Text);
        Pessoa[StrToInt(edtID.Text)] := NovaPessoa;

        MessageDlg('Registro alterado', TMsgDlgType.mtInformation,
          [TMsgDlgBtn.mbOK], 0);
        // Limpa os campos de entrada
        edtName.Text := '';
        edtIdade.Text := '';
        edtID.Text := '';
      end;
    end
    else
    begin
      MessageDlg('ID n�o encontrado', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
    end;
  except
    on E: Exception do
    begin
      MessageDlg('Erro inesperado: ' + E.Message, TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;

// Excluir
procedure TfrmSecundario.Button2Click(Sender: TObject);
var
  // �ndice
  Index: Integer;
  // Nova pessoa
  PessoaAlterada: TPessoa;
  // ID que quero alterar
  IDProcurado: Integer;
  // Para o la�o
  I: Integer;
begin
  try
    // Se n�o informar um ID
    if (edtID.Text = '') then
    begin
      MessageDlg('Informe um ID', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      Exit;
    end;

    // Colocamos o ID que estamos procurando em uma vari�vel
    IDProcurado := StrToInt(edtID.Text);

    // Coloca -1 no Index para indicar erro
    Index := -1;
    //
    for I := 0 to Cadastrados.Lines.Count - 1 do
    begin
      if Pos('Id: ' + IntToStr(IDProcurado), Cadastrados.Lines[I]) = 1 then
      begin
        // A linha com o ID procurado foi encontrada
        // Armazena o �ndice encontrado (I) e interrompe o loop
        Index := I;
        Break;
      end;

    end;

    if Index <> -1 then
    begin
      Pessoa[IDProcurado].nome := '';
      Pessoa[IDProcurado].idade := 0;
      // Linha encontrada, fa�a as altera��es desejadas
      MessageDlg('Exclu�do', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      // Limpa os campos de entrada
      Cadastrados.Lines.Delete(Index);
      edtName.Text := '';
      edtIdade.Text := '';
      edtID.Text := '';
    end
    else
    begin
      MessageDlg('ID n�o encontrado', TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
      edtID.Text := '';
    end;
  except
    on E: Exception do
    begin
      MessageDlg('Erro inesperado: ' + E.Message, TMsgDlgType.mtError,
        [TMsgDlgBtn.mbOK], 0);
    end;
  end;
end;

end.
