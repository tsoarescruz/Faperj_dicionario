unit ULuiz_Gama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, OleCtrls, ShockwaveFlashObjects_TLB, StdCtrls, ExtCtrls, shellapi;

type
  TFrmDados_esta_Tabel = class(TForm)
    SpedButon01: TSpeedButton;
    Img1: TImage;
    SpedButon02: TSpeedButton;
    Img2: TImage;
    SpedButon03: TSpeedButton;
    SpedButon04: TSpeedButton;
    SpedButon05: TSpeedButton;
    SpedButon06: TSpeedButton;
    SpedButon07: TSpeedButton;
    SpedButon08: TSpeedButton;
    Img3: TImage;
    Img4: TImage;
    Img5: TImage;
    Img6: TImage;
    Img7: TImage;
    Img8: TImage;
    Img01: TImage;
    Img02: TImage;
    Img03: TImage;
    Img04: TImage;
    Img05: TImage;
    Img06: TImage;
    Img07: TImage;
    Img08: TImage;
    SpedButon09: TSpeedButton;
    Img9: TImage;
    SpedButon10: TSpeedButton;
    Img10: TImage;
    SpedButon11: TSpeedButton;
    Img11: TImage;
    SpedButon12: TSpeedButton;
    Img12: TImage;
    SpedButon13: TSpeedButton;
    Img13: TImage;
    SpedButon14: TSpeedButton;
    Img14: TImage;
    SpedButon15: TSpeedButton;
    Img15: TImage;
    SpedButon16: TSpeedButton;
    Img16: TImage;
    Img09: TImage;
    Img010: TImage;
    Img011: TImage;
    Img012: TImage;
    Img013: TImage;
    Img014: TImage;
    Img015: TImage;
    Img016: TImage;
    SpedButonProx: TSpeedButton;
    LblNumber: TLabel;
    procedure feito(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure inicio;
    procedure nome;
    procedure SpedButonProximoClick(Sender: TObject);
    procedure SpedButon01Click(Sender: TObject);
    procedure SpedButon02Click(Sender: TObject);
    procedure SpedButon03Click(Sender: TObject);
    procedure SpedButon04Click(Sender: TObject);
    procedure SpedButon05Click(Sender: TObject);
    procedure SpedButon06Click(Sender: TObject);
    procedure SpedButon07Click(Sender: TObject);
    procedure SpedButon08Click(Sender: TObject);
    procedure SpedButon09Click(Sender: TObject);
    procedure SpedButon10Click(Sender: TObject);
    procedure SpedButon11Click(Sender: TObject);
    procedure SpedButon12Click(Sender: TObject);
    procedure SpedButon13Click(Sender: TObject);
    procedure SpedButon14Click(Sender: TObject);
    procedure SpedButon15Click(Sender: TObject);
    procedure SpedButon16Click(Sender: TObject);
    procedure Img1Click(Sender: TObject);
    procedure Img2Click(Sender: TObject);
    procedure Img3Click(Sender: TObject);
    procedure Img4Click(Sender: TObject);
    procedure Img5Click(Sender: TObject);
    procedure Img6Click(Sender: TObject);
    procedure Img7Click(Sender: TObject);
    procedure Img8Click(Sender: TObject);
    procedure Img9Click(Sender: TObject);
    procedure Img10Click(Sender: TObject);
    procedure Img11Click(Sender: TObject);
    procedure Img12Click(Sender: TObject);
    procedure Img13Click(Sender: TObject);
    procedure Img14Click(Sender: TObject);
    procedure Img15Click(Sender: TObject);
    procedure Img16Click(Sender: TObject);
  private
    { Private declarations }
  public
    Luz:integer;
    { Public declarations }
  end;

var
  FrmDados_esta_Tabel: TFrmDados_esta_Tabel;

implementation

uses UTipo_Poeta, UBibi_Machado_Assis, UMilton_Nascimento, ULino_Guedes,
  UGilberto_Gil, UNotas_Poesias, UTipos_Poemas, ULoggo;

{$R *.dfm}

procedure TFrmDados_esta_Tabel.feito(Sender: TObject);
Begin

FrmDados_esta_Tabel.Color:= clBtnText;
FrmDados_esta_Tabel.Font.Name:='Times New Roman';
FrmDados_esta_Tabel.Font.Color:=clWhite;
FrmDados_esta_Tabel.Font.Style:=[fsItalic,fsbold];
FrmDados_esta_Tabel.Font.Size:=10;

End;
procedure TFrmDados_esta_Tabel.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if luz=2 then
 Begin
  FrmGilberto_Gil.show;
  FrmDados_esta_Tabel.Hide;

 End;
end;

procedure TFrmDados_esta_Tabel.inicio();
Begin

FrmDados_esta_Tabel.Img1.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img2.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img3.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img4.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img5.Picture.LoadFromFile(caminho+'icons\clipboard.ico');

FrmDados_esta_Tabel.Img6.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img7.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img8.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img9.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img10.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img11.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img12.Picture.LoadFromFile(caminho+'icons\clipboard.ico');

FrmDados_esta_Tabel.Img13.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img14.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img15.Picture.LoadFromFile(caminho+'icons\clipboard.ico');
FrmDados_esta_Tabel.Img16.Picture.LoadFromFile(caminho+'icons\clipboard.ico');



End;

procedure TFrmDados_esta_Tabel.Nome();
Begin

FrmDados_esta_Tabel.SpedButon01.Caption:='A Bruxa de Mentira';
FrmDados_esta_Tabel.SpedButon02.Caption:='A Morte';
FrmDados_esta_Tabel.SpedButon03.Caption:='A Paz';
FrmDados_esta_Tabel.SpedButon04.Caption:='Aboio';
FrmDados_esta_Tabel.SpedButon05.Caption:='Academia';
FrmDados_esta_Tabel.SpedButon06.Caption:='Algum Dia';
FrmDados_esta_Tabel.SpedButon07.Caption:='Aquarela do Brasil';
FrmDados_esta_Tabel.SpedButon08.Caption:='Aquele Abraço';
FrmDados_esta_Tabel.SpedButon09.Caption:='Baião Atemporal';
FrmDados_esta_Tabel.SpedButon10.Caption:='Balé de Berlim';
FrmDados_esta_Tabel.SpedButon11.Caption:='Bananeira';
FrmDados_esta_Tabel.SpedButon12.Caption:='Beira Mar';
FrmDados_esta_Tabel.SpedButon13.Caption:='Buda Nagô';
FrmDados_esta_Tabel.SpedButon14.Caption:='Casinha Feliz';
FrmDados_esta_Tabel.SpedButon15.Caption:='Corações a Mil';
FrmDados_esta_Tabel.SpedButon16.Caption:='Feiticeira';



End;


procedure TFrmDados_esta_Tabel.SpedButonProximoClick(Sender: TObject);
begin
FrmDados_esta_Tabel.CloseQuery;
end;

procedure TFrmDados_esta_Tabel.SpedButon01Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\A Bruxa de Mentira.ini');
        FrmNotas_Poesias.Sna:=12;
       end;
End;

procedure TFrmDados_esta_Tabel.SpedButon02Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\A Morte.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon03Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\A Paz.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon04Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Aboio.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon05Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Academia.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon06Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Algum Dia.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon07Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Aquarela do Brasil.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon08Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Aquele Abraço.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon09Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Baião Atemporal.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon10Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Balé de Berlim.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon11Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Bananeira.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon12Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Beira Mar.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon13Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Buda Nagô.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon14Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Casinha Feliz.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon15Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Corações a Mil.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.SpedButon16Click(Sender: TObject);
begin
     if Luz = 2 then
       Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmDados_esta_Tabel.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho+'Musikins\Gilberto\Feiticeira.ini');
        FrmNotas_Poesias.Sna:=12;
       end;

end;

procedure TFrmDados_esta_Tabel.Img1Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon01Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img2Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon02Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img3Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon03Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img4Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon04Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img5Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon05Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img6Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon06Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img7Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon07Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img8Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon08Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img9Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon09Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img10Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon10Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img11Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon11Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img12Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon12Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img13Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon13Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img14Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon14Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img15Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon15Click(nil);
end;

procedure TFrmDados_esta_Tabel.Img16Click(Sender: TObject);
begin
FrmDados_esta_Tabel.SpedButon16Click(nil);
end;

end.
