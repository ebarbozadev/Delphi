object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 39
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 39
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 296
    ExplicitTop = 240
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button1: TButton
      Left = 552
      Top = 1
      Width = 75
      Height = 37
      Align = alRight
      Caption = 'Enviar'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 432
      ExplicitTop = 248
      ExplicitHeight = 25
    end
    object Edit1: TEdit
      Left = 1
      Top = 1
      Width = 551
      Height = 37
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 160
      ExplicitTop = 232
      ExplicitWidth = 121
      ExplicitHeight = 23
    end
  end
end
