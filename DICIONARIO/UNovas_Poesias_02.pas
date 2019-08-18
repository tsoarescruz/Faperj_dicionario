unit UNovas_Poesias_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls;

type
  TFrmNovas_Poesias_02 = class(TForm)
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
    procedure inicio;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonVoltarClick(Sender: TObject);
    procedure feito;
    procedure musica;
    procedure SpedButonAdorClick(Sender: TObject);
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
    procedure Img1Click(Sender: TObject);
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
    procedure Img23Click(Sender: TObject);
    procedure Img24Click(Sender: TObject);
    procedure Img25Click(Sender: TObject);
    procedure Img26Click(Sender: TObject);
    procedure Img29Click(Sender: TObject);
    procedure SpedButonProx_02Click(Sender: TObject);
  private
    { Private declarations }
  public
    vutu,tatu,tudo,vota,tosta:integer;
    { Public declarations }
  end;

var
  FrmNovas_Poesias_02: TFrmNovas_Poesias_02;

implementation

uses UNovas_Poesias, UNotas_Poesias, UCruz_Souza, UBroq_Cruz_Sousa,
  UCastro_Alves, ULoggo;

{$R *.dfm}

procedure TFrmNovas_Poesias_02.inicio;
Begin

FrmNovas_Poesias_02.Color:= clBtnText;
FrmNovas_Poesias_02.Font.Name:='Times New Roman';
FrmNovas_Poesias_02.Font.Color:=clWhite;
FrmNovas_Poesias_02.Font.Style:=[fsItalic,fsbold];
FrmNovas_Poesias_02.Font.Size:=10;


  if tatu=1 then

   Begin
    FrmNovas_Poesias_02.SpedButonVoltar.Visible:=True;

    FrmNovas_Poesias_02.SpedButonVoltar.Left:=400;
    FrmNovas_Poesias_02.SpedButonVoltar.Top:=340;


    End else

 if tatu=2 then
 Begin
    FrmNovas_Poesias_02.SpedButonVoltar.Visible:=True;
    FrmNovas_Poesias_02.SpedButonProx_02.Visible:=True;

    FrmNovas_Poesias_02.SpedButonVoltar.Left:=260;
    FrmNovas_Poesias_02.SpedButonVoltar.Top:=340;

    FrmNovas_Poesias_02.SpedButonProx_02.Left:=400;
    FrmNovas_Poesias_02.SpedButonProx_02.Top:=340;


 End;
End;

procedure TFrmNovas_Poesias_02.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
         if tudo=1 then
          Begin
          FrmNovas_Poesias.show;
          FrmNovas_Poesias_02.Hide;
          End Else
          if tudo=2 then
          Begin
          FrmNovas_Poesias.show;
          FrmNovas_Poesias_02.Hide;
          End Else
          if tudo=3 then
          Begin
          FrmNovas_Poesias.show;
          FrmNovas_Poesias_02.Hide;
          End else
          if tudo=4 then
          Begin
          FrmNovas_Poesias.show;
          FrmNovas_Poesias_02.Hide;
          End else
          if tudo=5 then
          Begin
          FrmNovas_Poesias_03.show;
          FrmNovas_Poesias_02.Hide;
          End;
end;

procedure TFrmNovas_Poesias_02.SpedButonVoltarClick(Sender: TObject);
begin
if vota=1 then
Begin
CloseQuery;
End else

if vota=2 then
Begin

CloseQuery;

End;

end;

procedure TFrmNovas_Poesias_02.feito;
Begin

   FrmNovas_Poesias_02.Img1.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img2.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img15.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img16.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img17.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img18.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img19.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img20.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img21.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img22.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img23.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img24.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img25.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img26.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img29.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');
   FrmNovas_Poesias_02.Img27.Picture.LoadFromFile(caminho+'icons\Clipboard.ico');

   end;

   procedure TFrmNovas_Poesias_02.musica;

   Begin

   FrmNovas_Poesias_02.Img01.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img07.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img02.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img08.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img03.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img09.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img04.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img010.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img05.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img011.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img06.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img012.Picture.LoadFromFile(caminho+'icons\media Player2.ico');

   FrmNovas_Poesias_02.Img013.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img014.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img015.Picture.LoadFromFile(caminho+'icons\media Player2.ico');
   FrmNovas_Poesias_02.Img016.Picture.LoadFromFile(caminho+'icons\media Player2.ico');

   End;

procedure TFrmNovas_Poesias_02.SpedButonAdorClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Inexorável.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

    if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Dalila.ini');
   FrmNotas_Poesias.Sna:=10;
   End else

    if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Preto Velho.ini');
   FrmNotas_Poesias.Sna:=14;
   End

end;

procedure TFrmNovas_Poesias_02.SpedButonLuaClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Lírio Astral.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

     if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Hino ao Sono.ini');
   FrmNotas_Poesias.Sna:=10;
   End else
     if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Tronqueira.ini');
   FrmNotas_Poesias.Sna:=14;
   End
end;

procedure TFrmNovas_Poesias_02.SpedButonMonjaClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Litania dos Pobres.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

     if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Immensis Orbibus Anguis.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos de Xangô.ini');
   FrmNotas_Poesias.Sna:=14;
   End
end;

procedure TFrmNovas_Poesias_02.SpedButonSatanClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Luar de Lágrimas.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

   if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Jesuítas.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Pontos do Oriente.ini');
   FrmNotas_Poesias.Sna:=14;
   End




end;

procedure TFrmNovas_Poesias_02.SpedButonSonataClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Mãos.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Murmúrios da Tarde.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Prece de Cáritas.ini');
   FrmNotas_Poesias.Sna:=14;
   End
end;

procedure TFrmNovas_Poesias_02.SpedButonSonho_BrancoClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Metempsicose.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\O “Adeus” de Teresa.ini');
   FrmNotas_Poesias.Sna:=10;
   End else
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Prece de Ismael.ini');
   FrmNotas_Poesias.Sna:=14;
   End

end;

procedure TFrmNovas_Poesias_02.SpedButonTulipa_RealClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Meu Filho.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\O Coração.ini');
   FrmNotas_Poesias.Sna:=10;
   End else
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Outro Ponto Cantado de Oxalá.ini');
   FrmNotas_Poesias.Sna:=14;
   End
end;

procedure TFrmNovas_Poesias_02.SpedButonVespealClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Música da Morte.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\O Fantasma e a Canção.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Outro Ponto de Bater-Cabeça.ini');
   FrmNotas_Poesias.Sna:=14;
   End
end;

procedure TFrmNovas_Poesias_02.SpedButonFlor_DiaboClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Olhos do Sonho.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\O Gondoleiro do Amor.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Outro Ponto de Defumação.ini');
   FrmNotas_Poesias.Sna:=14;
   End;
end;

procedure TFrmNovas_Poesias_02.SpedButonDivinaClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Olhos.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\O Hóspede.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Outro Ponto de Firmeza.ini');
   FrmNotas_Poesias.Sna:=14;
   End;
end;

procedure TFrmNovas_Poesias_02.SpedButonPiedosaClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Os Monges.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\O Vôo do Gênio.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Ponto da Estrela Guia.ini');
   FrmNotas_Poesias.Sna:=14;
   End;
   end;

procedure TFrmNovas_Poesias_02.SpedButonTedioClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Pandemonium.ini');
   FrmNotas_Poesias.Sna:=8;

   end else
      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Ode ao dous de Julho.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Ponto de Abertura de Trabalhos.ini');
   FrmNotas_Poesias.Sna:=14;
   End;
 end;

procedure TFrmNovas_Poesias_02.SpedButonSeioClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Pés.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Oitavas a Napoleão.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Ponto de Bater-Cabeça.ini');
   FrmNotas_Poesias.Sna:=14;
   End;
end;

procedure TFrmNovas_Poesias_02.SpedButonMonja_NegraClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Pressago.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Onde Estás.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Ponto de Defumação.ini');
   FrmNotas_Poesias.Sna:=14;
   End;
 end;

procedure TFrmNovas_Poesias_02.SpedButonInesClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Recolta de Estrelas.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Os Anjos da Meia-Noite.ini');
   FrmNotas_Poesias.Sna:=10;
   End else  
if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Ponto de Firmeza.ini');
   FrmNotas_Poesias.Sna:=14;
   End;
end;

procedure TFrmNovas_Poesias_02.SpedButonEnvelhecerClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Cruz_Sousa\Faróis\Recorda.ini');
   FrmNotas_Poesias.Sna:=8;

   end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Poemas\Castro_Alves\Espumas\Os Perfumes.ini');
   FrmNotas_Poesias.Sna:=10;
   End else
   if tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias_02.Hide;
   FrmNovas_Poesias_03.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Pontos\Outros Pontos.ini');
   FrmNotas_Poesias.Sna:=14;
   End;
end;

procedure TFrmNovas_Poesias_02.Img1Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonAdorClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img2Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonLuaClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img15Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonMonjaClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img16Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonSatanClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img27Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonSonataClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img17Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonSonho_BrancoClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img18Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonTulipa_RealClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img19Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonVespealClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img20Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonFlor_DiaboClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img21Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonDivinaClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img22Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonPiedosaClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img23Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonTedioClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img24Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonSeioClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img25Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonMonja_NegraClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img26Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonInesClick(nil);
end;

procedure TFrmNovas_Poesias_02.Img29Click(Sender: TObject);
begin
FrmNovas_Poesias_02.SpedButonEnvelhecerClick(nil);
end;

procedure TFrmNovas_Poesias_02.SpedButonProx_02Click(Sender: TObject);
begin
    if vutu=1 then
    Begin

     Application.CreateForm(TFrmNovas_Poesias_03, FrmNovas_Poesias_03);

     FrmNovas_Poesias_03.Width:=580;
     FrmNovas_Poesias_03.Height:=415;
     FrmNovas_Poesias_03.Left:=400;
     FrmNovas_Poesias_03.Top:=320;

     FrmNovas_Poesias_03.tatu:=1;
     FrmNovas_Poesias_03.tudo:=1;
     FrmNovas_Poesias_03.vota:=1;
     FrmNovas_Poesias_03.tosta:=1;
     FrmNovas_Poesias_03.vutu:=1;

     FrmNovas_Poesias_03.inicio;
     FrmNovas_Poesias_03.feito;
     //FrmNovas_Poesias_03.musica;

     FrmNovas_Poesias_03.Caption:='Poemas de Cruz e Souza';

     FrmNovas_Poesias_03.SpedButonAdor.Caption:='Réquiem do Sol';
     FrmNovas_Poesias_03.SpedButonLua.Caption:='Réquiem';
     FrmNovas_Poesias_03.SpedButonMonja.Caption:='Ressurreição';
     FrmNovas_Poesias_03.SpedButonSatan.Caption:='Sem Esperança';
     FrmNovas_Poesias_03.SpedButonSonata.Caption:='Spleen de Deuses';
     FrmNovas_Poesias_03.SpedButonSonho_Branco.Caption:='Tristeza do Infinito';
     FrmNovas_Poesias_03.SpedButonTulipa_Real.Caption:='Violões que Choram';
     FrmNovas_Poesias_03.SpedButonVespeal.Caption:='Visão Guiadora';

     FrmNovas_Poesias_03.SpedButonFlor_Diabo.Caption:='Visão';
     FrmNovas_Poesias_03.SpedButonDivina.Caption:='Acrobata da Dor';
     FrmNovas_Poesias_03.SpedButonPiedosa.Caption:='Afra';
     FrmNovas_Poesias_03.SpedButonTedio.Caption:='Alda';
     FrmNovas_Poesias_03.SpedButonSeio.Caption:='Angelus';
     FrmNovas_Poesias_03.SpedButonMonja_Negra.Caption:='Antífona';
     FrmNovas_Poesias_03.SpedButonInes.Caption:='Aparição';
     FrmNovas_Poesias_03.SpedButonEnvelhecer.Caption:='Beleza Morta';

     FrmNovas_Poesias_03.LblNumber.Caption:='4';
     FrmNovas_Poesias_03.LblNumber.Top:=360;

     FrmNovas_Poesias_02.hide;
     FrmNovas_Poesias_03.show;
    End else

    if vutu =2 then
    Begin

     Application.CreateForm(TFrmNovas_Poesias_03, FrmNovas_Poesias_03);

     FrmNovas_Poesias_03.Width:=580;
     FrmNovas_Poesias_03.Height:=415;
     FrmNovas_Poesias_03.Left:=400;
     FrmNovas_Poesias_03.Top:=320;

     FrmNovas_Poesias_03.tatu:=1;
     FrmNovas_Poesias_03.tudo:=3;
     FrmNovas_Poesias_03.vota:=1;
     FrmNovas_Poesias_03.tosta:=3;

     FrmNovas_Poesias_03.inicio;
     FrmNovas_Poesias_03.feito;
     //FrmNovas_Poesias_03.musica;

     FrmNovas_Poesias_03.Caption:='Poemas de Castro Alves';

     FrmNovas_Poesias_03.SpedButonAdor.Caption:='Os Três &Amores';
     FrmNovas_Poesias_03.SpedButonLua.Caption:='Pedro &Ivo';
     FrmNovas_Poesias_03.SpedButonMonja.Caption:='Pelas &Sombras';
     FrmNovas_Poesias_03.SpedButonSatan.Caption:='&Perseverando';
     FrmNovas_Poesias_03.SpedButonSonata.Caption:='Poesia e Me&ndicidade';
     FrmNovas_Poesias_03.SpedButonSonho_Branco.Caption:='Q&uando eu Morrer...';
     FrmNovas_Poesias_03.SpedButonTulipa_Real.Caption:='Quem Dá aos Po&bres...';
     FrmNovas_Poesias_03.SpedButonVespeal.Caption:='Sub Tegmine &Fagi';

     FrmNovas_Poesias_03.SpedButonFlor_Diabo.Caption:='&Versos de um Viajante';
     FrmNovas_Poesias_03.SpedButonDivina.Caption:='A &Tarde';
     FrmNovas_Poesias_03.SpedButonPiedosa.Caption:='A&mante';
     FrmNovas_Poesias_03.SpedButonTedio.Caption:='An&jo';
     FrmNovas_Poesias_03.SpedButonSeio.Caption:='Desesper&o';
     FrmNovas_Poesias_03.SpedButonMonja_Negra.Caption:='D&espertar para Morrer';
     FrmNovas_Poesias_03.SpedButonInes.Caption:='&Diálogo dos Ecos';
     FrmNovas_Poesias_03.SpedButonEnvelhecer.Caption:='&História de um Crime';

     FrmNovas_Poesias_03.LblNumber.Caption:='4';
     FrmNovas_Poesias_03.LblNumber.Top:=360;

     FrmNovas_Poesias_02.hide;
     FrmNovas_Poesias_03.show;


    End;
end;

end.
