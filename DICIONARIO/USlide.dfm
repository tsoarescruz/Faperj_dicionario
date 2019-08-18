object FrmDicionario_pop_up: TFrmDicionario_pop_up
  Left = 591
  Top = 84
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dicion'#225'rio de Vocabul'#225'rio Ling'#252#237'stico - Modo Pop-up'
  ClientHeight = 627
  ClientWidth = 422
  Color = clBtnText
  Font.Charset = ANSI_CHARSET
  Font.Color = clRed
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  PopupMenu = Dicionario_PpMenu
  OnCloseQuery = FormCloseQuery
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 16
  object LblHint: TLabel
    Left = 16
    Top = 600
    Width = 3
    Height = 16
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object PnlPop_up: TPanel
    Left = 8
    Top = 16
    Width = 393
    Height = 73
    Color = clBtnText
    TabOrder = 0
    object LblPesquisa: TLabel
      Left = 17
      Top = 10
      Width = 49
      Height = 16
      Caption = 'Pesquisa'
    end
    object ImgFonte: TImage
      Left = 198
      Top = 23
      Width = 34
      Height = 36
      Hint = 'Fonte'
      OnClick = ImgFonteClick
      OnMouseMove = ImgFonteMouseMove
    end
    object ImgColor: TImage
      Left = 237
      Top = 24
      Width = 41
      Height = 33
      Hint = 'Cor do Programa'
      OnClick = ImgColorClick
      OnMouseMove = ImgColorMouseMove
    end
    object ImgBlocoNotas: TImage
      Left = 267
      Top = 24
      Width = 39
      Height = 33
      Hint = 'Bloco de Notas'
      OnClick = ImgBlocoNotasClick
      OnMouseMove = ImgBlocoNotasMouseMove
    end
    object ImgPoup: TImage
      Left = 302
      Top = 22
      Width = 41
      Height = 33
      OnClick = ImgPoupClick
      OnMouseMove = ImgPoupMouseMove
    end
    object ImgAjuda: TImage
      Left = 342
      Top = 23
      Width = 32
      Height = 33
      Cursor = crHelp
      Hint = 'Ajuda'
      OnClick = ImgAjudaClick
      OnMouseMove = ImgAjudaMouseMove
    end
    object edtbusca: TEdit
      Left = 15
      Top = 33
      Width = 177
      Height = 22
      Hint = 'Pesquisa'
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtbuscaChange
    end
  end
  object PnlListe: TPanel
    Left = 64
    Top = 96
    Width = 297
    Height = 81
    Color = clBtnText
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 9
      Top = 7
      Width = 280
      Height = 66
      Hint = 'Lista de Palavras para Pesquisa '
      DataSource = DataSource1
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clRed
      TitleFont.Height = -13
      TitleFont.Name = 'Times New Roman'
      TitleFont.Style = [fsBold, fsItalic]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'palavras'
          Width = 160
          Visible = True
        end>
    end
  end
  object BDMemSign: TDBMemo
    Left = 9
    Top = 184
    Width = 400
    Height = 409
    Hint = 'Tradu'#231#227'o'
    DataField = 'significado'
    DataSource = DataSource2
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
    OnChange = BDMemSignChange
  end
  object Web: TWebBrowser
    Left = 7
    Top = 185
    Width = 401
    Height = 409
    TabOrder = 3
    ControlData = {
      4C00000072290000452A00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 24
    Top = 184
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 56
    Top = 184
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
  object DataSource2: TDataSource
    DataSet = qrpesq2
    Left = 56
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
  object Dicionario_PpMenu: TPopupMenu
    Left = 88
    Top = 216
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Imprimir1: TMenuItem
        Caption = 'Imprimir'
        ShortCut = 16464
        OnClick = Imprimir1Click
      end
      object N1: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Sair: TMenuItem
        Caption = 'Sair'
        ShortCut = 16499
        OnClick = SairClick
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      object Recortar: TMenuItem
        Caption = 'Recortar'
        ShortCut = 16472
        OnClick = RecortarClick
      end
      object Copiar: TMenuItem
        Caption = 'Copiar'
        ShortCut = 16451
        OnClick = CopiarClick
      end
      object Colar: TMenuItem
        Caption = 'Colar'
        ShortCut = 16470
        OnClick = ColarClick
      end
      object N2: TMenuItem
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
    end
    object Ferramentas1: TMenuItem
      Caption = 'Ferramentas'
      object BlocodeNotas1: TMenuItem
        Caption = 'Bloco de Notas'
        ShortCut = 118
        OnClick = BlocodeNotas1Click
      end
      object N4: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Calculadora1: TMenuItem
        Caption = 'Calculadora'
        ShortCut = 119
        OnClick = Calculadora1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object Indice1: TMenuItem
        Caption = #205'ndice'
        ShortCut = 112
        OnClick = Indice1Click
      end
      object N3: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Sobre1: TMenuItem
        Caption = 'Sobre'
        ShortCut = 113
        OnClick = Sobre1Click
      end
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 56
    Top = 216
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.TXT'
    Filter = '*.TXT|*.TXT|*.DOC|*.DOC'
    InitialDir = 'C:\'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 24
    Top = 216
  end
  object OpenDialog1: TOpenDialog
    Left = 88
    Top = 184
  end
end
