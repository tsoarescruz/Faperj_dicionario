unit UNomes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, OleCtrls, ShockwaveFlashObjects_TLB;

type
  TFrmNomes = class(TForm)
    SpedButonPoesias: TSpeedButton;
    SpedButonBibliografia: TSpeedButton;
    Nome: TShockwaveFlash;
    procedure feito;
    procedure SpedButonBibliografiaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonPoesiasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNomes: TFrmNomes;

implementation

uses UMenu_Poemas_Poesias, UMapa, UManuel_Inacio,ULoggo,UMedia_Musikas,
  UTipo_Poeta, UNovas_Poesias;

{$R *.dfm}

Procedure TFrmNomes.feito;
Begin

FrmNomes.Color:= clBtnText;
FrmNomes.Font.Name:='Times New Roman';
FrmNomes.Font.Color:=clWhite;
FrmNomes.Font.Style:=[fsItalic,fsBold];
FrmNomes.Font.Size:=10;

end;
procedure TFrmNomes.SpedButonBibliografiaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmMedia_Misikas, FrmMedia_Misikas);
  FrmMedia_Misikas.Mach.Movie :=caminho +'Páginas\Cartol.swf';
  FrmMedia_Misikas.Mach.Play;
  FrmMedia_Misikas.RichEdtBiblio.Lines.LoadFromFile(caminho +'Biblio\Cartola_biblio.txt');
  FrmMedia_Misikas.RichEdtDados_Pessoais.Lines.LoadFromFile(caminho +'Biblio\Cartola_Dados.txt');
  FrmMedia_Misikas.RichEdtRoamance.Text:='';
  FrmMedia_Misikas.RichEdtPoesias.Text:='';
  FrmMedia_Misikas.RichEdtContos.Text:='';
  FrmMedia_Misikas.RichEdtTeatro.Text:='';
  FrmMedia_Misikas.Caption:='Biografia de Cartola';
  FrmMedia_Misikas.Sna:=12;
  FrmMedia_Misikas.feito;

  FrmMedia_Misikas.RichEdtPoesias.Height:=345;
  FrmMedia_Misikas.RichEdtPoesias.Lines.LoadFromFile(caminho +'Biblio\Cartola_Discografia.txt');

  FrmMedia_Misikas.RichEdtTeatro.Height:=345;
  FrmMedia_Misikas.RichEdtTeatro.Top:=351;
  FrmMedia_Misikas.RichEdtTeatro.Lines.LoadFromFile(caminho +'Biblio\Cartola_Obras_02.txt');

  FrmMedia_Misikas.Top:=6;
  FrmMedia_Misikas.Height:=730;

  FrmMedia_Misikas.RichEdtContos.Top:=351;
  FrmMedia_Misikas.RichEdtContos.Left:=264;
  FrmMedia_Misikas.RichEdtContos.Width:=230;
  FrmMedia_Misikas.RichEdtContos.Lines.LoadFromFile(caminho +'Biblio\Cartola_Discografia_02.txt');

  FrmMedia_Misikas.RichEdtRoamance.Top:=520;
  FrmMedia_Misikas.RichEdtRoamance.Left:=264;
  FrmMedia_Misikas.RichEdtRoamance.Height:=178;
  FrmMedia_Misikas.RichEdtRoamance.Lines.LoadFromFile(caminho +'Biblio\Cartola_Obras.txt');

//  FrmMedia_Misikas.btnProx.Height:=690;
  FrmMedia_Misikas.btnProx.Visible:=true;

  FrmMedia_Misikas.show;
  FrmNomes.Hide;

end;

procedure TFrmNomes.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
FrmNomes.Hide;
FrmTipo_Poetas.Show;
end;

procedure TFrmNomes.SpedButonPoesiasClick(Sender: TObject);
begin
begin
     Application.CreateForm(TFrmNovas_Poesias, FrmNovas_Poesias);

     FrmNovas_Poesias.tatu:=3;
     FrmNovas_Poesias.tudo:=5;
     FrmNovas_Poesias.vota:=1;
     FrmNovas_Poesias.tosta:=4;
     FrmNovas_Poesias.vutu:=3;

     FrmNovas_Poesias.inicio;
     FrmNovas_Poesias.feito;
   //FrmNovas_Poesias.musica;

     FrmNovas_Poesias.Width:=580;
     FrmNovas_Poesias.Height:=415;
     FrmNovas_Poesias.Left:=400;
     FrmNovas_Poesias.Top:=320;

     FrmNovas_Poesias.Caption:='Canções de Cartola';

     FrmNovas_Poesias.SpedButonAdor.Caption:='A Canção de Saudade';
     FrmNovas_Poesias.SpedButonLua.Caption:='Acontece';
     FrmNovas_Poesias.SpedButonMonja.Caption:='Alvorada';
     FrmNovas_Poesias.SpedButonSatan.Caption:='As Rosas Não falam';
     FrmNovas_Poesias.SpedButonSonata.Caption:='Caramin';
     FrmNovas_Poesias.SpedButonSonho_Branco.Caption:='A Canção que Chegou';
     FrmNovas_Poesias.SpedButonTulipa_Real.Caption:='Aconteceu';
     FrmNovas_Poesias.SpedButonVespeal.Caption:='Amor Proibido';

     FrmNovas_Poesias.SpedButonFlor_Diabo.Caption:='Beijos';
     FrmNovas_Poesias.SpedButonDivina.Caption:='A cor da Esperança';
     FrmNovas_Poesias.SpedButonPiedosa.Caption:='Alegria';
     FrmNovas_Poesias.SpedButonTedio.Caption:='Ao Amanhecer';
     FrmNovas_Poesias.SpedButonSeio.Caption:='Cadeira Vazia';


     FrmNovas_Poesias.SpedButonMonja_Negra.Caption:='';
     FrmNovas_Poesias.SpedButonMonja_Negra.enabled:=false;
     FrmNovas_Poesias.SpedButonMonja_Negra.Visible :=false;

     FrmNovas_Poesias.SpedButonInes.Caption:='';
     FrmNovas_Poesias.SpedButonInes.Enabled :=false;
     FrmNovas_Poesias.SpedButonInes.Visible :=false;

     FrmNovas_Poesias.SpedButonEnvelhecer.Caption:='';
     FrmNovas_Poesias.SpedButonEnvelhecer.Enabled :=false;
     FrmNovas_Poesias.SpedButonEnvelhecer.Visible:=false;

     FrmNovas_Poesias.Img25.Visible:=false;
     FrmNovas_Poesias.Img26.Visible:=false;
     FrmNovas_Poesias.Img29.Visible:=false;

     FrmNovas_Poesias.SpedButonProx_02.Visible:=false;
     FrmNovas_Poesias.LblNumber.Caption:='1';
     FrmNovas_Poesias.LblNumber.Top:=360;

     FrmNovas_Poesias.show;

  End
   End;
     end.
