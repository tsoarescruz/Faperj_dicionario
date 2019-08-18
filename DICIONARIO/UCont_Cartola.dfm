object FrmCont_Cartola: TFrmCont_Cartola
  Left = 379
  Top = 75
  Width = 807
  Height = 737
  BorderIcons = []
  Caption = 'Continua'#231#227'o da Biografia de Cartola'
  Color = clBtnText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object btnProx: TSpeedButton
    Left = 8
    Top = 272
    Width = 18
    Height = 121
    Caption = '&>>'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    OnMouseMove = btnProxMouseMove
  end
  object RichEdtDados_Pessoais: TRichEdit
    Left = 34
    Top = 8
    Width = 569
    Height = 113
    Color = clBtnText
    ReadOnly = True
    TabOrder = 0
  end
  object RichEdtRoamance: TRichEdit
    Left = 299
    Top = 351
    Width = 230
    Height = 193
    Color = clBtnText
    ReadOnly = True
    TabOrder = 1
  end
  object RichEdtPoesias: TRichEdit
    Left = 34
    Top = 351
    Width = 249
    Height = 113
    Color = clBtnText
    ReadOnly = True
    TabOrder = 2
  end
  object RichEdtTeatro: TRichEdit
    Left = 530
    Top = 422
    Width = 321
    Height = 203
    Color = clBtnText
    ReadOnly = True
    TabOrder = 3
  end
end
