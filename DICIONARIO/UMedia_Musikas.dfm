object FrmMedia_Misikas: TFrmMedia_Misikas
  Left = 128
  Top = 73
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Biografia'
  ClientHeight = 637
  ClientWidth = 853
  Color = clBtnText
  TransparentColor = True
  TransparentColorValue = clBtnText
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 16
  object btnProx: TSpeedButton
    Left = 832
    Top = 272
    Width = 18
    Height = 121
    Caption = '&>>'
    Flat = True
    Visible = False
    OnMouseMove = btnProxMouseMove
  end
  object mach: TShockwaveFlash
    Left = 4
    Top = 8
    Width = 249
    Height = 337
    TabOrder = 0
    ControlData = {
      6755665500030000BC190000D422000008000200000000000800020000000000
      080002000000000008000E000000570069006E0064006F00770000000B00FFFF
      0B00FFFF08000A0000004800690067006800000008000200000000000B00FFFF
      080002000000000008000E00000061006C007700610079007300000008001000
      0000530068006F00770041006C006C0000000B0000000B000000080002000000
      0000080002000000000008000200000000000D00000000000000000000000000
      000000000B000100}
  end
  object RichEdtDados_Pessoais: TRichEdit
    Left = 256
    Top = 8
    Width = 569
    Height = 113
    Color = clBtnText
    ReadOnly = True
    TabOrder = 1
  end
  object RichEdtBiblio: TRichEdit
    Left = 256
    Top = 128
    Width = 569
    Height = 209
    Color = clBtnText
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 2
  end
  object RichEdtRoamance: TRichEdit
    Left = 264
    Top = 360
    Width = 230
    Height = 193
    Color = clBtnText
    ReadOnly = True
    TabOrder = 3
  end
  object RichEdtTeatro: TRichEdit
    Left = 504
    Top = 422
    Width = 321
    Height = 209
    Color = clBtnText
    ReadOnly = True
    TabOrder = 4
  end
  object RichEdtContos: TRichEdit
    Left = 8
    Top = 472
    Width = 249
    Height = 161
    Color = clBtnText
    ReadOnly = True
    TabOrder = 5
  end
  object RichEdtPoesias: TRichEdit
    Left = 8
    Top = 351
    Width = 249
    Height = 113
    Color = clBtnText
    ReadOnly = True
    TabOrder = 6
  end
end
