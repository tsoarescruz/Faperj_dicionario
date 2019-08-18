object FrmConfiguracoes: TFrmConfiguracoes
  Left = 323
  Top = 189
  Hint = 'Configura'#231#245'es'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es'
  ClientHeight = 433
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clRed
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object LblHint: TLabel
    Left = 16
    Top = 397
    Width = 3
    Height = 13
  end
  object LblHinter: TLabel
    Left = 16
    Top = 415
    Width = 3
    Height = 13
  end
  object GrB_Sistem: TGroupBox
    Left = 8
    Top = 8
    Width = 417
    Height = 137
    Caption = ' Sistema Operacional '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    OnMouseMove = GrB_SistemMouseMove
    object SpedButonreboot: TSpeedButton
      Left = 274
      Top = 33
      Width = 135
      Height = 32
      Caption = 'Rei&niciar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = SpedButonrebootClick
      OnMouseMove = SpedButonrebootMouseMove
    end
    object SpedButonshut_down: TSpeedButton
      Left = 55
      Top = 33
      Width = 138
      Height = 32
      Caption = 'Desliga&r'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = SpedButonshut_downClick
      OnMouseMove = SpedButonshut_downMouseMove
    end
    object SpedButonLoggin: TSpeedButton
      Left = 56
      Top = 80
      Width = 137
      Height = 33
      Caption = '&Logoff'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = SpedButonLogginClick
      OnMouseMove = SpedButonLogginMouseMove
    end
    object SpedButonforce: TSpeedButton
      Left = 275
      Top = 80
      Width = 134
      Height = 33
      Caption = 'Fe&char Tudo'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = SpedButonforceClick
      OnMouseMove = SpedButonforceMouseMove
    end
    object ImgDesl: TImage
      Left = 8
      Top = 32
      Width = 33
      Height = 33
      OnClick = ImgDeslClick
    end
    object ImgLogg: TImage
      Left = 8
      Top = 80
      Width = 41
      Height = 41
      OnClick = ImgLoggClick
    end
    object ImgFecharTudo: TImage
      Left = 224
      Top = 80
      Width = 33
      Height = 33
      OnClick = ImgFecharTudoClick
    end
    object ImgReininciar: TImage
      Left = 224
      Top = 32
      Width = 33
      Height = 33
      OnClick = ImgReininciarClick
    end
  end
  object GrB_Program: TGroupBox
    Left = 8
    Top = 152
    Width = 417
    Height = 89
    Caption = ' Programa '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    OnMouseMove = GrB_ProgramMouseMove
    object SpedButonProcess_Memory: TSpeedButton
      Left = 264
      Top = 32
      Width = 145
      Height = 33
      Caption = 'Status da &M'#225'quina'
      Flat = True
      OnClick = SpedButonProcess_MemoryClick
      OnMouseMove = SpedButonProcess_MemoryMouseMove
    end
    object SpedButonDados: TSpeedButton
      Left = 54
      Top = 32
      Width = 147
      Height = 33
      Caption = 'D&ados M'#237'nimos'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = SpedButonDadosClick
      OnMouseMove = SpedButonDadosMouseMove
    end
    object ImgDados_Mini: TImage
      Left = 8
      Top = 32
      Width = 41
      Height = 41
      OnClick = ImgDados_MiniClick
    end
    object ImgStatus: TImage
      Left = 222
      Top = 31
      Width = 41
      Height = 41
      OnClick = ImgStatusClick
    end
  end
  object GpBOutras_Func: TGroupBox
    Left = 8
    Top = 256
    Width = 417
    Height = 137
    Caption = 'Outras Fun'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    object SpedButonA_CD: TSpeedButton
      Left = 56
      Top = 27
      Width = 137
      Height = 30
      Caption = 'A&brir Drive de CD'
      Flat = True
      OnClick = SpedButonA_CDClick
      OnMouseMove = SpedButonA_CDMouseMove
    end
    object SpedButonF_CD: TSpeedButton
      Left = 56
      Top = 75
      Width = 137
      Height = 30
      Caption = '&Fechar Drive de CD'
      Flat = True
      OnClick = SpedButonF_CDClick
      OnMouseMove = SpedButonF_CDMouseMove
    end
    object SpedButonScreen_Saver: TSpeedButton
      Left = 268
      Top = 24
      Width = 133
      Height = 33
      Caption = 'Prote'#231#227'o de &Tela'
      Flat = True
      OnClick = SpedButonScreen_SaverClick
      OnMouseMove = SpedButonScreen_SaverMouseMove
    end
    object SpedButonPlorer: TSpeedButton
      Left = 272
      Top = 72
      Width = 129
      Height = 33
      Caption = 'Expl&orer'
      Flat = True
      OnClick = SpedButonPlorerClick
      OnMouseMove = SpedButonPlorerMouseMove
    end
    object ImgA_CD: TImage
      Left = 16
      Top = 16
      Width = 41
      Height = 41
      OnClick = ImgA_CDClick
    end
    object ImgF_CD: TImage
      Left = 16
      Top = 72
      Width = 41
      Height = 41
      OnClick = ImgF_CDClick
    end
    object ImgScr_Saver: TImage
      Left = 224
      Top = 24
      Width = 41
      Height = 41
      OnClick = ImgScr_SaverClick
    end
    object ImgPlorer: TImage
      Left = 224
      Top = 72
      Width = 41
      Height = 41
      OnClick = ImgPlorerClick
    end
  end
end
