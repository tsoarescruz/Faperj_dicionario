unit UMilton_Nascimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, ShockwaveFlashObjects_TLB, Buttons;

type
  TFrmMilton_Nascimento = class(TForm)
    SpedButonPoesias: TSpeedButton;
    SpedButonBibliografia: TSpeedButton;
    Mil: TShockwaveFlash;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    Procedure Feito(Sender:TObject);
    procedure SpedButonBibliografiaClick(Sender: TObject);
    procedure SpedButonPoesiasClick(Sender: TObject);
      private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMilton_Nascimento: TFrmMilton_Nascimento;

implementation

uses UTipo_Poeta, UTipos_Poemas, ULoggo, UBibi_Machado_Assis, UPoe_Cruz_Souza;

{$R *.dfm}

procedure TFrmMilton_Nascimento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmMilton_Nascimento.Hide;
FrmMilton_Nascimento.Mil.Destroy;
FrmTipo_Poetas.show;
end;

Procedure  TFrmMilton_Nascimento.Feito(Sender:TObject);
Begin
FrmMilton_Nascimento.Color:= clBtnText;
FrmMilton_Nascimento.Font.Name:='Times New Roman';
FrmMilton_Nascimento.Font.Color:=clWhite;
FrmMilton_Nascimento.Font.Style:=[fsBold,fsItalic];
FrmMilton_Nascimento.Font.Size:=10;

Mil.Movie := caminho +'Páginas\Mil.swf';
Mil.Play;
End;
procedure TFrmMilton_Nascimento.SpedButonBibliografiaClick(
  Sender: TObject);
begin
   Application.CreateForm(TFrmBibi_Machado_Assis, FrmBibi_Machado_Assis);
   FrmBibi_Machado_Assis.mach.Movie:=caminho + 'Páginas\Mil.swf';
   FrmBibi_Machado_Assis.Caption:=('Biografia de Milton Nascimento');
   FrmBibi_Machado_Assis.RichEdtPoesias.Lines.LoadFromFile(caminho +'Biblio\Milton_Disco.txt');
   FrmBibi_Machado_Assis.RichEdtPoesias.Top:=350;
   FrmBibi_Machado_Assis.RichEdtPoesias.Left:=5;
   FrmBibi_Machado_Assis.RichEdtPoesias.Width:=250;
   FrmBibi_Machado_Assis.RichEdtPoesias.Height:=280;
   FrmBibi_Machado_Assis.RichEdtContos.lines.LoadFromFile(caminho +'Biblio\Milton_Obras_02.txt');
   FrmBibi_Machado_Assis.RichEdtContos.top:=460;
   FrmBibi_Machado_Assis.RichEdtContos.Left:=503;
   FrmBibi_Machado_Assis.RichEdtContos.Height:=170;
   FrmBibi_Machado_Assis.RichEdtContos.Width:=320;
   FrmBibi_Machado_Assis.RichEdtRoamance.Lines.LoadFromFile(caminho +'Biblio\Milton_Disco_02.txt');
   FrmBibi_Machado_Assis.RichEdtRoamance.Height:=280;
   FrmBibi_Machado_Assis.RichEdtRoamance.Left:=260;
   FrmBibi_Machado_Assis.RichEdtRoamance.Top:=350;
   FrmBibi_Machado_Assis.RichEdtTeatro.Lines.LoadFromFile(caminho +'Biblio\Milton_Disco_03.txt');
   FrmBibi_Machado_Assis.RichEdtTeatro.Height:=100;
   FrmBibi_Machado_Assis.RichEdtTeatro.Top:=348;
   FrmBibi_Machado_Assis.RichEdtBiblio.Lines.LoadFromFile(caminho +'Biblio\Milton_Biblio.txt');
   FrmBibi_Machado_Assis.RichEdtBiblio.Top:=144;
   FrmBibi_Machado_Assis.RichEdtBiblio.Height:=198;
   FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Lines.LoadFromFile(caminho +'Biblio\Milton_Dados.txt');
   FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Height:=130;
   FrmBibi_Machado_Assis.sna:=5;
   FrmBibi_Machado_Assis.show;
   FrmMilton_Nascimento.Hide;

   end;

procedure TFrmMilton_Nascimento.SpedButonPoesiasClick(Sender: TObject);
begin

Application.CreateForm(TFrmCruz_Souza_Poema , FrmCruz_Souza_Poema);
FrmCruz_Souza_Poema.show;
FrmCruz_Souza_Poema.Cruz:=4;

FrmCruz_Souza_Poema.tata:=1;
FrmCruz_Souza_Poema.vutu:=3;

FrmCruz_Souza_Poema.feito;
FrmCruz_Souza_Poema.inicio;
FrmCruz_Souza_Poema.Caption:='Músicas de Milton Nascimento';
FrmCruz_Souza_Poema.SpedButonAdor.Caption:='Anima ';
FrmCruz_Souza_Poema.SpedButonLua.Caption:='A Festa';
FrmCruz_Souza_Poema.SpedButonMonja.Caption:='A Rosa';
FrmCruz_Souza_Poema.SpeedButonSatan.Caption:='Beijo Partido';
FrmCruz_Souza_Poema.SpedButonSonata.Caption:='Cálice';
FrmCruz_Souza_Poema.SpedButonSonho_Branco.Caption:='Casa Aberta';
FrmCruz_Souza_Poema.SpedButonTulipa_Real.Caption:='Castigo';
FrmCruz_Souza_Poema.SpedButonVespeal.Caption:='Cigarra';
FrmCruz_Souza_Poema.SpedButonFlor_Diabo.Caption:='Creto';
FrmCruz_Souza_Poema.SpedButonDivina.Caption:='Don Quixote';
FrmCruz_Souza_Poema.SpedButonPiedosa.Caption:='Amor Amigo';
FrmCruz_Souza_Poema.SpedButonTedio.Caption:='Caçador de Mim';
FrmCruz_Souza_Poema.SpedButonSeio.Caption:='Canção da América';
FrmCruz_Souza_Poema.SpedButonMonja_Negra.Caption:='Certas Coisas';
FrmCruz_Souza_Poema.SpedButonInes.Caption:='Cio da Terra';
FrmCruz_Souza_Poema.SpedButonEnvelhecer.Caption:='Coração de Estudante';

//FrmCruz_Souza_Poema.Width:=585;
//FrmCruz_Souza_Poema.Height:=390;


FrmCruz_Souza_Poema.Width:=580;
FrmCruz_Souza_Poema.Height:=415;
FrmCruz_Souza_Poema.Left:=400;
FrmCruz_Souza_Poema.Top:=320;
FrmCruz_Souza_Poema.LblNumber.Caption:='1';
FrmCruz_Souza_Poema.LblNumber.Top:=360;

// Estes parãmetros de left e top são do ShockWave que não deu certo

FrmCruz_Souza_Poema.SpedButonProx.Left:=400;
FrmCruz_Souza_Poema.SpedButonProx.Top:=340;

end;
end.
