object FrmLoggo: TFrmLoggo
  Left = 297
  Top = 176
  Hint = 'Loggo'
  AlphaBlend = True
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 
    'Dicion'#225'rio de Vocabul'#225'rio T'#233'cnico Ling'#252#237'stico e Liter'#225'rio das Cu' +
    'lturas Negras no Brasil'
  ClientHeight = 353
  ClientWidth = 703
  Color = clBtnText
  TransparentColorValue = clBtnText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object ImgLoggo: TImage
    Left = 0
    Top = 0
    Width = 705
    Height = 353
    Align = alCustom
    Center = True
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 361
    Width = 40
    Height = 13
    Min = 0
    Max = 100
    TabOrder = 0
  end
  object Timer: TTimer
    Interval = 500
    OnTimer = TimerTimer
    Left = 8
    Top = 8
  end
end
