object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  Caption = 'Cadastrar Produto'
  ClientHeight = 125
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Button1: TButton
    Left = 0
    Top = 101
    Width = 129
    Height = 25
    Align = alCustom
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object EdtPainel: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 103
    Align = alCustom
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 96
      Height = 15
      Caption = 'Nome do produto'
    end
    object Label2: TLabel
      Left = 135
      Top = 8
      Width = 51
      Height = 15
      Caption = 'Categoria'
    end
    object Label5: TLabel
      Left = 8
      Top = 51
      Width = 60
      Height = 15
      Caption = 'Fornecedor'
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 135
      Top = 24
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 8
      Top = 64
      Width = 248
      Height = 23
      TabOrder = 2
    end
  end
  object Button2: TButton
    Left = 135
    Top = 101
    Width = 129
    Height = 25
    Align = alCustom
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button2Click
  end
end
