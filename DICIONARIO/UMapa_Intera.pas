unit UMapa_Intera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, ShockwaveFlashObjects_TLB, ComCtrls, ExtCtrls;

type
  TFrmMapa_Intera = class(TForm)
    sfe: TShockwaveFlash;
    Timer: TTimer;
    ProgressBar1: TProgressBar;
    procedure FormActivate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMapa_Intera: TFrmMapa_Intera;

implementation

uses UMaps, UDados, UMenu, ULoggo;

{$R *.dfm}

procedure TFrmMapa_Intera.FormActivate(Sender: TObject);
begin
sfe.Movie :=caminho +'Páginas\Mapa_Interativo.swf';
  sfe.Play;

FrmMapa_Intera.Color:= clBtnText;

end;

procedure TFrmMapa_Intera.TimerTimer(Sender: TObject);
begin
ProgressBar1.StepIt;
 If ProgressBar1.Position=60 then
 Begin
{     Application.CreateForm(TFrmMaps,  FrmMaps);
     FrmMaps.maps:=1;

     FrmMaps.SpedButon09.Destroy;
     FrmMaps.SpedButon10.Destroy;
     FrmMaps.SpedButon11.Destroy;
     FrmMaps.SpedButon12.Destroy;
     FrmMaps.SpedButon13.Destroy;
     FrmMaps.SpedButon14.Destroy;
     FrmMaps.SpedButon15.Destroy;
     FrmMaps.SpedButon16.Destroy;

     FrmMaps.Img01.Picture.LoadFromFile(caminho +'icons\Globe.ico');
     FrmMaps.Img02.Picture.LoadFromFile(caminho +'icons\Globe.ico');
     FrmMaps.Img03.Picture.LoadFromFile(caminho +'icons\Globe.ico');
     FrmMaps.Img04.Picture.LoadFromFile(caminho +'icons\Globe.ico');
     FrmMaps.Img05.Picture.LoadFromFile(caminho +'icons\Globe.ico');
     FrmMaps.Img06.Picture.LoadFromFile(caminho +'icons\Globe.ico');
     FrmMaps.Img07.Picture.LoadFromFile(caminho +'icons\Globe.ico');
     FrmMaps.Img08.Picture.LoadFromFile(caminho +'icons\Globe.ico');

     FrmMaps.Img01.Top:=20;
     FrmMaps.Img02.Top:=62;
     FrmMaps.Img03.Top:=102;
     FrmMaps.Img04.Top:=143;
     FrmMaps.Img05.Top:=183;
     FrmMaps.Img06.Top:=223;
     FrmMaps.Img07.Top:=263;
     FrmMaps.Img08.Top:=303;

     FrmMaps.SpedButonLingua_Port_Mundi.Height:=33;
     FrmMaps.SpedButonLingua_Port_Mundi.Width:=201;
     FrmMaps.SpedButonLingua_Port_Mundi.Left:=60;
     FrmMaps.SpedButonLingua_Port_Mundi.Top:=20;

     FrmMaps.SpedButonQuilombos.Height:=33;
     FrmMaps.SpedButonQuilombos.Width:=201;
     FrmMaps.SpedButonQuilombos.Left:=62;
     FrmMaps.SpedButonQuilombos.Top:=62;

     FrmMaps.SpedButonRotas_Escravos.Height:=33;
     FrmMaps.SpedButonRotas_Escravos.Width:=201;
     FrmMaps.SpedButonRotas_Escravos.Left:=62;
     FrmMaps.SpedButonRotas_Escravos.Top:=102;
     FrmMaps.SpedButonRotas_Escravos.Caption:= 'Rotas de Escravos';

     FrmMaps.SpedButonDeportation_15th_16th.Height:=33;
     FrmMaps.SpedButonDeportation_15th_16th.Width:=201;
     FrmMaps.SpedButonDeportation_15th_16th.Left:=62;
     FrmMaps.SpedButonDeportation_15th_16th.Top:=143;
     FrmMaps.SpedButonDeportation_15th_16th.Caption:='Rota dos Escravos nos Séc 15 e 16';

     FrmMaps.SpedButonDeportation_17th.Height:=33;
     FrmMaps.SpedButonDeportation_17th.Width:=201;
     FrmMaps.SpedButonDeportation_17th.Left:=62;
     FrmMaps.SpedButonDeportation_17th.Top:=183;
     FrmMaps.SpedButonDeportation_17th.Caption:= 'Rota dos Escravos no Séc 17';

     FrmMaps.SpedButonDeportation_18th.Height:=33;
     FrmMaps.SpedButonDeportation_18th.Width:=201;
     FrmMaps.SpedButonDeportation_18th.Left:=62;
     FrmMaps.SpedButonDeportation_18th.Top:=223;
     FrmMaps.SpedButonDeportation_18th.Caption:= 'Rota dos Escravos no Séc 18';

     FrmMaps.SpedButonDeportation_19th.Height:=33;
     FrmMaps.SpedButonDeportation_19th.Width:=201;
     FrmMaps.SpedButonDeportation_19th.Left:=62;
     FrmMaps.SpedButonDeportation_19th.Top:=263;
     FrmMaps.SpedButonDeportation_19th.Caption:= 'Rota dos Escravos no Séc 19';

     FrmMaps.SpedButonRoute_World.Height:=33;
     FrmMaps.SpedButonRoute_World.Width:=201;
     FrmMaps.SpedButonRoute_World.Left:=62;
     FrmMaps.SpedButonRoute_World.Top:=303;
     FrmMaps.SpedButonRoute_World.Caption:= 'Rota Mundial dos Escravos';

     FrmMaps.Top:=268;
     FrmMaps.Left:=490;

     FrmMaps.Caption:='Mapas';

     FrmMaps.Height:=370;
     FrmMaps.Width:=282;

 FrmMapa_Intera.Hide;
 FrmMaps.show;
// FrmMenu.tod:=1;
// FrmMenu.SpedButonPararClick(nil);
 FrmMapa_Intera.Timer.Destroy;}
 End;
end;

procedure TFrmMapa_Intera.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmMenu.show;
FrmMapa_Intera.Hide;
FrmMapa_Intera.sfe.Destroy;
end;

end.
