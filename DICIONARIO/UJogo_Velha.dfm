object FrmJogo_Velha: TFrmJogo_Velha
  Left = 363
  Top = 208
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Jogo da Velha'
  ClientHeight = 181
  ClientWidth = 411
  Color = clBtnText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
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
  object Label1: TLabel
    Left = 312
    Top = 8
    Width = 52
    Height = 16
    Caption = 'Legenda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 312
    Top = 40
    Width = 77
    Height = 16
    Caption = '1'#176'Jogador - O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 312
    Top = 64
    Width = 77
    Height = 16
    Caption = '2'#176'Jogador - X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 0
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 3
    Height = 13
  end
  object Label6: TLabel
    Left = 408
    Top = 16
    Width = 3
    Height = 13
  end
  object Panel1: TPanel
    Left = 12
    Top = 17
    Width = 281
    Height = 145
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 16
      Width = 75
      Height = 33
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 104
      Top = 16
      Width = 75
      Height = 33
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 192
      Top = 16
      Width = 75
      Height = 33
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 16
      Top = 57
      Width = 75
      Height = 32
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 104
      Top = 56
      Width = 73
      Height = 33
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 192
      Top = 56
      Width = 73
      Height = 33
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 16
      Top = 96
      Width = 75
      Height = 33
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 104
      Top = 96
      Width = 73
      Height = 33
      TabOrder = 7
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 192
      Top = 96
      Width = 73
      Height = 33
      TabOrder = 8
      OnClick = Button9Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 8
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      object Novo1: TMenuItem
        Caption = '&Novo'
        OnClick = Novo1Click
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        OnClick = Sair1Click
      end
    end
  end
end
