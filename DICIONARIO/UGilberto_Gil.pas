unit UGilberto_Gil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, OleCtrls, ShockwaveFlashObjects_TLB;

type
  TFrmGilberto_Gil = class(TForm)
    Gil: TShockwaveFlash;
    SpedButonBibliografia: TSpeedButton;
    SpedButonPoesias: TSpeedButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    Procedure Feito (Sender: TObject);
    procedure SpedButonBibliografiaClick(Sender: TObject);
    procedure SpedButonPoesiasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGilberto_Gil: TFrmGilberto_Gil;

implementation

uses UTipo_Poeta, UBibi_Machado_Assis, ULuiz_Gama, ULoggo;

{$R *.dfm}

procedure TFrmGilberto_Gil.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmTipo_Poetas.show;
FrmGilberto_Gil.Hide;
FrmGilberto_Gil.Gil.Destroy;
end;

Procedure  TFrmGilberto_Gil.Feito(Sender:TObject);
Begin
FrmGilberto_Gil.Color:= clBtnText;
FrmGilberto_Gil.Font.Name:='Times New Roman';
FrmGilberto_Gil.Font.Color:=clWhite;
FrmGilberto_Gil.Font.Style:=[fsBold,fsItalic];
FrmGilberto_Gil.Font.Size:=10;

Gil.Movie := caminho+'Páginas\Gil.swf';
Gil.Play;
End;
procedure TFrmGilberto_Gil.SpedButonBibliografiaClick(Sender: TObject);
begin
   Application.CreateForm(TFrmBibi_Machado_Assis, FrmBibi_Machado_Assis);
   FrmBibi_Machado_Assis.show;
   FrmBibi_Machado_Assis.mach.Movie:=caminho+'Páginas\Giler.swf';
   FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Lines.LoadFromFile(caminho+'Biblio\Cruz_Dados.txt');
   FrmBibi_Machado_Assis.Caption:=('Biografia de Gilberto Gil');
   FrmBibi_Machado_Assis.sna:=6;
   FrmGilberto_Gil.Hide;
   FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Lines.LoadFromFile(caminho+'Biblio\Gilberto_Dados.txt');
   FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Height:=140;
   FrmBibi_Machado_Assis.RichEdtBiblio.Lines.LoadFromFile(caminho+'Biblio\Biblio_Gilberto_Gil.txt');
   FrmBibi_Machado_Assis.RichEdtBiblio.Height:=140;
   FrmBibi_Machado_Assis.RichEdtBiblio.Top:=156;
   FrmBibi_Machado_Assis.RichEdtRoamance.lines.LoadFromFile(caminho+'Biblio\Compo_Gilberto_Gil.txt');
   FrmBibi_Machado_Assis.RichEdtRoamance.Height:=273;
   FrmBibi_Machado_Assis.RichEdtRoamance.Width:=233;
   FrmBibi_Machado_Assis.RichEdtRoamance.Top:=356;
   FrmBibi_Machado_Assis.RichEdtRoamance.Left:=8;
   FrmBibi_Machado_Assis.RichEdtContos.Lines.LoadFromFile(caminho+'Biblio\Gilberto_Disco.txt');
   FrmBibi_Machado_Assis.RichEdtContos.Top:=308;
   FrmBibi_Machado_Assis.RichEdtContos.Left:=250;
   FrmBibi_Machado_Assis.RichEdtContos.Height:=320;
   FrmBibi_Machado_Assis.RichEdtTeatro.Lines.LoadFromFile(caminho+'Biblio\Gilberto_Disco_02.txt');
   FrmBibi_Machado_Assis.RichEdtTeatro.Top:=308;
   FrmBibi_Machado_Assis.RichEdtTeatro.Height:=320;
   FrmBibi_Machado_Assis.RichEdtPoesias.Destroy;

end;

procedure TFrmGilberto_Gil.SpedButonPoesiasClick(Sender: TObject);
begin
Application.CreateForm(TFrmDados_esta_Tabel,FrmDados_esta_Tabel);
FrmDados_esta_Tabel.feito(nil);
FrmDados_esta_Tabel.inicio;
FrmDados_esta_Tabel.Luz:=2;
FrmDados_esta_Tabel.nome;
FrmDados_esta_Tabel.Show;
end;
end.
