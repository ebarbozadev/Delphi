object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Barra de Progresso'
  ClientHeight = 27
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ProgressBar1: TProgressBar
    Left = 75
    Top = 0
    Width = 553
    Height = 27
    Align = alClient
    Max = 10000
    TabOrder = 0
    ExplicitLeft = 248
    ExplicitTop = 232
    ExplicitWidth = 150
    ExplicitHeight = 17
  end
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 75
    Height = 27
    Align = alLeft
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitLeft = 216
    ExplicitTop = 256
    ExplicitHeight = 25
  end
end
