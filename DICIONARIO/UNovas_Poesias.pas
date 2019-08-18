unit UNovas_Poesias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls;

type
  TFrmNovas_Poesias = class(TForm)
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
    procedure feito;
    procedure musica;
    procedure SpedButonVoltarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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
  FrmNovas_Poesias: TFrmNovas_Poesias;

implementation

uses UPoe_Cruz_Souza, UGoncalves_Dias, UCastro_Alves, UMilton_Nascimento,
  UNotas_Poesias, UCruz_Souza, UNovas_Poesias_02, Uloggo, UNomes;

{$R *.dfm}

procedure TFrmNovas_Poesias.inicio;
Begin

FrmNovas_Poesias.Color:= clBtnText;
FrmNovas_Poesias.Font.Name:='Times New Roman';
FrmNovas_Poesias.Font.Color:=clWhite;
FrmNovas_Poesias.Font.Style:=[fsItalic,fsbold];
FrmNovas_Poesias.Font.Size:=10;

 if Tatu=1 then

   Begin
    FrmNovas_Poesias.SpedButonVoltar.Visible:=True;

    FrmNovas_Poesias.SpedButonVoltar.Left:=400;
    FrmNovas_Poesias.SpedButonVoltar.Top:=340;

    End else

 if Tatu=2 then
 Begin

     FrmNovas_Poesias.SpedButonVoltar.Left:=260;
     FrmNovas_Poesias.SpedButonVoltar.Top:=340;

     FrmNovas_Poesias.SpedButonProx_02.Left:=400;
     FrmNovas_Poesias.SpedButonProx_02.Top:=340;

     FrmNovas_Poesias.SpedButonVoltar.Visible:=True;
     FrmNovas_Poesias.SpedButonProx_02.Visible:=True;
 End else

 if Tatu=3 then
 Begin

     FrmNovas_Poesias.SpedButonProx_02.Left:=400;
     FrmNovas_Poesias.SpedButonProx_02.Top:=340;

     FrmNovas_Poesias.SpedButonVoltar.Visible:=False;
     FrmNovas_Poesias.SpedButonProx_02.Visible:=True;
 End;
End;

procedure TFrmNovas_Poesias.feito;
Begin

   FrmNovas_Poesias.Img1.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');    FrmNovas_Poesias.Img2.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmNovas_Poesias.Img15.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');   FrmNovas_Poesias.Img16.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmNovas_Poesias.Img17.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');   FrmNovas_Poesias.Img18.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmNovas_Poesias.Img19.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');   FrmNovas_Poesias.Img20.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmNovas_Poesias.Img21.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');   FrmNovas_Poesias.Img22.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmNovas_Poesias.Img23.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');   FrmNovas_Poesias.Img24.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmNovas_Poesias.Img25.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');   FrmNovas_Poesias.Img26.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmNovas_Poesias.Img29.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');   FrmNovas_Poesias.Img27.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');

   end;

   procedure TFrmNovas_Poesias.musica;

   Begin

   FrmNovas_Poesias.Img01.Picture.LoadFromFile(caminho +'icons\media Player2.ico'); FrmNovas_Poesias.Img07.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmNovas_Poesias.Img02.Picture.LoadFromFile(caminho +'icons\media Player2.ico'); FrmNovas_Poesias.Img08.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmNovas_Poesias.Img03.Picture.LoadFromFile(caminho +'icons\media Player2.ico'); FrmNovas_Poesias.Img09.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmNovas_Poesias.Img04.Picture.LoadFromFile(caminho +'icons\media Player2.ico'); FrmNovas_Poesias.Img010.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmNovas_Poesias.Img05.Picture.LoadFromFile(caminho +'icons\media Player2.ico'); FrmNovas_Poesias.Img011.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmNovas_Poesias.Img06.Picture.LoadFromFile(caminho +'icons\media Player2.ico'); FrmNovas_Poesias.Img012.Picture.LoadFromFile(caminho +'icons\media Player2.ico');

   FrmNovas_Poesias.Img013.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmNovas_Poesias.Img014.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmNovas_Poesias.Img015.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmNovas_Poesias.Img016.Picture.LoadFromFile(caminho +'icons\media Player2.ico');

   End;
procedure TFrmNovas_Poesias.SpedButonVoltarClick(Sender: TObject);
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

procedure TFrmNovas_Poesias.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
          if tudo=1 then
          Begin
          FrmNovas_Poesias.Hide; FrmCruz_Souza_Poema.show;
           End Else
          if tudo=2 then
            Begin
          FrmNovas_Poesias.Hide; FrmCruz_Souza_Poema.show;
            End Else
          if tudo=3 then
           Begin
          FrmNovas_Poesias.Hide; FrmCruz_Souza_Poema.show;
           End else
          if tudo=4 then
            Begin
          FrmNovas_Poesias.Hide; FrmCruz_Souza_Poema.show;
            End else
          if tudo=5 then
           Begin
            FrmNovas_Poesias.Hide; frmNomes.show;
           End;
            End;

procedure TFrmNovas_Poesias.SpedButonAdorClick(Sender: TObject);
begin
 If tosta=1 then
 Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\A Ironia dos Vermes.ini');
   FrmNotas_Poesias.Sna:=7;
 End Else
    If tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\Adeus.ini');
   FrmNotas_Poesias.Sna:=6;
    End Else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\A Canção de Saudade.ini');
   FrmNotas_Poesias.Sna:=4;
   End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Alunar.ini');
   FrmNotas_Poesias.Sna:=4;
   End;
End;

procedure TFrmNovas_Poesias.SpedButonLuaClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\As Estrelas.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

 if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\Maria.ini');
   FrmNotas_Poesias.Sna:=6;
    End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\Acontece.ini');
   FrmNotas_Poesias.Sna:=4;
      End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Bailes da Vida.ini');
   FrmNotas_Poesias.Sna:=4;
   End;

 End;

procedure TFrmNovas_Poesias.SpedButonMonjaClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Ausência Misteriosa.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

 if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\O segredo.ini');
   FrmNotas_Poesias.Sna:=6;
   End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\Alvorada.ini');
   FrmNotas_Poesias.Sna:=4;
     End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Bale da Utopia.ini');
   FrmNotas_Poesias.Sna:=4;
   End;
end;

procedure TFrmNovas_Poesias.SpedButonSatanClick(Sender: TObject);
begin
  if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Boca.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

 if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\Na Fonte.ini');
   FrmNotas_Poesias.Sna:=6;
     End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\As Rosas Não falam.ini');
   FrmNotas_Poesias.Sna:=4;
      End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Beira mar.ini');
   FrmNotas_Poesias.Sna:=4;
   End;
End;

procedure TFrmNovas_Poesias.SpedButonSonataClick(Sender: TObject);
begin
  if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Cabelos.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

 if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\Tirana.ini');
   FrmNotas_Poesias.Sna:=6;
  End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\Caramin.ini');
   FrmNotas_Poesias.Sna:=4;
  End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Calix Bento.ini');
   FrmNotas_Poesias.Sna:=4;
   End;
End;

procedure TFrmNovas_Poesias.SpedButonSonho_BrancoClick(Sender: TObject);
begin
  if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Canção do Bêbado.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

 if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\Sangue de Africano.ini');
   FrmNotas_Poesias.Sna:=6;
   End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\A Canção que Chegou.ini');
   FrmNotas_Poesias.Sna:=4;
    End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Canção Do Sal.ini');
   FrmNotas_Poesias.Sna:=4;
   End;
End;

procedure TFrmNovas_Poesias.SpedButonTulipa_RealClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Canção Negra.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

 if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\Último abraço.ini');
   FrmNotas_Poesias.Sna:=6;
    End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\ACONTECEU.ini');
   FrmNotas_Poesias.Sna:=4;
   End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Canoa, Canoa.ini');
   FrmNotas_Poesias.Sna:=4;
   End;
End;

procedure TFrmNovas_Poesias.SpedButonVespealClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Caveira.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

 if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\Um raio de Luar.ini');
   FrmNotas_Poesias.Sna:=6;
   End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\Amor Proibido.ini');
   FrmNotas_Poesias.Sna:=4;
   End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Carro de Boi.ini');
   FrmNotas_Poesias.Sna:=4;
   End;

end;


procedure TFrmNovas_Poesias.SpedButonFlor_DiaboClick(Sender: TObject);
begin
 if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Corpo.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

  if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\Ao ator Joaquim Augusto.ini');
   FrmNotas_Poesias.Sna:=6;
 End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\Beijos.ini');
   FrmNotas_Poesias.Sna:=4;
  End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Castigo.ini');
   FrmNotas_Poesias.Sna:=4;
   End;
End;

procedure TFrmNovas_Poesias.SpedButonDivinaClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Ébrios e Cegos.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

   if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\Ao dous de Julho.ini');
   FrmNotas_Poesias.Sna:=6;
  End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\A cor da Esperança.ini');
   FrmNotas_Poesias.Sna:=4;
  End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Coisas Da Vida.ini');
   FrmNotas_Poesias.Sna:=4;
   End;
End;

procedure TFrmNovas_Poesias.SpedButonPiedosaClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Enclausurada.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

   if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\As duas Ilhas.ini');
   FrmNotas_Poesias.Sna:=6;
  End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\Alegria.ini');
   FrmNotas_Poesias.Sna:=4;
  End else

   if Tosta=5 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Souza_Poema.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Estrelada.ini');
   FrmNotas_Poesias.Sna:=4;
   End;
End;

procedure TFrmNovas_Poesias.SpedButonTedioClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Enlevo.ini');
   FrmNotas_Poesias.Sna:=7;

 end else
    if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\As Três irmãs do Poeta.ini');
   FrmNotas_Poesias.Sna:=6;
    End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\Ao Amanhecer.ini');
   FrmNotas_Poesias.Sna:=4;
   End;


end;

procedure TFrmNovas_Poesias.SpedButonSeioClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Esquecimento.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

     if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\As Trevas.ini');
   FrmNotas_Poesias.Sna:=6;
   End else

   if Tosta=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmNomes.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Cartola\Cadeira Vazia.ini');
   FrmNotas_Poesias.Sna:=4;
   End;

end;

procedure TFrmNovas_Poesias.SpedButonMonja_NegraClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Flor Perigosa.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

      if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\Aves de Arribação.ini');
   FrmNotas_Poesias.Sna:=6;
   End;

end;

procedure TFrmNovas_Poesias.SpedButonInesClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Flores da Lua.ini');
   FrmNotas_Poesias.Sna:=7;

 end else
       if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\Boa-Noite.ini');
   FrmNotas_Poesias.Sna:=6;
   End;

end;

procedure TFrmNovas_Poesias.SpedButonEnvelhecerClick(Sender: TObject);
begin
if tosta=1 then
 begin

   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Humildade Secreta.ini');
   FrmNotas_Poesias.Sna:=7;

 end else

   if tosta=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmNovas_Poesias.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\Canção do Boêmio.ini');
   FrmNotas_Poesias.Sna:=6;
   End;

end;

procedure TFrmNovas_Poesias.Img1Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonAdorClick(nil);
end;

procedure TFrmNovas_Poesias.Img2Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonLuaClick(nil);
end;

procedure TFrmNovas_Poesias.Img15Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonMonjaClick(nil);
end;

procedure TFrmNovas_Poesias.Img16Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonSatanClick(nil);
end;

procedure TFrmNovas_Poesias.Img27Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonSonataClick(nil);
end;

procedure TFrmNovas_Poesias.Img17Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonSonho_BrancoClick(nil);
end;

procedure TFrmNovas_Poesias.Img18Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonTulipa_RealClick(nil);
end;

procedure TFrmNovas_Poesias.Img19Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonVespealClick(nil);
end;

procedure TFrmNovas_Poesias.Img20Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonFlor_DiaboClick(nil);
end;

procedure TFrmNovas_Poesias.Img21Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonDivinaClick(nil);
end;

procedure TFrmNovas_Poesias.Img22Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonPiedosaClick(nil);
end;

procedure TFrmNovas_Poesias.Img23Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonTedioClick(nil);
end;

procedure TFrmNovas_Poesias.Img24Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonSeioClick(nil);
end;

procedure TFrmNovas_Poesias.Img25Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonMonja_NegraClick(nil);
end;

procedure TFrmNovas_Poesias.Img26Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonInesClick(nil);
end;

procedure TFrmNovas_Poesias.Img29Click(Sender: TObject);
begin
FrmNovas_Poesias.SpedButonEnvelhecerClick(nil);
end;

procedure TFrmNovas_Poesias.SpedButonProx_02Click(Sender: TObject);
begin

     if  vutu =1 then
     Begin

     Application.CreateForm(TFrmNovas_Poesias_02, FrmNovas_Poesias_02);

     FrmNovas_Poesias_02.Width:=580;
     FrmNovas_Poesias_02.Height:=415;
     FrmNovas_Poesias_02.Left:=400;
     FrmNovas_Poesias_02.Top:=320;

     FrmNovas_Poesias_02.tatu:=2;
     FrmNovas_Poesias_02.tudo:=1;
     FrmNovas_Poesias_02.vota:=1;
     FrmNovas_Poesias_02.tosta:=1;
     FrmNovas_Poesias_02.vutu:=1;

     FrmNovas_Poesias_02.inicio;
     FrmNovas_Poesias_02.feito;
     //FrmNovas_Poesias_02.musica;

     FrmNovas_Poesias_02.Caption:='Poemas de Cruz e Souza';


     FrmNovas_Poesias_02.SpedButonAdor.Caption:='I&nexorável';
     FrmNovas_Poesias_02.SpedButonLua.Caption:='Lírio &Astral';
     FrmNovas_Poesias_02.SpedButonMonja.Caption:='Litania dos Po&bres';
     FrmNovas_Poesias_02.SpedButonSatan.Caption:='Luar de Lágr&imas';
     FrmNovas_Poesias_02.SpedButonSonata.Caption:='Mão&s';
     FrmNovas_Poesias_02.SpedButonSonho_Branco.Caption:='Me&tempsicose';
     FrmNovas_Poesias_02.SpedButonTulipa_Real.Caption:='Meu &Filho';
     FrmNovas_Poesias_02.SpedButonVespeal.Caption:='Música da &Morte';

     FrmNovas_Poesias_02.SpedButonFlor_Diabo.Caption:='&Olhos do Sonho';
     FrmNovas_Poesias_02.SpedButonDivina.Caption:='Ol&hos';
     FrmNovas_Poesias_02.SpedButonPiedosa.Caption:='Os Mong&es';
     FrmNovas_Poesias_02.SpedButonTedio.Caption:='Pandemoni&um';
     FrmNovas_Poesias_02.SpedButonSeio.Caption:='&Pés';
     FrmNovas_Poesias_02.SpedButonMonja_Negra.Caption:='Pressa&go';
     FrmNovas_Poesias_02.SpedButonInes.Caption:='&Recolta de Estrelas';
     FrmNovas_Poesias_02.SpedButonEnvelhecer.Caption:='Recor&da';

     FrmNovas_Poesias_02.LblNumber.Caption:='3';
     FrmNovas_Poesias_02.LblNumber.Top:=360;

     FrmNovas_Poesias.hide;
     FrmNovas_Poesias_02.show;
    End else

    if vutu = 2 then
    Begin
     Application.CreateForm(TFrmNovas_Poesias_02, FrmNovas_Poesias_02);

     FrmNovas_Poesias_02.Width:=580;
     FrmNovas_Poesias_02.Height:=415;
     FrmNovas_Poesias_02.Left:=400;
     FrmNovas_Poesias_02.Top:=320;

     FrmNovas_Poesias_02.tatu:=2;
     FrmNovas_Poesias_02.tudo:=3;
     FrmNovas_Poesias_02.vota:=1;
     FrmNovas_Poesias_02.tosta:=3;
     FrmNovas_Poesias_02.vutu:=2;

     FrmNovas_Poesias_02.inicio;
     FrmNovas_Poesias_02.feito;
     //FrmNovas_Poesias_02.musica;

     FrmNovas_Poesias_02.Caption:='Poemas de Castro Alves';


     FrmNovas_Poesias_02.SpedButonAdor.Caption:='Dal&ila';
     FrmNovas_Poesias_02.SpedButonLua.Caption:='&Hino as Sono';
     FrmNovas_Poesias_02.SpedButonMonja.Caption:='Immensis Or&bibus Anguis';
     FrmNovas_Poesias_02.SpedButonSatan.Caption:='&Jesuítas';
     FrmNovas_Poesias_02.SpedButonSonata.Caption:='M&urmúrios da Tarde';
     FrmNovas_Poesias_02.SpedButonSonho_Branco.Caption:='O "Adeus" de &Teresa';
     FrmNovas_Poesias_02.SpedButonTulipa_Real.Caption:='O Co&ração';
     FrmNovas_Poesias_02.SpedButonVespeal.Caption:='O &Fantasma e a Canção';

     FrmNovas_Poesias_02.SpedButonFlor_Diabo.Caption:='O Gondoleiro do &Amor';
     FrmNovas_Poesias_02.SpedButonDivina.Caption:='O Hó&spede';
     FrmNovas_Poesias_02.SpedButonPiedosa.Caption:='O Vôo do &Gênio';
     FrmNovas_Poesias_02.SpedButonTedio.Caption:='Ode ao Dous de Jul&ho';
     FrmNovas_Poesias_02.SpedButonSeio.Caption:='Oita&vas a Napoleão';
     FrmNovas_Poesias_02.SpedButonMonja_Negra.Caption:='Onde &Estás';
     FrmNovas_Poesias_02.SpedButonInes.Caption:='Os Anjos da Meia-&Noite';
     FrmNovas_Poesias_02.SpedButonEnvelhecer.Caption:='Os &Perfumes';

     FrmNovas_Poesias_02.LblNumber.Caption:='3';
     FrmNovas_Poesias_02.LblNumber.Top:=360;

     FrmNovas_Poesias.hide;
     FrmNovas_Poesias_02.show;
    End else

     if  vutu =3 then
     Begin

     Application.CreateForm(TFrmNovas_Poesias_02, FrmNovas_Poesias_02);

     FrmNovas_Poesias_02.Width:=580;
     FrmNovas_Poesias_02.Height:=415;
     FrmNovas_Poesias_02.Left:=400;
     FrmNovas_Poesias_02.Top:=320;

     FrmNovas_Poesias_02.tatu:=2;
     FrmNovas_Poesias_02.tudo:=1;
     FrmNovas_Poesias_02.vota:=1;
     FrmNovas_Poesias_02.tosta:=1;
     FrmNovas_Poesias_02.vutu:=1;

     FrmNovas_Poesias_02.inicio;
     FrmNovas_Poesias_02.feito;
     //FrmNovas_Poesias_02.musica;

     FrmNovas_Poesias_02.Caption:='Canções de Cartola';


     FrmNovas_Poesias_02.SpedButonAdor.Caption:='';
     FrmNovas_Poesias_02.SpedButonLua.Caption:='';
     FrmNovas_Poesias_02.SpedButonMonja.Caption:='';
     FrmNovas_Poesias_02.SpedButonSatan.Caption:='';
     FrmNovas_Poesias_02.SpedButonSonata.Caption:='';
     FrmNovas_Poesias_02.SpedButonSonho_Branco.Caption:='';
     FrmNovas_Poesias_02.SpedButonTulipa_Real.Caption:='';
     FrmNovas_Poesias_02.SpedButonVespeal.Caption:='';

     FrmNovas_Poesias_02.SpedButonFlor_Diabo.Caption:='';
     FrmNovas_Poesias_02.SpedButonDivina.Caption:='';
     FrmNovas_Poesias_02.SpedButonPiedosa.Caption:='';
     FrmNovas_Poesias_02.SpedButonTedio.Caption:='';
     FrmNovas_Poesias_02.SpedButonSeio.Caption:='';
     FrmNovas_Poesias_02.SpedButonMonja_Negra.Caption:='';
     FrmNovas_Poesias_02.SpedButonInes.Caption:='';
     FrmNovas_Poesias_02.SpedButonEnvelhecer.Caption:='';

     FrmNovas_Poesias_02.LblNumber.Caption:='2';
     FrmNovas_Poesias_02.LblNumber.Top:=360;

     FrmNovas_Poesias.hide;
     FrmNovas_Poesias_02.show;
    End;
End;

end.
