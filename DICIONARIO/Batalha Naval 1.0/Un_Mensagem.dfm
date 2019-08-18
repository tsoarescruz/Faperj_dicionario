object Fm_Mensagem: TFm_Mensagem
  Left = 268
  Top = 217
  BorderStyle = bsNone
  ClientHeight = 53
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_Mensagem: TPanel
    Left = 0
    Top = 0
    Width = 371
    Height = 53
    Align = alClient
    Caption = 'Pnl_Mensagem'
    TabOrder = 0
    object Pnl_MensagemInterno: TPanel
      Left = 1
      Top = 1
      Width = 369
      Height = 51
      Align = alClient
      BevelOuter = bvLowered
      Caption = 'Voce perdeu a batalha !!!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Pnl_MensagemInternoClick
    end
  end
end
