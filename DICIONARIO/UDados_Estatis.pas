unit UDados_Estatis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls;

type
  TFrmDados_esta = class(TForm)
    SpedButon_Preconceito: TSpeedButton;
    ImgOrixas: TImage;
    SpedButonDiscri: TSpeedButton;
    ImgMerc_Traba: TImage;
    SpedBtnMulheres: TSpeedButton;
    ImgDomestico: TImage;
    procedure SpedButon_PreconceitoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonDiscriClick(Sender: TObject);
    procedure feito(Sender: Tobject);
    procedure FormActivate(Sender: TObject);
    procedure SpedBtnMulheresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDados_esta: TFrmDados_esta;

implementation

uses UMidias, UDados, UMaps, ULoggo;

{$R *.dfm}

procedure TFrmDados_esta.SpedButon_PreconceitoClick(Sender: TObject);
begin
Application.CreateForm(TFrmMidias,  FrmMidias);
FrmDados_esta.Hide;
FrmMidias.Maps:=4;

FrmMidias.Caption:='Preconceito';
FrmMidias.Img01.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img02.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img03.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img04.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img05.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img05.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img06.Picture.LoadFromFile(caminho+'icons\people.ico');

FrmMidias.Img07.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img08.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img09.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img010.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img011.Picture.LoadFromFile(caminho+'icons\people.ico');
FrmMidias.Img012.Picture.LoadFromFile(caminho+'icons\people.ico');


FrmMidias.SpedButon01.Caption:='Gráfico 01'; FrmMidias.SpedButon04.Caption:='Gráfico 04';
FrmMidias.SpedButon02.Caption:='Gráfico 02'; FrmMidias.SpedButon05.Caption:='Gráfico 05';
FrmMidias.SpedButon03.Caption:='Gráfico 03'; FrmMidias.SpedButon06.Caption:='Gráfico 06';

FrmMidias.SpedButon07.Caption:='Gráfico 07'; FrmMidias.SpedButon08.Caption:='Gráfico 08';
FrmMidias.SpedButon09.Caption:='Gráfico 09'; FrmMidias.SpedButon010.Caption:='Gráfico 10';
FrmMidias.SpedButon011.Caption:='Gráfico 11'; FrmMidias.SpedButon012.Caption:='Gráfico 12';

FrmMidias.show;

FrmMidias.Top:=220;  //318
FrmMidias.Left:=300; //490

end;

procedure TFrmDados_esta.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmDados_esta.hide;
FrmDados.Show;
end;

procedure TFrmDados_esta.SpedButonDiscriClick(Sender: TObject);
begin
Application.CreateForm(TFrmMaps,  FrmMaps);
FrmMaps.Maps:=2;
FrmDados_esta.Hide;
FrmMaps.Caption:='Mercado de Tabalho - Gráficos do DIEESE';
FrmMaps.LblNumber.Caption:='1';
FrmMaps.SpedButonProximo.Caption:='Próximo';
FrmMaps.inicio;
FrmMaps.Nome;

FrmMaps.Top:=220;  //318
FrmMaps.Left:=280; //490

FrmMaps.show;

End;

procedure TFrmDados_esta.feito(Sender: Tobject);
Begin
  FrmDados_esta.ImgMerc_Traba.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
  FrmDados_esta.ImgOrixas.Picture.LoadFromFile(caminho+'icons\people.ico');
  FrmDados_esta.ImgDomestico.Picture.LoadFromFile(caminho+'icons\people.ico');

End;
procedure TFrmDados_esta.FormActivate(Sender: TObject);
begin
FrmDados_esta.Color:= clBtnText;
FrmDados_esta.Font.Name:='Times New Roman';
FrmDados_esta.Font.Color:=clWhite;
FrmDados_esta.Font.Style:=[fsItalic,fsbold];
FrmDados_esta.Font.Size:=10;
end;

procedure TFrmDados_esta.SpedBtnMulheresClick(Sender: TObject);
begin
Application.CreateForm(TFrmMaps,  FrmMaps);
FrmMaps.Maps:=3;
FrmDados_esta.Hide;
FrmMaps.Caption:='Trabalho Doméstico - Gráficos do DIEESE';
FrmMaps.LblNumber.Caption:='1';
FrmMaps.Minicio;
FrmMaps.MNome;

FrmMaps.Width:=290;
FrmMaps.Height:=340;
FrmMaps.Top:=220;
//FrmMaps.Left:=280;

FrmMaps.SpedButonDeportation_19th.Enabled:=false;

FrmMaps.show;

end;

End.
