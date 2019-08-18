unit UMidias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons,  Shellapi;

type
  TFrmMidias = class(TForm)
    SpedButon01: TSpeedButton;
    Img01: TImage;
    SpedButon02: TSpeedButton;
    SpedButon03: TSpeedButton;
    Img02: TImage;
    Img03: TImage;
    SpedButon04: TSpeedButton;
    SpedButon05: TSpeedButton;
    SpedButon06: TSpeedButton;
    Img04: TImage;
    Img05: TImage;
    Img06: TImage;
    SpedButon07: TSpeedButton;
    SpedButon08: TSpeedButton;
    Img07: TImage;
    Img08: TImage;
    SpedButon09: TSpeedButton;
    SpedButon010: TSpeedButton;
    Img09: TImage;
    Img010: TImage;
    SpedButon011: TSpeedButton;
    Img011: TImage;
    SpedButon012: TSpeedButton;
    Img012: TImage;
    procedure SpedButonJogosClick(Sender: TObject);
    procedure SpedButonSlideClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButon01Click(Sender: TObject);
    procedure SpedButon02Click(Sender: TObject);
    procedure SpedButon03Click(Sender: TObject);
    procedure SpedButon04Click(Sender: TObject);
    procedure SpedButon05Click(Sender: TObject);
    procedure SpedButon06Click(Sender: TObject);
    procedure SpedButon07Click(Sender: TObject);
    procedure SpedButon08Click(Sender: TObject);
    procedure SpedButon09Click(Sender: TObject);
    procedure SpedButon010Click(Sender: TObject);
    procedure SpedButon011Click(Sender: TObject);
    procedure SpedButon012Click(Sender: TObject);
  private
    { Private declarations }
  public
    Maps:integer;
    { Public declarations }
  end;

var
  FrmMidias: TFrmMidias;

implementation

uses
UJogos, USlide, UMenu, UDados_Estatis, UMapa, ULoggo;

{$R *.dfm}

procedure TFrmMidias.SpedButonJogosClick(Sender: TObject);
begin
Application.CreateForm(TFrmJogo,  FrmJogo);
 FrmJogo.show;
  FrmMidias.Hide;

end;

procedure TFrmMidias.SpedButonSlideClick(Sender: TObject);
begin
//Application.CreateForm(TFrmDicionario_pop_up, FrmDicionario_pop_up);
//FrmDicionario_pop_up.Show;
//FrmMidias.hide;
end;

procedure TFrmMidias.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
      if Maps=4 then
      Begin
     FrmDados_esta.Show;
     FrmMidias.hide;

      End;
end;

procedure TFrmMidias.SpedButon01Click(Sender: TObject);
begin
if maps=4 then
        Begin
        {Application.CreateForm(TFrmMapa,  FrmMapa);
        FrmMapa.sfe.Movie:= caminho + 'graf_01.swf';
        FrmMapa.maps:=4;
        FrmMapa.Caption:='Gráfico 01';
        FrmMapa.Width:=740;
        FrmMapa.Height:=680;
        FrmMapa.sfe.Width:=709;
        FrmMapa.sfe.Height:=650;
        FrmMapa.sfe.Play;
        FrmMapa.show;
        FrmMidias.Hide;}

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 01.html'),
            		    nil,nil,sw_Shownormal);

        End;
end;

procedure TFrmMidias.SpedButon02Click(Sender: TObject);
begin
if maps=4 then
        Begin
        {Application.CreateForm(TFrmMapa,  FrmMapa);
        FrmMapa.sfe.Movie:= caminho +'graf_02.swf';
        FrmMapa.Caption:='Gráfico 02';
        FrmMapa.Width:=740;
        FrmMapa.Height:=680;
        FrmMapa.sfe.Width:=709;
        FrmMapa.sfe.Height:=650;
        FrmMapa.maps:=4;
        FrmMapa.sfe.Play;
        FrmMapa.show;
        FrmMidias.Hide;}
ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 02.html'),
            		    nil,nil,sw_Shownormal);
        End;
end;

procedure TFrmMidias.SpedButon03Click(Sender: TObject);
begin
if maps=4 then
        Begin
    ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 03.html'),
    		    nil,nil,sw_Shownormal);

        End;
end;

procedure TFrmMidias.SpedButon04Click(Sender: TObject);
begin
if maps=4 then
        Begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 04.html'),
            		    nil,nil,sw_Shownormal);
end;
End;

procedure TFrmMidias.SpedButon05Click(Sender: TObject);
begin
if maps=4 then
        Begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 05.html'),
            		    nil,nil,sw_Shownormal);
       End;
end;

procedure TFrmMidias.SpedButon06Click(Sender: TObject);
begin
Begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 06.html'),
            		    nil,nil,sw_Shownormal);
End;
end;

procedure TFrmMidias.SpedButon07Click(Sender: TObject);
begin
Begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 07.html'),
            		    nil,nil,sw_Shownormal);
End;
end;

procedure TFrmMidias.SpedButon08Click(Sender: TObject);
begin
Begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 08.html'),
            		    nil,nil,sw_Shownormal);
End;

end;

procedure TFrmMidias.SpedButon09Click(Sender: TObject);
begin
Begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 09.html'),
            		    nil,nil,sw_Shownormal);
End;

end;

procedure TFrmMidias.SpedButon010Click(Sender: TObject);
begin
Begin

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 010.html'),
            		    nil,nil,sw_Shownormal);
End;

end;

procedure TFrmMidias.SpedButon011Click(Sender: TObject);
begin
Begin

//ShellExecute(Handle,nil,PChar(caminho + 'Páginas\Gráfico 011.html'),
//            		    nil,nil,sw_Shownormal);

ShellExecute(Handle,nil,PChar(caminho +'Páginas\Gráfico 012.html'),
            		    nil,nil,sw_Shownormal);

End;

end;

procedure TFrmMidias.SpedButon012Click(Sender: TObject);
begin
Begin

End;

end;

end.

