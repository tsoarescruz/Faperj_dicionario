unit UTipos_Poemas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Shellapi;

type
  TFrmTipos_Poemas = class(TForm)
    SpedButonMosca_Azul: TSpeedButton;
    SpedButonCarolina: TSpeedButton;
    SpedButonCirculo: TSpeedButton;
    SpedButonReliquia_intima: TSpeedButton;
    ImgMosca_Azul: TImage;
    ImgCarolina: TImage;
    ImgCircule: TImage;
    ImgReliq: TImage;
    Img01: TImage;
    Img02: TImage;
    Img03: TImage;
    Img04: TImage;
    ImgFlor: TImage;
    Img05: TImage;
    Img06: TImage;
    ImgLegista: TImage;
    Img07: TImage;
    ImgSenhora: TImage;
    Img08: TImage;
    ImgMocidade: TImage;
    SpedButonFlor_Embirocu: TSpeedButton;
    SpedButonLegista: TSpeedButton;
    SpedButonCriatura: TSpeedButton;
    SpedButonMocidade: TSpeedButton;
    SpedButonHoras: TSpeedButton;
    Img09: TImage;
    ImgHoras: TImage;
    SpedButonLivros: TSpeedButton;
    Img10: TImage;
    ImgLivro: TImage;
    ImgMenina: TImage;
    Img11: TImage;
    SpedButonMoca: TSpeedButton;
    SpedButonAlto: TSpeedButton;
    ImgAlto: TImage;
    Img12: TImage;
    SpedButonDilu: TSpeedButton;
    Img13: TImage;
    ImgDiluvio: TImage;
    SpedButonHori: TSpeedButton;
    Img14: TImage;
    ImgHori: TImage;
    ImgNatal: TImage;
    Img15: TImage;
    SpedButonNatal: TSpeedButton;
    SpedButonStella: TSpeedButton;
    ImgStella: TImage;
    Img16: TImage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    Procedure feito(Sender: TObject);
    procedure Img01Click(Sender: TObject);
    procedure Img02Click(Sender: TObject);
    procedure Img03Click(Sender: TObject);
    procedure Img04Click(Sender: TObject);
    procedure ImgMosca_AzulClick(Sender: TObject);
    procedure ImgCarolinaClick(Sender: TObject);
    procedure ImgCirculeClick(Sender: TObject);
    procedure ImgReliqClick(Sender: TObject);
    procedure SpedButonMosca_AzulClick(Sender: TObject);
    procedure SpedButonCarolinaClick(Sender: TObject);
    procedure SpedButonCirculoClick(Sender: TObject);
    procedure SpedButonReliquia_intimaClick(Sender: TObject);
    procedure SpedButonFlor_EmbirocuClick(Sender: TObject);
    procedure SpedButonLegistaClick(Sender: TObject);
    procedure SpedButonCriaturaClick(Sender: TObject);
    procedure SpedButonMocidadeClick(Sender: TObject);
    procedure SpedButonHorasClick(Sender: TObject);
    procedure SpedButonLivrosClick(Sender: TObject);
    procedure SpedButonMocaClick(Sender: TObject);
    procedure SpedButonAltoClick(Sender: TObject);
    procedure SpedButonDiluClick(Sender: TObject);
    procedure SpedButonHoriClick(Sender: TObject);
    procedure SpedButonNatalClick(Sender: TObject);
    procedure SpedButonStellaClick(Sender: TObject);
    procedure ImgFlorClick(Sender: TObject);
    procedure ImgLegistaClick(Sender: TObject);
    procedure ImgSenhoraClick(Sender: TObject);
    procedure ImgMocidadeClick(Sender: TObject);
    procedure ImgHorasClick(Sender: TObject);
    procedure ImgLivroClick(Sender: TObject);
    procedure ImgMeninaClick(Sender: TObject);
    procedure ImgAltoClick(Sender: TObject);
    procedure ImgDiluvioClick(Sender: TObject);
    procedure ImgHoriClick(Sender: TObject);
    procedure ImgNatalClick(Sender: TObject);
    procedure ImgStellaClick(Sender: TObject);
  private
    { Private declarations }
  public
   Poe:integer;
    { Public declarations }
  end;

var
  FrmTipos_Poemas: TFrmTipos_Poemas;

implementation

uses UPrincipal, UNotas_Poesias, UMenu_Poemas_Poesias, UMenu,
  UMachado_Assis, UMilton_Nascimento, ULoggo;

{$R *.dfm}

procedure TFrmTipos_Poemas.ImgCarolinaClick(Sender: TObject);
begin
      if Poe=1 then
      Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\Carolina.txt');
      FrmNotas_Poesias.Sna:=1;
      End;
End;

procedure TFrmTipos_Poemas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Begin
        if Poe=1 then
        Begin
        FrmMachado_Assis.Show;
        FrmTipos_Poemas.Hide;
        End Else
        if Poe=2 then
        Begin
        FrmMilton_Nascimento.show;
        FrmTipos_Poemas.Hide;
        End;
End;


procedure TFrmTipos_Poemas.FormActivate(Sender: TObject);
Begin
        FrmTipos_Poemas.Color:=clBtnText;
        FrmTipos_Poemas.Font.Name:='Times New Roman';
        FrmTipos_Poemas.Font.Color:=clWhite;
        FrmTipos_Poemas.Font.Style:=[fsItalic,fsBold];
        FrmTipos_Poemas.Font.Size:=10;
End;

procedure TFrmTipos_Poemas.feito(Sender: TObject);
Begin

ImgMosca_Azul.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');  //Img01.Picture.LoadFromFile(caminho + 'icons\media Player2.ico');
ImgCarolina.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');    //Img02.Picture.LoadFromFile(caminho + 'icons\media Player2.ico');
ImgCircule.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');     //Img03.Picture.LoadFromFile(caminho + 'icons\media Player2.ico');
ImgReliq.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');       //Img04.Picture.LoadFromFile(caminho + 'icons\media Player2.ico');
ImgLegista.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgSenhora.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgMocidade.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgHoras.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgFlor.Picture.LoadFromFile(caminho + 'icons\clipboard.ico');
ImgLivro.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgMenina.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgAlto.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgDiluvio.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgHori.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgNatal.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
ImgStella.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');

End;
procedure TFrmTipos_Poemas.Img01Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Musikins\Poesias\Machado\A Mosca Azul.mp3'),
            		    nil,nil,sw_Shownormal);

end;

procedure TFrmTipos_Poemas.Img02Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Musikins\Poesias\Machado\carolina.mp3'),
            		    nil,nil,sw_Shownormal);
end;

procedure TFrmTipos_Poemas.Img03Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Musikins\Poesias\Machado\círculo.mp3'),
            		    nil,nil,sw_Shownormal);
end;

procedure TFrmTipos_Poemas.Img04Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Musikins\Poesias\Machado\Relíquia.mp3'),
            		    nil,nil,sw_Shownormal);

end;

procedure TFrmTipos_Poemas.ImgMosca_AzulClick(Sender: TObject);
begin
      if Poe=1 then
      Begin
        FrmTipos_Poemas.SpedButonMosca_AzulClick(nil);
      end;
end;

procedure TFrmTipos_Poemas.ImgCirculeClick(Sender: TObject);
begin
      if Poe=1 then
      Begin
        FrmTipos_Poemas.SpedButonCirculoClick(nil);
      End;

end;

procedure TFrmTipos_Poemas.ImgReliqClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
     FrmTipos_Poemas.SpedButonReliquia_intimaClick(nil);
    end;
end;

procedure TFrmTipos_Poemas.SpedButonMosca_AzulClick(Sender: TObject);
begin
      if Poe=1 then
      Begin
        Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
        FrmNotas_Poesias.feito(nil);
        FrmTipos_Poemas.Hide;
        FrmNotas_Poesias.show;
        FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\A Mosca Azul.ini');
        FrmNotas_Poesias.Sna:=1;
       end;

end;

procedure TFrmTipos_Poemas.SpedButonCarolinaClick(Sender: TObject);
begin
      if Poe=1 then
      Begin
      FrmTipos_Poemas.SpedButonCarolinaClick(nil);
      End;

end;

procedure TFrmTipos_Poemas.SpedButonCirculoClick(Sender: TObject);
begin
      if Poe=1 then
      Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\Círculo Vicioso.ini');
      FrmNotas_Poesias.Sna:=1;
      End;

end;

procedure TFrmTipos_Poemas.SpedButonReliquia_intimaClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\Relíquia íntima.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonFlor_EmbirocuClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\A FLOR DO EMBIROÇU.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonLegistaClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\A UM LEGISTA.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonCriaturaClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\UMA CRIATURA.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonMocidadeClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\FLOR DA MOCIDADE.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonHorasClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\HORAS VIVAS.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonLivrosClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\LIVROS E FLORES.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonMocaClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\MENINA E MOÇA.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonAltoClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\NO ALTO.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonDiluClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\O DILÚVIO.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonHoriClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\OS DOIS HORIZONTES.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonNatalClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\SONETO DE NATAL.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.SpedButonStellaClick(Sender: TObject);
begin
     if Poe=1 then
     Begin
      Application.CreateForm(TFrmNotas_Poesias, FrmNotas_Poesias);
      FrmNotas_Poesias.feito(nil);
      FrmTipos_Poemas.Hide;
      FrmNotas_Poesias.show;
      FrmNotas_Poesias.MemBloc_Notas.Lines.LoadFromFile(caminho + 'Poemas\Machado de Assis\STELLA.ini');
      FrmNotas_Poesias.Sna:=1;
 end;

end;

procedure TFrmTipos_Poemas.ImgFlorClick(Sender: TObject);
begin
if poe=1 then
Begin
    FrmTipos_Poemas.SpedButonFlor_EmbirocuClick(nil);

End;
end;

procedure TFrmTipos_Poemas.ImgLegistaClick(Sender: TObject);
begin
if poe=1 then
Begin
   FrmTipos_Poemas.SpedButonLegistaClick(nil);
End;
end;

procedure TFrmTipos_Poemas.ImgSenhoraClick(Sender: TObject);
begin
if poe=1 then
Begin
FrmTipos_Poemas.SpedButonCriaturaClick(nil);
end;
end;

procedure TFrmTipos_Poemas.ImgMocidadeClick(Sender: TObject);
begin
if Poe=1 then
begin
    FrmTipos_Poemas.SpedButonMocidadeClick(nil);

end;
end;

procedure TFrmTipos_Poemas.ImgHorasClick(Sender: TObject);
begin
   if poe=1 then
   Begin
   FrmTipos_Poemas.SpedButonHorasClick(nil);
   End;

   end;

procedure TFrmTipos_Poemas.ImgLivroClick(Sender: TObject);
begin
if poe=1 then
Begin
    FrmTipos_Poemas.SpedButonLivrosClick(nil);

End;
end;

procedure TFrmTipos_Poemas.ImgMeninaClick(Sender: TObject);
begin
if poe=1 then
Begin
    FrmTipos_Poemas.SpedButonMocaClick(nil);

End;
end;

procedure TFrmTipos_Poemas.ImgAltoClick(Sender: TObject);
begin
if Poe = 1 then
begin
    FrmTipos_Poemas.SpedButonAltoClick(nil);

End;
end;

procedure TFrmTipos_Poemas.ImgDiluvioClick(Sender: TObject);
begin
 if Poe = 1 then
 Begin
     FrmTipos_Poemas.SpedButonDiluClick(nil);

 End;
end;

procedure TFrmTipos_Poemas.ImgHoriClick(Sender: TObject);
begin
if Poe = 1 then
Begin
    FrmTipos_Poemas.SpedButonHoriClick(nil);
End;
end;

procedure TFrmTipos_Poemas.ImgNatalClick(Sender: TObject);
begin
if Poe =1 then
Begin
    FrmTipos_Poemas.SpedButonNatalClick(nil);
End;
end;

procedure TFrmTipos_Poemas.ImgStellaClick(Sender: TObject);
begin
if Poe =1 then
Begin
    FrmTipos_Poemas.SpedButonStellaClick(nil);
End;
end;

end.
