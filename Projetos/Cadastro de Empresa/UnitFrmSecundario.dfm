object frmSecundario: TfrmSecundario
  Left = 0
  Top = 0
  Caption = 'Gerence'
  ClientHeight = 100
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 126
    Top = 8
    Width = 59
    Height = 15
    Caption = 'Patrim'#244'nio'
  end
  object Button1: TButton
    Left = 8
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 172
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object edtNome: TEdit
    Left = 8
    Top = 24
    Width = 97
    Height = 23
    CanUndoSelText = True
    TabOrder = 2
  end
  object edtPatrimonio: TEdit
    Left = 126
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 3
  end
end
