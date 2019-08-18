object FrmNotas: TFrmNotas
  Left = 192
  Top = 102
  Width = 703
  Height = 607
  Hint = 'Bloco de Notas'
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Bloco de Notas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MemBloc_Notas: TMemo
    Left = 0
    Top = 0
    Width = 695
    Height = 561
    ScrollBars = ssBoth
    TabOrder = 0
    OnChange = MemBloc_NotasChange
  end
  object PrintDialog1: TPrintDialog
    Left = 72
    Top = 40
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 72
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.Txt'
    Filter = '*.Txt|*.Txt|*.Doc|*.Doc'
    InitialDir = 'C:\'
    Left = 40
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      Hint = 'Arquivo'
      object Novo1: TMenuItem
        Caption = 'No&vo'
        Hint = 'Novo'
        OnClick = Novo1Click
      end
      object N1: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Abrir1: TMenuItem
        Caption = 'Abr&ir'
        Hint = 'Abrir'
        ShortCut = 16449
        OnClick = Abrir1Click
      end
      object Salvar1: TMenuItem
        Caption = 'Sa&lvar'
        Hint = 'Salvar'
        ShortCut = 16450
        OnClick = Salvar1Click
      end
      object N2: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Imprimir1: TMenuItem
        Caption = 'Im&primir'
        Hint = 'Imprimir'
        ShortCut = 16464
        OnClick = Imprimir1Click
      end
      object N3: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Sair1: TMenuItem
        Caption = 'Sai&r'
        Hint = 'Sair'
        OnClick = Sair1Click
      end
    end
    object EDitar1: TMenuItem
      Caption = 'Editar'
      Hint = 'Editar'
      object Recortar1: TMenuItem
        Caption = 'Recor&tar'
        Hint = 'Recortar'
        ShortCut = 16472
        OnClick = Recortar1Click
      end
      object Copiar1: TMenuItem
        Caption = '&Copiar'
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
      object N4: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Limpar1: TMenuItem
        Caption = '&Limpar'
        Hint = 'Limpar'
        ShortCut = 46
        OnClick = Limpar1Click
      end
      object Formatar1: TMenuItem
        Caption = '&Formatar'
        Hint = 'Formatar'
        object cor1: TMenuItem
          Caption = 'C&or'
          Hint = 'Cor'
          OnClick = cor1Click
        end
        object Fonte1: TMenuItem
          Caption = 'Fo&nte'
          Hint = 'Fonte'
          OnClick = Fonte1Click
        end
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      Hint = 'Ajuda'
      object Indice1: TMenuItem
        Caption = #205'ndice'
        ShortCut = 112
        OnClick = Indice1Click
      end
      object Sobre1: TMenuItem
        Caption = 'Sobr&e'
        Hint = 'Sobre'
        OnClick = Sobre1Click
      end
    end
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 8
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.Txt'
    Filter = '*.Txt|*.Txt|*.Doc|*.Doc'
    InitialDir = 'C:\'
    Left = 40
    Top = 40
  end
end
