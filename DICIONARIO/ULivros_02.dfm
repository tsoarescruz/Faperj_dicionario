object FrmLivro_02: TFrmLivro_02
  Left = 557
  Top = 297
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Livros de Lima Barreto'
  ClientHeight = 142
  ClientWidth = 241
  Color = clBtnText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Img01: TImage
    Left = 16
    Top = 11
    Width = 40
    Height = 41
    OnClick = Img01Click
  end
  object SpedButonClara_Anjos: TSpeedButton
    Left = 64
    Top = 20
    Width = 153
    Height = 25
    Hint = 'Carolina'
    Caption = 'Clara dos &Anjos'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonClara_AnjosClick
  end
  object Img02: TImage
    Left = 16
    Top = 59
    Width = 40
    Height = 41
    OnClick = Img02Click
  end
  object SpedButonPlolicarpo: TSpeedButton
    Left = 64
    Top = 68
    Width = 153
    Height = 25
    Hint = 'Carolina'
    Caption = '&Policarpo Quaresma'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonPlolicarpoClick
  end
end
