object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 38
  ClientWidth = 226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 41
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 56
    Top = 8
    Width = 66
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 128
    Top = 8
    Width = 50
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 8
    Width = 34
    Height = 25
    Caption = 'Ver'
    TabOrder = 3
    OnClick = Button2Click
  end
end
