unit UMaps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Shellapi, StdCtrls;

type
  TFrmMaps = class(TForm)
    SpedButonLingua_Port_Mundi: TSpeedButton;
    Img01: TImage;
    SpedButonQuilombos: TSpeedButton;
    SpedButonRotas_Escravos: TSpeedButton;
    SpedButonDeportation_15th_16th: TSpeedButton;
    SpedButonDeportation_17th: TSpeedButton;
    Img02: TImage;
    Img03: TImage;
    Img04: TImage;
    Img05: TImage;
    Img06: TImage;
    Img07: TImage;
    Img08: TImage;
    SpedButonDeportation_18th: TSpeedButton;
    SpedButonDeportation_19th: TSpeedButton;
    SpedButonRoute_World: TSpeedButton;
    Img09: TImage;
    Img10: TImage;
    Img11: TImage;
    Img12: TImage;
    Img13: TImage;
    Img14: TImage;
    Img15: TImage;
    Img16: TImage;
    SpedButon09: TSpeedButton;
    SpedButon10: TSpeedButton;
    SpedButon11: TSpeedButton;
    SpedButon12: TSpeedButton;
    SpedButon13: TSpeedButton;
    SpedButon14: TSpeedButton;
    SpedButon15: TSpeedButton;
    SpedButon16: TSpeedButton;
    SpedButonProximo: TSpeedButton;
    LblNumber: TLabel;
    procedure SpedButonLingua_Port_MundiClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonQuilombosClick(Sender: TObject);
    procedure SpedButonRotas_EscravosClick(Sender: TObject);
    procedure SpedButonDeportation_15th_16thClick(Sender: TObject);
    procedure SpedButonDeportation_17thClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpedButonDeportation_18thClick(Sender: TObject);
    procedure SpedButonDeportation_19thClick(Sender: TObject);
    procedure SpedButonRoute_WorldClick(Sender: TObject);
    procedure SpedButon09Click(Sender: TObject);
    procedure SpedButon10Click(Sender: TObject);
    procedure SpedButon11Click(Sender: TObject);
    procedure SpedButon12Click(Sender: TObject);
    procedure SpedButon13Click(Sender: TObject);
    procedure SpedButon14Click(Sender: TObject);
    procedure SpedButon15Click(Sender: TObject);
    procedure SpedButon16Click(Sender: TObject);
    procedure SpedButonProximoClick(Sender: TObject);
    procedure inicio();
    procedure Nome();
    procedure Minicio();
    procedure MNome();
    procedure mapas_dicionario();
  private
    { Private declarations }
  public
    maps:integer;
    { Public declarations }
  end;

var
  FrmMaps: TFrmMaps;

implementation

uses UMapa, UDados, UDados_Estatis, ULino_Guedes, ULoggo, UMapa_Intera;

{$R *.dfm}

procedure TFrmMaps.SpedButonLingua_Port_MundiClick(Sender: TObject);
begin
   if maps=1 then
Begin

 ShellExecute(Handle,nil,PChar(caminho +'Páginas\Mapa da Língua Portuguesa.html'), nil,nil,sw_Shownormal);

        End Else
   if maps=2 then
        Begin

 ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 01.html'), nil,nil,sw_Shownormal);
        End else
        if maps=3 then
        Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\Mulheres - DIEESE - Gráfico 01.html'), nil,nil,sw_Shownormal);

        End;
   End;

procedure TFrmMaps.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if maps=1 then
        Begin
        FrmMaps.hide;
        FrmDados.show;
        end Else
    if maps=2 then
        Begin
         FrmDados_esta.show;
         FrmMaps.hide;
         End else
  if maps=3 then
        Begin
         FrmDados_esta.show;
         FrmMaps.hide;
        End;
End;
procedure TFrmMaps.SpedButonQuilombosClick(Sender: TObject);
Begin
  if maps=1 then
  Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\Distribuição dos Quilombos no Brasil.html'), nil,nil,sw_Shownormal);
  End else
     if maps=2 then
   Begin
  ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 02.html'), nil,nil,sw_Shownormal);
   End else
   if maps=3 then
   Begin
  ShellExecute(Handle,nil,PChar(caminho +'Páginas\Mulheres - DIEESE - Gráfico 02.html'), nil,nil,sw_Shownormal);
   End;
End;

procedure TFrmMaps.SpedButonRotas_EscravosClick(Sender: TObject);
Begin
  if maps = 1 then
  Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\Unesco_Gráfico_01.html'), nil,nil,sw_Shownormal);
  End else
   if maps=2 then
        Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 03.html'), nil,nil,sw_Shownormal);

        End else
   if maps=3 then
   Begin
  ShellExecute(Handle,nil,PChar(caminho +'Páginas\Mulheres - DIEESE - Tabela 01.html'), nil,nil,sw_Shownormal);
   End;
End;

procedure TFrmMaps.SpedButonDeportation_15th_16thClick(Sender: TObject);
Begin
  if maps = 1 then
  Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\UNESCO_Gráfico_Deportation_15th_16th.html'), nil,nil,sw_Shownormal);
  End else
   if maps=2 then
        Begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 04.html'), nil,nil,sw_Shownormal);
      End else
   if maps=3 then
   Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\Mulheres - DIEESE - Tabela 02.html'), nil,nil,sw_Shownormal);
   End;

End;

{}

procedure TFrmMaps.SpedButonDeportation_17thClick(Sender: TObject);
Begin
if maps = 1 then
  Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\UNESCO_Gráfico_Deportation_17th.html'), nil,nil,sw_Shownormal);
  End else
  if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 05.html'), nil,nil,sw_Shownormal);

       End
       else
   if maps=3 then
   Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\Mulheres - DIEESE - Tabela 03.html'), nil,nil,sw_Shownormal);
   End;


End;

procedure TFrmMaps.FormActivate(Sender: TObject);
begin
FrmMaps.Color:= clBtnText;
FrmMaps.Font.Name:='Times New Roman';
FrmMaps.Font.Color:=clWhite;
FrmMaps.Font.Style:=[fsItalic,fsBold];
FrmMaps.Font.Size:=10;
end;

procedure TFrmMaps.SpedButonDeportation_18thClick(Sender: TObject);
begin
if maps = 1 then
  Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\UNESCO_Gráfico_Deportation_18th.html'), nil,nil,sw_Shownormal);
  End else
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 06.html'), nil,nil,sw_Shownormal);

       End else
   if maps=3 then
   Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\Mulheres - DIEESE - Tabela 04.html'), nil,nil,sw_Shownormal);
   End;
end;

procedure TFrmMaps.SpedButonDeportation_19thClick(Sender: TObject);
begin
if maps = 1 then
  Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\UNESCO_Gráfico_Deportation_19th.html'), nil,nil,sw_Shownormal);
  End else
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 07.html'), nil,nil,sw_Shownormal);

       End;
end;

procedure TFrmMaps.SpedButonRoute_WorldClick(Sender: TObject);
begin
if maps = 1 then
  Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\UNESCO_Gráfico_the_slave_route_World.html'), nil,nil,sw_Shownormal);
  End else
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 08.html'), nil,nil,sw_Shownormal);

       End;
end;

procedure TFrmMaps.SpedButon09Click(Sender: TObject);
begin
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 09.html'), nil,nil,sw_Shownormal);

       End;

end;

procedure TFrmMaps.SpedButon10Click(Sender: TObject);
begin
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 10.html'), nil,nil,sw_Shownormal);

       End;

end;

procedure TFrmMaps.SpedButon11Click(Sender: TObject);
begin
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 11.html'), nil,nil,sw_Shownormal);

       End;

end;

procedure TFrmMaps.SpedButon12Click(Sender: TObject);
begin
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 12.html'), nil,nil,sw_Shownormal);

       End;

end;

procedure TFrmMaps.SpedButon13Click(Sender: TObject);
begin
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 13.html'), nil,nil,sw_Shownormal);

       End;

end;

procedure TFrmMaps.SpedButon14Click(Sender: TObject);
begin
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 14.html'), nil,nil,sw_Shownormal);

       End;

end;

procedure TFrmMaps.SpedButon15Click(Sender: TObject);
begin
 if maps=2 then
        Begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 15.html'), nil,nil,sw_Shownormal);

       End;

end;

procedure TFrmMaps.SpedButon16Click(Sender: TObject);
begin
 if maps=2 then
        Begin
 ShellExecute(Handle,nil,PChar(caminho +'Páginas\DIEESE - Gráfico 16.html'), nil,nil,sw_Shownormal);

       End;

end;

procedure TFrmMaps.SpedButonProximoClick(Sender: TObject);
begin
if maps=2 then
 Begin
Application.CreateForm(TFrmGT_Dieese,FrmGT_Dieese);
FrmGT_Dieese.dim:=2;

FrmGT_Dieese.Caption:='Mercado de Tabalho - Gráficos e Tabelas do DIEESE';
FrmGT_Dieese.LblNumber.Caption:='2';

FrmGT_Dieese.Feito(nil);
FrmGT_Dieese.inicio;
FrmGT_Dieese.nome;
FrmGT_Dieese.Show;

FrmGT_Dieese.Top:=220;
FrmGT_Dieese.Left:=280;

FrmMaps.Hide;

 End;
end;

procedure TFrmMaps.inicio();
Begin

FrmMaps.Img01.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img02.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img03.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img04.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img05.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img06.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img07.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img08.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img09.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img10.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img11.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img12.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img13.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img14.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img15.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img16.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');

End;

procedure TFrmMaps.Nome();
Begin

FrmMaps.SpedButonLingua_Port_Mundi.Caption:='Gráfico 01';
FrmMaps.SpedButonQuilombos.Caption:='Gráfico 02';
FrmMaps.SpedButonRotas_Escravos.Caption:='Gráfico 03';
FrmMaps.SpedButonDeportation_15th_16th.Caption:='Gráfico 04';
FrmMaps.SpedButonDeportation_17th.Caption:='Gráfico 05';
FrmMaps.SpedButonDeportation_18th.Caption:='Gráfico 06';
FrmMaps.SpedButonDeportation_19th.Caption:='Gráfico 07';
FrmMaps.SpedButonRoute_World.Caption:='Gráfico 08';
FrmMaps.SpedButon09.Caption:='Gráfico 09';
FrmMaps.SpedButon10.Caption:='Gráfico 10';
FrmMaps.SpedButon11.Caption:='Gráfico 11';
FrmMaps.SpedButon12.Caption:='Gráfico 12';
FrmMaps.SpedButon13.Caption:='Gráfico 13';
FrmMaps.SpedButon14.Caption:='Gráfico 14';
FrmMaps.SpedButon15.Caption:='Gráfico 15';
FrmMaps.SpedButon16.Caption:='Gráfico 16';

End;

procedure TFrmMaps.Minicio();
Begin

FrmMaps.Img01.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img02.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img03.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img04.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img05.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img06.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
{FrmMaps.Img07.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img08.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img09.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img10.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img11.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img12.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img13.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img14.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img15.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');
FrmMaps.Img16.Picture.LoadFromFile(caminho +'icons\Notepad2.ico');

}
End;

procedure TFrmMaps.MNome();
Begin

FrmMaps.SpedButonLingua_Port_Mundi.Caption:='Gráfico 01';
FrmMaps.SpedButonQuilombos.Caption:='Gráfico 02';
FrmMaps.SpedButonRotas_Escravos.Caption:='Tabela 01';
FrmMaps.SpedButonDeportation_15th_16th.Caption:='Tabela 02';
FrmMaps.SpedButonDeportation_17th.Caption:='Tabela 03';
FrmMaps.SpedButonDeportation_18th.Caption:='Tabela 04';
{FrmMaps.SpedButon07.Caption:='Gráfico 07';
FrmMaps.SpedButon08.Caption:='Gráfico 08';
FrmMaps.SpedButon09.Caption:='Gráfico 09';
FrmMaps.SpedButon10.Caption:='Gráfico 10';
FrmMaps.SpedButon11.Caption:='Gráfico 11';
FrmMaps.SpedButon12.Caption:='Gráfico 12';
FrmMaps.SpedButon13.Caption:='Gráfico 13';
FrmMaps.SpedButon14.Caption:='Gráfico 14';
FrmMaps.SpedButon15.Caption:='Gráfico 15';
FrmMaps.SpedButon16.Caption:='Gráfico 16';
}
FrmMaps.SpedButonProximo.Enabled:=False;

End;

procedure TFrmMaps.mapas_dicionario();
     begin
     //Application.CreateForm(TFrmMaps,  FrmMaps);
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

// FrmMapa_Intera.Hide;
// FrmMaps.show;
// FrmMenu.tod:=1;
// FrmMenu.SpedButonPararClick(nil);
// FrmMapa_Intera.Timer.Destroy;
 end;



End.
