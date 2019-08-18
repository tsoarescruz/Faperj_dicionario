unit UDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons;

type
  TFrmDados = class(TForm)
    SpedButonMapa: TSpeedButton;
    ImgMapa: TImage;
    SpedButonDados_Esta: TSpeedButton;
    ImgDados_Esta: TImage;
    SpedButonLeis: TSpeedButton;
    ImgLei: TImage;
    procedure FormActivate(Sender: TObject);
    procedure SpedButonMapaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonDados_EstaClick(Sender: TObject);
    procedure SpedButonLeisClick(Sender: TObject);
    procedure feito(Sender:TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDados: TFrmDados;

implementation

uses UMapa, UPaises, UMenu, UPreconceito, UMaps, UDados_Estatis,
  UNotas, UMapa_Intera, ULoggo;

{$R *.dfm}

Procedure TFrmDados.FormActivate(Sender: TObject);
Begin
     FrmDados.Color:=clBtnText;
     FrmDados.Font.Name:='Times New Roman';
     FrmDados.Font.Color:=clWhite;
     FrmDados.Font.Style:=[fsItalic,fsBold];
     FrmDados.Font.Size:=10;
End;

Procedure TFrmDados.SpedButonMapaClick(Sender: TObject);
Begin
//Application.CreateForm(TFrmMapa_Intera,  FrmMapa_Intera);
//FrmMenu.tod :=0;
//FrmMenu.SpedButonPararClick(nil);
//FrmMapa_Intera.Timer.Enabled:=True;
//FrmMapa_Intera.show;
//FrmDados.hide;

Application.CreateForm(TFrmMaps,  FrmMaps);
FrmMaps.mapas_dicionario();
FrmMaps.show;
FrmDados.hide;

End;

Procedure TFrmDados.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Begin
     FrmMenu.show;
     FrmDados.hide;

End;

Procedure TFrmDados.SpedButonDados_EstaClick(Sender: TObject);
Begin
    Application.CreateForm(TFrmDados_esta, FrmDados_esta);
    FrmDados_esta.feito(nil);
    FrmDados_esta.show;
    FrmDados.hide;

End;

Procedure TFrmDados.SpedButonLeisClick(Sender: TObject);
Begin
    Application.CreateForm(TFrmNotas, FrmNotas);
    FrmNotas.feito(nil);
    FrmNotas.MemBloc_Notas.Font.Size:=12;
    FrmDados.hide;
    FrmNotas.show;
    FrmNotas.MemBloc_Notas.Lines.LoadFromFile(caminho+'Biblio\Leis.txt');
    FrmNotas.Sna:=99;

End;

procedure TFrmDados.feito(Sender:TObject);
Begin
  FrmDados.ImgDados_Esta.Picture.LoadFromFile(caminho+'icons\Icon_167.ico');
  FrmDados.ImgMapa.Picture.LoadFromFile(caminho+'icons\Globe.ico');
  FrmDados.ImgLei.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');

End;
End.
