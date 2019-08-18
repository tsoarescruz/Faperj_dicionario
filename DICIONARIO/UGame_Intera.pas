unit UGame_Intera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, ShockwaveFlashObjects_TLB, ExtCtrls, ComCtrls;

type
  TFrmGame_Intera = class(TForm)
    sfe: TShockwaveFlash;
    ProgressBar1: TProgressBar;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGame_Intera: TFrmGame_Intera;

implementation

uses UJogos, UCaca_Palavras, UMenu, ULoggo;

{$R *.dfm}

procedure TFrmGame_Intera.TimerTimer(Sender: TObject);
begin
ProgressBar1.StepIt;
 If ProgressBar1.Position=70 then
 Begin
 Application.CreateForm(TFrmJogo, FrmJogo);
 FrmJogo.tatu:=FrmMenu.Tatu;
 FrmGame_Intera.Timer.Destroy;
 FrmGame_Intera.sfe.Destroy;
 FrmGame_Intera.destroy;
 FrmJogo.Showmodal;
 End;
end;

procedure TFrmGame_Intera.FormActivate(Sender: TObject);
begin
 sfe.Movie :=caminho+'Páginas\Game.swf';
  sfe.Play;
 FrmGame_Intera.Color:= clBtnText;

end;

procedure TFrmGame_Intera.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmMenu.show;
FrmGame_Intera.Hide;
FrmGame_Intera.sfe.Destroy;
end;

end.

