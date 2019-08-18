unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Shellapi, OleCtrls,
  ShockwaveFlashObjects_TLB, MPlayer, Menus;

type
  TFrmMenu = class(TForm)
    Timer1: TTimer;
    sfe: TShockwaveFlash;
    LbMenu: TLabel;
    Beve: TBevel;
    SpedButonDicionario: TSpeedButton;
    SpedButonDicionario_Religioso: TSpeedButton;
    SpedButonJogos: TSpeedButton;
    SpedButonLiteratura: TSpeedButton;
    SpedButonPagina: TSpeedButton;
    SpedButonDados_Estatcs: TSpeedButton;
    SpedButonConfig: TSpeedButton;
    ImgConfing: TImage;
    ImgDados_Estatisticos: TImage;
    ImgNet: TImage;
    ImgPoesia_Poetas: TImage;
    ImgMedia_Player: TImage;
    ImgLivro_2: TImage;
    ImgLivro: TImage;
    ImgBrasil_Band: TImage;
    LblData: TLabel;
    LblHora: TLabel;
    LblDia: TLabel;
    ImgAsp_01: TImage;
    LblT_04: TLabel;
    LblT_03: TLabel;
    Label1: TLabel;
    LblT_02: TLabel;
    LblT_01: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ImgAsp_02: TImage;
    ImgAjuda: TImage;
    SpedButonAjuda: TSpeedButton;
    SpedButonCreditos: TSpeedButton;
    media: TMediaPlayer;
    lblmusik: TLabel;
    SpedButonLivros_refe: TSpeedButton;
    ImgCredito: TImage;
    ImgRefe: TImage;
    PopupMenu: TPopupMenu;
    Dicionrio1: TMenuItem;
    Religioso1: TMenuItem;
    Jogos1: TMenuItem;
    Literatura1: TMenuItem;
    Pgina1: TMenuItem;
    Dados1: TMenuItem;
    Ajuda1: TMenuItem;
    Crditos1: TMenuItem;
    LivrosdeReferncia1: TMenuItem;
    Configuraes1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ImgShockWave: TImage;
    ImgPrev: TImage;
    ImgNext: TImage;
    ImgPlay: TImage;
    procedure SpedButonDicionario_ReligiosoClick(Sender: TObject);
    procedure SpedButonDicionarioClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonLiteraturaClick(Sender: TObject);
    procedure SpedButonJogosClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpedButonPaginaClick(Sender: TObject);
    procedure SpedButonDados_EstatcsClick(Sender: TObject);
    procedure SpedButonConfigClick(Sender: TObject);
    procedure SpedButonAjudaClick(Sender: TObject);
    procedure SpedButonCreditosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Musical;
    Procedure inicializa;
    procedure SpedButonLivros_refeClick(Sender: TObject);
    procedure Dicionrio1Click(Sender: TObject);
    procedure Religioso1Click(Sender: TObject);
    procedure Jogos1Click(Sender: TObject);
    procedure Literatura1Click(Sender: TObject);
    procedure Pgina1Click(Sender: TObject);
    procedure Dados1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure Crditos1Click(Sender: TObject);
    procedure LivrosdeReferncia1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure ImgShockWaveClick(Sender: TObject);
    procedure ImgShockWaveMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgNetClick(Sender: TObject);
    procedure ImgLivroClick(Sender: TObject);
    procedure ImgLivro_2Click(Sender: TObject);
    procedure ImgMedia_PlayerClick(Sender: TObject);
    procedure ImgPoesia_PoetasClick(Sender: TObject);
    procedure ImgDados_EstatisticosClick(Sender: TObject);
    procedure ImgAjudaClick(Sender: TObject);
    procedure ImgCreditoClick(Sender: TObject);
    procedure ImgRefeClick(Sender: TObject);
    procedure ImgConfingClick(Sender: TObject);
    procedure ImgPrevClick(Sender: TObject);
    procedure ImgNextClick(Sender: TObject);
    procedure ImgPlayClick(Sender: TObject);
  private
    { Private declarations }
  public
    Mus:string[80];
    Tatu:integer;
    Tod:integer;

    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;
  musikinha: array [0..29] of String;
  musik:string='';
  musi:integer;
  Muka:boolean=true; // Variável de Inicio da música

implementation

uses UPricipal_Religiao, UPrincipal, UMenu_Poemas_Poesias,
 UJogos, ULoggo, UDados, UConfing, UTipo_Midia, UMedia_Musikas,
  UGame_Intera;

{$R *.dfm}

procedure TFrmMenu.SpedButonDicionario_ReligiosoClick(Sender: TObject);
begin
   Application.CreateForm(TFrmPrincipal_Religiao, FrmPrincipal_Religiao);
   FrmPrincipal_Religiao.feito(nil);
   FrmPrincipal_Religiao.Nate:=0;
   FrmPrincipal_Religiao.activo;
   FrmPrincipal_Religiao.showmodal;
end;

procedure TFrmMenu.SpedButonDicionarioClick(Sender: TObject);
begin
   Application.CreateForm(TFrmPrincipal, FrmPrincipal);
   FrmPrincipal.feito;
   FrmPrincipal.Nate:=0;
   FrmPrincipal.activo;
   FrmPrincipal.fec:=0;
   FrmPrincipal.ShowModal;
 end;

procedure TFrmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
        Application.Terminate;
end;

procedure TFrmMenu.SpedButonLiteraturaClick(Sender: TObject);
begin
   Application.CreateForm(TFrmLiteratura, FrmLiteratura);
   FrmLiteratura.ImgOrixas.Picture.LoadFromFile(caminho + 'icons\People.ico');
   FrmLiteratura.ImgPoetas.Picture.LoadFromFile(caminho + 'icons\Music.ico');
   FrmLiteratura.showmodal;
end;

procedure TFrmMenu.SpedButonJogosClick(Sender: TObject);
begin
{Application.CreateForm(TFrmGame_Intera, FrmGame_Intera);
FrmGame_Intera.Timer.Enabled:=True;
FrmGame_Intera.show; // Desativado pois era um form agregado para amostra //}

 Application.CreateForm(TFrmJogo, FrmJogo);
 FrmJogo.tatu:=FrmMenu.Tatu;
// FrmGame_Intera.Timer.Destroy;
// FrmGame_Intera.sfe.Destroy;
// FrmGame_Intera.destroy;
 FrmJogo.Show;

end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
var
   nrdia: Integer;
   diasemana: array[1..7] of String;
   dia, mes, ano: Word;

begin
   LblData.Caption:=DatetoStr(Date);
   LblHora.Caption:=TimetoStr(Time);

   diasemana[1]:= 'Domingo';
   diasemana[2]:= 'Segunda-feira';
   diasemana[3]:= 'Terça-feira';
   diasemana[4]:= 'Quarta-feira';
   diasemana[5]:= 'Quinta-feira';
   diasemana[6]:= 'Sexta-feira';
   diasemana[7]:= 'Sábado';
   DecodeDate(DATE,ano,mes,dia);
   nrdia:= DayOfWeek(DATE);
   LblDia.Caption:= diasemana[nrdia];

end;

procedure TFrmMenu.SpedButonPaginaClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Páginas\Index.html'),
            		    nil,nil,sw_Shownormal);

end;

procedure TFrmMenu.SpedButonDados_EstatcsClick(Sender: TObject);
begin
   Application.CreateForm(TFrmDados, FrmDados);
   FrmDados.feito(nil);
   FrmDados.showmodal;
end;

procedure TFrmMenu.SpedButonConfigClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConfiguracoes, FrmConfiguracoes);
   FrmConfiguracoes.feito;
   FrmConfiguracoes.inicio;
   FrmConfiguracoes.showmodal;

   end;
procedure TFrmMenu.SpedButonAjudaClick(Sender: TObject);
begin
//WinHelp(FrmMenu.Handle,'Ajuda.hlp',HELP_CONTENTS,0);
ShellExecute(Handle,nil,PChar(caminho + 'Ajuda.hlp'),nil,nil,sw_Shownormal);
end;

procedure TFrmMenu.SpedButonCreditosClick(Sender: TObject);
begin
//FrmMenu.tod :=0;
//FrmMenu.ImgPlayClick(nil);

ShellExecute(Handle,nil,PChar(caminho + 'Páginas\Créditos.html'),
            		    nil,nil,sw_Shownormal);
end;

procedure TFrmMenu.FormCreate(Sender: TObject);
begin
   Tod:=0;
   FrmMenu.Color:= clBtnText;
   FrmMenu.Font.Color:=clWhite;
   FrmMenu.Font.Style:=[fsItalic];
   FrmMenu.Font.Size:=10;
   FrmMenu.Font.Name:='Times New Roman';
   FrmMenu.LbMenu.Font.Color:=clred;
   FrmMenu.LbMenu.Font.Style:=[fsBold,fsItalic];

   sfe.Movie := ExtractFilePath(Application.ExeName) + 'Páginas\Pop127_Acervo_Mem04_Modificado.swf';
   sfe.Play;

   ImgPlay.Picture.LoadFromFile(Caminho+'icons\stop.jpg');
   ImgNext.Picture.LoadFromFile(caminho+'icons\next.jpg');
   ImgPrev.Picture.LoadFromFile(caminho+'icons\prev.jpg');

   FrmMenu.ImgLivro.Picture.LoadFromFile(caminho + 'icons\ADDRESS.ico');
   FrmMenu.ImgLivro_2.Picture.LoadFromFile(caminho + 'icons\ADDRESS.ico');
   FrmMenu.ImgMedia_Player.Picture.LoadFromFile(caminho + 'icons\GAMES.ico');
   FrmMenu.ImgPoesia_Poetas.Picture.LoadFromFile(caminho + 'icons\Music.ico');
   FrmMenu.ImgNet.Picture.LoadFromFile(caminho + 'icons\IE XP5.ico');
   FrmMenu.ImgDados_Estatisticos.Picture.LoadFromFile(caminho + 'icons\Icon_167.ico');
   FrmMenu.ImgConfing.Picture.LoadFromFile(caminho + 'icons\Control Panel.ico');
   FrmMenu.ImgBrasil_Band.Picture.LoadFromFile(caminho + 'icons\Brasil_Band_img.JPG');
   FrmMenu.ImgAsp_01.Picture.LoadFromFile(caminho + 'icons\Asp_01.jpg');
   FrmMenu.ImgAsp_02.Picture.LoadFromFile(caminho + 'icons\Asp_02.jpg');
   FrmMenu.ImgAjuda.Picture.LoadFromFile(caminho + 'icons\help.ico');
   FrmMenu.ImgCredito.Picture.LoadFromFile(caminho + 'icons\notes.ico');
   FrmMenu.ImgRefe.Picture.LoadFromFile(caminho + 'icons\notes.ico');
   FrmMenu.ImgShockWave.Picture.LoadFromFile(caminho+'icons\help_02.ico');

   if Muka=True then
  Begin
   ImgNext.Enabled:=True;
   ImgPrev.Enabled:=True;
   ImgPlay.Enabled:=True;
   inicializa;
//   Tatu:=0; // Troquei esta var de test se a música tah ativada p/ se tah tocando
  End Else
    if Muka=False then
  Begin
   ImgNext.Enabled:=False;
   ImgPrev.Enabled:=False;
   ImgPlay.Enabled:=False;
//   Tatu:=1;
  End;
    end;

Procedure TFrmMenu.musical;
Begin
  musikinha[0]:='01.MP3';
  musikinha[1]:='02.MP3';
  musikinha[2]:='03.MP3';
  musikinha[3]:='04.MP3';
  musikinha[4]:='05.MP3';
  musikinha[5]:='06.MP3';
  musikinha[6]:='07.MP3';
  musikinha[7]:='08.MP3';
  musikinha[8]:='09.MP3';
  musikinha[9]:='10.MP3';
  musikinha[10]:='11.MP3';
  musikinha[11]:='12.MP3';
  musikinha[12]:='13.MP3';
  musikinha[13]:='14.MP3';
  musikinha[14]:='15.MP3';
  musikinha[15]:='16.MP3';
  musikinha[16]:='17.MP3';
  musikinha[17]:='18.MP3';
  musikinha[18]:='19.MP3';
  musikinha[19]:='20.MP3';
  musikinha[20]:='21.MP3';
  musikinha[21]:='22.MP3';
  musikinha[22]:='23.MP3';
  musikinha[23]:='24.MP3';
  musikinha[24]:='25.MP3';
  musikinha[25]:='26.MP3';
  musikinha[26]:='27.MP3';
  musikinha[27]:='28.MP3';
  musikinha[28]:='29.MP3';
  musik:=musikinha[0];
End;

Procedure TFrmMenu.inicializa;
Begin
 musical;
 FrmMenu.Media.FileName:=caminho +'Páginas\Bate_Folha\'+musik;
 lblmusik.caption:=musik;
 FrmMenu.media.open;
 FrmMenu.media.Play;
End;


procedure TFrmMenu.SpedButonLivros_refeClick(Sender: TObject);
begin
FrmMenu.tod :=0;
//FrmMenu.ImgPlayClick(nil);
ShellExecute(Handle,nil,PChar(caminho + 'Páginas\Livros de Referência.html'),
            		    nil,nil,sw_Shownormal);

end;

procedure TFrmMenu.Dicionrio1Click(Sender: TObject);
begin
FrmMenu.SpedButonDicionarioClick(nil);
end;

procedure TFrmMenu.Religioso1Click(Sender: TObject);
begin
FrmMenu.SpedButonDicionario_ReligiosoClick(nil);
end;

procedure TFrmMenu.Jogos1Click(Sender: TObject);
begin
FrmMenu.SpedButonJogosClick(nil);
end;

procedure TFrmMenu.Literatura1Click(Sender: TObject);
begin
FrmMenu.SpedButonLiteraturaClick(nil);
end;

procedure TFrmMenu.Pgina1Click(Sender: TObject);
begin
FrmMenu.SpedButonPaginaClick(nil);
end;

procedure TFrmMenu.Dados1Click(Sender: TObject);
begin
FrmMenu.SpedButonDados_EstatcsClick(nil);
end;

procedure TFrmMenu.Ajuda1Click(Sender: TObject);
begin
FrmMenu.SpedButonAjudaClick(nil);
end;

procedure TFrmMenu.Crditos1Click(Sender: TObject);
begin
FrmMenu.SpedButonCreditosClick(nil);
end;

procedure TFrmMenu.LivrosdeReferncia1Click(Sender: TObject);
begin
FrmMenu.SpedButonLivros_refeClick(nil);
end;

procedure TFrmMenu.Configuraes1Click(Sender: TObject);
begin
FrmMenu.SpedButonConfigClick(nil);
end;

procedure TFrmMenu.ImgShockWaveClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'SUPORTE\FP7IE.exe'),
            		    nil,nil,sw_Shownormal);
FrmMenu.ImgShockWave.Picture.LoadFromFile('');
FrmMenu.ImgShockWave.hint:='';
FrmMenu.ImgShockWave.Cursor:=crDefault;
end;

procedure TFrmMenu.ImgShockWaveMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
ShowHint:=true;
end;

procedure TFrmMenu.ImgNetClick(Sender: TObject);
begin
FrmMenu.SpedButonPaginaClick(nil);
end;

procedure TFrmMenu.ImgLivroClick(Sender: TObject);
begin
FrmMenu.SpedButonDicionarioClick(nil);
end;

procedure TFrmMenu.ImgLivro_2Click(Sender: TObject);
begin
FrmMenu.SpedButonDicionario_ReligiosoClick(nil);
end;

procedure TFrmMenu.ImgMedia_PlayerClick(Sender: TObject);
begin
FrmMenu.SpedButonJogosClick(nil);
end;

procedure TFrmMenu.ImgPoesia_PoetasClick(Sender: TObject);
begin
FrmMenu.SpedButonLiteraturaClick(nil);
end;

procedure TFrmMenu.ImgDados_EstatisticosClick(Sender: TObject);
begin
FrmMenu.SpedButonDados_EstatcsClick(nil);
end;

procedure TFrmMenu.ImgAjudaClick(Sender: TObject);
begin
FrmMenu.SpedButonAjudaClick(nil);
end;

procedure TFrmMenu.ImgCreditoClick(Sender: TObject);
begin
FrmMenu.SpedButonCreditosClick(nil);
end;

procedure TFrmMenu.ImgRefeClick(Sender: TObject);
begin
FrmMenu.SpedButonLivros_refeClick(nil);
end;

procedure TFrmMenu.ImgConfingClick(Sender: TObject);
begin
FrmMenu.SpedButonConfigClick(nil);
end;

procedure TFrmMenu.ImgPrevClick(Sender: TObject);
begin
if tod=0 then
Begin
   media.Open;
   media.stop;
   media.close;
 If musi> 0 then
   musi:=musi-1
 Else musi:=28;
   musik:=musikinha[musi];
   media.filename:=caminho +'Páginas\Bate_Folha\'+musik;
   lblmusik.caption:=musik;
   media.Open;
   media.play;
end
else
if tod=1 then
Begin
// tod :=1;
 FrmMenu.ImgPlayClick(nil);
 musi:=musi;
 FrmMenu.ImgPrevClick(nil);
End;

end;

procedure TFrmMenu.ImgNextClick(Sender: TObject);
begin
if tod =0 then
Begin
 media.Open;
 media.stop;
 media.close;
  If musi< 28 then
   musi:=musi+1
  Else musi:=0;
 musik:=musikinha[musi];
 media.filename:=caminho +'Páginas\Bate_Folha\'+musik;
 lblmusik.caption:=musik;
 media.Open;
 media.play;
  end
else
if tod=1 then
  Begin
// tod :=1;
 FrmMenu.ImgPlayClick(nil);
 musi:=musi;
 FrmMenu.ImgNextClick(nil);
  End;

end;

procedure TFrmMenu.ImgPlayClick(Sender: TObject);
begin
 if tod =0 then   //Tocando
 Begin
 FrmMenu.media.Open;
 FrmMenu.media.Stop;
 FrmMenu.media.Close;
 ImgPlay.Picture.LoadFromFile(Caminho+'icons\show.jpg');
 tod:=1;
 Tatu:=0;
 end else

 if tod =1 then  //Parado
  Begin
  FrmMenu.media.Open;
  FrmMenu.media.Play;
 ImgPlay.Picture.LoadFromFile(Caminho+'icons\stop.jpg');
  tod:=0;
  Tatu:=1;
  End;

end;
End.

// carregar os videos Web.Navigate(ExtractFilePath(Application.ExeName) + 'Videos\07 Cruz e Souza - 56kbps.wmv');
