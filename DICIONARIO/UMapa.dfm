object FrmOrixas: TFrmOrixas
  Left = 494
  Top = 295
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Orix'#225's'
  ClientHeight = 273
  ClientWidth = 232
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 16
  object SpedButonOrixas: TSpeedButton
    Left = 64
    Top = 24
    Width = 153
    Height = 25
    Hint = 'Orix'#225's'
    Caption = #193'r&vore'
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
    Top = 76
    Width = 153
    Height = 25
    Hint = 'Poetas'
    Caption = '&Nomes'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonPoetasClick
  end
  object ImgNome: TImage
    Left = 16
    Top = 66
    Width = 39
    Height = 41
  end
  object ImgArvore_Ori: TImage
    Left = 15
    Top = 23
    Width = 34
    Height = 33
    Hint = 'Orix'#225's'
    Proportional = True
  end
  object SpedButonFalanges: TSpeedButton
    Left = 64
    Top = 125
    Width = 153
    Height = 25
    Caption = '&Falanges'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonFalangesClick
  end
  object ImgFalanges: TImage
    Left = 18
    Top = 115
    Width = 39
    Height = 41
  end
  object SpedButonLinhas_Quim: TSpeedButton
    Left = 64
    Top = 169
    Width = 153
    Height = 33
    Caption = 'Linhas de Q&uimbanda'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonLinhas_QuimClick
  end
  object ImgLinhas_Quim: TImage
    Left = 18
    Top = 164
    Width = 39
    Height = 41
  end
  object SpedButonPontos_Cantados: TSpeedButton
    Left = 64
    Top = 221
    Width = 153
    Height = 33
    Caption = 'Pontos Cantados '
    Flat = True
    OnClick = SpedButonPontos_CantadosClick
  end
  object ImgPonto: TImage
    Left = 18
    Top = 218
    Width = 39
    Height = 41
    Enabled = False
  end
end
