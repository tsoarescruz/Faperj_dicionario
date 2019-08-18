unit UMenu_Poemas_Poesias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls;

type
  TFrmLiteratura = class(TForm)
    SpedButonOrixas: TSpeedButton;
    SpedButonPoetas: TSpeedButton;
    ImgPoetas: TImage;
    ImgOrixas: TImage;
    procedure FormActivate(Sender: TObject);
    procedure SpedButonPoetasClick(Sender: TObject);
    procedure SpedButonOrixasClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLiteratura: TFrmLiteratura;

implementation

uses UTipos_Poemas, UMenu, UTipo_Poeta, UNomes, UMapa, ULoggo;

{$R *.dfm}

procedure TFrmLiteratura.FormActivate(Sender: TObject);
begin
FrmLiteratura.Color:=clBtnText;
FrmLiteratura.Font.Name:='Times New Roman';
FrmLiteratura.Font.Color:=clWhite;
FrmLiteratura.Font.Style:=[fsItalic, fsBold];
FrmLiteratura.Font.Size:=10;
end;

procedure TFrmLiteratura.SpedButonPoetasClick(Sender: TObject);
begin
    Application.CreateForm(TFrmTipo_Poetas,   FrmTipo_Poetas);
    FrmTipo_Poetas.feito(nil);
    FrmTipo_Poetas.Show;
    FrmLiteratura.Hide;
end;

procedure TFrmLiteratura.SpedButonOrixasClick(Sender: TObject);
begin
 Application.CreateForm(TFrmOrixas, FrmOrixas);
  FrmOrixas.inteiro;
  FrmOrixas.maps:=1;
  FrmOrixas.show;
  FrmLiteratura.Hide;
End;
 end.
