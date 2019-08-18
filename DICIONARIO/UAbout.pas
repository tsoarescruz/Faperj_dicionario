unit UAbout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Pesquisador: TLabel;
    Orientadora: TLabel;
    SpedButonoK: TSpeedButton;
    LblProduced: TLabel;
    Escola: TLabel;
    Label1: TLabel;
    procedure SpedButonoKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure feito;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses UPrincipal, ULoggo;

{$R *.dfm}


procedure TAboutBox.SpedButonoKClick(Sender: TObject);
begin
AboutBox.close;
end;

procedure TAboutBox.FormActivate(Sender: TObject);
begin
AboutBox.Color:= clBtnText;
AboutBox.Font.Name:='Times New Roman';
AboutBox.Font.Color:=clWhite;
AboutBox.Font.Style:=[fsItalic,fsbold];
AboutBox.Font.Size:=10;
feito;
end;

procedure TAboutBox.feito;
begin
 Aboutbox.programIcon.Picture.LoadFromFile(caminho + 'icons\Music.ico');
end;
end.

