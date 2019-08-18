object FrmCaca_Palavras: TFrmCaca_Palavras
  Left = 269
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ca'#231'a Palavras'
  ClientHeight = 477
  ClientWidth = 689
  Color = clBtnText
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnMouseMove = FormMouseMove
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 7
    Top = 12
    Width = 493
    Height = 425
  end
  object LblMona: TLabel
    Left = 16
    Top = 88
    Width = 41
    Height = 16
    Cursor = crHelp
    Caption = 'Mulher'
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    OnClick = LblMonaClick
    OnMouseMove = LblMonaMouseMove
    OnMouseLeave = LblMonaMouseLeave
  end
  object LblCompa: TLabel
    Left = 72
    Top = 56
    Width = 76
    Height = 17
    Cursor = crHelp
    Caption = 'Companheira'
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    OnClick = LblCompaClick
    OnMouseMove = LblCompaMouseMove
    OnMouseLeave = LblCompaMouseLeave
  end
  object LblSaco: TLabel
    Left = 208
    Top = 280
    Width = 27
    Height = 16
    Cursor = crHelp
    Caption = 'Saco'
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    OnClick = LblSacoClick
    OnMouseMove = LblSacoMouseMove
    OnMouseLeave = LblSacoMouseLeave
  end
  object LblTot_A_1: TLabel
    Left = 512
    Top = 8
    Width = 98
    Height = 16
    Caption = 'Total de Acertos :'
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object LblTot_E_1: TLabel
    Left = 512
    Top = 32
    Width = 87
    Height = 16
    Caption = 'Total de Erros :'
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object LblTot_A: TLabel
    Left = 624
    Top = 11
    Width = 3
    Height = 16
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object LblTot_E: TLabel
    Left = 624
    Top = 35
    Width = 3
    Height = 16
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object LblHelp: TLabel
    Left = 16
    Top = 448
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
    Left = 512
    Top = 72
    Width = 153
    Height = 129
  end
  object SpedButonLimpar: TSpeedButton
    Left = 528
    Top = 88
    Width = 121
    Height = 33
    Caption = '&Limpar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonLimparClick
  end
  object SpedButonCorri: TSpeedButton
    Left = 528
    Top = 136
    Width = 121
    Height = 33
    Caption = 'Co&rrigir'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonCorriClick
  end
  object EdtMona_1_Mucamba_1: TEdit
    Left = 81
    Top = 86
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 0
    OnChange = EdtMona_1_Mucamba_1Change
    OnExit = EdtMona_1_Mucamba_1Exit
  end
  object EdtMona_2: TEdit
    Left = 121
    Top = 86
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 1
    OnChange = EdtMona_2Change
    OnExit = EdtMona_2Exit
  end
  object EdtMona_3: TEdit
    Left = 161
    Top = 86
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 2
    OnChange = EdtMona_3Change
    OnExit = EdtMona_3Exit
  end
  object EdtMona_4_Muxila_6: TEdit
    Left = 201
    Top = 86
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 3
    OnChange = EdtMona_4_Muxila_6Change
    OnExit = EdtMona_4_Muxila_6Exit
  end
  object EdtMucamba_2: TEdit
    Left = 81
    Top = 118
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 4
    OnChange = EdtMucamba_2Change
  end
  object EdtMucamba_3: TEdit
    Left = 81
    Top = 150
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 5
    OnChange = EdtMucamba_3Change
  end
  object EdtMucamba_4: TEdit
    Left = 81
    Top = 182
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 6
    OnChange = EdtMucamba_4Change
  end
  object EdtMucamba_7: TEdit
    Left = 81
    Top = 278
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 7
    OnChange = EdtMucamba_7Change
  end
  object EdtMucamba_6: TEdit
    Left = 81
    Top = 246
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 8
    OnChange = EdtMucamba_6Change
  end
  object EdtMucamba_5: TEdit
    Left = 81
    Top = 214
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 9
    OnChange = EdtMucamba_5Change
  end
  object EdtMuxila_1: TEdit
    Left = 201
    Top = 246
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 10
    OnChange = EdtMuxila_1Change
  end
  object EdtMuxila_2: TEdit
    Left = 201
    Top = 214
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 11
    OnChange = EdtMuxila_2Change
  end
  object EdtMuxila_3: TEdit
    Left = 201
    Top = 182
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 12
    OnChange = EdtMuxila_3Change
  end
  object EdtMuxila_4: TEdit
    Left = 201
    Top = 150
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 13
    OnChange = EdtMuxila_4Change
  end
  object EdtMuxila_5: TEdit
    Left = 201
    Top = 118
    Width = 32
    Height = 24
    CharCase = ecUpperCase
    MaxLength = 1
    TabOrder = 14
    OnChange = EdtMuxila_5Change
  end
  object EdtNada: TEdit
    Left = 624
    Top = 488
    Width = 41
    Height = 24
    TabOrder = 15
  end
end
