unit UPoe_Cruz_Souza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, Shellapi, OleCtrls, ShockwaveFlashObjects_TLB,
  StdCtrls;

type
  TFrmCruz_Souza_Poema = class(TForm)
    SpedButonAdor: TSpeedButton;
    Img1: TImage;
    SpedButonLua: TSpeedButton;
    Img2: TImage;
    SpedButonMonja: TSpeedButton;
    SpeedButonSatan: TSpeedButton;
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
    SpedButonProx: TSpeedButton;
    LblNumber: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonAdorClick(Sender: TObject);
    procedure SpedButonLuaClick(Sender: TObject);
    procedure SpedButonMonjaClick(Sender: TObject);
    procedure SpeedButonSatanClick(Sender: TObject);
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
    procedure feito;
    procedure musica(Sender: TObject);
    procedure Img01Click(Sender: TObject);
    procedure Img02Click(Sender: TObject);
    procedure Img03Click(Sender: TObject);
    procedure Img04Click(Sender: TObject);
    procedure Img05Click(Sender: TObject);
    procedure Img06Click(Sender: TObject);
    procedure Img07Click(Sender: TObject);
    procedure Img08Click(Sender: TObject);
    procedure Img09Click(Sender: TObject);
    procedure Img010Click(Sender: TObject);
    procedure Img011Click(Sender: TObject);
    procedure Img012Click(Sender: TObject);
    procedure Img013Click(Sender: TObject);
    procedure Img014Click(Sender: TObject);
    procedure Img016Click(Sender: TObject);
    procedure Img015Click(Sender: TObject);
    procedure inicio;
    procedure SpedButonProxClick(Sender: TObject);
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

  private
    { Private declarations }
  public
    Cruz,tata,vutu:integer;
    { Public declarations }
  end;

var
  FrmCruz_Souza_Poema: TFrmCruz_Souza_Poema;

implementation

uses UCruz_Souza, UNotas_Poesias, UTipos_Poemas, UBroq_Cruz_Sousa,
  UGoncalves_Dias, UCastro_Alves, UMilton_Nascimento, UNovas_Poesias, ULoggo;

{$R *.dfm}

procedure TFrmCruz_Souza_Poema.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
          if Cruz=1 then
          Begin
          FrmCruz_Sousa.show;
          FrmCruz_Souza_Poema.Hide;
          End Else
          if Cruz=2 then
          Begin
          FrmGoncalves_Dias.show;
          FrmCruz_Souza_Poema.Hide;
          End Else
          if Cruz=3 then
          Begin
          FrmCastro_Alves.show;
          FrmCruz_Souza_Poema.Hide;
          End else
          if Cruz=4 then
          Begin
          FrmMilton_Nascimento.show;
          FrmCruz_Souza_Poema.Hide;
          End;

          end;

procedure TFrmCruz_Souza_Poema.SpedButonAdorClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Cruz_Sousa\Broqueis\A DOR.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Goncalves\Caxias.ini');
   FrmNotas_Poesias.Sna:=16;
   End Else
   if Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Castro_Alves\Espumas\A boa vista.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Musikins\Milton\ANIMÃ.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
end;

procedure TFrmCruz_Souza_Poema.SpedButonLuaClick(Sender: TObject);
begin
  if Cruz=1 then
  Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Cruz_Sousa\Broqueis\LUA.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Goncalves\Delírio.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Castro_Alves\Espumas\A Luís.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Musikins\Milton\A festa.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
end;

procedure TFrmCruz_Souza_Poema.SpedButonMonjaClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Cruz_Sousa\Broqueis\MONJA.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Goncalves\Desejo.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Castro_Alves\Espumas\A uma atriz.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Musikins\Milton\A ROSA.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
end;

procedure TFrmCruz_Souza_Poema.SpeedButonSatanClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Cruz_Sousa\Broqueis\SATÃ.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Goncalves\Deprecação.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\A uma estrangeira.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\beijo partido.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
end;

procedure TFrmCruz_Souza_Poema.SpedButonSonataClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Broqueis\SONATA.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Epicédio.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\A uma taça feita de um crânio humano.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\calice.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
end;

procedure TFrmCruz_Souza_Poema.SpedButonSonho_BrancoClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Broqueis\Sonho branco.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Inocência.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\A Volta da Primavera.ini');
   FrmNotas_Poesias.Sna:=5;
    End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\casa aberta.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
End;

procedure TFrmCruz_Souza_Poema.SpedButonTulipa_RealClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Broqueis\Tulipa Real.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Minha Terra!.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\Adormecida.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\castigo.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
   End;

procedure TFrmCruz_Souza_Poema.SpedButonVespealClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Broqueis\Vesperal.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Pedido.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\Ahasverus e o gênio.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\cigarra.ini');
   FrmNotas_Poesias.Sna:=3;
   End;

end;

procedure TFrmCruz_Souza_Poema.SpedButonFlor_DiaboClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\A Flor do Diabo.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Recordação.ini');
   FrmNotas_Poesias.Sna:=16;
   End ELSE
   IF Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\As Duas Flores.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\credo.ini');
   FrmNotas_Poesias.Sna:=3;
   End;

end;

procedure TFrmCruz_Souza_Poema.SpedButonDivinaClick(Sender: TObject);
begin
   if cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Divina.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Seus Olhos.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
    Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\Hebréia.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Don Quixote.ini');
   FrmNotas_Poesias.Sna:=3;
   End;

end;

procedure TFrmCruz_Souza_Poema.SpedButonPiedosaClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Piedosa.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Sofrimento.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\MOCIDADE E MORTE.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Amor Amigo.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
end;

procedure TFrmCruz_Souza_Poema.SpedButonTedioClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Tédio.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
    Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Tristeza.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
    Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Espumas\O laço de Fita.ini');
   FrmNotas_Poesias.Sna:=5;
   End else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Caçador de Mim.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
end;

procedure TFrmCruz_Souza_Poema.SpedButonSeioClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Seios.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\As Duas Coroas.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
    Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\A CACHOEIRA.ini');
   FrmNotas_Poesias.Sna:=5;
   End Else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Canção Da América.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
end;

procedure TFrmCruz_Souza_Poema.SpedButonMonja_NegraClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Monja Negra.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Canção do Exílio.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
   if Cruz=3 then
   Begin
    Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\A canoa Fantástica.ini');
   FrmNotas_Poesias.Sna:=5;
   End Else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Certas Coisas.ini');
   FrmNotas_Poesias.Sna:=3;
   End;

end;

procedure TFrmCruz_Souza_Poema.SpedButonInesClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Inês.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Canção do Tamoio.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
    if Cruz=3 then
   Begin
    Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\A queimada.ini');
   FrmNotas_Poesias.Sna:=5;
   End Else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Cio Da Terra.ini');
   FrmNotas_Poesias.Sna:=3;
   End;

end;

procedure TFrmCruz_Souza_Poema.SpedButonEnvelhecerClick(Sender: TObject);
begin
   if Cruz=1 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCruz_Sousa.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Cruz_Sousa\Faróis\Envelhecer.ini');
   FrmNotas_Poesias.Sna:=2;
   End Else
   if Cruz=2 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmGoncalves_Dias.hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Goncalves\Canto Primeiro.ini');
   FrmNotas_Poesias.Sna:=16;
   End else
    if Cruz=3 then
   Begin
    Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmCastro_Alves.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Poemas\Castro_Alves\Cachoeira\A senzala.ini');
   FrmNotas_Poesias.Sna:=5;
   End Else
   if Cruz=4 then
   Begin
   Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
   FrmNotas_Poesias.feito(nil);
   FrmCruz_Souza_Poema.Hide;
   FrmMilton_Nascimento.Hide;
   FrmNotas_Poesias.show;
   FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho +'Musikins\Milton\Coração de Estudante.ini');
   FrmNotas_Poesias.Sna:=3;
   End;
End;

procedure TFrmCruz_Souza_Poema.feito;
Begin

   FrmCruz_Souza_Poema.Img1.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');     FrmCruz_Souza_Poema.Img2.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmCruz_Souza_Poema.Img15.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');    FrmCruz_Souza_Poema.Img16.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmCruz_Souza_Poema.Img17.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');    FrmCruz_Souza_Poema.Img18.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmCruz_Souza_Poema.Img19.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');    FrmCruz_Souza_Poema.Img20.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmCruz_Souza_Poema.Img21.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');    FrmCruz_Souza_Poema.Img22.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmCruz_Souza_Poema.Img23.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');    FrmCruz_Souza_Poema.Img24.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmCruz_Souza_Poema.Img25.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');    FrmCruz_Souza_Poema.Img26.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
   FrmCruz_Souza_Poema.Img29.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');    FrmCruz_Souza_Poema.Img27.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');

    End;

procedure TFrmCruz_Souza_Poema.musica;
 Begin
   FrmCruz_Souza_Poema.Img01.Picture.LoadFromFile(caminho +'icons\media Player2.ico');     FrmCruz_Souza_Poema.Img07.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmCruz_Souza_Poema.Img02.Picture.LoadFromFile(caminho +'icons\media Player2.ico');     FrmCruz_Souza_Poema.Img08.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmCruz_Souza_Poema.Img03.Picture.LoadFromFile(caminho +'icons\media Player2.ico');     FrmCruz_Souza_Poema.Img09.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmCruz_Souza_Poema.Img04.Picture.LoadFromFile(caminho +'icons\media Player2.ico');     FrmCruz_Souza_Poema.Img010.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmCruz_Souza_Poema.Img05.Picture.LoadFromFile(caminho +'icons\media Player2.ico');     FrmCruz_Souza_Poema.Img011.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmCruz_Souza_Poema.Img06.Picture.LoadFromFile(caminho +'icons\media Player2.ico');     FrmCruz_Souza_Poema.Img012.Picture.LoadFromFile(caminho +'icons\media Player2.ico');

   FrmCruz_Souza_Poema.Img013.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmCruz_Souza_Poema.Img014.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmCruz_Souza_Poema.Img015.Picture.LoadFromFile(caminho +'icons\media Player2.ico');
   FrmCruz_Souza_Poema.Img016.Picture.LoadFromFile(caminho +'icons\media Player2.ico');

 End;

procedure TFrmCruz_Souza_Poema.Img01Click(Sender: TObject);
begin

if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\CAXIAS.mp3'),
            		    nil,nil,sw_Shownormal);

End else
if Cruz=3 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Castro_Alves\Espumas\A_BOA_VI.mp3'),
            		    nil,nil,sw_Shownormal);

End;
end;

procedure TFrmCruz_Souza_Poema.Img02Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\DELIRIO.mp3'),
            		    nil,nil,sw_Shownormal);
end else
if Cruz=3 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Castro_Alves\Espumas\A LUS.mp3'),
            		    nil,nil,sw_Shownormal);

End;
end;

procedure TFrmCruz_Souza_Poema.Img03Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\DESEJO.mp3'),
            		    nil,nil,sw_Shownormal);
End else
if Cruz=3 then
begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Castro_Alves\Espumas\AUMA_AT.mp3'),
            		    nil,nil,sw_Shownormal);

end;
end;

procedure TFrmCruz_Souza_Poema.Img04Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\DEPRESSA.mp3'),
            		    nil,nil,sw_Shownormal);
End else
if Cruz=3 then
begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Castro_Alves\Espumas\A_UMA_ES.mp3'),
            		    nil,nil,sw_Shownormal);

end;
end;

procedure TFrmCruz_Souza_Poema.Img05Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\EPIC_DIO.mp3'),
            		    nil,nil,sw_Shownormal);
end else
if Cruz=3 then
begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Castro_Alves\Espumas\A_UMA_TA.mp3'),
            		    nil,nil,sw_Shownormal);

end;
end;

procedure TFrmCruz_Souza_Poema.Img06Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\INOCENCI.mp3'),
            		    nil,nil,sw_Shownormal);
end else
if Cruz=3 then
begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Castro_Alves\Espumas\A_VOLTA.mp3'),
            		    nil,nil,sw_Shownormal);

end;
end;

procedure TFrmCruz_Souza_Poema.Img07Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\MINHA_TE.mp3'),
            		    nil,nil,sw_Shownormal);
end else
if Cruz=3 then
begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Castro_Alves\Espumas\ADORMECI.mp3'),
            		    nil,nil,sw_Shownormal);

end;
end;

procedure TFrmCruz_Souza_Poema.Img08Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\PEDIDO.mp3'),
            		    nil,nil,sw_Shownormal);
end else
if Cruz=3 then
begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Castro_Alves\Espumas\AHASVERU.mp3'),
            		    nil,nil,sw_Shownormal);

end;
end;

procedure TFrmCruz_Souza_Poema.Img09Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\RECORDAC.mp3'),
            		    nil,nil,sw_Shownormal);
end else
if Cruz=3 then
begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Castro_Alves\Espumas\AS_DUAS.mp3'),
            		    nil,nil,sw_Shownormal);

end;
end;

procedure TFrmCruz_Souza_Poema.Img010Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\SEUS_OLH.mp3'),
            		    nil,nil,sw_Shownormal);
end;
end;

procedure TFrmCruz_Souza_Poema.Img011Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\SOFRIMEN.mp3'),
            		    nil,nil,sw_Shownormal);
end;
end;

procedure TFrmCruz_Souza_Poema.Img012Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\TRISTEZA.mp3'),
            		    nil,nil,sw_Shownormal);
end;
end;

procedure TFrmCruz_Souza_Poema.Img013Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\AS_DUAS_.mp3'),
            		    nil,nil,sw_Shownormal);
end;
end;

procedure TFrmCruz_Souza_Poema.Img014Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\CANCAO_D.mp3'),
            		    nil,nil,sw_Shownormal);
end;
end;

procedure TFrmCruz_Souza_Poema.Img016Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\CANTO_PR.mp3'),
            		    nil,nil,sw_Shownormal);
end;
end;

procedure TFrmCruz_Souza_Poema.Img015Click(Sender: TObject);
begin
if Cruz=2 then
Begin
ShellExecute(Handle,nil,PChar(caminho +'Musikins\Poesias\Gonçalves_Dias\CANCA000.mp3'),
            		    nil,nil,sw_Shownormal);
end;
end;

procedure TFrmCruz_Souza_Poema.inicio;
Begin

  FrmCruz_Souza_Poema.Color:= clBtnText;
  FrmCruz_Souza_Poema.Font.Name:='Times New Roman';
  FrmCruz_Souza_Poema.Font.Color:=clWhite;
  FrmCruz_Souza_Poema.Font.Style:=[fsBold,fsItalic];
  FrmCruz_Souza_Poema.Font.Size:=10;

 if Tata=1 then
 Begin
    FrmCruz_Souza_Poema.SpedButonProx.Visible:=True;
 End
    End;

procedure TFrmCruz_Souza_Poema.SpedButonProxClick(Sender: TObject);
begin
     Application.CreateForm(TFrmNovas_Poesias, FrmNovas_Poesias);

if vutu=1 then  // Cruz e Souza

Begin

     FrmNovas_Poesias.tatu:=2;
     FrmNovas_Poesias.tudo:=1;
     FrmNovas_Poesias.vota:=1;
     FrmNovas_Poesias.tosta:=1;
     FrmNovas_Poesias.vutu:=1;

     FrmNovas_Poesias.inicio;
     FrmNovas_Poesias.feito;
   //FrmNovas_Poesias.musica;

     FrmNovas_Poesias.Width:=580;
     FrmNovas_Poesias.Height:=415;
     FrmNovas_Poesias.Left:=400;
     FrmNovas_Poesias.Top:=320;

     FrmNovas_Poesias.Caption:='Poemas de Cruz e Souza';

     FrmNovas_Poesias.SpedButonAdor.Caption:='A Ironia dos &Vermes';
     FrmNovas_Poesias.SpedButonLua.Caption:='As Est&relas';
     FrmNovas_Poesias.SpedButonMonja.Caption:='Ausência Mis&teriosa';
     FrmNovas_Poesias.SpedButonSatan.Caption:='Bo&ca';
     FrmNovas_Poesias.SpedButonSonata.Caption:='Ca&belos';
     FrmNovas_Poesias.SpedButonSonho_Branco.Caption:='C&anção do Bêbado';
     FrmNovas_Poesias.SpedButonTulipa_Real.Caption:='Canção Ne&gra';
     FrmNovas_Poesias.SpedButonVespeal.Caption:='Cav&eira';

     FrmNovas_Poesias.SpedButonFlor_Diabo.Caption:='Cor&po';
     FrmNovas_Poesias.SpedButonDivina.Caption:='Ébrios e Ceg&os';
     FrmNovas_Poesias.SpedButonPiedosa.Caption:='Encla&usurada';
     FrmNovas_Poesias.SpedButonTedio.Caption:='E&nlevo';
     FrmNovas_Poesias.SpedButonSeio.Caption:='Es&quecimento';
     FrmNovas_Poesias.SpedButonMonja_Negra.Caption:='&Flor Perigosa';
     FrmNovas_Poesias.SpedButonInes.Caption:='Flores &da Lua';
     FrmNovas_Poesias.SpedButonEnvelhecer.Caption:='&Humildade Secreta';


     FrmNovas_Poesias.LblNumber.Caption:='2';
     FrmNovas_Poesias.LblNumber.Top:=360;

     FrmCruz_Souza_Poema.hide;
     FrmNovas_Poesias.show;

End else

if vutu =2 then // Castro Alves
Begin

     FrmNovas_Poesias.SpedButonAdor.Caption:='A&deus';
     FrmNovas_Poesias.SpedButonLua.Caption:='&Maria';
     FrmNovas_Poesias.SpedButonMonja.Caption:='O &Segredo';
     FrmNovas_Poesias.SpedButonSatan.Caption:='Na &Fonte';
     FrmNovas_Poesias.SpedButonSonata.Caption:='&Tirana';
     FrmNovas_Poesias.SpedButonSonho_Branco.Caption:='Sangue de Afri&cano';
     FrmNovas_Poesias.SpedButonTulipa_Real.Caption:='Último A&braço';
     FrmNovas_Poesias.SpedButonVespeal.Caption:='Um &Raio de Luar';

     FrmNovas_Poesias.SpedButonFlor_Diabo.Caption:='Ao Ator &Joaquim Augusto';
     FrmNovas_Poesias.SpedButonDivina.Caption:='Ao Do&us de Julho';
     FrmNovas_Poesias.SpedButonPiedosa.Caption:='As Duas &Ilhas';
     FrmNovas_Poesias.SpedButonTedio.Caption:='As Três Irmãs do &Poeta';
     FrmNovas_Poesias.SpedButonSeio.Caption:='As Tre&vas';
     FrmNovas_Poesias.SpedButonMonja_Negra.Caption:='&Aves de Arribação';
     FrmNovas_Poesias.SpedButonInes.Caption:='Boa-&Noite';
     FrmNovas_Poesias.SpedButonEnvelhecer.Caption:='Canção do B&oêmio';

     FrmNovas_Poesias.Caption:='Poemas de Castro Alves';

     FrmNovas_Poesias.tatu:=2;
     //FrmNovas_Poesias.SpedButonVoltar.Visible:=True;
     FrmNovas_Poesias.vota:=2;
     FrmNovas_Poesias.tudo:=3;
     FrmNovas_Poesias.tosta:=3;
     FrmNovas_Poesias.vutu:=2;

     FrmNovas_Poesias.inicio;
     FrmNovas_Poesias.feito;
    // FrmNovas_Poesias.musica;

    {  Programação só da primeira fila das poesias dos poetas

     FrmNovas_Poesias.Width:=420;
     FrmNovas_Poesias.Height:=415;
     FrmNovas_Poesias.Left:=400;
     FrmNovas_Poesias.Top:=320;

     FrmNovas_Poesias.SpedButonVoltar.Left:=240;
     FrmNovas_Poesias.SpedButonVoltar.Top:=340;  }

     FrmNovas_Poesias.Width:=580;
     FrmNovas_Poesias.Height:=415;
     FrmNovas_Poesias.Left:=400;
     FrmNovas_Poesias.Top:=320;


     FrmNovas_Poesias.LblNumber.Caption:='2';
     FrmNovas_Poesias.LblNumber.Top:=360;

     FrmNovas_Poesias.Show;
     FrmCruz_Souza_Poema.hide;
     FrmNovas_Poesias.show;

    End else

    if vutu=3 then  // Milton Nascimento

Begin

     FrmNovas_Poesias.tatu:=1;
     FrmNovas_Poesias.tudo:=1;
     FrmNovas_Poesias.vota:=1;
     FrmNovas_Poesias.tosta:=5;
     FrmNovas_Poesias.vutu:=1;

     FrmNovas_Poesias.inicio;
     FrmNovas_Poesias.feito;
   //FrmNovas_Poesias.musica;

     FrmNovas_Poesias.Width:=580;
     FrmNovas_Poesias.Height:=415;
     FrmNovas_Poesias.Left:=400;
     FrmNovas_Poesias.Top:=320;

     FrmNovas_Poesias.Caption:='Canções de Milton Nascimento';

     FrmNovas_Poesias.SpedButonAdor.Caption:='Alunar';
     FrmNovas_Poesias.SpedButonLua.Caption:='Bailes da Vida';
     FrmNovas_Poesias.SpedButonMonja.Caption:='Balé da Utopia';
     FrmNovas_Poesias.SpedButonSatan.Caption:='Beira mar';
     FrmNovas_Poesias.SpedButonSonata.Caption:='Calix Bento';
     FrmNovas_Poesias.SpedButonSonho_Branco.Caption:='Canção Do Sal';
     FrmNovas_Poesias.SpedButonTulipa_Real.Caption:='Canoa, Canoa';
     FrmNovas_Poesias.SpedButonVespeal.Caption:='Carro de Boi';

     FrmNovas_Poesias.SpedButonFlor_Diabo.Caption:='Castigo';
     FrmNovas_Poesias.SpedButonDivina.Caption:='Coisas Da Vida';
     FrmNovas_Poesias.SpedButonPiedosa.Caption:='Estrelada';
     FrmNovas_Poesias.SpedButonTedio.Caption:='';
     FrmNovas_Poesias.SpedButonSeio.Caption:='';
     FrmNovas_Poesias.SpedButonMonja_Negra.Caption:='';
     FrmNovas_Poesias.SpedButonInes.Caption:='';
     FrmNovas_Poesias.SpedButonEnvelhecer.Caption:='';


     FrmNovas_Poesias.LblNumber.Caption:='2';
     FrmNovas_Poesias.LblNumber.Top:=360;

     FrmCruz_Souza_Poema.hide;
     FrmNovas_Poesias.show;

End;
End;

procedure TFrmCruz_Souza_Poema.Img1Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonAdorClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img2Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonLuaClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img15Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonMonjaClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img16Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpeedButonSatanClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img27Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonSonataClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img17Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonSonho_BrancoClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img18Click(Sender: TObject);
begin
 FrmCruz_Souza_Poema.SpedButonTulipa_RealClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img19Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonVespealClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img20Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonFlor_DiaboClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img21Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonDivinaClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img22Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonPiedosaClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img23Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonTedioClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img24Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonSeioClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img25Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonMonja_NegraClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img26Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonInesClick(nil);
end;

procedure TFrmCruz_Souza_Poema.Img29Click(Sender: TObject);
begin
FrmCruz_Souza_Poema.SpedButonEnvelhecerClick(nil);
end;

end.



