unit UPreconceito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, ShockwaveFlashObjects_TLB, Buttons;

type
  TFrmAdbias_Nascimento = class(TForm)
    SpedButonPoesias: TSpeedButton;
    Abd: TShockwaveFlash;
    SpedButonBibliografia: TSpeedButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAdbias_Nascimento: TFrmAdbias_Nascimento;

implementation

uses UDados_Estatis, UTipo_Poeta;

{$R *.dfm}

procedure TFrmAdbias_Nascimento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmAdbias_Nascimento.Hide;
FrmTipo_Poetas.show;
end;

end.
