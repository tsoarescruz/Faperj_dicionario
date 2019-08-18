unit UMedia_Musikas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, Buttons, Shellapi, ExtCtrls, jpeg, ComCtrls,
  OleCtrls, ShockwaveFlashObjects_TLB;

type
  TFrmMedia_Misikas = class(TForm)
    mach: TShockwaveFlash;
    RichEdtDados_Pessoais: TRichEdit;
    RichEdtBiblio: TRichEdit;
    RichEdtRoamance: TRichEdit;
    RichEdtTeatro: TRichEdit;
    RichEdtContos: TRichEdit;
    RichEdtPoesias: TRichEdit;
    btnProx: TSpeedButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure feito;
    procedure btnProxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    Sna:integer;
    { Public declarations }
  end;

var
  FrmMedia_Misikas: TFrmMedia_Misikas;

implementation

uses UPrincipal, ULoggo, UMenu, UTipo_Midia, UNomes, UCont_Cartola;

{$R *.dfm}


procedure TFrmMedia_Misikas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Begin
     if Sna=12 then
     Begin
       FrmMedia_Misikas.Hide;
       FrmNomes.show;
     End;
     End;

procedure TFrmMedia_Misikas.feito;
Begin
FrmMedia_Misikas.Color:=clBtnText;
FrmMedia_Misikas.Font.Name:='Times New Roman';
FrmMedia_Misikas.Font.Color:=clWhite;
FrmMedia_Misikas.Font.Style:=[fsItalic,fsbold];
FrmMedia_Misikas.Font.Size:=10;

End;

procedure TFrmMedia_Misikas.btnProxMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Application.CreateForm(TFrmCont_Cartola, FrmCont_Cartola);
  FrmCont_Cartola.Caption:='Continuação da Biografia de Cartola';

  FrmCont_Cartola.RichEdtDados_Pessoais.Lines.LoadFromFile(caminho +'Biblio\Cartola_Obras_03.txt');
  FrmCont_Cartola.RichEdtDados_Pessoais.Height:=336;
  FrmCont_Cartola.RichEdtDados_Pessoais.Width:=257;

  FrmCont_Cartola.RichEdtPoesias.Height:=336;
  FrmCont_Cartola.RichEdtPoesias.Width:=257;
  FrmCont_Cartola.RichEdtPoesias.Lines.LoadFromFile(caminho+'biblio\Cartola_obras_05.txt');
//  FrmCont_Cartola.RichEdtPoesias.top:=8;
//  FrmCont_Cartola.RichEdtPoesias.Left:=540;

  FrmCont_Cartola.RichEdtRoamance.lines.LoadFromFile(caminho+'biblio\Cartola_obras_04.txt');
  FrmCont_Cartola.RichEdtRoamance.Height:=336;
  FrmCont_Cartola.RichEdtRoamance.Width:=257;
  FrmCont_Cartola.RichEdtRoamance.top:=8;

  FrmCont_Cartola.RichEdtTeatro.lines.LoadFromFile(caminho+'biblio\Cartola_obras_06.txt');
  FrmCont_Cartola.RichEdtTeatro.Height:=336;
  FrmCont_Cartola.RichEdtTeatro.Width:=257;
  FrmCont_Cartola.RichEdtTeatro.Left:=300;
   FrmCont_Cartola.RichEdtTeatro.Top:=351;

  FrmCont_Cartola.Sna:=13;
  FrmCont_Cartola.feito;

  FrmCont_Cartola.Top:=6;
  FrmCont_Cartola.Height:=730;
  FrmCont_Cartola.Width:=580;

  FrmMedia_Misikas.btnProx.Caption:='&<<';
  FrmMedia_Misikas.btnProx.Enabled:=False;
  FrmMedia_Misikas.btnProx.Visible:=false;

  FrmCont_Cartola.show;

end;

End.

