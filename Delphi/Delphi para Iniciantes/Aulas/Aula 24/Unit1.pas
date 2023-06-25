unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  // Criamos uma vari�vel que vai ser do tipo do nosso formul�rio, que vai armazenar todas as vari�veis dispon�veis
  FormSecundario: TfrmSecundario;
begin
  // Vai criar o formul�rio s� que nulo
  FormSecundario:= TfrmSecundario.Create(nil);
  try
    // Mostrar o formul�rio
    FormSecundario.ShowModal;
    ShowMessage(FormSecundario.nome);
  finally
    // Fazemos que toda vez que sa�mos do formul�rio ele seja limpado
    FormSecundario.Free;
  end;
end;

end.
