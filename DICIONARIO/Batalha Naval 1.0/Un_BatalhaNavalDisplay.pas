unit Un_BatalhaNavalDisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, RzBorder, StdCtrls;

type
  TTipoItemCampoBatalha = (icbAgua,
                           icbDesconhecido,
                           icbPortaAvioes,
                           icbCouracado,
                           icbSubmarino,
                           icbTorpedeiro,
                           icbCaca);

  TTipoItensCampoBatalha = set of TTipoItemCampoBatalha;

  TTipoMensagem = (tmVitoria,tmDerrota,tmInformacao);

  TDirecao = (drAcima,drAbaixo,drEsquerda,drDireita,drNenhuma);
  TDirecoes = set of TDirecao;

  TTipoImagem = (tiFogo,tiAgua,tiNenhuma);

  TItemCampoBatalha = Class(TObject)
    private
      FTipo:TTipoItemCampoBatalha;
      FAlvejado:Boolean;
      FEncontrado:Boolean;
      FTipoImagem:TTipoImagem;
    public
      property Tipo:TTipoItemCampoBatalha read FTipo write FTipo;
      property Alvejado:Boolean read FAlvejado write FAlvejado;
      property Encontrado:Boolean read FEncontrado write FEncontrado;
      property TipoImagem:TTipoImagem read FTipoImagem write FTipoImagem;
      Constructor CreateItem(PvTicbTipo:TTipoItemCampoBatalha);
  end;

  TCampoBatalha = Array [1..10,1..10] of TItemCampoBatalha;

  TFm_BatalhaNavalDisplay = class(TForm)
    MenJogo: TMainMenu;
    Pnl_Visor: TPanel;
    Pnl_CampoBatalha: TPanel;
    PntBox_CampoAliado: TPaintBox;
    PntBox_CampoInimigo: TPaintBox;
    LedDspVisor: TRzLEDDisplay;
    MemItmJogo: TMenuItem;
    MemItmNovo: TMenuItem;
    MemItmSair: TMenuItem;
    Lbl_CampoAliado: TLabel;
    Lbl_CampoInimigo: TLabel;
    Pnl_ArmasEmbarcacoes: TPanel;
    Bvl_CampoAliado: TBevel;
    Bvl_CampoInimigo: TBevel;
    Bvl_Armas: TBevel;
    Bvl_Embarcacoes: TBevel;
    Lbl_Embarcacoes: TLabel;
    Lbl_Armas: TLabel;
    PntBox_Torpedo: TPaintBox;
    PntBox_Radar: TPaintBox;
    PntBox_Bomba: TPaintBox;
    PntBox_PortaAvioes: TPaintBox;
    PntBox_Couracado: TPaintBox;
    PntBox_SubMarino: TPaintBox;
    PntBox_Torpedeiro: TPaintBox;
    PntBox_Caca: TPaintBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Img_Torpedo: TImage;
    Img_Radar: TImage;
    Img_Bomba: TImage;
    Img_TorpedoSelecionado: TImage;
    Img_RadarSelecionado: TImage;
    Img_BombaSelecionado: TImage;
    PntBox_NumerosAliado: TPaintBox;
    PntBox_NumerosInimigo: TPaintBox;
    PntBox_LetrasAliado: TPaintBox;
    PntBox_LetrasInimigo: TPaintBox;
    Bvl_Auxiliar1: TBevel;
    Bvl_Auxiliar2: TBevel;
    Img_Agua: TImage;
    Img_Fogo: TImage;
    procedure FormCreate(Sender: TObject);
    procedure MemItmSairClick(Sender: TObject);
    procedure PntBox_CampoAliadoPaint(Sender: TObject);
    procedure PntBox_CampoInimigoPaint(Sender: TObject);
    procedure PntBox_TorpedoPaint(Sender: TObject);
    procedure PntBox_RadarPaint(Sender: TObject);
    procedure PntBox_BombaPaint(Sender: TObject);
    procedure PntBox_PortaAvioesPaint(Sender: TObject);
    procedure PntBox_CouracadoPaint(Sender: TObject);
    procedure PntBox_SubMarinoPaint(Sender: TObject);
    procedure PntBox_TorpedeiroPaint(Sender: TObject);
    procedure PntBox_CacaPaint(Sender: TObject);
    procedure LedDspVisorScrollComplete(Sender: TObject);
    procedure MemItmNovoClick(Sender: TObject);
    procedure PntBox_CampoInimigoMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PntBox_CampoAliadoDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure PntBox_CampoAliadoDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure PntBox_CampoAliadoMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PntBox_ArmasClick(Sender: TObject);
    procedure PntBox_LetrasPaint(Sender: TObject);
    procedure PntBox_NumerosPaint(Sender: TObject);
  private
    { Private declarations }
    GCbCampoAliado:TCampoBatalha;
    GCbCampoInimigo:TCampoBatalha;
    GbJogoEmCurso:Boolean;

    GiPortaAvioesInimigo:Integer;
    GiCouracadoInimigo:Integer;
    GiSubmarinoInimigo:Integer;
    GiTorpedeiroInimigo:Integer;
    GiCacaInimigo:Integer;

    GiPortaAvioesAliado:Integer;
    GiCouracadoAliado:Integer;
    GiSubmarinoAliado:Integer;
    GiTorpedeiroAliado:Integer;
    GiCacaAliado:Integer;

    GbEmbarcacoesPosicionadas:Boolean;
    GiQtdEsquerda:Integer;
    GiQtdDireita:Integer;
    GiQtdCima:Integer;
    GiQtdBaixo:Integer;
    GicbTipoEmbaracao:TTipoItemCampoBatalha;
    GclCorEncontrado:TColor;

    GdrDirecoesParaAtacar:TDirecoes;
    GbUltimoTiroBemSucedido:Boolean;
    GiPosicaoXUltimoTiroBemSucedido:Integer;
    GiPosicaoYUltimoTiroBemSucedido:Integer;
    procedure PosicionaFrotaInimiga;
    procedure AtaqueInimigo;
    procedure Mensagem(PvsTexto:String;PvtmTipoMensagem:TTipoMensagem);
  public
    { Public declarations }
  end;

const
  GC_BATALHA_NAVAL = 'BATALHA NAVAL';
  GC_NOVO_JOGO = 'PRESSIONE F2 PARA INICIAR UMA NOVA BATALHA';
  GC_POSICIONE_FROTA = 'POSICIONE SUA FROTA';
  GC_BATALHA_INICIADA = 'BATALHA INICIADA';
  LB_GIRA_EMBARCACAO = 'BOTAO DIREITO GIRA EMBARACAO';

var
  Fm_BatalhaNavalDisplay: TFm_BatalhaNavalDisplay;

implementation

uses Un_Mensagem;

{$R *.dfm}

{ TItemCampoBatalha }
constructor TItemCampoBatalha.CreateItem(PvTicbTipo:TTipoItemCampoBatalha);
begin
  inherited Create;
  FTipo := PvTicbTipo;
  FAlvejado := False;
  FEncontrado := False;
  FTipoImagem := tiNenhuma;
end;

{TFm_BatalhaNavalDisplay}
procedure TFm_BatalhaNavalDisplay.FormCreate(Sender: TObject);
begin
  GbJogoEmCurso := False;
  GbEmbarcacoesPosicionadas := False;
  LedDspVisor.Caption := GC_BATALHA_NAVAL;
  LedDspVisor.ScrollDelay := 30;
  LedDspVisor.Scrolling := True;
  GiQtdEsquerda := 0;
  GiQtdDireita := 0;
  GiQtdCima := 0;
  GiQtdBaixo := 0;

  Img_Agua.Picture.Bitmap.Width := 30;
  Img_Agua.Picture.Bitmap.Height := 30;

  Img_Fogo.Picture.Bitmap.Width := 30;
  Img_Fogo.Picture.Bitmap.Height := 30;

  PntBox_CampoAliado.Refresh;
  PntBox_CampoInimigo.Refresh;
  PntBox_Torpedo.Refresh;
  PntBox_Radar.Refresh;
  PntBox_Bomba.Refresh;
  PntBox_PortaAvioes.Refresh;
  PntBox_Couracado.Refresh;
  PntBox_SubMarino.Refresh;
  PntBox_Torpedeiro.Refresh;
  PntBox_Caca.Refresh;
end;

procedure TFm_BatalhaNavalDisplay.MemItmSairClick(Sender: TObject);
begin
  GbEmbarcacoesPosicionadas := False;
  GbJogoEmCurso := False;
  Close;
end;

procedure TFm_BatalhaNavalDisplay.PntBox_CampoAliadoPaint(Sender: TObject);
var
  I,X,Y:Integer;
begin
  TPaintBox(Sender).Canvas.Brush.Color := clBackground;
  TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
  //
  for X := 1 to 10 do
    for Y := 1 to 10 do
      if (GbJogoEmCurso) then
      begin
        if (GCbCampoAliado[X,Y].Tipo = icbAgua) then
        begin
          TPaintBox(Sender).Canvas.Brush.Color := clBackground;
          TPaintBox(Sender).Canvas.Pen.Color := clBackground;
        end else
        if GCbCampoAliado[X,Y].Tipo = icbPortaAvioes then
        begin
          TPaintBox(Sender).Canvas.Brush.Color := $00425E43;
          TPaintBox(Sender).Canvas.Pen.Color := $00425E43;
        end else
        if GCbCampoAliado[X,Y].Tipo = icbCouracado then
        begin
          TPaintBox(Sender).Canvas.Brush.Color := $008FCBC7;
          TPaintBox(Sender).Canvas.Pen.Color := $008FCBC7;
        end else
        if GCbCampoAliado[X,Y].Tipo = icbSubMarino then
        begin
          TPaintBox(Sender).Canvas.Brush.Color := $00C19F84;
          TPaintBox(Sender).Canvas.Pen.Color := $00C19F84;
        end else
        if GCbCampoAliado[X,Y].Tipo = icbTorpedeiro then
        begin
          TPaintBox(Sender).Canvas.Brush.Color := $00278AA7;
          TPaintBox(Sender).Canvas.Pen.Color := $00278AA7;
        end else
        if GCbCampoAliado[X,Y].Tipo = icbCaca then
        begin
          TPaintBox(Sender).Canvas.Brush.Color := $005F6470;
          TPaintBox(Sender).Canvas.Pen.Color := $005F6470;
        end;
        //
        if (GCbCampoAliado[X,Y].Alvejado) then
        begin
          if GCbCampoAliado[X,Y].TipoImagem = tiAgua then
          begin
            TPaintBox(Sender).Canvas.Draw((X-1)*30,(Y-1)*30,Img_Agua.Picture.Bitmap);
          end else
          if GCbCampoAliado[X,Y].TipoImagem = tiFogo then
          begin
            TPaintBox(Sender).Canvas.Draw((X-1)*30,(Y-1)*30,Img_Fogo.Picture.Bitmap);
          end else
          if GCbCampoAliado[X,Y].Tipo = icbAgua then
          begin
            TPaintBox(Sender).Canvas.Brush.Color := clSkyBlue;
            TPaintBox(Sender).Canvas.Pen.Color := clSkyBlue;
          end
          else
          begin
            TPaintBox(Sender).Canvas.Brush.Color := $005694D8;
            TPaintBox(Sender).Canvas.Pen.Color := $005694D8;
          end;
        end;
        if GCbCampoAliado[X,Y].TipoImagem = tiNenhuma then
          TPaintBox(Sender).Canvas.Rectangle((X-1)*30,(Y-1)*30,X*30,Y*30);
      end;
  TPaintBox(Sender).Canvas.Pen.Color := clBlack;
  if (not GbJogoEmCurso) then Exit;
  //
  for I := 1 to 9 do
  begin
    TPaintBox(Sender).Canvas.MoveTo(I*30,0);
    TPaintBox(Sender).Canvas.LineTo(I*30,300);
  end;
  //
  for I := 1 to 9 do
  begin
    TPaintBox(Sender).Canvas.MoveTo(0,I*30);
    TPaintBox(Sender).Canvas.LineTo(300,I*30);
  end;
end;

procedure TFm_BatalhaNavalDisplay.PntBox_CampoInimigoPaint(Sender: TObject);
var
  X,Y:Integer;
begin
  TPaintBox(Sender).Canvas.Brush.Color := clBackground;
  TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
  //
  for X := 1 to 10 do
    for Y := 1 to 10 do
      if (GbJogoEmCurso) then
      begin
        if GCbCampoInimigo[X,Y].Encontrado then
        begin
          TPaintBox(Sender).Canvas.Brush.Color := GclCorEncontrado;
          TPaintBox(Sender).Canvas.Pen.Color := GclCorEncontrado;
          TPaintBox(Sender).Canvas.Rectangle((X-1)*30,(Y-1)*30,X*30,Y*30);
        end else
        if GCbCampoInimigo[X,Y].Alvejado then
        begin
          if GCbCampoInimigo[X,Y].TipoImagem = tiAgua then
          begin
            TPaintBox(Sender).Canvas.Draw((X-1)*30,(Y-1)*30,Img_Agua.Picture.Bitmap);
          end else
          if GCbCampoInimigo[X,Y].TipoImagem = tiFogo then
          begin
            TPaintBox(Sender).Canvas.Draw((X-1)*30,(Y-1)*30,Img_Fogo.Picture.Bitmap);
          end else
          if GCbCampoInimigo[X,Y].Tipo = icbAgua then
          begin
            TPaintBox(Sender).Canvas.Brush.Color := clSkyBlue;
            TPaintBox(Sender).Canvas.Pen.Color := clSkyBlue;
            TPaintBox(Sender).Canvas.Rectangle((X-1)*30,(Y-1)*30,X*30,Y*30);
          end
          else
          begin
            TPaintBox(Sender).Canvas.Brush.Color := $005694D8;
            TPaintBox(Sender).Canvas.Pen.Color := $005694D8;
            TPaintBox(Sender).Canvas.Rectangle((X-1)*30,(Y-1)*30,X*30,Y*30);
          end;
        end
      end;
  //
  TPaintBox(Sender).Canvas.Pen.Color := clBlack;
  if (not GbJogoEmCurso) then Exit;
  //
  for X := 1 to 9 do
  begin
    TPaintBox(Sender).Canvas.MoveTo(X*30,0);
    TPaintBox(Sender).Canvas.LineTo(X*30,300);
  end;
  //
  for X := 1 to 9 do
  begin
    TPaintBox(Sender).Canvas.MoveTo(0,X*30);
    TPaintBox(Sender).Canvas.LineTo(300,X*30);
  end;
end;

procedure TFm_BatalhaNavalDisplay.PntBox_TorpedoPaint(Sender: TObject);
begin
  if TPaintBox(Sender).Tag = 0 then
  begin
    TPaintBox(Sender).Canvas.Brush.Color := $00B0B0A4;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    TPaintBox(Sender).Canvas.BrushCopy(TPaintBox(Sender).Canvas.ClipRect,
                                       Img_Torpedo.Picture.Bitmap,
                                       Img_Torpedo.Picture.Bitmap.Canvas.ClipRect,
                                       clWhite);
  end
  else
  begin
    TPaintBox(Sender).Canvas.Brush.Color := clNavy;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    TPaintBox(Sender).Canvas.BrushCopy(TPaintBox(Sender).Canvas.ClipRect,
                                       Img_TorpedoSelecionado.Picture.Bitmap,
                                       Img_TorpedoSelecionado.Picture.Bitmap.Canvas.ClipRect,
                                       clBlack);
  end;
  TPaintBox(Sender).Canvas.MoveTo(01,01);
  TPaintBox(Sender).Canvas.LineTo(79,01);
  TPaintBox(Sender).Canvas.LineTo(79,79);
  TPaintBox(Sender).Canvas.LineTo(01,79);
  TPaintBox(Sender).Canvas.LineTo(01,01);
end;

procedure TFm_BatalhaNavalDisplay.PntBox_RadarPaint(Sender: TObject);
begin
  if TPaintBox(Sender).Tag = 0 then
  begin
    TPaintBox(Sender).Canvas.Brush.Color := $00B0B0A4;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    TPaintBox(Sender).Canvas.BrushCopy(TPaintBox(Sender).Canvas.ClipRect,
                                       Img_Radar.Picture.Bitmap,
                                       Img_Radar.Picture.Bitmap.Canvas.ClipRect,
                                       clWhite);
  end
  else
  begin
    TPaintBox(Sender).Canvas.Brush.Color := clNavy;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    TPaintBox(Sender).Canvas.BrushCopy(TPaintBox(Sender).Canvas.ClipRect,
                                       Img_RadarSelecionado.Picture.Bitmap,
                                       Img_RadarSelecionado.Picture.Bitmap.Canvas.ClipRect,
                                       clBlack);
  end;
  TPaintBox(Sender).Canvas.MoveTo(01,01);
  TPaintBox(Sender).Canvas.LineTo(79,01);
  TPaintBox(Sender).Canvas.LineTo(79,79);
  TPaintBox(Sender).Canvas.LineTo(01,79);
  TPaintBox(Sender).Canvas.LineTo(01,01);
end;

procedure TFm_BatalhaNavalDisplay.PntBox_BombaPaint(Sender: TObject);
begin
  if TPaintBox(Sender).Tag > 1 then
  begin
    TPaintBox(Sender).Canvas.Pen.Color := clBtnFace;
    TPaintBox(Sender).Canvas.Brush.Color := clBtnFace;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    TPaintBox(Sender).Canvas.Pen.Color := clBlack;
    TPaintBox(Sender).Canvas.MoveTo(01,01);
    TPaintBox(Sender).Canvas.LineTo(79,01);
    TPaintBox(Sender).Canvas.LineTo(79,79);
    TPaintBox(Sender).Canvas.LineTo(01,79);
    TPaintBox(Sender).Canvas.LineTo(01,01);
  end else
  if TPaintBox(Sender).Tag = 0 then
  begin
    TPaintBox(Sender).Canvas.Brush.Color := $00B0B0A4;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    TPaintBox(Sender).Canvas.BrushCopy(TPaintBox(Sender).Canvas.ClipRect,
                                       Img_Bomba.Picture.Bitmap,
                                       Img_Bomba.Picture.Bitmap.Canvas.ClipRect,
                                       clWhite);
  end
  else
  begin
    TPaintBox(Sender).Canvas.Brush.Color := clNavy;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    TPaintBox(Sender).Canvas.BrushCopy(TPaintBox(Sender).Canvas.ClipRect,
                                       Img_BombaSelecionado.Picture.Bitmap,
                                       Img_BombaSelecionado.Picture.Bitmap.Canvas.ClipRect,
                                       clBlack);
  end;
  TPaintBox(Sender).Canvas.MoveTo(01,01);
  TPaintBox(Sender).Canvas.LineTo(79,01);
  TPaintBox(Sender).Canvas.LineTo(79,79);
  TPaintBox(Sender).Canvas.LineTo(01,79);
  TPaintBox(Sender).Canvas.LineTo(01,01);
end;

procedure TFm_BatalhaNavalDisplay.PntBox_PortaAvioesPaint(Sender: TObject);
var
  LiPosicaoX, LiPosicaoY:Integer;
begin
  if TPaintBox(Sender).Tag = 1 then
  begin
    TPaintBox(Sender).Canvas.Brush.Color := clBtnFace;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    Exit;
  end;
  TPaintBox(Sender).Canvas.Brush.Color := $00425E43;
  TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
  TPaintBox(Sender).Canvas.Font.Color := clWhite;
  TPaintBox(Sender).Canvas.Font.Name := 'Courier';
  LiPosicaoX := (TPaintBox(Sender).Width div 2) - (TPaintBox(Sender).Canvas.TextWidth('Porta Aviões') div 2);
  LiPosicaoY := (TPaintBox(Sender).Height div 2) - (TPaintBox(Sender).Canvas.TextHeight('Porta Aviões') div 2);
  TPaintBox(Sender).Canvas.TextOut(LiPosicaoX,LiPosicaoY,'Porta Aviões');
end;

procedure TFm_BatalhaNavalDisplay.PntBox_CouracadoPaint(Sender: TObject);
var
  LiPosicaoX, LiPosicaoY:Integer;
begin
  if TPaintBox(Sender).Tag = 1 then
  begin
    TPaintBox(Sender).Canvas.Brush.Color := clBtnFace;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    Exit;
  end;
  TPaintBox(Sender).Canvas.Brush.Color := $008FCBC7;
  TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
  TPaintBox(Sender).Canvas.Font.Color := clBlack;
  TPaintBox(Sender).Canvas.Font.Name := 'Courier';
  LiPosicaoX := (TPaintBox(Sender).Width div 2) - (TPaintBox(Sender).Canvas.TextWidth('Couraçado') div 2);
  LiPosicaoY := (TPaintBox(Sender).Height div 2) - (TPaintBox(Sender).Canvas.TextHeight('Couraçado') div 2);
  TPaintBox(Sender).Canvas.TextOut(LiPosicaoX,LiPosicaoY,'Couraçado');
end;

procedure TFm_BatalhaNavalDisplay.PntBox_SubMarinoPaint(Sender: TObject);
var
  LiPosicaoX, LiPosicaoY:Integer;
begin
  if TPaintBox(Sender).Tag = 1 then
  begin
    TPaintBox(Sender).Canvas.Brush.Color := clBtnFace;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    Exit;
  end;
  TPaintBox(Sender).Canvas.Brush.Color := $00C19F84;
  TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
  TPaintBox(Sender).Canvas.Font.Color := clBlack;
  TPaintBox(Sender).Canvas.Font.Name := 'Courier';
  LiPosicaoX := (TPaintBox(Sender).Width div 2) - (TPaintBox(Sender).Canvas.TextWidth('Submarino') div 2);
  LiPosicaoY := (TPaintBox(Sender).Height div 2) - (TPaintBox(Sender).Canvas.TextHeight('Submarino') div 2);
  TPaintBox(Sender).Canvas.TextOut(LiPosicaoX,LiPosicaoY,'Submarino');
end;

procedure TFm_BatalhaNavalDisplay.PntBox_TorpedeiroPaint(Sender: TObject);
var
  LiPosicaoX, LiPosicaoY:Integer;
begin
  if TPaintBox(Sender).Tag = 1 then
  begin
    TPaintBox(Sender).Canvas.Brush.Color := clBtnFace;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    Exit;
  end;
  TPaintBox(Sender).Canvas.Brush.Color := $00278AA7;
  TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
  TPaintBox(Sender).Canvas.Font.Color := clBlack;
  TPaintBox(Sender).Canvas.Font.Name := 'Courier';
  LiPosicaoX := (TPaintBox(Sender).Width div 2) - (TPaintBox(Sender).Canvas.TextWidth('Torpedeiro') div 2);
  LiPosicaoY := (TPaintBox(Sender).Height div 2) - (TPaintBox(Sender).Canvas.TextHeight('Torpedeiro') div 2);
  TPaintBox(Sender).Canvas.TextOut(LiPosicaoX,LiPosicaoY,'Torpedeiro');
end;

procedure TFm_BatalhaNavalDisplay.PntBox_CacaPaint(Sender: TObject);
var
  LiPosicaoX, LiPosicaoY:Integer;
begin
  if TPaintBox(Sender).Tag = 1 then
  begin
    TPaintBox(Sender).Canvas.Brush.Color := clBtnFace;
    TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
    Exit;
  end;
  TPaintBox(Sender).Canvas.Brush.Color := $005F6470;
  TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
  TPaintBox(Sender).Canvas.Font.Color := clWhite;
  TPaintBox(Sender).Canvas.Font.Name := 'Courier';
  LiPosicaoX := (TPaintBox(Sender).Width div 2) - (TPaintBox(Sender).Canvas.TextWidth('Caça') div 2);
  LiPosicaoY := (TPaintBox(Sender).Height div 2) - (TPaintBox(Sender).Canvas.TextHeight('Caça') div 2);
  TPaintBox(Sender).Canvas.TextOut(LiPosicaoX,LiPosicaoY,'Caça');
end;

procedure TFm_BatalhaNavalDisplay.LedDspVisorScrollComplete(Sender: TObject);
begin
  if (GbJogoEmCurso) and (not GbEmbarcacoesPosicionadas) then
  begin
    if LedDspVisor.Caption = GC_POSICIONE_FROTA then
      LedDspVisor.Caption := LB_GIRA_EMBARCACAO
    else
      LedDspVisor.Caption := GC_POSICIONE_FROTA
  end else
  if (GbJogoEmCurso) and (GbEmbarcacoesPosicionadas) then
    LedDspVisor.Caption := GC_BATALHA_INICIADA else
  if LedDspVisor.Caption = GC_BATALHA_NAVAL then
    LedDspVisor.Caption := GC_NOVO_JOGO
  else
    LedDspVisor.Caption := GC_BATALHA_NAVAL;
end;

procedure TFm_BatalhaNavalDisplay.MemItmNovoClick(Sender: TObject);
var
  X,Y:Integer;
begin
  for X := 1 to 10 do
    for Y := 1 to 10 do
    begin
      GCbCampoAliado[X,Y] := TItemCampoBatalha.CreateItem(icbAgua);
      GCbCampoInimigo[X,Y] := TItemCampoBatalha.CreateItem(icbAgua);
    end;

  PosicionaFrotaInimiga;

  GiCacaInimigo := 0;
  GiTorpedeiroInimigo := 0;
  GiCouracadoInimigo := 0;
  GiSubmarinoInimigo := 0;
  GiPortaAvioesInimigo := 0;

  GiCacaAliado := 0;
  GiTorpedeiroAliado := 0;
  GiCouracadoAliado := 0;
  GiSubmarinoAliado := 0;
  GiPortaAvioesAliado := 0;

  LedDspVisor.Caption := GC_POSICIONE_FROTA;

  GbJogoEmCurso := True;
  GbEmbarcacoesPosicionadas := False;

  GbUltimoTiroBemSucedido := False;
  GdrDirecoesParaAtacar := [];
  GiPosicaoXUltimoTiroBemSucedido := 0;
  GiPosicaoYUltimoTiroBemSucedido := 0;

  PntBox_CampoAliado.Refresh;
  PntBox_CampoInimigo.Refresh;

  PntBox_PortaAvioes.Tag := 0;
  PntBox_Couracado.Tag := 0;
  PntBox_Torpedeiro.Tag := 0;
  PntBox_SubMarino.Tag := 0;
  PntBox_Caca.Tag := 0;

  PntBox_Torpedo.Tag := 1;
  PntBox_Radar.Tag := 0;
  PntBox_Bomba.Tag := 0;

  PntBox_PortaAvioes.Refresh;
  PntBox_Couracado.Refresh;
  PntBox_Torpedeiro.Refresh;
  PntBox_SubMarino.Refresh;
  PntBox_Caca.Refresh;

  PntBox_Torpedo.Refresh;
  PntBox_Radar.Refresh;
  PntBox_Bomba.Refresh;
end;

procedure TFm_BatalhaNavalDisplay.PntBox_CampoInimigoMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
  LiPosicaoX, LiPosicaoY,I,J,K,LiAcm,LiCont,
  LiPosicaoXInicial, LiPosicaoXFinal,
  LiPosicaoYInicial, LiPosicaoYFinal :Integer;
  LbAlvoAtingido:Boolean;
begin
  LbAlvoAtingido := False;

  LiAcm := PntBox_PortaAvioes.Tag +
           PntBox_Couracado.Tag +
           PntBox_SubMarino.Tag +
           PntBox_Torpedeiro.Tag +
           PntBox_Caca.Tag;

  if (not GbEmbarcacoesPosicionadas) and (LiAcm = 5) then
  begin
    GbEmbarcacoesPosicionadas := True;
    LedDspVisor.Caption := GC_BATALHA_INICIADA;
  end;

  if (not GbJogoEmCurso) or (not GbEmbarcacoesPosicionadas) then Exit;

  LiPosicaoX := (X div 30)+1;
  LiPosicaoY := (Y div 30)+1;

  if GCbCampoInimigo[LiPosicaoX,LiPosicaoY].Alvejado then Exit;

  if PntBox_Torpedo.Tag = 1 then
  begin
    GCbCampoInimigo[LiPosicaoX,LiPosicaoY].Alvejado := True;
    if GCbCampoInimigo[LiPosicaoX,LiPosicaoY].Tipo = icbAgua then
      GCbCampoInimigo[LiPosicaoX,LiPosicaoY].TipoImagem := tiAgua
    else
    begin
      GCbCampoInimigo[LiPosicaoX,LiPosicaoY].TipoImagem := tiFogo;
      LbAlvoAtingido := True;
    end;
    PntBox_CampoInimigo.Refresh;
    Sleep(500);
    GCbCampoInimigo[LiPosicaoX,LiPosicaoY].TipoImagem := tiNenhuma;
    if GCbCampoInimigo[LiPosicaoX,LiPosicaoY].Tipo = icbPortaAvioes then Inc(GiPortaAvioesInimigo);
    if GCbCampoInimigo[LiPosicaoX,LiPosicaoY].Tipo = icbCouracado then Inc(GiCouracadoInimigo);
    if GCbCampoInimigo[LiPosicaoX,LiPosicaoY].Tipo = icbSubMarino then Inc(GiSubmarinoInimigo);
    if GCbCampoInimigo[LiPosicaoX,LiPosicaoY].Tipo = icbTorpedeiro then Inc(GiTorpedeiroInimigo);
    if GCbCampoInimigo[LiPosicaoX,LiPosicaoY].Tipo = icbCaca then Inc(GiCacaInimigo);
  end;
  if PntBox_Radar.Tag = 1 then
  begin
    LiPosicaoXInicial := LiPosicaoX - 1;
    LiPosicaoXFinal := LiPosicaoX + 1;
    LiPosicaoYInicial := LiPosicaoY - 1;
    LiPosicaoYFinal := LiPosicaoY + 1;

    if LiPosicaoXInicial < 1 then LiPosicaoXInicial := 1;
    if LiPosicaoXFinal > 10 then LiPosicaoXFinal := 10;
    if LiPosicaoYInicial < 1 then LiPosicaoYInicial := 1;
    if LiPosicaoYFinal > 10 then LiPosicaoYFinal := 10;
    
    LiCont := 0;
    for I := 1 to 2 do
    begin
      for J := LiPosicaoXInicial to LiPosicaoXFinal do
        for K := LiPosicaoYInicial to LiPosicaoYFinal do
        begin
          GCbCampoInimigo[J,K].Encontrado := (I=1);
          if GCbCampoInimigo[J,K].Tipo <> icbAgua then Inc(LiCont);
        end;
      if LiCont > 0 then
        GclCorEncontrado := $005694D8
      else
        GclCorEncontrado := clSkyBlue;
      TPaintBox(Sender).Refresh;
      Sleep(250);
    end;
  end;
  if PntBox_Bomba.Tag = 1 then
  begin
    LiPosicaoXInicial := LiPosicaoX - 1;
    LiPosicaoXFinal := LiPosicaoX + 1;
    LiPosicaoYInicial := LiPosicaoY - 1;
    LiPosicaoYFinal := LiPosicaoY + 1;

    if LiPosicaoXInicial < 1 then LiPosicaoXInicial := 1;
    if LiPosicaoXFinal > 10 then LiPosicaoXFinal := 10;
    if LiPosicaoYInicial < 1 then LiPosicaoYInicial := 1;
    if LiPosicaoYFinal > 10 then LiPosicaoYFinal := 10;

    for J := LiPosicaoXInicial to LiPosicaoXFinal do
      for K := LiPosicaoYInicial to LiPosicaoYFinal do
      begin
        GCbCampoInimigo[J,K].Alvejado := True;
        if GCbCampoInimigo[J,K].Tipo = icbAgua then
          GCbCampoInimigo[J,K].TipoImagem := tiAgua
        else
        begin
          GCbCampoInimigo[J,K].TipoImagem := tiFogo;
          LbAlvoAtingido := True;
        end;
        PntBox_CampoInimigo.Refresh;
        Sleep(500);
        GCbCampoInimigo[J,K].TipoImagem := tiNenhuma;
        if GCbCampoInimigo[J,K].Tipo = icbPortaAvioes then Inc(GiPortaAvioesInimigo);
        if GCbCampoInimigo[J,K].Tipo = icbCouracado then Inc(GiCouracadoInimigo);
        if GCbCampoInimigo[J,K].Tipo = icbSubMarino then Inc(GiSubmarinoInimigo);
        if GCbCampoInimigo[J,K].Tipo = icbTorpedeiro then Inc(GiTorpedeiroInimigo);
        if GCbCampoInimigo[J,K].Tipo = icbCaca then Inc(GiCacaInimigo);
      end;
    PntBox_Bomba.Tag := 2;
    PntBox_Bomba.Refresh;
  end;

  TPaintBox(Sender).Refresh;

  if (GiPortaAvioesInimigo >= 5) and (GiCouracadoInimigo >= 4) and (GiSubmarinoInimigo >= 4) and (GiTorpedeiroInimigo >= 3) and (GiCacaInimigo >= 2) then
  begin
    Mensagem('Parabens !!! Voce venceu a batalha',tmVitoria);
    PntBox_CampoAliado.Refresh;
    PntBox_CampoAliado.Refresh;
    GbJogoEmCurso := False;
    LedDspVisor.Caption := GC_NOVO_JOGO;
    for I := 1 to 10 do
      for J := 1 to 10 do
      begin
        GCbCampoAliado[I,J].Free;
        GCbCampoInimigo[I,J].Free;
      end;
    Exit;
  end;

  if (not LbAlvoAtingido) then
    AtaqueInimigo;
end;

procedure TFm_BatalhaNavalDisplay.PntBox_CampoAliadoDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TPaintBox) and
            (TPaintBox(Source).Tag = 0) and
            (GbJogoEmCurso) and
            (not GbEmbarcacoesPosicionadas);
end;

procedure TFm_BatalhaNavalDisplay.PntBox_CampoAliadoDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  LiPosicaoX,LiPosicaoY,I,J,LiCont:Integer;
begin
  if TPaintBox(Source).Tag = 1 then Exit;
  //
  LiPosicaoX := (X div 30)+1;
  LiPosicaoY := (Y div 30)+1;
  //
  if TPaintBox(Source) = PntBox_PortaAvioes then
  begin
    if (LiPosicaoX+4) > 10 then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    if (GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+2,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+3,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+4,LiPosicaoY].Tipo <> icbAgua) then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    TPaintBox(Source).Tag := 1;
    GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo := icbPortaAvioes;
    GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo := icbPortaAvioes;
    GCbCampoAliado[LiPosicaoX+2,LiPosicaoY].Tipo := icbPortaAvioes;
    GCbCampoAliado[LiPosicaoX+3,LiPosicaoY].Tipo := icbPortaAvioes;
    GCbCampoAliado[LiPosicaoX+4,LiPosicaoY].Tipo := icbPortaAvioes;
  end;
  //
  if TPaintBox(Source) = PntBox_Couracado then
  begin
    if (LiPosicaoX+3) > 10 then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    if (GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+2,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+3,LiPosicaoY].Tipo <> icbAgua) then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    TPaintBox(Source).Tag := 1;
    GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo := icbCouracado;
    GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo := icbCouracado;
    GCbCampoAliado[LiPosicaoX+2,LiPosicaoY].Tipo := icbCouracado;
    GCbCampoAliado[LiPosicaoX+3,LiPosicaoY].Tipo := icbCouracado;
  end;
  //
  if TPaintBox(Source) = PntBox_SubMarino then
  begin
    if (LiPosicaoX+3) > 10 then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    if (GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+2,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+3,LiPosicaoY].Tipo <> icbAgua) then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    TPaintBox(Source).Tag := 1;
    GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo := icbSubmarino;
    GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo := icbSubmarino;
    GCbCampoAliado[LiPosicaoX+2,LiPosicaoY].Tipo := icbSubmarino;
    GCbCampoAliado[LiPosicaoX+3,LiPosicaoY].Tipo := icbSubmarino;
  end;
  //
  if TPaintBox(Source) = PntBox_Torpedeiro then
  begin
    if (LiPosicaoX+2) > 10 then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    if (GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+2,LiPosicaoY].Tipo <> icbAgua) then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    TPaintBox(Source).Tag := 1;
    GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo := icbTorpedeiro;
    GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo := icbTorpedeiro;
    GCbCampoAliado[LiPosicaoX+2,LiPosicaoY].Tipo := icbTorpedeiro;
  end;
  //
  if TPaintBox(Source) = PntBox_Caca then
  begin
    if (LiPosicaoX+1) > 10 then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    if (GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo <> icbAgua) or
       (GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo <> icbAgua) then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    TPaintBox(Source).Tag := 1;
    GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo := icbCaca;
    GCbCampoAliado[LiPosicaoX+1,LiPosicaoY].Tipo := icbCaca;
  end;
  //
  if TPaintBox(Source) = PntBox_CampoAliado then
  begin
    Dec(GiQtdDireita);
    Dec(GiQtdEsquerda);
    Dec(GiQtdCima);
    Dec(GiQtdBaixo);

    LiCont := 0;
    for I := (LiPosicaoX+1) to ((LiPosicaoX+1)+GiQtdDireita) do
    begin
      if not (GCbCampoAliado[I,LiPosicaoY].Tipo in [icbAgua,GicbTipoEmbaracao]) or (I>10) then
      begin
        Mensagem('Posição Inválida',tmInformacao);
        Exit;
      end;
      Inc(LiCont);
    end;
    if LiCont < GiQtdDireita then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    //
    LiCont := 0;
    for I := (LiPosicaoX-1) downto ((LiPosicaoX-1)-GiQtdEsquerda) do
    begin
      if not (GCbCampoAliado[I,LiPosicaoY].Tipo in [icbAgua,GicbTipoEmbaracao]) or (I<1) then
      begin
        Mensagem('Posição Inválida',tmInformacao);
        Exit;
      end;
      Inc(LiCont);
    end;
    if LiCont < GiQtdEsquerda then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    //
    LiCont := 0;
    for I := (LiPosicaoY+1) to ((LiPosicaoY+1)+GiQtdBaixo) do
    begin
      if not (GCbCampoAliado[LiPosicaoX,I].Tipo in [icbAgua,GicbTipoEmbaracao]) or (I>10) then
      begin
        Mensagem('Posição Inválida',tmInformacao);
        Exit;
      end;
      Inc(LiCont);
    end;
    if LiCont < GiQtdBaixo then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    //
    for I := (LiPosicaoY-1) downto ((LiPosicaoY-1)-GiQtdCima) do
    begin
      if (not (GCbCampoAliado[LiPosicaoX,I].Tipo in [icbAgua,GicbTipoEmbaracao])) or (I<1) then
      begin
        Mensagem('Posição Inválida',tmInformacao);
        Exit;
      end;
      Inc(LiCont);
    end;
    if LiCont < GiQtdCima then
    begin
      Mensagem('Posição Inválida',tmInformacao);
      Exit;
    end;
    //
    for I := 1 to 10 do
      for J := 1 to 10 do
        if GCbCampoAliado[I,J].Tipo = GicbTipoEmbaracao then
          GCbCampoAliado[I,J].Tipo := icbAgua;

    GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo := GicbTipoEmbaracao;
    for I := (LiPosicaoX+1) to ((LiPosicaoX+1)+GiQtdDireita) do
      GCbCampoAliado[I,LiPosicaoY].Tipo := GicbTipoEmbaracao;
    for I := (LiPosicaoX-1) downto ((LiPosicaoX-1)-GiQtdEsquerda) do
      GCbCampoAliado[I,LiPosicaoY].Tipo := GicbTipoEmbaracao;
    for I := (LiPosicaoY+1) to ((LiPosicaoY+1)+GiQtdBaixo) do
      GCbCampoAliado[LiPosicaoX,I].Tipo := GicbTipoEmbaracao;
    for I := (LiPosicaoY-1) downto ((LiPosicaoY-1)-GiQtdCima) do
      GCbCampoAliado[LiPosicaoX,I].Tipo := GicbTipoEmbaracao;
  end;
  //
  TPaintBox(Source).Refresh;
  TPaintBox(Sender).Refresh;
end;

procedure TFm_BatalhaNavalDisplay.PntBox_CampoAliadoMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
  LiPosicaoX, LiPosicaoY, I, LiCont, LiQtdDireita,
  LiQtdEsquerda, LiQtdCima,LiQtdBaixo:Integer;
  LicbTipoItem:TTipoItemCampoBatalha;
  LbHorizontal:Boolean;
begin
  if (not GbJogoEmCurso) or (GbEmbarcacoesPosicionadas) then Exit;
  //
  LiPosicaoX := (X div 30)+1;
  LiPosicaoY := (Y div 30)+1;
  //
  LicbTipoItem := GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo;
  LiQtdDireita := 0;
  LiQtdEsquerda := 0;
  LiQtdCima := 0;
  LiQtdBaixo := 0;
  //
  for I := LiPosicaoX+1 to 10 do
  begin
    if GCbCampoAliado[I,LiPosicaoY].Tipo <> LicbTipoItem then Break;
    Inc(LiQtdDireita);
  end;
  for I := LiPosicaoX-1 downto 1 do
  begin
    if GCbCampoAliado[I,LiPosicaoY].Tipo <> LicbTipoItem then Break;
    Inc(LiQtdEsquerda);
  end;
  for I := LiPosicaoY+1 to 10 do
  begin
    if GCbCampoAliado[LiPosicaoX,I].Tipo <> LicbTipoItem then Break;
    Inc(LiQtdBaixo);
  end;
  for I := LiPosicaoY-1 downto 1 do
  begin
    if GCbCampoAliado[LiPosicaoX,I].Tipo <> LicbTipoItem then Break;
    Inc(LiQtdCima);
  end;
  //
  if (Button = mbLeft) and (LicbTipoItem <> icbAgua) then
  begin
    GiQtdEsquerda := LiQtdEsquerda;
    GiQtdDireita := LiQtdDireita;
    GiQtdCima := LiQtdCima;
    GiQtdBaixo := LiQtdBaixo;
    GicbTipoEmbaracao := LicbTipoItem;
    TPaintBox(Sender).BeginDrag(False,5);
  end else
  if (Button = mbRight) and (LicbTipoItem <> icbAgua) then
  begin
    if (LiQtdDireita+LiQtdEsquerda) > 0 then
    begin
      Dec(LiQtdDireita);
      Dec(LiQtdEsquerda);
      //
      LiCont := 0;
      for I := LiPosicaoY+1 to (LiPosicaoY+1)+LiQtdDireita do
      begin
        Inc(LiCont);
        if (I > 10) or (GCbCampoAliado[LiPosicaoX,I].Tipo <> icbAgua) then
        begin
          Mensagem('Não é possivel girar a embarcação !!!',tmInformacao);
          Exit;
        end;
      end;
      if LiCont < LiQtdDireita then
      begin
        Mensagem('Não é possivel girar a embarcação !!!',tmInformacao);
        Exit;
      end;
      //
      LiCont := 0;
      for I := LiPosicaoY-1 downto (LiPosicaoY-1)-LiQtdEsquerda do
      begin
        Inc(LiCont);
        if (I < 1) or (GCbCampoAliado[LiPosicaoX,I].Tipo <> icbAgua) then
        begin
          Mensagem('Não é possivel girar a embarcação !!!',tmInformacao);
          Exit;
        end;
      end;
      if LiCont < LiQtdEsquerda then
      begin
        Mensagem('Não é possivel girar a embarcação !!!',tmInformacao);
        Exit;
      end;
    end else
    if (LiQtdCima+LiQtdBaixo) > 0 then
    begin
      Dec(LiQtdBaixo);
      Dec(LiQtdCima);
      //
      LiCont := 0;
      for I := LiPosicaoX-1 downto (LiPosicaoX-1)-LiQtdBaixo do
      begin
        Inc(LiCont);
        if (I < 1) or (GCbCampoAliado[I,LiPosicaoY].Tipo <> icbAgua) then
        begin
          Mensagem('Não é possivel girar a embarcação !!!',tmInformacao);
          Exit;
        end;
      end;
      if LiCont < LiQtdBaixo then
      begin
        Mensagem('Não é possivel girar a embarcação !!!',tmInformacao);
        Exit;
      end;
      //
      LiCont := 0;
      for I := LiPosicaoX+1 to (LiPosicaoX+1)+LiQtdCima do
      begin
        Inc(LiCont);
        if (I > 10) or (GCbCampoAliado[I,LiPosicaoY].Tipo <> icbAgua) then
        begin
          Mensagem('Não é possivel girar a embarcação !!!',tmInformacao);
          Exit;
        end;
      end;
      if LiCont < LiQtdCima then
      begin
        Mensagem('Não é possivel girar a embarcação !!!',tmInformacao);
        Exit;
      end;
    end;
    //
    LiCont := 0;
    for I := LiPosicaoX+1 to 10 do
    begin
      if GCbCampoAliado[I,LiPosicaoY].Tipo <> LicbTipoItem then Break;
      Inc(LiCont);
      GCbCampoAliado[I,LiPosicaoY].Tipo := icbAgua;
      GCbCampoAliado[LiPosicaoX,LiPosicaoY+LiCont].Tipo := LicbTipoItem;
    end;
    LbHorizontal := LiCont > 0;
    //
    LiCont := 0;
    for I := LiPosicaoX-1 downto 1 do
    begin
      if GCbCampoAliado[I,LiPosicaoY].Tipo <> LicbTipoItem then Break;
      Inc(LiCont);
      GCbCampoAliado[I,LiPosicaoY].Tipo := icbAgua;
      GCbCampoAliado[LiPosicaoX,LiPosicaoY-LiCont].Tipo := LicbTipoItem;
    end;
    //
    LbHorizontal := LbHorizontal or (LiCont > 0);
    if not LbHorizontal then
    begin
      LiCont := 0;
      for I := LiPosicaoY+1 to 10 do
      begin
        if GCbCampoAliado[LiPosicaoX,I].Tipo <> LicbTipoItem then Break;
        Inc(LiCont);
        GCbCampoAliado[LiPosicaoX,I].Tipo := icbAgua;
        GCbCampoAliado[LiPosicaoX-LiCont,LiPosicaoY].Tipo := LicbTipoItem;
      end;
      //
      LiCont := 0;
      for I := LiPosicaoY-1 downto 1 do
      begin
        if GCbCampoAliado[LiPosicaoX,I].Tipo <> LicbTipoItem then Break;
        Inc(LiCont);
        GCbCampoAliado[LiPosicaoX,I].Tipo := icbAgua;
        GCbCampoAliado[LiPosicaoX+LiCont,LiPosicaoY].Tipo := LicbTipoItem;
      end;
    end;
  end;
  //
  TPaintBox(Sender).Refresh;
end;

procedure TFm_BatalhaNavalDisplay.PosicionaFrotaInimiga;
const
  LC_ITENS_CAMPO_BATALHA: Array[1..5] of TTipoItemCampoBatalha = (icbPortaAvioes,
                                                                  icbCouracado,
                                                                  icbSubmarino,
                                                                  icbTorpedeiro,
                                                                  icbCaca);
  LC_TAMANHO_ITENS_CAMPO_BATALHA: Array[1..5] of Integer = (5,4,4,3,2);
var
  LbHorizontal, LbPosicaovalida:Boolean;
  LiPosicaoX,LiPosicaoY,I,J,LiNum:Integer;
begin
  for J := 1 to 5 do
  begin
    LbPosicaovalida := False;
    while not LbPosicaovalida do
    begin
      LbPosicaoValida := True;
      Randomize;
      LiPosicaoX := Random(10-LC_TAMANHO_ITENS_CAMPO_BATALHA[J]+2);
      LiPosicaoY := Random(10-LC_TAMANHO_ITENS_CAMPO_BATALHA[J]+2);
      if LiPosicaoX = 0 then Inc(LiPosicaoX);
      if LiPosicaoY = 0 then Inc(LiPosicaoY);
      LiNum := Random(2);
      LbHorizontal := LiNum = 0;
      if LbHorizontal then
      begin
        for I := LiPosicaoX to (LiPosicaoX + (LC_TAMANHO_ITENS_CAMPO_BATALHA[J]-1)) do
          if GCbCampoInimigo[I,LiPosicaoY].Tipo <> icbAgua then
            LbPosicaoValida := False;
        if LbPosicaovalida then
          for I := LiPosicaoX to (LiPosicaoX + (LC_TAMANHO_ITENS_CAMPO_BATALHA[J]-1)) do
            GCbCampoInimigo[I,LiPosicaoY].Tipo := LC_ITENS_CAMPO_BATALHA[J];
      end
      else
      begin
        for I := LiPosicaoY to (LiPosicaoY + (LC_TAMANHO_ITENS_CAMPO_BATALHA[J]-1)) do
          if GCbCampoInimigo[LiPosicaoX,I].Tipo <> icbAgua then
            LbPosicaoValida := False;
        if LbPosicaovalida then
          for I := LiPosicaoY to (LiPosicaoY + (LC_TAMANHO_ITENS_CAMPO_BATALHA[J]-1)) do
            GCbCampoInimigo[LiPosicaoX,I].Tipo := LC_ITENS_CAMPO_BATALHA[J];
      end;
    end;
  end;
end;

procedure TFm_BatalhaNavalDisplay.AtaqueInimigo;
var
  LbAlvoAtingido, LbPosicaoSorteada, LbContinuar:Boolean;
  LiPosicaoX,LiPosicaoY,I,J :Integer;
  LdrDirecaoUsada:TDirecao;
begin
  repeat
    LbContinuar := False;
    LdrDirecaoUsada := drNenhuma;
    LbPosicaoSorteada := False;
    if (GbUltimoTiroBemSucedido) or (GdrDirecoesParaAtacar <> []) then
    begin
      LiPosicaoX := GiPosicaoXUltimoTiroBemSucedido;
      LiPosicaoY := GiPosicaoYUltimoTiroBemSucedido;
      if drAcima in GdrDirecoesParaAtacar then
      begin
        Dec(LiPosicaoY);
        LdrDirecaoUsada := drAcima;
        if LiPosicaoY < 1 then
        begin
          Exclude(GdrDirecoesParaAtacar,LdrDirecaoUsada);
          LbContinuar := True;
        end;
      end else
      if drDireita in GdrDirecoesParaAtacar then
      begin
        Inc(LiPosicaoX);
        LdrDirecaoUsada := drDireita;
        if LiPosicaoX > 10 then
        begin
          Exclude(GdrDirecoesParaAtacar,LdrDirecaoUsada);
          LbContinuar := True;
        end;
      end else
      if drAbaixo in GdrDirecoesParaAtacar then
      begin
        Inc(LiPosicaoY);
        LdrDirecaoUsada := drAbaixo;
        if LiPosicaoY > 10 then
        begin
          Exclude(GdrDirecoesParaAtacar,LdrDirecaoUsada);
          LbContinuar := True;
        end;
      end else
      if drEsquerda in GdrDirecoesParaAtacar then
      begin
        Dec(LiPosicaoX);
        LdrDirecaoUsada := drEsquerda;
        if LiPosicaoX < 1 then
        begin
          Exclude(GdrDirecoesParaAtacar,LdrDirecaoUsada);
          LbContinuar := True;
        end;
      end;
    end
    else
    begin
      LbPosicaoSorteada := True;
      Randomize;
      LiPosicaoX := Random(10)+1;
      LiPosicaoY := Random(10)+1;
    end;
    //
    if (LbContinuar) then
    begin
      LbAlvoAtingido := True;
      GbUltimoTiroBemSucedido := False;
    end else
    if (GCbCampoAliado[LiPosicaoX,LiPosicaoY].Alvejado) then
    begin
      LbAlvoAtingido := True;
      GbUltimoTiroBemSucedido := False;
      if GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo <> icbAgua then
      begin
        GiPosicaoXUltimoTiroBemSucedido := LiPosicaoX;
        GiPosicaoYUltimoTiroBemSucedido := LiPosicaoY;
      end
      else
      begin
        Exclude(GdrDirecoesParaAtacar,LdrDirecaoUsada);
      end;
    end
    else
    begin
      GCbCampoAliado[LiPosicaoX,LiPosicaoY].Alvejado := True;
      if GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo <> icbAgua then
      begin
        LbAlvoAtingido := True;
        GbUltimoTiroBemSucedido := True;
        GiPosicaoXUltimoTiroBemSucedido := LiPosicaoX;
        GiPosicaoYUltimoTiroBemSucedido := LiPosicaoY;
        if LbPosicaoSorteada then
        begin
          GdrDirecoesParaAtacar := [drAcima,drDireita,drAbaixo,drEsquerda];
        end else
        if (LdrDirecaoUsada = drAcima) or (LdrDirecaoUsada = drAbaixo) then
        begin
          Exclude(GdrDirecoesParaAtacar,drEsquerda);
          Exclude(GdrDirecoesParaAtacar,drDireita);
        end else
        if (LdrDirecaoUsada = drEsquerda) or (LdrDirecaoUsada = drDireita) then
        begin
          Exclude(GdrDirecoesParaAtacar,drAcima);
          Exclude(GdrDirecoesParaAtacar,drAbaixo);
        end;
      end
      else
      begin
        LbAlvoAtingido := False;
        GbUltimoTiroBemSucedido := False;
        Exclude(GdrDirecoesParaAtacar,LdrDirecaoUsada);
      end;
      //
      if GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo = icbAgua then
        GCbCampoAliado[LiPosicaoX,LiPosicaoY].TipoImagem := tiAgua
      else
        GCbCampoAliado[LiPosicaoX,LiPosicaoY].TipoImagem := tiFogo;
      PntBox_CampoAliado.Refresh;
      Sleep(500);
      GCbCampoAliado[LiPosicaoX,LiPosicaoY].TipoImagem := tiNenhuma;
      PntBox_CampoAliado.Refresh;
      //
      if GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo = icbPortaAvioes then Inc(GiPortaAvioesAliado);
      if GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo = icbCouracado then Inc(GiCouracadoAliado);
      if GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo = icbSubMarino then Inc(GiSubmarinoAliado);
      if GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo = icbTorpedeiro then Inc(GiTorpedeiroAliado);
      if GCbCampoAliado[LiPosicaoX,LiPosicaoY].Tipo = icbCaca then Inc(GiCacaAliado);
      //
      if (GiPortaAvioesAliado >= 5) and (GiCouracadoAliado >= 4) and (GiSubmarinoAliado >= 4) and (GiTorpedeiroAliado >= 3) and (GiCacaAliado >= 2) then
      begin
        Mensagem('Voce perdeu a batalha',tmDerrota);
        PntBox_CampoAliado.Refresh;
        PntBox_CampoAliado.Refresh;
        GbJogoEmCurso := False;
        LedDspVisor.Caption := GC_NOVO_JOGO;
        for I := 1 to 10 do
          for J := 1 to 10 do
          begin
            GCbCampoAliado[I,J].Free;
            GCbCampoInimigo[I,J].Free;
          end;
        Exit;
      end;
    end;
  until not LbAlvoAtingido
end;

procedure TFm_BatalhaNavalDisplay.PntBox_ArmasClick(Sender: TObject);
begin
  if (not GbJogoEmCurso) then Exit;

  if PntBox_Torpedo.Tag = 1 then PntBox_Torpedo.Tag := 0;
  if PntBox_Radar.Tag = 1 then PntBox_Radar.Tag := 0;
  if PntBox_Bomba.Tag = 1 then PntBox_Bomba.Tag := 0;
  if TPaintBox(Sender).Tag = 0 then
    TPaintBox(Sender).Tag := 1
  else
    TPaintBox(Sender).Tag := 0;
  PntBox_Torpedo.Refresh;
  PntBox_Radar.Refresh;
  PntBox_Bomba.Refresh;
end;

procedure TFm_BatalhaNavalDisplay.PntBox_LetrasPaint(
  Sender: TObject);
const
  LC_ALFABETO: Array [1..10] of Char = ('A','B','C','D','E','F','G','H','I','J');
var
  I,X,Y:Integer;
begin
  TPaintBox(Sender).Canvas.Brush.Color := clBackground;
  TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
  TPaintBox(Sender).Canvas.Font.Name := 'Courier';
  TPaintBox(Sender).Canvas.Font.Color := clWhite;
  //
  for I := 1 to 10 do
  begin
    X := 10 - (TPaintBox(Sender).Canvas.TextWidth(LC_ALFABETO[I]) div 2);
    Y := 15 - (TPaintBox(Sender).Canvas.TextHeight(LC_ALFABETO[I]) div 2);
    TPaintBox(Sender).Canvas.TextOut(X,((I-1)*30)+Y,LC_ALFABETO[I]);
  end;
  //
  for X := 1 to 9 do
  begin
    TPaintBox(Sender).Canvas.MoveTo(000,X*30);
    TPaintBox(Sender).Canvas.LineTo(300,X*30);
  end;
end;

procedure TFm_BatalhaNavalDisplay.PntBox_NumerosPaint(
  Sender: TObject);
var
  I,X,Y:Integer;
begin
  TPaintBox(Sender).Canvas.Brush.Color := clBackground;
  TPaintBox(Sender).Canvas.Rectangle(TPaintBox(Sender).Canvas.ClipRect);
  TPaintBox(Sender).Canvas.Font.Name := 'Courier';
  TPaintBox(Sender).Canvas.Font.Color := clWhite;
  //
  for I := 1 to 10 do
  begin
    Y := 10 - (TPaintBox(Sender).Canvas.TextHeight(IntToStr(I)) div 2);
    X := 15 - (TPaintBox(Sender).Canvas.TextWidth(IntToStr(I)) div 2);
    TPaintBox(Sender).Canvas.TextOut(((I-1)*30)+X,Y,IntToStr(I));
  end;
  //
  for X := 1 to 9 do
  begin
    TPaintBox(Sender).Canvas.MoveTo(X*30,000);
    TPaintBox(Sender).Canvas.LineTo(X*30,300);
  end;
end;

procedure TFm_BatalhaNavalDisplay.Mensagem(PvsTexto: String;
  PvtmTipoMensagem: TTipoMensagem);
begin
  with TFm_Mensagem.Create(nil) do
  begin
    Pnl_MensagemInterno.Caption := PvsTexto;
    case PvtmTipoMensagem of
      tmVitoria: Pnl_MensagemInterno.Color := clGreen;
      tmDerrota: Pnl_MensagemInterno.Color := $003544CA;
      tmInformacao: Pnl_MensagemInterno.Color := $00AB740C;
    end;
    ShowModal;
  end;
end;

end.
