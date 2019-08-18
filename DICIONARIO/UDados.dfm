object FrmDados: TFrmDados
  Left = 526
  Top = 302
  Hint = 'Dados Estat'#237'sticos'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados'
  ClientHeight = 193
  ClientWidth = 254
  Color = clBtnText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object SpedButonMapa: TSpeedButton
    Left = 75
    Top = 24
    Width = 158
    Height = 25
    Hint = 'Mapa'
    Caption = '&Mapas'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonMapaClick
  end
  object ImgMapa: TImage
    Left = 29
    Top = 19
    Width = 41
    Height = 33
    Cursor = crArrow
    Hint = 'Mapa'
  end
  object SpedButonDados_Esta: TSpeedButton
    Left = 72
    Top = 80
    Width = 161
    Height = 25
    Caption = '&Estat'#237'sticos'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonDados_EstaClick
  end
  object ImgDados_Esta: TImage
    Left = 29
    Top = 72
    Width = 41
    Height = 41
  end
  object SpedButonLeis: TSpeedButton
    Left = 72
    Top = 136
    Width = 161
    Height = 25
    Caption = '&Leis'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonLeisClick
  end
  object ImgLei: TImage
    Left = 29
    Top = 131
    Width = 41
    Height = 38
  end
end
