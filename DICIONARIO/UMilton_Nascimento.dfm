object FrmMilton_Nascimento: TFrmMilton_Nascimento
  Left = 197
  Top = 104
  Hint = 'Milton Nascimento'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Milton Nascimento'
  ClientHeight = 365
  ClientWidth = 331
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
    Left = 163
    Top = 323
    Width = 144
    Height = 33
    Caption = '&Can'#231#245'es'
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
    Left = 11
    Top = 323
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
  object Mil: TShockwaveFlash
    Left = 30
    Top = 2
    Width = 257
    Height = 313
    TabOrder = 0
    ControlData = {
      6755665500030000901A00005920000008000200000000000800020000000000
      080002000000000008000E000000570069006E0064006F00770000000B00FFFF
      0B00FFFF08000A0000004800690067006800000008000200000000000B00FFFF
      080002000000000008000E00000061006C007700610079007300000008001000
      0000530068006F00770041006C006C0000000B0000000B000000080002000000
      0000080002000000000008000200000000000D00000000000000000000000000
      000000000B000100}
  end
end
