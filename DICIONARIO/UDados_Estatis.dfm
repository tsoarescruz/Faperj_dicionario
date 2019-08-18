object FrmDados_esta: TFrmDados_esta
  Left = 534
  Top = 320
  Hint = 'Dados Estat'#237'sticos'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados Estat'#237'sticos'
  ClientHeight = 225
  ClientWidth = 253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object SpedButon_Preconceito: TSpeedButton
    Left = 72
    Top = 24
    Width = 153
    Height = 25
    Hint = 'Preconceito'
    Caption = '&Preconceito'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButon_PreconceitoClick
  end
  object ImgOrixas: TImage
    Left = 23
    Top = 19
    Width = 33
    Height = 33
    Hint = 'Orix'#225's'
    Proportional = True
  end
  object SpedButonDiscri: TSpeedButton
    Left = 72
    Top = 72
    Width = 153
    Height = 33
    Caption = 'Mercado de &Trabalho'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonDiscriClick
  end
  object ImgMerc_Traba: TImage
    Left = 22
    Top = 75
    Width = 41
    Height = 39
  end
  object SpedBtnMulheres: TSpeedButton
    Left = 72
    Top = 136
    Width = 153
    Height = 33
    Caption = 'Mulheres'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedBtnMulheresClick
  end
  object ImgDomestico: TImage
    Left = 23
    Top = 139
    Width = 33
    Height = 33
    Hint = 'Orix'#225's'
    Proportional = True
  end
end
