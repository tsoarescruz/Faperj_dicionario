unit UGoncalves_Dias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, OleCtrls, ShockwaveFlashObjects_TLB;

type
  TFrmGoncalves_Dias = class(TForm)
    Gon: TShockwaveFlash;
    SpedButonBibliografia: TSpeedButton;
    SpedButonPoesias: TSpeedButton;
    procedure Feito(Sender:TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonBibliografiaClick(Sender: TObject);
    procedure SpedButonPoesiasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGoncalves_Dias: TFrmGoncalves_Dias;

implementation

uses UTipo_Poeta, UPoe_Cruz_Souza, UBibi_Machado_Assis, ULoggo;

{$R *.dfm}

procedure TFrmGoncalves_Dias.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmTipo_Poetas.show;
FrmGoncalves_Dias.Gon.Stop;
FrmGoncalves_Dias.Hide;
FrmGoncalves_Dias.Gon.Destroy;
end;

Procedure TFrmGoncalves_Dias.Feito(Sender:TObject);
Begin

FrmGoncalves_Dias.Color:= clBtnText;
FrmGoncalves_Dias.Font.Name:='Times New Roman';
FrmGoncalves_Dias.Font.Color:=clWhite;
FrmGoncalves_Dias.Font.Style:=[fsBold,fsItalic];
FrmGoncalves_Dias.Font.Size:=10;

Gon.Movie := caminho+'Páginas\Gon.swf';
Gon.Play;

End;
procedure TFrmGoncalves_Dias.SpedButonBibliografiaClick(Sender: TObject);
begin
   Application.CreateForm(TFrmBibi_Machado_Assis, FrmBibi_Machado_Assis);
   FrmBibi_Machado_Assis.mach.Movie:=caminho+ 'Páginas\Goner.swf';
   FrmBibi_Machado_Assis.Height:=680;
   FrmBibi_Machado_Assis.Width:=839;
   FrmBibi_Machado_Assis.top:=85;
   FrmBibi_Machado_Assis.Caption:=('Biografia de Gonçalves Dias');
   FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Lines.LoadFromFile(caminho+'Biblio\Goncalves_Dias_Dados.txt');
   FrmBibi_Machado_Assis.RichEdtContos.Lines.LoadFromFile(caminho+'Biblio\Goncalves_obras.txt');
   FrmBibi_Machado_Assis.RichEdtContos.Left:=20;
   FrmBibi_Machado_Assis.RichEdtPoesias.Destroy;
   FrmBibi_Machado_Assis.RichEdtContos.Top:=335;
   FrmBibi_Machado_Assis.RichEdtContos.Left:=18;
   FrmBibi_Machado_Assis.RichEdtContos.Width:=222;
   FrmBibi_Machado_Assis.RichEdtContos.Height:=230;
   FrmBibi_Machado_Assis.RichEdtBiblio.Width:=568;
   FrmBibi_Machado_Assis.RichEdtBiblio.Height:=298;
   FrmBibi_Machado_Assis.RichEdtBiblio.Lines.LoadFromFile(caminho+'Biblio\Goncalves_biblio.txt');
   FrmBibi_Machado_Assis.RichEdtTeatro.Lines.LoadFromFile(caminho+'Biblio\Goncalves_poemas.txt');
   FrmBibi_Machado_Assis.RichEdtTeatro.Top:=444;
   FrmBibi_Machado_Assis.RichEdtTeatro.Height:=200;
   FrmBibi_Machado_Assis.RichEdtRoamance.Destroy;
   FrmBibi_Machado_Assis.show;
   FrmBibi_Machado_Assis.sna:=9;
   FrmGoncalves_Dias.Hide;


end;

procedure TFrmGoncalves_Dias.SpedButonPoesiasClick(Sender: TObject);
begin
Application.CreateForm(TFrmCruz_Souza_Poema, FrmCruz_Souza_Poema);
FrmCruz_Souza_Poema.show;
FrmCruz_Souza_Poema.Cruz:=2;
FrmCruz_Souza_Poema.feito;
FrmCruz_Souza_Poema.inicio;
//FrmCruz_Souza_Poema.musica;
FrmCruz_Souza_Poema.Caption:='Poemas de Gonçalves Dias';
FrmCruz_Souza_Poema.SpedButonAdor.Caption:='&Caxias';
FrmCruz_Souza_Poema.SpedButonLua.Caption:='&Delírio';
FrmCruz_Souza_Poema.SpedButonMonja.Caption:='De&sejo';
FrmCruz_Souza_Poema.SpeedButonSatan.Caption:='Depr&ecação';
FrmCruz_Souza_Poema.SpedButonSonata.Caption:='E&picédio';
FrmCruz_Souza_Poema.SpedButonSonho_Branco.Caption:='&Inocência';
FrmCruz_Souza_Poema.SpedButonTulipa_Real.Caption:='Mi&nha Terra!';
FrmCruz_Souza_Poema.SpedButonVespeal.Caption:='Pedid&o';
FrmCruz_Souza_Poema.SpedButonFlor_Diabo.Caption:='&Recordação';
FrmCruz_Souza_Poema.SpedButonDivina.Caption:='Seus Ol&hos';
FrmCruz_Souza_Poema.SpedButonPiedosa.Caption:='So&frimento';
FrmCruz_Souza_Poema.SpedButonTedio.Caption:='Tris&teza';
FrmCruz_Souza_Poema.SpedButonSeio.Caption:='As D&uas Coroas';
FrmCruz_Souza_Poema.SpedButonMonja_Negra.Caption:='Canção do Exí&lio';
FrmCruz_Souza_Poema.SpedButonInes.Caption:='Canção do Ta&moio';
FrmCruz_Souza_Poema.SpedButonEnvelhecer.Caption:='C&anto Primeiro';
FrmCruz_Souza_Poema.Width:=545;
FrmCruz_Souza_Poema.Height:=365;
FrmCruz_Souza_Poema.Left:=400;
FrmCruz_Souza_Poema.Top:=360;
end;

end.
