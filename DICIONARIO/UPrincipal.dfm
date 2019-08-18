object FrmPrincipal: TFrmPrincipal
  Left = 277
  Top = 162
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Dicion'#225'rio Ling'#252#237'stico'
  ClientHeight = 499
  ClientWidth = 603
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PpDicionario_Tec
  Position = poDesktopCenter
  ShowHint = True
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object LblHint: TLabel
    Left = 8
    Top = 481
    Width = 3
    Height = 16
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = -1
    Top = 49
    Width = 604
    Height = 1
  end
  object Bevel1: TBevel
    Left = -4
    Top = 5
    Width = 607
    Height = 1
  end
  object ImgAjuda: TImage
    Left = 220
    Top = 10
    Width = 32
    Height = 33
    Cursor = crHelp
    Hint = 'Ajuda'
    OnClick = ImgAjudaClick
    OnMouseMove = ImgAjudaMouseMove
  end
  object ImgPoup: TImage
    Left = 181
    Top = 10
    Width = 41
    Height = 33
    OnClick = ImgPoupClick
    OnMouseMove = ImgPoupMouseMove
  end
  object ImgImpressao: TImage
    Left = 145
    Top = 10
    Width = 36
    Height = 35
    Hint = 'Impress'#227'o'
    OnClick = ImgImpressaoClick
    OnMouseMove = ImgImpressaoMouseMove
  end
  object ImgCalc: TImage
    Left = 111
    Top = 10
    Width = 36
    Height = 35
    Hint = 'Calculadora'
    OnClick = ImgCalcClick
    OnMouseMove = ImgCalcMouseMove
  end
  object ImgBlocoNotas: TImage
    Left = 82
    Top = 10
    Width = 39
    Height = 33
    Hint = 'Bloco de Notas '
    OnClick = ImgBlocoNotasClick
    OnMouseMove = ImgBlocoNotasMouseMove
  end
  object ImgColor: TImage
    Left = 48
    Top = 11
    Width = 38
    Height = 33
    Hint = 'Cor do Programa'
    OnClick = ImgColorClick
    OnMouseMove = ImgColorMouseMove
  end
  object ImgFonte: TImage
    Left = 8
    Top = 10
    Width = 34
    Height = 36
    Hint = 'Fonte'
    OnClick = ImgFonteClick
    OnMouseMove = ImgFonteMouseMove
  end
  object edtbusca: TEdit
    Left = 420
    Top = 17
    Width = 177
    Height = 22
    Hint = 'Pesquisa'
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    OnChange = edtbuscaChange
  end
  object DBGrid1: TDBGrid
    Left = 415
    Top = 56
    Width = 185
    Height = 417
    Hint = 'Lista de Palavras para Pesquisa '
    DataSource = DataSource1
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'palavras'
        Width = 160
        Visible = True
      end>
  end
  object BDMemSign: TDBMemo
    Left = 9
    Top = 56
    Width = 400
    Height = 417
    Hint = 'Tradu'#231#227'o'
    DataField = 'significado'
    DataSource = DataSource2
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
    OnChange = BDMemSignChange
  end
  object Web: TWebBrowser
    Left = 8
    Top = 55
    Width = 401
    Height = 417
    TabOrder = 3
    ControlData = {
      4C00000072290000192B00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.TXT'
    FileName = 'Save'
    Filter = '*.TXT|*.TXT|*.DOC|*.DOC'
    InitialDir = 'C:\'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 56
    Top = 280
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 56
    Top = 312
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Color = clBtnHighlight
    CustomColors.Strings = (
      'ColorA=FFFFFFFF'
      'ColorB=FFFFFFFF'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Left = 24
    Top = 280
  end
  object PrintDialog1: TPrintDialog
    Left = 24
    Top = 312
  end
  object DataSource2: TDataSource
    DataSet = qrpesq2
    Left = 56
    Top = 248
  end
  object qrpesq: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select palavras from palavras order by palavras')
    Left = 120
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = qrpesq
    Left = 88
    Top = 248
  end
  object qrpesq2: TADOQuery
    Connection = DM.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select significado from palavras')
    Left = 24
    Top = 248
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 280
    object Arquivo1: TMenuItem
      Caption = '&Menu'
      Hint = 'Menu'
      object Imprimir1: TMenuItem
        Caption = '&Imprimir'
        Hint = 'Imprimir'
        ShortCut = 16464
        OnClick = Imprimir1Click
      end
      object Sair1: TMenuItem
        Caption = 'Sai&r'
        Hint = 'Sair'
        ShortCut = 16499
        OnClick = Sair1Click
      end
    end
    object Editar1: TMenuItem
      Caption = '&Editar'
      Hint = 'Editar'
      object Recortar1: TMenuItem
        Caption = 'Recor&tar'
        Hint = 'Recortar'
        ShortCut = 16472
        OnClick = Recortar1Click
      end
      object Copiar1: TMenuItem
        Caption = 'Co&piar'
        Hint = 'Copiar'
        ShortCut = 16451
        OnClick = Copiar1Click
      end
      object Colar1: TMenuItem
        Caption = 'Co&lar'
        Hint = 'Colar'
        ShortCut = 16470
        OnClick = Colar1Click
      end
      object N2: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object FontedoPrograma1: TMenuItem
        Caption = 'F&onte'
        Hint = 'Fonte'
        ShortCut = 116
        OnClick = FontedoPrograma1Click
      end
      object TrocarcordoPrograma1: TMenuItem
        Caption = '&Cor'
        Hint = 'Cor'
        ShortCut = 117
        OnClick = TrocarcordoPrograma1Click
      end
      object ModoPopup2: TMenuItem
        Caption = 'Modo Pop-up'
        ShortCut = 119
        OnClick = ModoPopup2Click
      end
    end
    object Ferramentas1: TMenuItem
      Caption = '&Ferramentas'
      object BlocodeNotas1: TMenuItem
        Caption = 'Blo&co de Notas'
        Hint = 'Bloco de Notas'
        ShortCut = 118
        OnClick = BlocodeNotas1Click
      end
      object Calculadora1: TMenuItem
        Caption = 'Calc&uladora'
        Hint = 'Calculadora'
        ShortCut = 120
        OnClick = Calculadora1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object Indice1: TMenuItem
        Caption = #205'&ndice'
        ShortCut = 112
        OnClick = Indice1Click
      end
      object Sobre1: TMenuItem
        Caption = 'So&bre'
        ShortCut = 113
        OnClick = Sobre1Click
      end
    end
  end
  object PpDicionario_Tec: TPopupMenu
    Left = 88
    Top = 312
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Imprimir2: TMenuItem
        Caption = 'Imprimir'
        ShortCut = 16464
        OnClick = Imprimir2Click
      end
      object N1: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Sair2: TMenuItem
        Caption = 'Sair'
        ShortCut = 16499
        OnClick = Sair2Click
      end
    end
    object Editar2: TMenuItem
      Caption = 'Editar'
      object Recortar2: TMenuItem
        Caption = 'Recortar'
        ShortCut = 16472
        OnClick = Recortar2Click
      end
      object Copiar2: TMenuItem
        Caption = 'Copiar'
        ShortCut = 16451
        OnClick = Copiar2Click
      end
      object Colar2: TMenuItem
        Caption = 'Colar'
        ShortCut = 16470
        OnClick = Colar2Click
      end
      object N5: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Fonte1: TMenuItem
        Caption = 'Fonte'
        ShortCut = 116
        OnClick = Fonte1Click
      end
      object Cor1: TMenuItem
        Caption = 'Cor'
        ShortCut = 117
        OnClick = Cor1Click
      end
      object ModoPopup1: TMenuItem
        Caption = 'Modo Pop-up'
        ShortCut = 119
        OnClick = ModoPopup1Click
      end
    end
    object Ferramentas2: TMenuItem
      Caption = 'Ferramentas'
      object BlocodeNotas2: TMenuItem
        Caption = 'Bloco de Notas'
        ShortCut = 118
        OnClick = BlocodeNotas2Click
      end
      object N8: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Calculadora2: TMenuItem
        Caption = 'Calculadora'
        ShortCut = 119
        OnClick = Calculadora2Click
      end
    end
    object Ajuda2: TMenuItem
      Caption = 'Ajuda'
      object indice2: TMenuItem
        Caption = #205'ndice'
        ShortCut = 112
        OnClick = indice2Click
      end
      object N9: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Sobre2: TMenuItem
        Caption = 'Sobre'
        ShortCut = 113
        OnClick = Sobre2Click
      end
    end
    object DicionrioReligioso1: TMenuItem
      Caption = 'Mais Op'#231#245'es'
      object DicionrioReligioso2: TMenuItem
        Caption = 'Dicion'#225'rio R&eligioso'
        OnClick = DicionrioReligioso2Click
      end
      object N4: TMenuItem
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
      object N6: TMenuItem
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
      object N7: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Crditos1: TMenuItem
        Caption = '&Cr'#233'ditos'
        OnClick = Crditos1Click
      end
      object Configuraes1: TMenuItem
        Caption = 'C&onfigura'#231#245'es'
        OnClick = Configuraes1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 88
    Top = 280
  end
end
