unit UMapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, OleCtrls, ShockwaveFlashObjects_TLB, Buttons, Shellapi;

type
  TFrmOrixas = class(TForm)
    SpedButonOrixas: TSpeedButton;
    SpedButonPoetas: TSpeedButton;
    ImgNome: TImage;
    ImgArvore_Ori: TImage;
    SpedButonFalanges: TSpeedButton;
    ImgFalanges: TImage;
    SpedButonLinhas_Quim: TSpeedButton;
    ImgLinhas_Quim: TImage;
    SpedButonPontos_Cantados: TSpeedButton;
    ImgPonto: TImage;
    procedure feito(sender:TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonOrixasClick(Sender: TObject);
    procedure SpedButonPoetasClick(Sender: TObject);
    procedure inteiro;
    procedure SpedButonFalangesClick(Sender: TObject);
    procedure SpedButonLinhas_QuimClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpedButonPontos_CantadosClick(Sender: TObject);
  private
    { Private declarations }
  public
  maps:integer;
    { Public declarations }
  end;

var
  FrmOrixas: TFrmOrixas;

implementation

uses UDados, UMidias, UMenu_Poemas_Poesias, UNomes, ULoggo,
  UBroq_Cruz_Sousa, UNovas_Poesias_02;

{$R *.dfm}

Procedure TFrmOrixas.feito(sender:TObject);
Begin
   FrmOrixas.Color:= clBtnText;
   FrmOrixas.Font.Name:='Times New Roman';
   FrmOrixas.Font.Color:=clWhite;
   FrmOrixas.Font.Style:=[fsBold,fsItalic];
   FrmOrixas.Font.Size:=10;

End;
procedure TFrmOrixas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if maps = 1 then
Begin
  FrmLiteratura.show;
  FrmOrixas.Hide;
End;
end;

procedure TFrmOrixas.SpedButonOrixasClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\Árvore dos Orixás.html'),
nil,nil,sw_Shownormal);

end;

procedure TFrmOrixas.SpedButonPoetasClick(Sender: TObject);
begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Nomes.html'),
nil,nil,sw_Shownormal);

end;

procedure TFrmOrixas.inteiro;
begin
    FrmOrixas.ImgNome.Picture.LoadFromFile(caminho +'icons\people.ico');
    FrmOrixas.ImgArvore_Ori.Picture.LoadFromFile(caminho +'icons\people.ico');
    FrmOrixas.ImgFalanges.Picture.LoadFromFile(caminho +'icons\people.ico');
    FrmOrixas.ImgLinhas_Quim.Picture.LoadFromFile(caminho +'icons\people.ico');
    FrmOrixas.ImgPonto.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
End;
procedure TFrmOrixas.SpedButonFalangesClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\Falanges Umbandistas.html'),
nil,nil,sw_Shownormal);
end;

procedure TFrmOrixas.SpedButonLinhas_QuimClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\Linhas de Quimbanda.html'),
nil,nil,sw_Shownormal);

end;

procedure TFrmOrixas.SpeedButton1Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\Literatura dos Orixás.html'),
nil,nil,sw_Shownormal);

end;

procedure TFrmOrixas.FormActivate(Sender: TObject);
begin
FrmOrixas.feito(nil);
end;

procedure TFrmOrixas.SpedButonPontos_CantadosClick(Sender: TObject);
begin
     Application.CreateForm(TFrmNovas_Poesias_03, FrmNovas_Poesias_03);

     FrmNovas_Poesias_03.Width:=580;
     FrmNovas_Poesias_03.Height:=415;
     FrmNovas_Poesias_03.Left:=400;
     FrmNovas_Poesias_03.Top:=320;

     FrmNovas_Poesias_03.tatu:=3;
     FrmNovas_Poesias_03.tudo:=5;
     //FrmNovas_Poesias_03.vota:=1;
     FrmNovas_Poesias_03.tosta:=2;
     //FrmNovas_Poesias_03.vutu:=1;

     FrmNovas_Poesias_03.inicio;
     FrmNovas_Poesias_03.feito;
     //FrmNovas_Poesias_03.musica;

     FrmNovas_Poesias_03.Caption:='Pontos';

     FrmNovas_Poesias_03.SpedButonAdor.Caption:='Anjo da Guarda';
     FrmNovas_Poesias_03.SpedButonLua.Caption:='Exu';
     FrmNovas_Poesias_03.SpedButonMonja.Caption:='Ponto das Almas';
     FrmNovas_Poesias_03.SpedButonSatan.Caption:='Ponto para Cruzar Cambono';
     FrmNovas_Poesias_03.SpedButonSatan.Width:=170;
     FrmNovas_Poesias_03.SpedButonSatan.Left:=110;

     FrmNovas_Poesias_03.SpedButonSonata.Caption:='Pontos Cruzados';
     FrmNovas_Poesias_03.SpedButonSonho_Branco.Caption:='Pontos de Abertura da Sessão';
     FrmNovas_Poesias_03.SpedButonSonho_Branco.Width:=170;
     FrmNovas_Poesias_03.SpedButonSonho_Branco.Left:=110;

     FrmNovas_Poesias_03.SpedButonTulipa_Real.Caption:='Pontos de Criança';
     FrmNovas_Poesias_03.SpedButonTulipa_Real.Width:=170;
     FrmNovas_Poesias_03.SpedButonTulipa_Real.Left:=110;

     FrmNovas_Poesias_03.SpedButonVespeal.Caption:='Pontos de Defumador';
     FrmNovas_Poesias_03.SpedButonVespeal.Width:=170;
     FrmNovas_Poesias_03.SpedButonVespeal.Left:=110;

     FrmNovas_Poesias_03.SpedButonFlor_Diabo.Caption:='Pontos de Descarga';
     FrmNovas_Poesias_03.SpedButonDivina.Caption:='Pontos de Iansã';
     FrmNovas_Poesias_03.SpedButonPiedosa.Caption:='Pontos de Iemanjá';
     FrmNovas_Poesias_03.SpedButonTedio.Caption:='Pontos de Nanã';
     FrmNovas_Poesias_03.SpedButonSeio.Caption:='Pontos de Ogum';
     FrmNovas_Poesias_03.SpedButonMonja_Negra.Caption:='Pontos de Oxalá';
     FrmNovas_Poesias_03.SpedButonInes.Caption:='Pontos de Oxóssi';
     FrmNovas_Poesias_03.SpedButonEnvelhecer.Caption:='Pontos de Oxum (água doce)';
     FrmNovas_Poesias_03.SpedButonEnvelhecer.Width:=170;
     FrmNovas_Poesias_03.SpedButonEnvelhecer.Left:=370;


     FrmNovas_Poesias_03.LblNumber.Caption:='1';
     FrmNovas_Poesias_03.LblNumber.Top:=360;

     FrmOrixas.hide;
     FrmNovas_Poesias_03.show;
end;
end.
