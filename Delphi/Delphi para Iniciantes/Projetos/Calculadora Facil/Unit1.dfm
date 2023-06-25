object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 61
  ClientWidth = 203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 118
    Top = 34
    Width = 8
    Height = 15
    Caption = '='
  end
  object Button1: TButton
    Left = 0
    Top = 8
    Width = 33
    Height = 17
    Caption = '+'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 55
    Top = 8
    Width = 33
    Height = 17
    Caption = '-'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 110
    Top = 8
    Width = 33
    Height = 17
    Caption = 'x'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 165
    Top = 8
    Width = 33
    Height = 17
    Caption = '/'
    TabOrder = 3
    OnClick = Button4Click
  end
  object edtValor1: TEdit
    Left = 0
    Top = 31
    Width = 49
    Height = 23
    TabOrder = 4
  end
  object edtValor2: TEdit
    Left = 55
    Top = 31
    Width = 50
    Height = 23
    CanUndoSelText = True
    TabOrder = 5
  end
  object edtResultado: TEdit
    Left = 141
    Top = 31
    Width = 57
    Height = 23
    TabOrder = 6
  end
end
