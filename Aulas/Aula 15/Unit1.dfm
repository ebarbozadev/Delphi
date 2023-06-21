object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 47
  ClientWidth = 667
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
    Width = 667
    Height = 47
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 240
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button1: TButton
      Left = 591
      Top = 1
      Width = 75
      Height = 45
      Align = alRight
      Caption = 'Enviar'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 504
      ExplicitTop = 264
      ExplicitHeight = 25
    end
    object MaskEdit1: TMaskEdit
      Left = 1
      Top = 1
      Width = 590
      Height = 45
      Align = alClient
      EditMask = '999.999.999-99'
      MaxLength = 14
      TabOrder = 1
      Text = '   .   .   -  '
      ExplicitWidth = 589
    end
  end
end
