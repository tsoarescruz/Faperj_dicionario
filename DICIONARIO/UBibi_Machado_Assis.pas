unit UBibi_Machado_Assis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, OleCtrls, ShockwaveFlashObjects_TLB;

type
  TFrmBibi_Machado_Assis = class(TForm)
    mach: TShockwaveFlash;
    RichEdtBiblio: TRichEdit;
    RichEdtDados_Pessoais: TRichEdit;
    RichEdtRoamance: TRichEdit;
    RichEdtPoesias: TRichEdit;
    RichEdtContos: TRichEdit;
    RichEdtTeatro: TRichEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    sna:integer;
    { Public declarations }
  end;

var
  FrmBibi_Machado_Assis: TFrmBibi_Machado_Assis;

implementation

uses UMachado_Assis, UTipo_Poeta, UMenu_Poemas_Poesias, UCastro_Alves,
  UCruz_Souza, UGilberto_Gil, UManuel_Inacio, UMilton_Nascimento,
  ULino_Guedes, ULuiz_Gama, UGoncalves_Dias, ULoggo;

{$R *.dfm}

procedure TFrmBibi_Machado_Assis.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if sna=1 then
     Begin
     FrmMachado_Assis.Show;
     FrmBibi_Machado_Assis.Hide;
     End Else
     if sna=2 then
     Begin
     FrmCruz_Sousa.Show;
     FrmBibi_Machado_Assis.Hide;
     End else
     if sna=3 then
     Begin
     FrmCastro_Alves.Show;
     FrmBibi_Machado_Assis.Hide;
     End else
     if sna=4 then
     Begin
     FrmGilberto_Gil.Show;
     FrmBibi_Machado_Assis.Hide;
     End Else
     if sna=5 then
     Begin
     FrmMilton_Nascimento.show;
     FrmBibi_Machado_Assis.Hide;
     End Else
     if sna=6 then
     Begin
     FrmGilberto_Gil.show;
     FrmBibi_Machado_Assis.Hide;
     End Else
     if sna=9 then
     Begin
     FrmGoncalves_Dias.show;
     FrmBibi_Machado_Assis.hide;
     End else
     if sna=10 then
     Begin
     FrmManuel_Inacio.Show;
     FrmBibi_Machado_Assis.Hide;
     End else
    if sna=12 then
    Begin
    FrmBibi_Machado_Assis.Hide;
    FrmManuel_Inacio.Show;
    End;
    End;
End.


