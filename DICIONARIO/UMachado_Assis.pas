unit UMachado_Assis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, jpeg, OleCtrls, ShockwaveFlashObjects_TLB;

type
  TFrmMachado_Assis = class(TForm)
    SpedButonPoesias: TSpeedButton;
    SpedButonBibliografia: TSpeedButton;
    SpedButonRomance_Machado_Assis: TSpeedButton;
    mach: TShockwaveFlash;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonPoesiasClick(Sender: TObject);
    procedure SpedButonBibliografiaClick(Sender: TObject);
    procedure SpedButonRomance_Machado_AssisClick(Sender: TObject);
    procedure Feito (Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMachado_Assis: TFrmMachado_Assis;

implementation

uses UTipos_Poemas, UTipo_Poeta, UBibi_Machado_Assis, UMachado_Assis_Romances, ULoggo;

{$R *.dfm}

procedure TFrmMachado_Assis.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

 FrmTipo_Poetas.show;
 FrmMachado_Assis.mach.Destroy;
 FrmMachado_Assis.Hide
end;

procedure TFrmMachado_Assis.SpedButonPoesiasClick(Sender: TObject);
begin
     Application.CreateForm(TFrmTipos_Poemas, FrmTipos_Poemas);
     FrmTipos_Poemas.Poe:=1;
     FrmTipos_Poemas.Feito(nil);
     FrmTipos_Poemas.showmodal;
end;

procedure TFrmMachado_Assis.SpedButonBibliografiaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmBibi_Machado_Assis, FrmBibi_Machado_Assis);
  FrmBibi_Machado_Assis.RichEdtBiblio.Lines.LoadFromFile(caminho +'Biblio\Biblio_Machado.txt');
  FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Lines.LoadFromFile(caminho +'Biblio\Dados_Machado.txt');
  FrmBibi_Machado_Assis.RichEdtPoesias.Lines.LoadFromFile(caminho +'Biblio\Poe_Machado.txt');
  FrmBibi_Machado_Assis.RichEdtContos.Lines.LoadFromFile(caminho +'Biblio\Cont_Machado.txt');
  FrmBibi_Machado_Assis.RichEdtRoamance.Lines.LoadFromFile(caminho +'Biblio\Roman_Machado.txt');
  FrmBibi_Machado_Assis.RichEdtTeatro.Lines.LoadFromFile(caminho +'Biblio\Teat_Machado.txt');
  FrmBibi_Machado_Assis.mach.Movie := caminho +'Páginas\Machado_Assis.swf';
  FrmBibi_Machado_Assis.Caption:='Biografia de Joaquim Maria Machado de Assis';
  FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Height:=116;
  FrmBibi_Machado_Assis.Mach.Play;
  FrmMachado_Assis.Hide;
  FrmBibi_Machado_Assis.sna:=1;
  FrmBibi_Machado_Assis.showmodal;
end;

procedure TFrmMachado_Assis.SpedButonRomance_Machado_AssisClick(
  Sender: TObject);
begin
Application.CreateForm(TFrmMachado_Assis_Romance, FrmMachado_Assis_Romance);
FrmMachado_Assis_Romance.feito(nil);
FrmMachado_Assis_Romance.show;

end;

Procedure TFrmMachado_Assis.Feito(Sender: TObject);
Begin

FrmMachado_Assis.Color:= clBtnText;
FrmMachado_Assis.Font.Name:='Times New Roman';
FrmMachado_Assis.Font.Color:=clWhite;
FrmMachado_Assis.Font.Style:=[fsItalic];
FrmMachado_Assis.Font.Size:=10;

Mach.Movie := caminho +'Páginas\Machado.swf';
Mach.Play;

End;
end.
