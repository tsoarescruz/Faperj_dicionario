object FrmGame_Intera: TFrmGame_Intera
  Left = 203
  Top = 190
  BorderStyle = bsNone
  ClientHeight = 348
  ClientWidth = 682
  Color = clBtnText
  TransparentColorValue = clBtnText
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
  object sfe: TShockwaveFlash
    Left = 7
    Top = 8
    Width = 674
    Height = 337
    TabOrder = 0
    ControlData = {
      6755665500090000A9450000D422000008000200000000000800000000000800
      0000000008000E000000570069006E0064006F00770000000800060000002D00
      310000000800060000002D003100000008000A00000048006900670068000000
      08000200000000000800060000002D0031000000080000000000080002000000
      0000080010000000530068006F00770041006C006C0000000800040000003000
      0000080004000000300000000800020000000000080000000000080002000000
      00000D0000000000000000000000000000000000080004000000310000000800
      0400000030000000080000000000080004000000300000000800080000006100
      6C006C00000008000C000000660061006C00730065000000}
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 353
    Width = 40
    Height = 13
    Min = 0
    Max = 100
    TabOrder = 1
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 8
  end
end
