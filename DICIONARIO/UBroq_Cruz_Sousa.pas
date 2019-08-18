unit UBroq_Cruz_Sousa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls;

type
  TFrmNovas_Poesias_03 = class(TForm)
    SpedButonAdor: TSpeedButton;
    Img1: TImage;
    SpedButonLua: TSpeedButton;
    Img2: TImage;
    SpedButonMonja: TSpeedButton;
    SpedButonSatan: TSpeedButton;
    SpedButonSonata: TSpeedButton;
    SpedButonSonho_Branco: TSpeedButton;
    SpedButonTulipa_Real: TSpeedButton;
    SpedButonVespeal: TSpeedButton;
    Img15: TImage;
    Img16: TImage;
    Img27: TImage;
    Img17: TImage;
    Img18: TImage;
    Img19: TImage;
    Img01: TImage;
    Img02: TImage;
    Img03: TImage;
    Img04: TImage;
    Img05: TImage;
    Img06: TImage;
    Img07: TImage;
    Img08: TImage;
    SpedButonFlor_Diabo: TSpeedButton;
    Img20: TImage;
    SpedButonDivina: TSpeedButton;
    Img21: TImage;
    SpedButonPiedosa: TSpeedButton;
    Img22: TImage;
    SpedButonTedio: TSpeedButton;
    Img23: TImage;
    SpedButonSeio: TSpeedButton;
    Img24: TImage;
    SpedButonMonja_Negra: TSpeedButton;
    Img25: TImage;
    SpedButonInes: TSpeedButton;
    Img26: TImage;
    SpedButonEnvelhecer: TSpeedButton;
    Img29: TImage;
    Img09: TImage;
    Img010: TImage;
    Img011: TImage;
    Img012: TImage;
    Img013: TImage;
    Img014: TImage;
    Img015: TImage;
    Img016: TImage;
    SpedButonVoltar: TSpeedButton;
    SpedButonProx_02: TSpeedButton;
    LblNumber: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure feito;
    procedure musica;
    procedure inicio;
    procedure SpedButonVoltarClick(Sender: TObject);
    procedure SpedButonAdorClick(Sender: TObject);
    procedure Img1Click(Sender: TObject);
    procedure SpedButonLuaClick(Sender: TObject);
    procedure SpedButonMonjaClick(Sender: TObject);
    procedure SpedButonSatanClick(Sender: TObject);
    procedure SpedButonSonataClick(Sender: TObject);
    procedure SpedButonSonho_BrancoClick(Sender: TObject);
    procedure SpedButonTulipa_RealClick(Sender: TObject);
    procedure SpedButonVespealClick(Sender: TObject);
    procedure SpedButonFlor_DiaboClick(Sender: TObject);
    procedure SpedButonDivinaClick(Sender: TObject);
    procedure SpedButonPiedosaClick(Sender: TObject);
    procedure SpedButonTedioClick(Sender: TObject);
    procedure SpedButonSeioClick(Sender: TObject);
    procedure SpedButonMonja_NegraClick(Sender: TObject);
    procedure SpedButonInesClick(Sender: TObject);
    procedure SpedButonEnvelhecerClick(Sender: TObject);
    procedure Img2Click(Sender: TObject);
    procedure Img15Click(Sender: TObject);
    procedure Img16Click(Sender: TObject);
    procedure Img27Click(Sender: TObject);
    procedure Img17Click(Sender: TObject);
    procedure Img18Click(Sender: TObject);
    procedure Img19Click(Sender: TObject);
    procedure Img20Click(Sender: TObject);
    procedure Img21Click(Sender: TObject);
    procedure Img22Click(Sender: TObject);
    procedure Img24Click(Sender: TObject);
    procedure Img25Click(Sender: TObject);
    procedure Img26Click(Sender: TObject);
    procedure Img29Click(Sender: TObject);
    procedure Img23Click(Sender: TObject);
    procedure SpedButonProx_02Click(Sender: TObject);
  private
    { Private declarations }
  public
    vutu,tatu,tudo,vota,tosta:integer;
    { Public declarations }
  end;

var
  FrmNovas_Poesias_03: TFrmNovas_Poesias_03;

implementation

uses UNotas_Poesias, UMachado_Assis_Romances, UNotas, UMachado_Assis,
  UNovas_Poesias_02, UCruz_Souza, UCastro_Alves, ULoggo, UMapa;

{$R *.dfm}

procedure TFrmNovas_Poesias_03.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
            if tudo=1 then
          Begin
          FrmNovas_Poesias_02.show;
          FrmNovas_Poesias_03.Hide;
          End Else
          if tudo=2 then
          Begin
          FrmNovas_Poesias_02.show;
          FrmNovas_Poesias_03.Hide;
          End Else
          if tudo=3 then
          Begin
          FrmNovas_Poesias_02.show;
          FrmNovas_Poesias_03.Hide;
          End else
          if tudo=4 then
          Begin
          FrmNovas_Poesias_02.show;
          FrmNovas_Poesias_03.Hide;
          End else
          if  tudo =5 then
          frmOrixas.show;
          FrmNovas_Poesias_03.Hide;
          end;

procedure TFrmNovas_Poesias_03.feito;
Begin

   FrmNovas_Poesias_03.Img1.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');    FrmNovas_Poesias_03.Img2.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_03.Img15.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');   FrmNovas_Poesias_03.Img16.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_03.Img17.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');   FrmNovas_Poesias_03.Img18.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_03.Img19.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');   FrmNovas_Poesias_03.Img20.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_03.Img21.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');   FrmNovas_Poesias_03.Img22.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_03.Img23.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');   FrmNovas_Poesias_03.Img24.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_03.Img25.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');   FrmNovas_Poesias_03.Img26.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_03.Img29.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');   FrmNovas_Poesias_03.Img27.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');

   end;

   procedure TFrmNovas_Poesias_03.musica;

   Begin

   FrmNovas_Poesias_03.Img01.Picture.LoadFromFile(caminho+'icons\media Player2.ico'); FrmNovas_Poesias_03.Img07.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_03.Img02.Picture.LoadFromFile(caminho+'icons\media Player2.ico'); FrmNovas_Poesias_03.Img08.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_03.Img03.Picture.LoadFromFile(caminho+'icons\media Player2.ico'); FrmNovas_Poesias_03.Img09.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_03.Img04.Picture.LoadFromFile(caminho+'icons\media Player2.ico'); FrmNovas_Poesias_03.Img010.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_03.Img05.Picture.LoadFromFile(caminho+'icons\media Player2.ico'); FrmNovas_Poesias_03.Img011.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_03.Img06.Picture.LoadFromFile(caminho+'icons\media Player2.ico'); FrmNovas_Poesias_03.Img012.Picture.LoadFromFile(caminho+'icons\media Player2.ico');

   FrmNovas_Poesias_03.Img013.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_03.Img014.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_03.Img015.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_03.Img016.Picture.LoadFromFile(caminho+'icons\media Player2.ico');

   End;

procedure TFrmNovas_Poesias_03.inicio;
Begin

FrmNovas_Poesias_03.Color:= clBtnText;
FrmNovas_Poesias_03.Font.Name:='Times New Roman';
FrmNovas_Poesias_03.Font.Color:=clWhite;
FrmNovas_Poesias_03.Font.Style:=[fsItalic,fsbold];
FrmNovas_Poesias_03.Font.Size:=10;

 if tatu=1 then

   Begin
    FrmNovas_Poesias_03.SpedButonVoltar.Visible:=True;

    FrmNovas_Poesias_03.SpedButonVoltar.Left:=400;
    FrmNovas_Poesias_03.SpedButonVoltar.Top:=340;

    End else

 if tatu=2 then
 Begin
    FrmNovas_Poesias_03.SpedButonVoltar.Visible:=True;
    FrmNovas_Poesias_03.SpedButonProx_02.Visible:=True;

    FrmNovas_Poesias_03.SpedButonVoltar.Left:=260;
    FrmNovas_Poesias_03.SpedButonVoltar.Top:=340;

    FrmNovas_Poesias_03.SpedButonProx_02.Left:=400;
    FrmNovas_Poesias_03.SpedButonProx_02.Top:=340;

  End else
 if tatu=3 then
 Begin
    FrmNovas_Poesias_03.SpedButonVoltar.Visible:=false;
    FrmNovas_Poesias_03.SpedButonVoltar.Enabled:=false;

    FrmNovas_Poesias_03.SpedButonProx_02.Visible:=True;
    FrmNovas_Poesias_03.SpedButonProx_02.Left:=400;
    FrmNovas_Poesias_03.SpedButonProx_02.Top:=340;

End;

End;


procedure TFrmNovas_Poesias_03.SpedButonVoltarClick(Sender: TObject);
begin
if vota=1 then
Begin
CloseQuery;
End else
if vota=2 then
Begin
CloseQuery;
End;
End;

procedure TFrmNovas_Poesias_03.SpedButonAdorClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Réquiem do Sol.ini');
   FrmNotas_Poesias.Sna:=9;

   end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Anjo da Guarda.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
    if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Os Três Amores.ini');
   FrmNotas_Poesias.Sna:=11;
   End;


end;

procedure TFrmNovas_Poesias_03.Img1Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonAdorClick(nil);
end;

procedure TFrmNovas_Poesias_03.SpedButonLuaClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Réquiem.ini');
   FrmNotas_Poesias.Sna:=9;

   end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Exu.ini');
   FrmNotas_Poesias.Sna:=13;
   end else

       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Pedro Ivo.ini');
   FrmNotas_Poesias.Sna:=11;
   End;

end;

procedure TFrmNovas_Poesias_03.SpedButonMonjaClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Ressurreição.ini');
   FrmNotas_Poesias.Sna:=9;
   end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Ponto das Almas.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Pelas Sombras.ini');
   FrmNotas_Poesias.Sna:=11;
   End;

end;

procedure TFrmNovas_Poesias_03.SpedButonSatanClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Sem Esperança.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Ponto para Cruzar Cambono.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Perseverando.ini');
   FrmNotas_Poesias.Sna:=11;
   End;

end;

procedure TFrmNovas_Poesias_03.SpedButonSonataClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Spleen de Deuses.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos Cruzados.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Poesia e Mendicidade.ini');
   FrmNotas_Poesias.Sna:=11;
   End;

end;

procedure TFrmNovas_Poesias_03.SpedButonSonho_BrancoClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Tristeza do Infinito.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Abertura da Sessão.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Quando eu Morrer....ini');
   FrmNotas_Poesias.Sna:=11;
   End;

end;

procedure TFrmNovas_Poesias_03.SpedButonTulipa_RealClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Violões que Choram.ini');
   FrmNotas_Poesias.Sna:=9;
  end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Criança.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Quem Dá aos Pobres, Empresta a Deus.ini');
   FrmNotas_Poesias.Sna:=11;
   End;

end;

procedure TFrmNovas_Poesias_03.SpedButonVespealClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Visão Guiadora.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Defumador.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Sub Tegmine Fagi.ini');
   FrmNotas_Poesias.Sna:=11;
   End;

end;

procedure TFrmNovas_Poesias_03.SpedButonFlor_DiaboClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Visão.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Descarga.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Versos de um Viajante.ini');
   FrmNotas_Poesias.Sna:=11;
   End;

end;

procedure TFrmNovas_Poesias_03.SpedButonDivinaClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Broqueis\Acrobata da Dor.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Iansã.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Cachoeira\A tarde.ini');
   FrmNotas_Poesias.Sna:=11;
   End;


end;

procedure TFrmNovas_Poesias_03.SpedButonPiedosaClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Broqueis\Afra.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Iemanjá.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Cachoeira\Amante.ini');
   FrmNotas_Poesias.Sna:=11;
   End;


end;

procedure TFrmNovas_Poesias_03.SpedButonTedioClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Broqueis\Alda.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Nanã.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Cachoeira\Anjo.ini');
   FrmNotas_Poesias.Sna:=11;
   End;


end;

procedure TFrmNovas_Poesias_03.SpedButonSeioClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Broqueis\Angelus.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Ogum.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
   if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Cachoeira\Desespero.ini');
   FrmNotas_Poesias.Sna:=11;
   End;


end;

procedure TFrmNovas_Poesias_03.SpedButonMonja_NegraClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Broqueis\Antífona.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Oxalá.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
   if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Cachoeira\Despertar para Morrer.ini');
   FrmNotas_Poesias.Sna:=11;
   End;


end;

procedure TFrmNovas_Poesias_03.SpedButonInesClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Broqueis\Aparição.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Oxóssi.ini');
   FrmNotas_Poesias.Sna:=13;
   end else
   if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Cachoeira\Diálogo dos Ecos.ini');
   FrmNotas_Poesias.Sna:=11;
   End;


end;

procedure TFrmNovas_Poesias_03.SpedButonEnvelhecerClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Broqueis\Beleza Morta.ini');
   FrmNotas_Poesias.Sna:=9;
end else
   if tosta =2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmOrixas.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Oxum (água doce).ini');
   FrmNotas_Poesias.Sna:=13;
   end else
   if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_03.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Cachoeira\História de um Crime.ini');
   FrmNotas_Poesias.Sna:=11;
   End;


end;

procedure TFrmNovas_Poesias_03.Img2Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonLuaClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img15Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonMonjaClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img16Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonSatanClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img27Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonSonataClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img17Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonSonho_BrancoClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img18Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonTulipa_RealClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img19Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonVespealClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img20Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonFlor_DiaboClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img21Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonDivinaClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img22Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonPiedosaClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img24Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonSeioClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img25Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonMonja_NegraClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img26Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonInesClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img29Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonEnvelhecerClick(nil);
end;

procedure TFrmNovas_Poesias_03.Img23Click(Sender: TObject);
begin
FrmNovas_Poesias_03.SpedButonTedioClick(nil);
end;

procedure TFrmNovas_Poesias_03.SpedButonProx_02Click(Sender: TObject);
begin


  // Segunda Parte dos Pontos Cantados - Eu inverti primeiro é o 03 e depois o 02
   
     Application.CreateForm(TFrmNovas_Poesias_02, FrmNovas_Poesias_02);

     FrmNovas_Poesias_02.Width:=580;
     FrmNovas_Poesias_02.Height:=415;
     FrmNovas_Poesias_02.Left:=400;
     FrmNovas_Poesias_02.Top:=320;


     FrmNovas_Poesias_02.tatu:=2;
     FrmNovas_Poesias_02.tudo:=5;
     FrmNovas_Poesias_02.vota:=1;
     FrmNovas_Poesias_02.tosta:=4;
     FrmNovas_Poesias_02.vutu:=1;

     FrmNovas_Poesias_02.inicio;
     FrmNovas_Poesias_02.feito;
     //FrmNovas_Poesias_02.musica;

     FrmNovas_Poesias_02.Caption:='Pontos - Continuação';

     FrmNovas_Poesias_02.SpedButonAdor.Caption:='Pontos de Preto Velho';
     FrmNovas_Poesias_02.SpedButonLua.Caption:='Pontos de Tronqueira';
     FrmNovas_Poesias_02.SpedButonMonja.Caption:='Pontos de Xangô';
     FrmNovas_Poesias_02.SpedButonSatan.Caption:='Pontos do Oriente';
     FrmNovas_Poesias_02.SpedButonSonata.Caption:='Prece de Cáritas';
     FrmNovas_Poesias_02.SpedButonSonho_Branco.Caption:='Prece de Ismael';

     FrmNovas_Poesias_02.SpedButonTulipa_Real.Caption:='Outro Ponto Cantado de Oxalá';
     FrmNovas_Poesias_02.SpedButonTulipa_Real.Width:=180;
     FrmNovas_Poesias_02.SpedButonTulipa_Real.Left:=100;

     FrmNovas_Poesias_02.SpedButonVespeal.caption:='Outro Ponto de Bater-Cabeça';
     FrmNovas_Poesias_02.SpedButonVespeal.Width:=180;
     FrmNovas_Poesias_02.SpedButonVespeal.Left:=100;

     FrmNovas_Poesias_02.SpedButonFlor_Diabo.Caption:='Outro Ponto de Defumação';
     FrmNovas_Poesias_02.SpedButonFlor_Diabo.Width:=180;

     FrmNovas_Poesias_02.SpedButonDivina.caption:='Outro Ponto de Firmeza';

     FrmNovas_Poesias_02.SpedButonPiedosa.caption:='Ponto da Estrela Guia';
     FrmNovas_Poesias_02.SpedButonTedio.caption:='Ponto de Abertura de Trabalhos';
     FrmNovas_Poesias_02.SpedButonTedio.Left:=368;
     FrmNovas_Poesias_02.SpedButonTedio.Width:=180;

     FrmNovas_Poesias_02.SpedButonSeio.caption:='Ponto de Bater-Cabeça';
     FrmNovas_Poesias_02.SpedButonMonja_Negra.caption:='Ponto de Defumação';
     FrmNovas_Poesias_02.SpedButonInes.caption:='Ponto de Firmeza';

     FrmNovas_Poesias_02.SpedButonEnvelhecer.Caption:='Outros Pontos';
     
     FrmNovas_Poesias_02.SpedButonProx_02.Enabled:=False;
     FrmNovas_Poesias_02.SpedButonProx_02.Visible:=False;
     

     FrmNovas_Poesias_02.SpedButonVoltar.Left:=420;

     FrmNovas_Poesias_02.LblNumber.Caption:='2';
     FrmNovas_Poesias_02.LblNumber.Top:=360;

     FrmNovas_Poesias_03.hide;
     FrmNovas_Poesias_02.show;
    End;

end.
