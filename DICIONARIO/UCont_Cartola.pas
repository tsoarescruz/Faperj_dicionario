unit UCont_Cartola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, OleCtrls, ShockwaveFlashObjects_TLB, Buttons;

type
  TFrmCont_Cartola = class(TForm)
    RichEdtDados_Pessoais: TRichEdit;
    RichEdtRoamance: TRichEdit;
    RichEdtPoesias: TRichEdit;
    RichEdtTeatro: TRichEdit;
    btnProx: TSpeedButton;
    procedure feito;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnProxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
   sna:integer;
    { Public declarations }
  end;

var
  FrmCont_Cartola: TFrmCont_Cartola;

implementation

uses UMedia_Musikas;

{$R *.dfm}

procedure TFrmCont_Cartola.feito;
Begin
FrmCont_Cartola.Color:=clBtnText;
FrmCont_Cartola.Font.Name:='Times New Roman';
FrmCont_Cartola.Font.Color:=clWhite;
FrmCont_Cartola.Font.Style:=[fsItalic,fsbold];
FrmCont_Cartola.Font.Size:=10;

End;
procedure TFrmCont_Cartola.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     if Sna=13 then
     Begin
       FrmCont_Cartola.hide;
       FrmMedia_Misikas.show;
     End;
end;

procedure TFrmCont_Cartola.btnProxMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FrmMedia_Misikas.btnProx.Caption:='&>>';
FrmMedia_Misikas.btnProx.Enabled:=true;
FrmMedia_Misikas.btnProx.Visible:=true;
FrmCont_Cartola.CloseQuery;

end;

end.
