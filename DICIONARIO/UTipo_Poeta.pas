unit UTipo_Poeta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, jpeg;

type
  TFrmTipo_Poetas = class(TForm)
    SpedButonMachado_Assis: TSpeedButton;
    SpedButonCruz_Souza: TSpeedButton;
    Img01: TImage;
    Img02: TImage;
    SpedButonCastro_Alves: TSpeedButton;
    Img03: TImage;
    SpedButonGilbeerto_Gil: TSpeedButton;
    Img04: TImage;
    SpedButonMilton_Nascimento: TSpeedButton;
    Img05: TImage;
    SpedButonCartola: TSpeedButton;
    Img10: TImage;
    SpedButonLuiz_Melodia: TSpeedButton;
    Img11: TImage;
    SpedButonAbdias: TSpeedButton;
    Img12: TImage;
    SpedButonManuel_Inacio: TSpeedButton;
    Img08: TImage;
    SpedButonLuiz_Gama: TSpeedButton;
    Img09: TImage;
    Img06: TImage;
    SpedButonGoncalves_Dias: TSpeedButton;
    Img13: TImage;
    SpedButonLima_Barreto: TSpeedButton;
    Img07: TImage;
    SpedButonLino_Guedes: TSpeedButton;
    Img14: TImage;
    SpedButonPixinguinha: TSpeedButton;
    ImgAsp_01: TImage;
    ImgAsp_02: TImage;
    LblT_04: TLabel;
    LblT_03: TLabel;
    LblT_02: TLabel;
    LblT_01: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure SpedButonMachado_AssisClick(Sender: TObject);
    procedure SpedButonCruz_SouzaClick(Sender: TObject);
    procedure SpedButonCastro_AlvesClick(Sender: TObject);
    procedure SpedButonGilbeerto_GilClick(Sender: TObject);
    procedure SpedButonMilton_NascimentoClick(Sender: TObject);
    procedure SpedButonGoncalves_DiasClick(Sender: TObject);
    procedure SpedButonLino_GuedesClick(Sender: TObject);
    procedure feito(Sender: TObject);
    procedure SpedButonCartolaClick(Sender: TObject);
    procedure SpedButonLima_BarretoClick(Sender: TObject);
    procedure SpedButonAbdiasClick(Sender: TObject);
    procedure SpedButonPixinguinhaClick(Sender: TObject);
    procedure SpedButonManuel_InacioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipo_Poetas: TFrmTipo_Poetas;

implementation

uses UMenu_Poemas_Poesias, UMachado_Assis, UCruz_Souza,UCastro_Alves,
  UGilberto_Gil, UMilton_Nascimento, UManuel_Inacio, ULuiz_Gama,
  UGoncalves_Dias, {ULino_Guedes,} UNomes, ULoggo, UPreconceito,
  UTipo_Midia;

{$R *.dfm}

procedure TFrmTipo_Poetas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  begin
     FrmLiteratura.show;
     FrmTipo_Poetas.hide;

end;

procedure TFrmTipo_Poetas.FormActivate(Sender: TObject);
begin
FrmTipo_Poetas.Color:=clBtnText;
FrmTipo_Poetas.Font.Name:='Times New Roman';
FrmTipo_Poetas.Font.Style:=[fsItalic];
FrmTipo_Poetas.Font.Size:=10;
FrmTipo_Poetas.Font.Color:=clWhite;

end;

procedure TFrmTipo_Poetas.SpedButonMachado_AssisClick(Sender: TObject);
begin
      Application.CreateForm(TFrmMachado_Assis, FrmMachado_Assis);
      FrmMachado_Assis.Feito(nil);
      FrmMachado_Assis.show;
      FrmTipo_Poetas.hide;
end;

procedure TFrmTipo_Poetas.SpedButonCruz_SouzaClick(Sender: TObject);
Begin
     Application.CreateForm(TFrmCruz_Sousa, FrmCruz_Sousa);
     FrmCruz_Sousa.Feito(nil);
     FrmCruz_Sousa.show;
     FrmTipo_Poetas.hide;
end;

procedure TFrmTipo_Poetas.SpedButonCastro_AlvesClick(Sender: TObject);
begin
     Application.CreateForm(TFrmCastro_Alves, FrmCastro_Alves);
     FrmCastro_Alves.Feito(nil);
     FrmCastro_Alves.show;
     FrmTipo_Poetas.hide;

end;

procedure TFrmTipo_Poetas.SpedButonGilbeerto_GilClick(Sender: TObject);
begin
     Application.CreateForm(TFrmGilberto_Gil, FrmGilberto_Gil);
     FrmGilberto_Gil.Feito(nil);
     FrmGilberto_Gil.show;
     FrmTipo_Poetas.hide;
end;

procedure TFrmTipo_Poetas.SpedButonMilton_NascimentoClick(Sender: TObject);
begin
    Application.CreateForm(TFrmMilton_Nascimento, FrmMilton_Nascimento);
    FrmMilton_Nascimento.Feito(nil);
    FrmMilton_Nascimento.show;
    FrmTipo_Poetas.hide;
end;

procedure TFrmTipo_Poetas.SpedButonGoncalves_DiasClick(Sender: TObject);
begin
    Application.CreateForm(TFrmGoncalves_Dias, FrmGoncalves_Dias);
    FrmGoncalves_Dias.Feito(nil);
    FrmGoncalves_Dias.show;
    FrmTipo_Poetas.hide;
end;

procedure TFrmTipo_Poetas.SpedButonLino_GuedesClick(Sender: TObject);
begin
{    Application.CreateForm(TFrmLino_Guedes, FrmLino_Guedes);
    FrmLino_Guedes.Feito(nil);
    FrmLino_Guedes.show;
    FrmTipo_Poetas.Hide; }

end;

procedure TFrmTipo_Poetas.feito(Sender: TObject);
Begin
    FrmTipo_Poetas.Img01.Picture.LoadFromFile(caminho + 'icons\Music.ico'); FrmTipo_Poetas.Img08.Picture.LoadFromFile(caminho + 'icons\Music.ico');
    FrmTipo_Poetas.Img02.Picture.LoadFromFile(caminho + 'icons\Music.ico'); FrmTipo_Poetas.Img09.Picture.LoadFromFile(caminho + 'icons\Music.ico');
    FrmTipo_Poetas.Img03.Picture.LoadFromFile(caminho + 'icons\Music.ico'); FrmTipo_Poetas.Img10.Picture.LoadFromFile(caminho + 'icons\Music.ico');
    FrmTipo_Poetas.Img04.Picture.LoadFromFile(caminho + 'icons\Music.ico'); FrmTipo_Poetas.Img11.Picture.LoadFromFile(caminho + 'icons\Music.ico');
    FrmTipo_Poetas.Img05.Picture.LoadFromFile(caminho + 'icons\Music.ico'); FrmTipo_Poetas.Img12.Picture.LoadFromFile(caminho + 'icons\Music.ico');
    FrmTipo_Poetas.Img06.Picture.LoadFromFile(caminho + 'icons\Music.ico'); FrmTipo_Poetas.Img13.Picture.LoadFromFile(caminho + 'icons\Music.ico');
    FrmTipo_Poetas.Img07.Picture.LoadFromFile(caminho + 'icons\Music.ico'); FrmTipo_Poetas.Img14.Picture.LoadFromFile(caminho + 'icons\Music.ico');
    FrmTipo_Poetas.ImgAsp_01.Picture.LoadFromFile(caminho + 'icons\Asp_01.jpg');
    FrmTipo_Poetas.ImgAsp_02.Picture.LoadFromFile(caminho + 'icons\Asp_02.jpg');
    End;
procedure TFrmTipo_Poetas.SpedButonCartolaClick(Sender: TObject);
begin
   Application.CreateForm(TFrmNomes, FrmNomes);
   FrmNomes.Caption:='Cartola';
   FrmNomes.Nome.Movie := caminho + 'Páginas\Cartola.swf';
   FrmNomes.Nome.Play;
   FrmNomes.feito;
   FrmNomes.show;
   FrmTipo_Poetas.hide;

end;

procedure TFrmTipo_Poetas.SpedButonLima_BarretoClick(Sender: TObject);
begin
   Application.CreateForm(TFrmManuel_Inacio, FrmManuel_Inacio);
   FrmManuel_Inacio.feito(nil);
   FrmManuel_Inacio.tatu:=1;
   FrmManuel_Inacio.Math.Movie := caminho +  'Páginas\Limar.swf';
   FrmManuel_Inacio.Math.Play;
   FrmManuel_Inacio.show;
   FrmTipo_Poetas.Hide;


end;

procedure TFrmTipo_Poetas.SpedButonAbdiasClick(Sender: TObject);
begin
//Application.CreateForm(TFrmAdbias_Nascimento, FrmAdbias_Nascimento);
//   FrmAdbias_Nascimento.feito(nil);
//   FrmAdbias_Nascimento.abd.Movie := caminho + 'Páginas\Limar.swf';
//   FrmAdbias_Nascimento.abd.play;
//   FrmAdbias_Nascimento.show;
//   FrmTipo_Poetas.Hide;
end;

procedure TFrmTipo_Poetas.SpedButonPixinguinhaClick(Sender: TObject);
begin
Application.CreateForm(TFrmPixinguinha, FrmPixinguinha);
//   FrmPixinguinha.feito(nil);
   FrmPixinguinha.pix.Movie := caminho + 'Páginas\Limar.swf';
   FrmPixinguinha.pix.play;
   FrmPixinguinha.show;
   FrmTipo_Poetas.Hide;
end;

procedure TFrmTipo_Poetas.SpedButonManuel_InacioClick(Sender: TObject);
begin
  Application.CreateForm(TFrmManuel_Inacio, FrmManuel_Inacio);
     FrmManuel_Inacio.Feito(nil);
     FrmManuel_Inacio.show;
     FrmManuel_Inacio.tatu:=1;
     FrmTipo_Poetas.hide;
      end;
   end.
