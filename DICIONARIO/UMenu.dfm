object FrmMenu: TFrmMenu
  Left = 341
  Top = 23
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 
    'Menu - Dicion'#225'rio de Vocabul'#225'rio T'#233'cnico Ling'#252#237'stico e Liter'#225'rio' +
    ' das Culturas Negras no Brasil'
  ClientHeight = 713
  ClientWidth = 722
  Color = clBtnFace
  TransparentColorValue = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -12
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object LbMenu: TLabel
    Left = 123
    Top = 40
    Width = 38
    Height = 19
    Hint = 'Menu'
    Caption = 'Menu'
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Beve: TBevel
    Left = 99
    Top = 62
    Width = 82
    Height = 1
  end
  object SpedButonDicionario: TSpeedButton
    Left = 60
    Top = 79
    Width = 159
    Height = 25
    Hint = 'Dicion'#225'rio T'#233'cnico'
    Caption = 'Dicio&n'#225'rio'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonDicionarioClick
  end
  object SpedButonDicionario_Religioso: TSpeedButton
    Left = 60
    Top = 119
    Width = 159
    Height = 25
    Caption = 'R&eligioso'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonDicionario_ReligiosoClick
  end
  object SpedButonJogos: TSpeedButton
    Left = 60
    Top = 159
    Width = 159
    Height = 26
    Caption = '&Jogos'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonJogosClick
  end
  object SpedButonLiteratura: TSpeedButton
    Left = 60
    Top = 200
    Width = 159
    Height = 25
    Caption = '&Literatura'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonLiteraturaClick
  end
  object SpedButonPagina: TSpeedButton
    Left = 94
    Top = 701
    Width = 157
    Height = 25
    Caption = '&P'#225'gina'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Visible = False
    OnClick = SpedButonPaginaClick
  end
  object SpedButonDados_Estatcs: TSpeedButton
    Left = 60
    Top = 245
    Width = 159
    Height = 27
    Caption = '&Dados '
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonDados_EstatcsClick
  end
  object SpedButonConfig: TSpeedButton
    Left = 60
    Top = 413
    Width = 160
    Height = 28
    Caption = 'C&onfigura'#231#245'es'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonConfigClick
  end
  object ImgConfing: TImage
    Left = 21
    Top = 411
    Width = 36
    Height = 33
    OnClick = ImgConfingClick
  end
  object ImgDados_Estatisticos: TImage
    Left = 21
    Top = 237
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 'Dados Estat'#237'sticos'
    OnClick = ImgDados_EstatisticosClick
  end
  object ImgNet: TImage
    Left = 53
    Top = 694
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 'P'#225'gina do Dicion'#225'rio'
    Visible = False
    OnClick = ImgNetClick
  end
  object ImgPoesia_Poetas: TImage
    Left = 21
    Top = 194
    Width = 35
    Height = 35
    Cursor = crArrow
    Hint = 'Poetas e Poemas Negros'
    OnClick = ImgPoesia_PoetasClick
  end
  object ImgMedia_Player: TImage
    Left = 21
    Top = 152
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 'Media Player'
    OnClick = ImgMedia_PlayerClick
  end
  object ImgLivro_2: TImage
    Left = 21
    Top = 114
    Width = 32
    Height = 34
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = ImgLivro_2Click
  end
  object ImgLivro: TImage
    Left = 20
    Top = 75
    Width = 32
    Height = 34
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = ImgLivroClick
  end
  object ImgBrasil_Band: TImage
    Left = -8
    Top = 640
    Width = 41
    Height = 49
  end
  object LblData: TLabel
    Left = 6
    Top = 688
    Width = 27
    Height = 16
    Caption = 'Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LblHora: TLabel
    Left = 91
    Top = 688
    Width = 29
    Height = 16
    Caption = 'Hora'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LblDia: TLabel
    Left = 156
    Top = 688
    Width = 84
    Height = 16
    Caption = 'Dia da Semana'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object ImgAsp_01: TImage
    Left = -14
    Top = 482
    Width = 105
    Height = 105
  end
  object LblT_04: TLabel
    Left = 158
    Top = 628
    Width = 67
    Height = 25
    AutoSize = False
    Caption = 'A Judia '
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LblT_03: TLabel
    Left = 49
    Top = 547
    Width = 201
    Height = 25
    AutoSize = False
    Caption = 'Do batuque folgaz'#227'o '
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 566
    Width = 201
    Height = 25
    AutoSize = False
    Caption = 'Pulam crioulas faceiras'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LblT_02: TLabel
    Left = 50
    Top = 525
    Width = 201
    Height = 25
    AutoSize = False
    Caption = 'Ao longe est'#227'o assetadas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LblT_01: TLabel
    Left = 50
    Top = 504
    Width = 201
    Height = 25
    AutoSize = False
    Caption = 'As Velhas Negras, coitadas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 47
    Top = 586
    Width = 201
    Height = 25
    AutoSize = False
    Caption = 'Em derredor das fogueiras'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 46
    Top = 606
    Width = 201
    Height = 25
    AutoSize = False
    Caption = 'E das pipas de alcatr'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object ImgAsp_02: TImage
    Left = 205
    Top = 603
    Width = 105
    Height = 87
  end
  object ImgAjuda: TImage
    Left = 21
    Top = 282
    Width = 32
    Height = 33
    Cursor = crHelp
    Hint = 'Ajuda'
    OnClick = ImgAjudaClick
  end
  object SpedButonAjuda: TSpeedButton
    Left = 60
    Top = 287
    Width = 159
    Height = 29
    Caption = '&Ajuda'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonAjudaClick
  end
  object SpedButonCreditos: TSpeedButton
    Left = 61
    Top = 328
    Width = 157
    Height = 30
    Caption = '&Cr'#233'ditos'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonCreditosClick
  end
  object lblmusik: TLabel
    Left = 16
    Top = 8
    Width = 3
    Height = 16
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object SpedButonLivros_refe: TSpeedButton
    Left = 60
    Top = 370
    Width = 160
    Height = 30
    Caption = 'Li&vros de Refer'#234'ncia'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonLivros_refeClick
  end
  object ImgCredito: TImage
    Left = 20
    Top = 325
    Width = 32
    Height = 30
    Hint = 'Ajuda'
    OnClick = ImgCreditoClick
  end
  object ImgRefe: TImage
    Left = 20
    Top = 369
    Width = 32
    Height = 30
    Hint = 'Ajuda'
    OnClick = ImgRefeClick
  end
  object ImgShockWave: TImage
    Left = 38
    Top = 645
    Width = 49
    Height = 41
    Cursor = crHandPoint
    Hint = 
      'Caso voc'#234' n'#227'o visualize as anima'#231#245'es corretamente, clique aqui p' +
      'ara instalar plugin do Flash.'
    OnClick = ImgShockWaveClick
    OnMouseMove = ImgShockWaveMouseMove
  end
  object ImgPrev: TImage
    Left = 166
    Top = 1
    Width = 33
    Height = 33
    OnClick = ImgPrevClick
  end
  object ImgNext: TImage
    Left = 228
    Top = 1
    Width = 33
    Height = 33
    OnClick = ImgNextClick
  end
  object ImgPlay: TImage
    Left = 197
    Top = 1
    Width = 33
    Height = 33
    OnClick = ImgPlayClick
  end
  object sfe: TShockwaveFlash
    Left = 263
    Top = 0
    Width = 457
    Height = 712
    TabOrder = 0
    ControlData = {
      67556655000900003B2F00009649000008000200000000000800000000000800
      0000000008000E000000570069006E0064006F00770000000800060000002D00
      310000000800060000002D003100000008000A00000048006900670068000000
      08000200000000000800060000002D0031000000080000000000080002000000
      0000080010000000530068006F00770041006C006C0000000800040000003000
      0000080004000000300000000800020000000000080000000000080002000000
      00000D0000000000000000000000000000000000080004000000310000000800
      0400000030000000080000000000080004000000300000000800080000006100
      6C006C00000008000C000000660061006C00730065000000}
  end
  object media: TMediaPlayer
    Left = 172
    Top = 448
    Width = 85
    Height = 30
    VisibleButtons = [btPlay, btPause, btStop]
    AutoRewind = False
    Display = media
    FileName = 'ExtractFilePath(application.ExeName)+'#39'Musikins\'#39
    Visible = False
    TabOrder = 1
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 104
    Top = 640
  end
  object PopupMenu: TPopupMenu
    Left = 232
    Top = 368
    object Dicionrio1: TMenuItem
      Caption = 'Dicio&n'#225'rio'
      OnClick = Dicionrio1Click
    end
    object Religioso1: TMenuItem
      Caption = 'R&eligioso'
      OnClick = Religioso1Click
    end
    object N1: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object Jogos1: TMenuItem
      Caption = '&Jogos'
      OnClick = Jogos1Click
    end
    object Literatura1: TMenuItem
      Caption = '&Literatura'
      OnClick = Literatura1Click
    end
    object N2: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object Pgina1: TMenuItem
      Caption = '&P'#225'gina'
      OnClick = Pgina1Click
    end
    object Dados1: TMenuItem
      Caption = '&Dados'
      OnClick = Dados1Click
    end
    object N3: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object Ajuda1: TMenuItem
      Caption = '&Ajuda'
      OnClick = Ajuda1Click
    end
    object Crditos1: TMenuItem
      Caption = '&Cr'#233'ditos'
      OnClick = Crditos1Click
    end
    object N4: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object LivrosdeReferncia1: TMenuItem
      Caption = 'Livros de &Refer'#234'ncia'
      OnClick = LivrosdeReferncia1Click
    end
    object Configuraes1: TMenuItem
      Caption = 'C&onfigura'#231#245'es'
      OnClick = Configuraes1Click
    end
  end
end
