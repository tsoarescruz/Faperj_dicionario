object FrmJogo_das_Letras: TFrmJogo_das_Letras
  Left = 268
  Top = 149
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Jogo das Letras'
  ClientHeight = 449
  ClientWidth = 604
  Color = clMoneyGreen
  TransparentColorValue = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 418
    Top = 149
    Width = 185
    Height = 100
    Brush.Color = clMoneyGreen
  end
  object Shape1: TShape
    Left = 418
    Top = 196
    Width = 185
    Height = 253
    Brush.Color = clMoneyGreen
  end
  object Bevel1: TBevel
    Left = 444
    Top = 94
    Width = 121
    Height = 50
  end
  object shparealetras: TShape
    Left = -1
    Top = -8
    Width = 418
    Height = 457
    Brush.Color = clMoneyGreen
  end
  object Debug: TLabel
    Left = 427
    Top = 240
    Width = 32
    Height = 13
    Caption = 'Debug'
    Visible = False
  end
  object lblletra1: TLabel
    Left = 50
    Top = -140
    Width = 18
    Height = 49
    Caption = 'c'
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblletra2: TLabel
    Left = 100
    Top = -150
    Width = 18
    Height = 49
    Caption = 'u'
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblletra3: TLabel
    Left = 150
    Top = -130
    Width = 19
    Height = 49
    Caption = 'a'
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblletra4: TLabel
    Left = 200
    Top = -120
    Width = 19
    Height = 49
    Caption = 'z'
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object shpproxletra: TShape
    Left = 473
    Top = 24
    Width = 65
    Height = 65
  end
  object lblproxletra: TLabel
    Left = 495
    Top = 32
    Width = 13
    Height = 40
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblletra: TLabel
    Left = 459
    Top = 1
    Width = 94
    Height = 19
    Caption = 'Pr'#243'xima Letra:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblponts: TLabel
    Left = 447
    Top = 98
    Width = 36
    Height = 13
    Caption = 'lblponts'
  end
  object lblpausa: TLabel
    Left = 177
    Top = 175
    Width = 81
    Height = 33
    Caption = 'Pausa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblmusik: TLabel
    Left = 426
    Top = 172
    Width = 37
    Height = 13
    Caption = 'lblmusik'
  end
  object lbltoca: TLabel
    Left = 434
    Top = 150
    Width = 58
    Height = 19
    Caption = 'Tocando:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblajuda: TLabel
    Left = 426
    Top = 208
    Width = 146
    Height = 13
    Caption = 'Espa'#231'o = Mostra/Oculta Ajuda'
  end
  object lblsobre: TLabel
    Left = 426
    Top = 224
    Width = 136
    Height = 13
    Caption = 'Enter = Mostra/Oculta Sobre'
  end
  object richsobre: TRichEdit
    Left = 429
    Top = 296
    Width = 164
    Height = 49
    BorderStyle = bsNone
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Programa: Jogo das Letras'
      'Vers'#227'o: 1.0')
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object richajuda: TRichEdit
    Left = 431
    Top = 285
    Width = 164
    Height = 113
    BorderStyle = bsNone
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    Lines.Strings = (
      '/ = Pr'#243'xima M'#250'sica'
      'Backspace = M'#250'sica Anterior'
      '* = Pausa'
      '- = Diminui velocidade'
      '+ = Aumenta velocidade')
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Visible = False
  end
  object media: TMediaPlayer
    Left = 12
    Top = 384
    Width = 85
    Height = 30
    VisibleButtons = [btPlay, btPause, btStop]
    AutoRewind = False
    Display = media
    FileName = 'ExtractFilePath(application.ExeName)+'#39'Musikins\'#39
    Visible = False
    TabOrder = 0
  end
  object maintimer: TTimer
    Interval = 100
    OnTimer = maintimerTimer
    Left = 16
    Top = 304
  end
  object aumentaveloc: TTimer
    Interval = 30000
    OnTimer = aumentavelocTimer
    Left = 16
    Top = 344
  end
  object timerpausa: TTimer
    Enabled = False
    Interval = 500
    OnTimer = timerpausaTimer
    Left = 56
    Top = 304
  end
  object timerletra: TTimer
    Interval = 1
    OnTimer = timerletraTimer
    Left = 56
    Top = 344
  end
end
