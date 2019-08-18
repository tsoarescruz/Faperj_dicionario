Unit ULoggo;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, jpeg, OleCtrls,
  ShockwaveFlashObjects_TLB, Buttons, MPlayer;

Type
  TFrmLoggo = class(TForm)
    ProgressBar1: TProgressBar;
    Timer: TTimer;
    ImgLoggo: TImage;
    Procedure TimerTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  FrmLoggo: TFrmLoggo;
   caminho: string;

Implementation

Uses UPrincipal, UMenu;

{$R *.dfm}


Procedure TFrmLoggo.TimerTimer(Sender: TObject);
Begin
ProgressBar1.StepIt;
 If ProgressBar1.Position=70 then
 Begin
    Application.CreateForm(TFrmMenu,  FrmMenu);
    FrmMenu.Show;
    Timer.Enabled:=False;
    FrmLoggo.hide;
 End;
End;

procedure TFrmLoggo.FormActivate(Sender: TObject);
begin
caminho:= ExtractFilePath(Application.ExeName);
FrmLoggo.Color:= clBtnText;
FrmLoggo.ImgLoggo.Picture.LoadFromFile(caminho + 'icons\Loggo_Negro.jpg');
 end;
End.


