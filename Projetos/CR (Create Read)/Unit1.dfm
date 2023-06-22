object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 220
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 39
    Top = 8
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 127
    Top = 8
    Width = 29
    Height = 15
    Caption = 'Idade'
  end
  object Edit1: TEdit
    Left = 8
    Top = 25
    Width = 25
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 39
    Top = 24
    Width = 82
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 162
    Top = 23
    Width = 42
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 210
    Top = 23
    Width = 26
    Height = 25
    Caption = 'Ver'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Cadastrados: TMemo
    Left = 8
    Top = 54
    Width = 228
    Height = 158
    Lines.Strings = (
      'Cadastrados')
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 127
    Top = 25
    Width = 29
    Height = 23
    TabOrder = 5
  end
end
