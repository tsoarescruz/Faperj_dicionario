object FrmLiteratura: TFrmLiteratura
  Left = 493
  Top = 296
  Hint = 'Poetas e Poemas Negros'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Literatura'
  ClientHeight = 158
  ClientWidth = 230
  Color = clBtnText
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object SpedButonOrixas: TSpeedButton
    Left = 64
    Top = 24
    Width = 153
    Height = 25
    Hint = 'Orix'#225's'
    Caption = '&Orix'#225's'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonOrixasClick
  end
  object SpedButonPoetas: TSpeedButton
    Left = 64
    Top = 96
    Width = 153
    Height = 25
    Hint = 'Poetas'
    Caption = '&Poetas'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonPoetasClick
  end
  object ImgPoetas: TImage
    Left = 18
    Top = 91
    Width = 39
    Height = 41
  end
  object ImgOrixas: TImage
    Left = 15
    Top = 23
    Width = 33
    Height = 33
    Hint = 'Orix'#225's'
    Proportional = True
  end
end
