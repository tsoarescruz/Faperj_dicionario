unit UPoe_Castro_Alves;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, OleCtrls, ShockwaveFlashObjects_TLB,
  StdCtrls, ComCtrls;

type
  TFrmPoe_Castro_Alves = class(TForm)
    RichEdtDados_Pessoais: TRichEdit;
    RichEdtBiblio: TRichEdit;
    RichEdtTeatro: TRichEdit;
    RichEdtRoamance: TRichEdit;
    RichEdtPoesias: TRichEdit;
    RichEdtContos: TRichEdit;
    mach: TShockwaveFlash;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPoe_Castro_Alves: TFrmPoe_Castro_Alves;

implementation

uses UCastro_Alves, UNotas_Poesias, UTipo_Midia;

{$R *.dfm}

procedure TFrmPoe_Castro_Alves.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmPoe_Castro_Alves.Hide;
frmPixinguinha.show;
end;

end.
