object FrmTipos_Poemas: TFrmTipos_Poemas
  Left = 436
  Top = 349
  Hint = 'Poemas'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Poemas de Machado de Assis'
  ClientHeight = 342
  ClientWidth = 539
  Color = clBtnFace
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
  object SpedButonMosca_Azul: TSpeedButton
    Left = 95
    Top = 24
    Width = 153
    Height = 25
    Hint = #192'frica'
    Caption = '&A Mosca Azul'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonMosca_AzulClick
  end
  object SpedButonCarolina: TSpeedButton
    Left = 95
    Top = 64
    Width = 153
    Height = 25
    Hint = 'Carolina'
    Caption = '&Carolina'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonCarolinaClick
  end
  object SpedButonCirculo: TSpeedButton
    Left = 95
    Top = 104
    Width = 153
    Height = 25
    Caption = '&C'#237'rculo Vicioso'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonCirculoClick
  end
  object SpedButonReliquia_intima: TSpeedButton
    Left = 95
    Top = 144
    Width = 153
    Height = 25
    Hint = 'Rel'#237'quia '#205'ntima'
    Caption = '&Rel'#237'quia '#205'ntima'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpedButonReliquia_intimaClick
  end
  object ImgMosca_Azul: TImage
    Left = 11
    Top = 24
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = ImgMosca_AzulClick
  end
  object ImgCarolina: TImage
    Left = 11
    Top = 62
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = ImgCarolinaClick
  end
  object ImgCircule: TImage
    Left = 11
    Top = 101
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = ImgCirculeClick
  end
  object ImgReliq: TImage
    Left = 12
    Top = 137
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = ImgReliqClick
  end
  object Img01: TImage
    Left = 51
    Top = 24
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = Img01Click
  end
  object Img02: TImage
    Left = 51
    Top = 62
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = Img02Click
  end
  object Img03: TImage
    Left = 51
    Top = 101
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = Img03Click
  end
  object Img04: TImage
    Left = 52
    Top = 137
    Width = 33
    Height = 33
    Cursor = crArrow
    Hint = 
      'Dicion'#225'rio Tecnico Ling'#252#237'stico de Religi'#227'o das Culturas Negras n' +
      'o Brasil'
    OnClick = Img04Click
  end
  object ImgFlor: TImage
    Left = 10
    Top = 176
    Width = 33
    Height = 33
    OnClick = ImgFlorClick
  end
  object Img05: TImage
    Left = 52
    Top = 176
    Width = 33
    Height = 33
  end
  object Img06: TImage
    Left = 52
    Top = 216
    Width = 33
    Height = 33
  end
  object ImgLegista: TImage
    Left = 10
    Top = 216
    Width = 33
    Height = 33
    OnClick = ImgLegistaClick
  end
  object Img07: TImage
    Left = 52
    Top = 256
    Width = 33
    Height = 33
  end
  object ImgSenhora: TImage
    Left = 10
    Top = 256
    Width = 33
    Height = 33
    OnClick = ImgSenhoraClick
  end
  object Img08: TImage
    Left = 52
    Top = 296
    Width = 33
    Height = 33
  end
  object ImgMocidade: TImage
    Left = 10
    Top = 296
    Width = 33
    Height = 33
    OnClick = ImgMocidadeClick
  end
  object SpedButonFlor_Embirocu: TSpeedButton
    Left = 96
    Top = 184
    Width = 153
    Height = 25
    Caption = 'A Flor do Embiro'#231'u'
    Flat = True
    OnClick = SpedButonFlor_EmbirocuClick
  end
  object SpedButonLegista: TSpeedButton
    Left = 96
    Top = 224
    Width = 153
    Height = 25
    Caption = 'A um Legista'
    Flat = True
    OnClick = SpedButonLegistaClick
  end
  object SpedButonCriatura: TSpeedButton
    Left = 96
    Top = 264
    Width = 153
    Height = 25
    Caption = 'Uma Criatura'
    Flat = True
    OnClick = SpedButonCriaturaClick
  end
  object SpedButonMocidade: TSpeedButton
    Left = 96
    Top = 304
    Width = 153
    Height = 25
    Caption = 'Flor da Mocidade'
    Flat = True
    OnClick = SpedButonMocidadeClick
  end
  object SpedButonHoras: TSpeedButton
    Left = 360
    Top = 24
    Width = 153
    Height = 25
    Caption = 'Horas Vivas'
    Flat = True
    OnClick = SpedButonHorasClick
  end
  object Img09: TImage
    Left = 316
    Top = 16
    Width = 33
    Height = 33
  end
  object ImgHoras: TImage
    Left = 274
    Top = 16
    Width = 33
    Height = 33
    OnClick = ImgHorasClick
  end
  object SpedButonLivros: TSpeedButton
    Left = 360
    Top = 64
    Width = 153
    Height = 25
    Caption = 'Livros e Flores'
    Flat = True
    OnClick = SpedButonLivrosClick
  end
  object Img10: TImage
    Left = 316
    Top = 56
    Width = 33
    Height = 33
  end
  object ImgLivro: TImage
    Left = 274
    Top = 56
    Width = 33
    Height = 33
    OnClick = ImgLivroClick
  end
  object ImgMenina: TImage
    Left = 274
    Top = 96
    Width = 33
    Height = 33
    OnClick = ImgMeninaClick
  end
  object Img11: TImage
    Left = 316
    Top = 96
    Width = 33
    Height = 33
  end
  object SpedButonMoca: TSpeedButton
    Left = 360
    Top = 104
    Width = 153
    Height = 25
    Caption = 'Menina e Mo'#231'a'
    Flat = True
    OnClick = SpedButonMocaClick
  end
  object SpedButonAlto: TSpeedButton
    Left = 360
    Top = 144
    Width = 153
    Height = 25
    Caption = 'No Alto'
    Flat = True
    OnClick = SpedButonAltoClick
  end
  object ImgAlto: TImage
    Left = 274
    Top = 136
    Width = 33
    Height = 33
    OnClick = ImgAltoClick
  end
  object Img12: TImage
    Left = 316
    Top = 136
    Width = 33
    Height = 33
  end
  object SpedButonDilu: TSpeedButton
    Left = 360
    Top = 184
    Width = 153
    Height = 25
    Caption = 'O Dil'#250'vio'
    Flat = True
    OnClick = SpedButonDiluClick
  end
  object Img13: TImage
    Left = 316
    Top = 176
    Width = 33
    Height = 33
  end
  object ImgDiluvio: TImage
    Left = 274
    Top = 176
    Width = 33
    Height = 33
    OnClick = ImgDiluvioClick
  end
  object SpedButonHori: TSpeedButton
    Left = 360
    Top = 224
    Width = 153
    Height = 25
    Caption = 'Os Dois Horizontes'
    Flat = True
    OnClick = SpedButonHoriClick
  end
  object Img14: TImage
    Left = 316
    Top = 216
    Width = 33
    Height = 33
  end
  object ImgHori: TImage
    Left = 274
    Top = 216
    Width = 33
    Height = 33
    OnClick = ImgHoriClick
  end
  object ImgNatal: TImage
    Left = 274
    Top = 256
    Width = 33
    Height = 33
    OnClick = ImgNatalClick
  end
  object Img15: TImage
    Left = 316
    Top = 256
    Width = 33
    Height = 33
  end
  object SpedButonNatal: TSpeedButton
    Left = 360
    Top = 264
    Width = 153
    Height = 25
    Caption = 'Soneto de Natal'
    Flat = True
    OnClick = SpedButonNatalClick
  end
  object SpedButonStella: TSpeedButton
    Left = 360
    Top = 304
    Width = 153
    Height = 25
    Caption = 'Stella'
    Flat = True
    OnClick = SpedButonStellaClick
  end
  object ImgStella: TImage
    Left = 274
    Top = 296
    Width = 33
    Height = 33
    OnClick = ImgStellaClick
  end
  object Img16: TImage
    Left = 316
    Top = 296
    Width = 33
    Height = 33
  end
end
