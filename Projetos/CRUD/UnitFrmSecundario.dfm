object frmSecundario: TfrmSecundario
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'CRUD'
  ClientHeight = 325
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 43
    Top = 8
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 378
    Top = 8
    Width = 29
    Height = 15
    Caption = 'Idade'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Button1: TButton
    Left = 170
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 251
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 332
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 9
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 90
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Cadastrados: TMemo
    Left = 8
    Top = 84
    Width = 399
    Height = 236
    TabOrder = 5
  end
  object edtID: TEdit
    Left = 8
    Top = 24
    Width = 29
    Height = 23
    TabOrder = 6
  end
  object edtIdade: TEdit
    Left = 378
    Top = 24
    Width = 29
    Height = 23
    TabOrder = 7
  end
  object edtName: TEdit
    Left = 43
    Top = 24
    Width = 329
    Height = 23
    TabOrder = 8
  end
end
