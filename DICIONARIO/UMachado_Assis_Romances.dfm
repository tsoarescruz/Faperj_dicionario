object FrmMachado_Assis_Romance: TFrmMachado_Assis_Romance
  Left = 619
  Top = 479
  Hint = 'Romances de Machado de Assis'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Romances de Machado de Assis'
  ClientHeight = 135
  ClientWidth = 215
  Color = clBtnText
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object SpedButonDom_Casmurro: TSpeedButton
    Left = 63
    Top = 29
    Width = 148
    Height = 25
    Hint = 'Carolina'
    Caption = '&Dom Casmurro'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonDom_CasmurroClick
  end
  object SpedButonMemorias: TSpeedButton
    Left = 63
    Top = 81
    Width = 148
    Height = 25
    Caption = '&Mem'#243'rias P'#243'stumas'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonMemoriasClick
  end
  object Img01: TImage
    Left = 16
    Top = 19
    Width = 40
    Height = 41
    OnClick = Img01Click
  end
  object Img02: TImage
    Left = 16
    Top = 67
    Width = 40
    Height = 41
    OnClick = Img02Click
  end
end
