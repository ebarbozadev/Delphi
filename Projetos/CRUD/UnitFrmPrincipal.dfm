object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Gerence CRUD'
  ClientHeight = 185
  ClientWidth = 313
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
    Width = 73
    Height = 25
    Caption = 'Fun'#231#245'es'
    TabOrder = 1
    OnClick = CRUDClick
  end
end
