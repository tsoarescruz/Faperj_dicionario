object FrmMachado_Assis: TFrmMachado_Assis
  Left = 192
  Top = 107
  Hint = 'Machado de Assis'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Machado de Assis'
  ClientHeight = 385
  ClientWidth = 475
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
    Left = 170
    Top = 336
    Width = 145
    Height = 33
    Caption = '&Poemas'
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
    Left = 13
    Top = 336
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
  object SpedButonRomance_Machado_Assis: TSpeedButton
    Left = 325
    Top = 336
    Width = 145
    Height = 33
    Hint = 'Romance'
    Caption = '&Romance'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonRomance_Machado_AssisClick
  end
  object mach: TShockwaveFlash
    Left = 128
    Top = 8
    Width = 225
    Height = 321
    TabOrder = 0
    ControlData = {
      6755665500030000411700002D21000008000200000000000800020000000000
      080002000000000008000E000000570069006E0064006F00770000000B00FFFF
      0B00FFFF08000A0000004800690067006800000008000200000000000B00FFFF
      080002000000000008000E00000061006C007700610079007300000008001000
      0000530068006F00770041006C006C0000000B0000000B000000080002000000
      0000080002000000000008000200000000000D00000000000000000000000000
      000000000B000100}
  end
end
