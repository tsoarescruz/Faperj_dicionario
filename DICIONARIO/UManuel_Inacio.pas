unit UManuel_Inacio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, OleCtrls, ShockwaveFlashObjects_TLB,Shellapi, SHDocVw;

type
  TFrmManuel_Inacio = class(TForm)
    Math: TShockwaveFlash;
    SpedButonPoesias: TSpeedButton;
    SpedButonBibliografia: TSpeedButton;
    Web: TWebBrowser;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure feito(Sender: TObject);
    procedure SpedButonBibliografiaClick(Sender: TObject);
    procedure SpedButonPoesiasClick(Sender: TObject);
  private
    { Private declarations }
  public
  tatu:integer;
    { Public declarations }
  end;

var
  FrmManuel_Inacio: TFrmManuel_Inacio;

implementation

uses UTipo_Poeta, UBibi_Machado_Assis, ULoggo, ULivros_02;

{$R *.dfm}

procedure TFrmManuel_Inacio.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    Application.CreateForm(TFrmTipo_Poetas,   FrmTipo_Poetas);
    FrmTipo_Poetas.feito(nil);
    FrmManuel_Inacio.Hide;
    FrmTipo_Poetas.showmodal;

end;

Procedure TFrmManuel_Inacio.feito(Sender: TObject);
Begin

FrmManuel_Inacio.Color:= clBtnText;
FrmManuel_Inacio.Font.Name:='Times New Roman';
FrmManuel_Inacio.Font.Color:=clWhite;
FrmManuel_Inacio.Font.Style:=[fsItalic, fsBold];
FrmManuel_Inacio.Font.Size:=10;

end;
procedure TFrmManuel_Inacio.SpedButonBibliografiaClick(Sender: TObject);
begin
if tatu=1 then
Begin
  Application.CreateForm(TFrmBibi_Machado_Assis, FrmBibi_Machado_Assis);
 // FrmBibi_Machado_Assis.mach.Movie := caminho +'Páginas\Lima.swf';
 FrmBibi_Machado_Assis.Mach.Play;
  FrmBibi_Machado_Assis.RichEdtBiblio.Text:='';
  FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Text:='';
  FrmBibi_Machado_Assis.RichEdtRoamance.Text:='';
  FrmBibi_Machado_Assis.RichEdtPoesias.Text:='';
  FrmBibi_Machado_Assis.RichEdtContos.Text:='';
  FrmBibi_Machado_Assis.RichEdtTeatro.Text:='';
  FrmBibi_Machado_Assis.Caption:='Biografia de Manuel Inácio';
  FrmBibi_Machado_Assis.sna:=10;
  FrmBibi_Machado_Assis.show;
  FrmManuel_Inacio.Hide;

End;
end;

procedure TFrmManuel_Inacio.SpedButonPoesiasClick(Sender: TObject);
begin

Application.CreateForm(TFrmLivro_02, FrmLivro_02);
FrmLivro_02.feito(nil);
FrmLivro_02.show;

 end;
end.
