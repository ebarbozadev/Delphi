object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Gerence CRUD'
  ClientHeight = 197
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Cadastrados: TMemo
    Left = 8
    Top = 39
    Width = 301
    Height = 138
    Lines.Strings = (
      'Cadastrados')
    TabOrder = 0
  end
  object CRUD: TButton
    Left = 120
    Top = 8
    Width = 75
    Height = 25
    Caption = 'CRUD'
    TabOrder = 1
    OnClick = CRUDClick
  end
end
