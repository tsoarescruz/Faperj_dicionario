object FrmManuel_Inacio: TFrmManuel_Inacio
  Left = 409
  Top = 174
  Hint = 'Manuel In'#225'cio'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Manuel In'#225'cio'
  ClientHeight = 372
  ClientWidth = 342
  Color = clBtnText
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 16
  object SpedButonPoesias: TSpeedButton
    Left = 175
    Top = 328
    Width = 145
    Height = 33
    Caption = '&Livros'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonPoesiasClick
  end
  object SpedButonBibliografia: TSpeedButton
    Left = 23
    Top = 328
    Width = 145
    Height = 33
    Caption = '&Biografia'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonBibliografiaClick
  end
  object Math: TShockwaveFlash
    Left = 46
    Top = 3
    Width = 257
    Height = 313
    TabOrder = 0
    ControlData = {
      6755665500090000901A00005920000008000200000000000800000000000800
      0000000008000E000000570069006E0064006F00770000000800060000002D00
      310000000800060000002D003100000008000A00000048006900670068000000
      08000200000000000800060000002D0031000000080000000000080002000000
      0000080010000000530068006F00770041006C006C0000000800040000003000
      0000080004000000300000000800020000000000080000000000080002000000
      00000D0000000000000000000000000000000000080004000000310000000800
      0400000030000000080000000000080004000000300000000800080000006100
      6C006C00000008000C000000660061006C00730065000000}
  end
  object Web: TWebBrowser
    Left = 21
    Top = 48
    Width = 252
    Height = 204
    TabOrder = 1
    ControlData = {
      4C00000072290000192B00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
