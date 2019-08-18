unit UCruz_Souza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, jpeg, OleCtrls, ShockwaveFlashObjects_TLB;

type
  TFrmCruz_Sousa = class(TForm)
    SpedButonBibliografia: TSpeedButton;
    SpedButonPoesias: TSpeedButton;
    Cruz: TShockwaveFlash;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonPoesiasClick(Sender: TObject);
    Procedure Feito(Sender: TObject);
    procedure SpedButonBibliografiaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCruz_Sousa: TFrmCruz_Sousa;

implementation

uses UTipo_Poeta, UPoe_Cruz_Souza, UBibi_Machado_Assis, ULoggo,
  UManuel_Inacio;

{$R *.dfm}

procedure TFrmCruz_Sousa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmTipo_Poetas.show;
FrmCruz_Sousa.Cruz.Destroy;
FrmCruz_Sousa.Hide;
end;

procedure TFrmCruz_Sousa.SpedButonPoesiasClick(Sender: TObject);
begin
Application.CreateForm(TFrmCruz_Souza_Poema, FrmCruz_Souza_Poema);
FrmCruz_Souza_Poema.feito;
FrmCruz_Souza_Poema.tata:=1;
FrmCruz_Souza_Poema.vutu:=1;
FrmCruz_Souza_Poema.inicio;
FrmCruz_Souza_Poema.show;
FrmCruz_Souza_Poema.Width:=580;
FrmCruz_Souza_Poema.Height:=415;
FrmCruz_Souza_Poema.Left:=400;
FrmCruz_Souza_Poema.Top:=320;
FrmCruz_Souza_Poema.Cruz:=1;
FrmCruz_Souza_Poema.LblNumber.Caption:='1';
FrmCruz_Souza_Poema.LblNumber.Top:=360;

// Estes parãmetros de left e top são do ShockWave que não deu certo

FrmCruz_Souza_Poema.SpedButonProx.Left:=400;
FrmCruz_Souza_Poema.SpedButonProx.Top:=340;

end;


Procedure TFrmCruz_Sousa.Feito(Sender: TObject);
Begin
FrmCruz_Sousa.Color:= clBtnText;
FrmCruz_Sousa.Font.Name:='Times New Roman';
FrmCruz_Sousa.Font.Color:=clWhite;
FrmCruz_Sousa.Font.Style:=[fsItalic,fsbold];
FrmCruz_Sousa.Font.Size:=10;

cruz.Movie :=caminho +'Páginas\Cruz_Souza.swf';
cruz.Play;

End;
procedure TFrmCruz_Sousa.SpedButonBibliografiaClick(Sender: TObject);
begin
   Application.CreateForm(TFrmBibi_Machado_Assis, FrmBibi_Machado_Assis);

   FrmBibi_Machado_Assis.show;
   FrmBibi_Machado_Assis.mach.Movie:=caminho +'Páginas\Cruz_Souzar.swf';
   FrmBibi_Machado_Assis.RichEdtDados_Pessoais.Lines.LoadFromFile(caminho +'Biblio\Cruz_Dados.txt');

   FrmBibi_Machado_Assis.RichEdtContos.Lines.LoadFromFile(caminho +'Biblio\Cruz_obras.txt');
   FrmBibi_Machado_Assis.RichEdtTeatro.Lines.LoadFromFile(caminho +'Biblio\Cruz_livros.txt');

   FrmBibi_Machado_Assis.RichEdtRoamance.Destroy;
  // FrmBibi_Machado_Assis.RichEdtTeatro.Lines.LoadFromFile(caminho +'Biblio\Cruz_obras.txt');

   FrmBibi_Machado_Assis.RichEdtTeatro.Top:=476;
   FrmBibi_Machado_Assis.RichEdtTeatro.Left:=503;

   FrmBibi_Machado_Assis.RichEdtContos.top:=516;
   FrmBibi_Machado_Assis.RichEdtContos.Left:=264;
   FrmBibi_Machado_Assis.RichEdtContos.Width:=225;

   FrmBibi_Machado_Assis.RichEdtPoesias.Lines.LoadFromFile(caminho +'Biblio\Cruz_Desc.txt');
   FrmBibi_Machado_Assis.RichEdtPoesias.Top:=355; //315
   FrmBibi_Machado_Assis.RichEdtPoesias.Left:=8;
   FrmBibi_Machado_Assis.RichEdtPoesias.Height:=230;
   FrmBibi_Machado_Assis.RichEdtPoesias.Width:=238;


   FrmBibi_Machado_Assis.RichEdtBiblio.Lines.LoadFromFile(caminho +'Biblio\Cruz_biblio.txt');
   FrmBibi_Machado_Assis.RichEdtBiblio.Width:=568;
   FrmBibi_Machado_Assis.RichEdtBiblio.Height:=330;

   FrmBibi_Machado_Assis.Caption:=('Biografia de João da Cruz e Sousa');

   FrmBibi_Machado_Assis.Top:=6;
   FrmBibi_Machado_Assis.Height:=730;
   FrmBibi_Machado_Assis.sna:=2;

   FrmCruz_Sousa.Hide;

   end;

end.
