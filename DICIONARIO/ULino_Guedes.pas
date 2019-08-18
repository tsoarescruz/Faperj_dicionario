unit ULino_Guedes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, OleCtrls, ShockwaveFlashObjects_TLB, StdCtrls, ExtCtrls, shellapi;

type
  TFrmGT_Dieese = class(TForm)
    SpedButon01: TSpeedButton;
    Img01: TImage;
    SpedButon02: TSpeedButton;
    SpedButon03: TSpeedButton;
    SpedButon04: TSpeedButton;
    SpedButon05: TSpeedButton;
    Img02: TImage;
    Img03: TImage;
    Img04: TImage;
    Img05: TImage;
    Img06: TImage;
    Img07: TImage;
    Img08: TImage;
    SpedButon06: TSpeedButton;
    SpedButon07: TSpeedButton;
    SpedButon08: TSpeedButton;
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
    procedure Feito(Sender:TObject);
    procedure inicio;
    procedure nome;
    procedure SpedButon01Click(Sender: TObject);
    procedure SpedButon02Click(Sender: TObject);
    procedure SpedButon03Click(Sender: TObject);
    procedure SpedButon04Click(Sender: TObject);
    procedure SpedButon05Click(Sender: TObject);
    procedure SpedButon06Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButon07Click(Sender: TObject);
    procedure SpedButon08Click(Sender: TObject);
    procedure SpedButon09Click(Sender: TObject);
    procedure SpedButon10Click(Sender: TObject);
    procedure SpedButon11Click(Sender: TObject);
    procedure SpedButon12Click(Sender: TObject);
    procedure SpedButon13Click(Sender: TObject);
    procedure SpedButonProximoClick(Sender: TObject);
  private
    { Private declarations }
  public

    dim:integer{ Public declarations }
  end;

var
  FrmGT_Dieese: TFrmGT_Dieese;

implementation

uses UTipo_Poeta, UBibi_Machado_Assis, UMilton_Nascimento, UMaps,
  ULuiz_Gama, ULoggo;

{$R *.dfm}

procedure TFrmGT_Dieese.Feito(Sender:TObject);
Begin
FrmGT_Dieese.Color:= clBtnText;
FrmGT_Dieese.Font.Name:='Times New Roman';
FrmGT_Dieese.Font.Color:=clWhite;
FrmGT_Dieese.Font.Style:=[fsBold,fsItalic];
FrmGT_Dieese.Font.Size:=10;

End;

procedure TFrmGT_Dieese.inicio();
Begin

FrmGT_Dieese.Img01.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img02.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img03.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img04.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img05.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img06.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img07.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img08.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img09.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img10.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img11.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img12.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');
FrmGT_Dieese.Img13.Picture.LoadFromFile(caminho+'icons\Notepad2.ico');

End;

procedure TFrmGT_Dieese.Nome();
Begin

FrmGT_Dieese.SpedButon01.Caption:='Gráfico 17';
FrmGT_Dieese.SpedButon02.Caption:='Gráfico 18';
FrmGT_Dieese.SpedButon03.Caption:='Gráfico 19';
FrmGT_Dieese.SpedButon04.Caption:='Gráfico 20';
FrmGT_Dieese.SpedButon05.Caption:='Gráfico 21';
FrmGT_Dieese.SpedButon06.Caption:='Tabela 01';
FrmGT_Dieese.SpedButon07.Caption:='Tabela 02';
FrmGT_Dieese.SpedButon08.Caption:='Tabela 03';
FrmGT_Dieese.SpedButon09.Caption:='Tabela 04';
FrmGT_Dieese.SpedButon10.Caption:='Tabela 05';
FrmGT_Dieese.SpedButon11.Caption:='Tabela 06';
FrmGT_Dieese.SpedButon12.Caption:='Tabela 07';
FrmGT_Dieese.SpedButon13.Caption:='Tabela 08';
FrmGT_Dieese.SpedButon14.Enabled:=False;
FrmGT_Dieese.SpedButon15.Enabled:=False;
FrmGT_Dieese.SpedButon16.Enabled:=False;

FrmGT_Dieese.SpedButonProximo.Caption:='Voltar';

End;


procedure TFrmGT_Dieese.SpedButon01Click(Sender: TObject);
begin
if dim=2 then
Begin
    ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Gráfico 17.html'), nil,nil,sw_Shownormal);

End;

end;

procedure TFrmGT_Dieese.SpedButon02Click(Sender: TObject);
begin
if dim=2 then
Begin
    ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Gráfico 18.html'), nil,nil,sw_Shownormal);

End;

end;

procedure TFrmGT_Dieese.SpedButon03Click(Sender: TObject);
begin
if dim=2 then
Begin
    ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Gráfico 19.html'), nil,nil,sw_Shownormal);

End;

end;

procedure TFrmGT_Dieese.SpedButon04Click(Sender: TObject);
begin
if dim=2 then
Begin
    ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Gráfico 20.html'), nil,nil,sw_Shownormal);

End;

end;

procedure TFrmGT_Dieese.SpedButon05Click(Sender: TObject);
begin
if dim=2 then
Begin
    ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Gráfico 21.html'), nil,nil,sw_Shownormal);

End;

end;

procedure TFrmGT_Dieese.SpedButon06Click(Sender: TObject);
begin
if dim=2 then
Begin
 ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Tabela 01.html'), nil,nil,sw_Shownormal);

End;
end;

procedure TFrmGT_Dieese.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if dim=2 then
     Begin
      FrmMaps.show;
      FrmGT_Dieese.hide;
     End;
end;

procedure TFrmGT_Dieese.SpedButon07Click(Sender: TObject);
begin
if dim=2 then
Begin
 ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Tabela 02.html'), nil,nil,sw_Shownormal);
End;
end;
procedure TFrmGT_Dieese.SpedButon08Click(Sender: TObject);
begin
if dim=2 then
Begin
 ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Tabela 03.html'), nil,nil,sw_Shownormal);
End;
end;

procedure TFrmGT_Dieese.SpedButon09Click(Sender: TObject);
begin
if dim=2 then
Begin
 ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Tabela 04.html'), nil,nil,sw_Shownormal);
End;
end;

procedure TFrmGT_Dieese.SpedButon10Click(Sender: TObject);
begin
if dim=2 then
Begin
 ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Tabela 05.html'), nil,nil,sw_Shownormal);
End;
end;

procedure TFrmGT_Dieese.SpedButon11Click(Sender: TObject);
begin
if dim=2 then
Begin
 ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Tabela 06.html'), nil,nil,sw_Shownormal);
End;
end;

procedure TFrmGT_Dieese.SpedButon12Click(Sender: TObject);
begin
if dim=2 then
Begin
 ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Tabela 07.html'), nil,nil,sw_Shownormal);
End;
end;

procedure TFrmGT_Dieese.SpedButon13Click(Sender: TObject);
begin
if dim=2 then
Begin
 ShellExecute(Handle,nil,PChar(caminho+'Páginas\DIEESE - Tabela 08.html'), nil,nil,sw_Shownormal);
End;
end;
procedure TFrmGT_Dieese.SpedButonProximoClick(Sender: TObject);
begin
FrmGT_Dieese.CloseQuery;
end;

end.
