unit UMachado_Assis_Romances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons,Shellapi;

type
  TFrmMachado_Assis_Romance = class(TForm)
    SpedButonDom_Casmurro: TSpeedButton;
    SpedButonMemorias: TSpeedButton;
    Img01: TImage;
    Img02: TImage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonMao_LuaClick(Sender: TObject);
    procedure SpedButonDom_CasmurroClick(Sender: TObject);
    procedure feito(Sender: TObject);
    procedure SpedButonIaia_GarciaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpedButonMemoriasClick(Sender: TObject);
    procedure Img01Click(Sender: TObject);
    procedure Img02Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMachado_Assis_Romance: TFrmMachado_Assis_Romance;

implementation

uses UMachado_Assis, UNotas_Poesias, UTipos_Poemas, UBroq_Cruz_Sousa, ULoggo;

{$R *.dfm}

procedure TFrmMachado_Assis_Romance.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
        FrmMachado_Assis_Romance.Hide;
        FrmMachado_Assis.show;
end;

procedure TFrmMachado_Assis_Romance.SpedButonMao_LuaClick(
  Sender: TObject);
begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\A mão e a luva - Machado de Assis.html'),
nil,nil,sw_Shownormal);

       {Application.CreateForm(TFrmBroq_Cruz_Sousa, FrmBroq_Cruz_Sousa);
        FrmBroq_Cruz_Sousa.show;
        FrmMachado_Assis_Romance.Hide;
        FrmMachado_Assis.Hide;
        FrmBroq_Cruz_Sousa.Width:=384;
        FrmBroq_Cruz_Sousa.Height:=275;
        FrmBroq_Cruz_Sousa.poe:=1;}

end;

procedure TFrmMachado_Assis_Romance.SpedButonDom_CasmurroClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\Dom Casmurro - Machado de Assis.html'),
nil,nil,sw_Shownormal);

      { Application.CreateForm(TFrmBroq_Cruz_Sousa, FrmBroq_Cruz_Sousa);
        FrmBroq_Cruz_Sousa.show;
        FrmMachado_Assis_Romance.Hide;
        FrmMachado_Assis.Hide;
        FrmBroq_Cruz_Sousa.poe:=2;
        FrmBroq_Cruz_Sousa.Caption:='Dom Casmurro - Capítulos'; }

end;

procedure TFrmMachado_Assis_Romance.feito(Sender: TObject);
Begin
FrmMachado_Assis_Romance.Img01.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
FrmMachado_Assis_Romance.Img02.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
//FrmMachado_Assis_Romance.Img03.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
//FrmMachado_Assis_Romance.Img04.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
  End;
procedure TFrmMachado_Assis_Romance.SpedButonIaia_GarciaClick(Sender: TObject);
begin
       { Application.CreateForm(TFrmBroq_Cruz_Sousa, FrmBroq_Cruz_Sousa);
        FrmBroq_Cruz_Sousa.show;
        FrmMachado_Assis_Romance.Hide;
        FrmMachado_Assis.Hide;
        FrmBroq_Cruz_Sousa.poe:=3;
        FrmBroq_Cruz_Sousa.Caption:='Iaiá Garcia - Capítulos';
        FrmBroq_Cruz_Sousa.SpedButon18.Destroy;
        FrmBroq_Cruz_Sousa.SpedButon19.Destroy;
        FrmBroq_Cruz_Sousa.SpedButon20.Destroy;
        FrmBroq_Cruz_Sousa.SpedButon21.Destroy;
        FrmBroq_Cruz_Sousa.SpedButon22.Destroy;
        FrmBroq_Cruz_Sousa.SpedButon23.Destroy;
        FrmBroq_Cruz_Sousa.SpedButon24.Destroy;
        FrmBroq_Cruz_Sousa.SpedButon25.Destroy;
        FrmBroq_Cruz_Sousa.SpedButon26.Destroy;
        FrmBroq_Cruz_Sousa.SpedButon27.Destroy;
        FrmBroq_Cruz_Sousa.Width:=384;
        FrmBroq_Cruz_Sousa.Height:=275; }
end;
procedure TFrmMachado_Assis_Romance.FormActivate(Sender: TObject);
begin
FrmMachado_Assis_Romance.Color:=clBtnText;
FrmMachado_Assis_Romance.Font.Name:='Times New Roman';
FrmMachado_Assis_Romance.Font.Color:=clWhite;
FrmMachado_Assis_Romance.Font.Style:=[fsItalic,fsBold];
FrmMachado_Assis_Romance.Font.Size:=10;
end;

procedure TFrmMachado_Assis_Romance.SpedButonMemoriasClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\Memórias Póstumas de Brás Cubas - Machado de Assis.html'),
nil,nil,sw_Shownormal);

end;

procedure TFrmMachado_Assis_Romance.Img01Click(Sender: TObject);
begin
FrmMachado_Assis_Romance.SpedButonDom_CasmurroClick(nil);
end;

procedure TFrmMachado_Assis_Romance.Img02Click(Sender: TObject);
begin
FrmMachado_Assis_Romance.SpedButonMemoriasClick(nil);
end;

procedure TFrmMachado_Assis_Romance.FormCreate(Sender: TObject);
//Var Hr:THandle;
begin
{cria uma região eliptica
Hr:=createellipticrgn(0,0,200,190);
SetWindowRgn(handle,Hr,True); }

End;
end.

