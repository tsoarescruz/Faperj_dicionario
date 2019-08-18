object FrmApre: TFrmApre
  Left = 180
  Top = 140
  Width = 536
  Height = 419
  Hint = 'Apresenta'#231#227'o'
  BorderIcons = [biSystemMenu]
  Caption = 'Status da M'#225'quina'
  Color = clBtnText
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 16
  object Memo1: TMemo
    Left = 2
    Top = 4
    Width = 521
    Height = 381
    Hint = 'Informa'#231#245'es do Computador'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 32
    object Salvar1: TMenuItem
      Caption = '&Salvar'
      OnClick = Salvar1Click
    end
    object Atualizar1: TMenuItem
      Caption = 'A&tualizar'
      OnClick = Atualizar1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.TXT'
    FileName = 'BOOTEX'
    Filter = '*.TXT|*.TXT|*.DOC|*.DOC'
    InitialDir = 'C:\'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 376
    Top = 32
  end
end
