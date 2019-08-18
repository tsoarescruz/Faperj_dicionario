unit UCastro_Alves;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, jpeg, OleCtrls, ShockwaveFlashObjects_TLB;

type
  TFrmCastro_Alves = class(TForm)
    SpedButonPoesias: TSpeedButton;
    SpedButonBibliografia: TSpeedButton;
    Cast: TShockwaveFlash;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonBibliografiaClick(Sender: TObject);
    procedure SpedButonPoesiasClick(Sender: TObject);
    Procedure Feito(Sender:TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCastro_Alves: TFrmCastro_Alves;

implementation

uses UTipo_Poeta, UPoe_Castro_Alves,  UBibi_Machado_Assis, UPoe_Cruz_Souza, ULoggo;

{$R *.dfm}

procedure TFrmCastro_Alves.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmTipo_Poetas.show;
FrmCastro_Alves.Cast.Destroy;
FrmCastro_Alves.Hide;
end;

procedure TFrmCastro_Alves.SpedButonBibliografiaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmBibi_Machado_Assis, FrmBibi_Machado_Assis);
   FrmBibi_Machado_Assis.show;
   FrmBibi_Machado_Assis.mach.Movie:= caminho + 'Páginas\Castrar.swf';
   FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Lines.LoadFromFile(caminho + 'Biblio\Castro_dados.txt');
   FrmBibi_Machado_Assis.RichEdtPoesias.Destroy;
   FrmBibi_Machado_Assis.RichEdtContos.Lines.LoadFromFile(caminho + 'Biblio\Poe_Castro.txt');
   FrmBibi_Machado_Assis.Caption:=('Biografia de Castro Alves');
   FrmBibi_Machado_Assis.RichEdtContos.Top:=325;
   FrmBibi_Machado_Assis.RichEdtContos.Width:=230;
   FrmBibi_Machado_Assis.RichEdtBiblio.Width:=568;
   FrmBibi_Machado_Assis.RichEdtBiblio.Height:=360;
   FrmBibi_Machado_Assis.RichEdtTeatro.Destroy;
   FrmBibi_Machado_Assis.RichEdtRoamance.Destroy;
   FrmBibi_Machado_Assis.RichEdtBiblio.Lines.LoadFromFile(caminho + 'Biblio\biblio_Castro.txt');
   FrmBibi_Machado_Assis.sna:=3;
   FrmCastro_Alves.Hide;
   End;
procedure TFrmCastro_Alves.SpedButonPoesiasClick(Sender: TObject);
begin

     Application.CreateForm(TFrmCruz_Souza_Poema, FrmCruz_Souza_Poema);

     FrmCruz_Souza_Poema.Caption:='Poemas de Castro Alves';
     FrmCruz_Souza_Poema.SpedButonAdor.Caption:='A &Boa Vista';
     FrmCruz_Souza_Poema.SpedButonLua.Caption:='A &Luís';
     FrmCruz_Souza_Poema.SpedButonMonja.Caption:='A uma A&triz';
     FrmCruz_Souza_Poema.SpeedButonSatan.Caption:='A uma &Estrangeira';
     FrmCruz_Souza_Poema.SpedButonSonata.Caption:='A &uma Taça';
     FrmCruz_Souza_Poema.SpedButonSonho_Branco.Caption:='A &Volta da Primavera';
     FrmCruz_Souza_Poema.SpedButonTulipa_Real.Caption:='Ado&rmecida';
     FrmCruz_Souza_Poema.SpedButonVespeal.Caption:='Ahasverus e o &Gênio';
     FrmCruz_Souza_Poema.SpedButonFlor_Diabo.Caption:='As duas &Flores';
     FrmCruz_Souza_Poema.SpedButonDivina.Caption:='&Hebréia';
     FrmCruz_Souza_Poema.SpedButonPiedosa.Caption:='&Mocidade e Morte';
     FrmCruz_Souza_Poema.SpedButonTedio.Caption:='&O Laço de Fita';
     FrmCruz_Souza_Poema.SpedButonSeio.Caption:='A &Cachoeira';
     FrmCruz_Souza_Poema.SpedButonMonja_Negra.Caption:='A Canoa Fa&ntástica';
     FrmCruz_Souza_Poema.SpedButonInes.Caption:='A &Queimada';
     FrmCruz_Souza_Poema.SpedButonEnvelhecer.Caption:='A &Senzala';

     FrmCruz_Souza_Poema.Width:=580;
     FrmCruz_Souza_Poema.Height:=415;
     FrmCruz_Souza_Poema.Left:=400;
     FrmCruz_Souza_Poema.Top:=320;


     FrmCruz_Souza_Poema.feito;
     FrmCruz_Souza_Poema.tata:=1;
     FrmCruz_Souza_Poema.vutu:=2;
     FrmCruz_Souza_Poema.inicio;
     FrmCruz_Souza_Poema.Cruz:=3;

     FrmCruz_Souza_Poema.SpedButonProx.Left:=400;
     FrmCruz_Souza_Poema.SpedButonProx.Top:=340;

     FrmCruz_Souza_Poema.LblNumber.Caption:='1';
     FrmCruz_Souza_Poema.LblNumber.Top:=360;

     FrmCruz_Souza_Poema.Show;

end;

Procedure TFrmCastro_Alves.Feito(Sender:TObject);
Begin
FrmCastro_Alves.Color:= clBtnText;
FrmCastro_Alves.Font.Name:='Times New Roman';
FrmCastro_Alves.Font.Color:=clWhite;
FrmCastro_Alves.Font.Style:=[fsBold,fsItalic];
FrmCastro_Alves.Font.Size:=10;

Cast.Movie := caminho + 'Páginas\Castro.swf';
Cast.Play;
End;
end.




