Unit UTipo_Midia;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons,Shellapi, MPlayer, ExtCtrls, OleCtrls,
  ShockwaveFlashObjects_TLB;

Type
  TFrmPixinguinha = class(TForm)
    Pix: TShockwaveFlash;
    SpedButonBibliografia: TSpeedButton;
    SpedButonPoesias: TSpeedButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

      Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  FrmPixinguinha: TFrmPixinguinha;

Implementation

uses UMedia_Musikas, UMenu, UJogos, UTipo_Poeta;

{$R *.dfm}

procedure TFrmPixinguinha.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 FrmPixinguinha.Hide;
FrmTipo_Poetas.show;
end;

End.
