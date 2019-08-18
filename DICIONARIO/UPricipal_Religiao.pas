unit UPricipal_Religiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ExtCtrls, Menus, DB, ADODB, Grids,
  DBGrids, DBCtrls, Shellapi, OleCtrls, SHDocVw, jpeg;

type
  TFrmPrincipal_Religiao = class(TForm)
    BDMemSign: TDBMemo;
    DBGrid1: TDBGrid;
    edtbusca: TEdit;
    qrpesq: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    qrpesq2: TADOQuery;
    PrintDialog1: TPrintDialog;
    FontDialog1: TFontDialog;
    SaveDialog1: TSaveDialog;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Imprimir1: TMenuItem;
    Sair1: TMenuItem;
    Editar1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N2: TMenuItem;
    FontedoPrograma1: TMenuItem;
    rocardoPrograma1: TMenuItem;
    Ferramentas1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    Calculadora1: TMenuItem;
    Ajuda1: TMenuItem;
    Indice1: TMenuItem;
    Sobre1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ColorDialog1: TColorDialog;
    Bevel2: TBevel;
    Bevel1: TBevel;
    ImgFonte: TImage;
    ImgColor: TImage;
    ImgBlocoNotas: TImage;
    ImgCalc: TImage;
    ImgImpressao: TImage;
    ImgAjuda: TImage;
    Web: TWebBrowser;
    ImgPoup: TImage;
    PpDicionario_Reli: TPopupMenu;
    Menu1: TMenuItem;
    Imprimir2: TMenuItem;
    N1: TMenuItem;
    Sair2: TMenuItem;
    Editar2: TMenuItem;
    Recortar2: TMenuItem;
    Copiar2: TMenuItem;
    Colar2: TMenuItem;
    N5: TMenuItem;
    Fonte1: TMenuItem;
    Cor1: TMenuItem;
    Ferramentas2: TMenuItem;
    BlocodeNotas2: TMenuItem;
    Calculadora2: TMenuItem;
    Ajuda2: TMenuItem;
    ndice1: TMenuItem;
    Sobre2: TMenuItem;
    DicionrioReligioso1: TMenuItem;
    DicionrioReligioso2: TMenuItem;
    N4: TMenuItem;
    Jogos1: TMenuItem;
    Literatura1: TMenuItem;
    N6: TMenuItem;
    Pgina1: TMenuItem;
    Dados1: TMenuItem;
    N7: TMenuItem;
    Crditos1: TMenuItem;
    Configuraes1: TMenuItem;
    ModoPopup1: TMenuItem;
    ModoPopup2: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    LblHint: TLabel;
    procedure edtbuscaChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Sobre1Click(Sender: TObject);
    procedure ImgFonteClick(Sender: TObject);
    procedure ImgColorClick(Sender: TObject);
    procedure ImgImpressaoClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
//    procedure Salvar1Click(Sender: TObject);
//    procedure Abrir1Click(Sender: TObject);
    procedure FontedoPrograma1Click(Sender: TObject);
    procedure rocardoPrograma1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure BDMemSignChange(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure ImgBlocoNotasClick(Sender: TObject);
    procedure ImgSalvarClick(Sender: TObject);
    procedure ImgAbrirClick(Sender: TObject);
    procedure ImgCalcClick(Sender: TObject);
    procedure ImgAjudaClick(Sender: TObject);
    procedure feito(Sender: TObject);
    procedure Indice1Click(Sender: TObject);
    procedure activo();
    procedure ImgPoupClick(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Imprimir2Click(Sender: TObject);
    procedure Salvar2Click(Sender: TObject);
    procedure Abrir2Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Colar2Click(Sender: TObject);
    procedure Copiar2Click(Sender: TObject);
    procedure Recortar2Click(Sender: TObject);
    procedure BlocodeNotas2Click(Sender: TObject);
    procedure Calculadora2Click(Sender: TObject);
    procedure ndice1Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure DicionrioReligioso2Click(Sender: TObject);
    procedure Jogos1Click(Sender: TObject);
    procedure Literatura1Click(Sender: TObject);
    procedure Pgina1Click(Sender: TObject);
    procedure Dados1Click(Sender: TObject);
    procedure Crditos1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure BlocodeNotas1Click(Sender: TObject);
    procedure ModoPopup1Click(Sender: TObject);
    procedure ModoPopup2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgAbrirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgSalvarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgFonteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgColorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgBlocoNotasMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ImgCalcMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgImpressaoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgPoupMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgAjudaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    Sna,Nave,Nate:integer;
        { Public declarations }
  end;

var
  FrmPrincipal_Religiao: TFrmPrincipal_Religiao;

implementation

uses ULigBanco, UPrincipal, UAbout, UMenu, UNotas, UPaises, ULoggo;

{$R *.dfm}

procedure TFrmPrincipal_Religiao.edtbuscaChange(Sender: TObject);
Var sql, sql2:string;
Begin
sql:='select palavras from religiao where palavras like' + #39 + edtbusca.text + '%' + #39;
qrpesq.sql.Clear;
qrpesq.SQL.Add(sql);
qrpesq.Open;

qrpesq2.sql.clear;
sql2:='select significado from religiao where palavras like' + #39 + edtbusca.text + '%' + #39;
qrpesq2.sql.Add(sql2);
qrpesq2.Open;

if Nave = 0 then
Begin
Web.Destroy;
Nave:=1;
End;
End;

procedure TFrmPrincipal_Religiao.DBGrid1DblClick(Sender: TObject);
var sql2:string;
begin
qrpesq2.sql.clear;
sql2:='select significado from religiao where palavras =' + #39 + qrpesq['palavras'] + #39;
qrpesq2.sql.Add(sql2);
qrpesq2.Open;

if Nave = 0 then
Begin
Web.Destroy;
Nave:=1;
End;
End;

procedure TFrmPrincipal_Religiao.FormCloseQuery(Sender: TObject;
var CanClose: Boolean);
Begin
   dm.qrreligiao.Active:=False;
   qrpesq.Active:=False;
   FrmPrincipal_Religiao.Hide;
   FrmMenu.show;

End;

procedure TFrmPrincipal_Religiao.Sobre1Click(Sender: TObject);
begin
 Application.CreateForm(TAboutBox, AboutBox);
     AboutBox.showmodal;
end;

procedure TFrmPrincipal_Religiao.ImgFonteClick(Sender: TObject);
begin
      FontDialog1.Font:=FrmPrincipal_Religiao.Font;
    If FontDialog1.Execute then
    Begin
     FrmPrincipal_Religiao.Font:=FontDialog1.Font;
     FrmPrincipal_Religiao.edtbusca.Font:=FontDialog1.Font;

     FrmPrincipal_Religiao.edtbusca.Font.Name:='Times New Roman';
     FrmPrincipal_Religiao.edtbusca.Font.Style:=[fsBold,fsItalic];
     FrmPrincipal_Religiao.edtbusca.Font.Size:=10;

     FrmPrincipal_Religiao.LblHint.Font:=FontDialog1.Font;
     FrmPrincipal_Religiao.LblHint.Font.Size:=10;
     FrmPrincipal_Religiao.LblHint.Font.Name:='Times New Roman';
End;
     End;

procedure TFrmPrincipal_Religiao.ImgColorClick(Sender: TObject);
begin
 ColorDialog1.Color:=FrmPrincipal_Religiao.Color;
      if ColorDialog1.Execute then
     FrmPrincipal_Religiao.Color:=ColorDialog1.color;
end;

procedure TFrmPrincipal_Religiao.ImgImpressaoClick(Sender: TObject);
begin
    PrintDialog1.Execute;

end;

procedure TFrmPrincipal_Religiao.Imprimir1Click(Sender: TObject);
begin
    PrintDialog1.Execute;

end;

procedure TFrmPrincipal_Religiao.Sair1Click(Sender: TObject);
Begin
   FrmPrincipal_Religiao.CloseQuery;
End;

{procedure TFrmPrincipal_Religiao.Salvar1Click(Sender: TObject);
begin

  Try
     if SaveDialog1.Execute then
    Begin
   BDMemSign.Lines.SaveToFile(SaveDialog1.FileName);
    End;
  except on  EInOutError  do
   MessageDlg('Erro ao salvar o arquivo!', mtError, [mbyes,mbno], 0);
   end;
  end; }


{procedure TFrmPrincipal_Religiao.Abrir1Click(Sender: TObject);
begin

    Try
  if OpenDialog1.Execute then
    Begin
   FrmPrincipal_Religiao.BlocodeNotas1Click(nil);
   FrmNotas.MemBloc_Notas.Lines.LoadFromFile(OpenDialog1.FileName);

    End;
  except on  EInOutError  do
  MessageDlg('Erro ao Abrir o Arquivo!', mtError, [mbyes,mbno], 0);
 end;
end;}

procedure TFrmPrincipal_Religiao.FontedoPrograma1Click(Sender: TObject);
begin
      FontDialog1.Font:=FrmPrincipal_Religiao.Font;
    If FontDialog1.Execute then
      FrmPrincipal_Religiao.Font:=FontDialog1.Font;

end;

procedure TFrmPrincipal_Religiao.rocardoPrograma1Click(Sender: TObject);
begin
    ColorDialog1.Color:=FrmPrincipal_Religiao.Color;
      if ColorDialog1.Execute then
       FrmPrincipal_Religiao.Color:=ColorDialog1.color;

end;

procedure TFrmPrincipal_Religiao.Recortar1Click(Sender: TObject);
begin
      BDMemSign.CutToClipboard;

end;

procedure TFrmPrincipal_Religiao.Copiar1Click(Sender: TObject);
begin
    BDMemSign.CopyToClipboard;

end;

procedure TFrmPrincipal_Religiao.Colar1Click(Sender: TObject);
begin
     BDMemSign.PasteFromClipboard;

end;

procedure TFrmPrincipal_Religiao.Calculadora1Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar('calc.exe'),
            		    nil,nil,sw_Shownormal);

end;

procedure TFrmPrincipal_Religiao.BDMemSignChange(Sender: TObject);
begin
 Recortar1.Enabled:=True;
 Copiar1.Enabled:=True;
 Colar1.Enabled:=True;
end;

procedure TFrmPrincipal_Religiao.Image3Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar('calc.exe'),
            		    nil,nil,sw_Shownormal);

end;

procedure TFrmPrincipal_Religiao.ImgBlocoNotasClick(Sender: TObject);
begin
     Application.CreateForm(TFrmNotas, FrmNotas);
      FrmNotas.Sna:=2;
      FrmNotas.feito(nil);
     // FrmPrincipal_Religiao.Hide;
       FrmNotas.show;

end;

procedure TFrmPrincipal_Religiao.ImgSalvarClick(Sender: TObject);
begin
    if SaveDialog1.Execute then
    Begin
   BDMemSign.Lines.SaveToFile(SaveDialog1.FileName);

   End;

end;

procedure TFrmPrincipal_Religiao.ImgAbrirClick(Sender: TObject);
begin
      if OpenDialog1.Execute then
    Begin
    BDMemSign.Lines.LoadFromFile(Opendialog1.FileName);
      End;

end;

procedure TFrmPrincipal_Religiao.ImgCalcClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar('calc.exe'),
            		    nil,nil,sw_Shownormal);
end;

procedure TFrmPrincipal_Religiao.ImgAjudaClick(Sender: TObject);
Begin
FrmPrincipal_Religiao.Indice1Click(nil);
end;

procedure TFrmPrincipal_Religiao.feito(Sender: TObject);
Begin

   FrmPrincipal_Religiao.Color:=clBtnText;
   FrmPrincipal_Religiao.Font.Name:='Times New Roman';
   FrmPrincipal_Religiao.Font.Color:=clRed;
   FrmPrincipal_Religiao.Font.Style:=[fsBold,fsItalic];
   FrmPrincipal_Religiao.Font.Size:=8;

   FrmPrincipal_Religiao.edtbusca.Font.Name:='Times New Roman';
   FrmPrincipal_Religiao.edtbusca.Font.Style:=[fsBold,fsItalic];
   FrmPrincipal_Religiao.edtbusca.Font.Size:=10;

   Recortar1.Enabled:=False;
   Copiar1.Enabled:=False;
   Colar1.Enabled:=False;

 //  FrmPrincipal_Religiao.ImgAbrir.Picture.LoadFromFile(caminho + 'Icons\Closed Folder.ico');
 //  FrmPrincipal_Religiao.ImgSalvar.Picture.LoadFromFile(caminho + 'icons\My Downloads.ico');
 //  FrmPrincipal_Religiao.ImgFonte.Picture.LoadFromFile(caminho + 'icons\FONTE.ICO');
   FrmPrincipal_Religiao.ImgFonte.Picture.LoadFromFile(caminho + 'icons\28-Font Type.ico');
 //  FrmPrincipal_Religiao.ImgColor.Picture.LoadFromFile(caminho + 'icons\Icon_162.ICO');
   FrmPrincipal_Religiao.ImgColor.Picture.LoadFromFile(caminho + 'icons\Charts_2.ico');
   FrmPrincipal_Religiao.ImgPoup.Picture.LoadFromFile(caminho + 'icons\msn logo.ICO');
   FrmPrincipal_Religiao.ImgBlocoNotas.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
   FrmPrincipal_Religiao.ImgCalc.Picture.LoadFromFile(caminho + 'icons\calculator.ico');
   FrmPrincipal_Religiao.ImgImpressao.Picture.LoadFromFile(caminho + 'icons\printer.ico');
   FrmPrincipal_Religiao.ImgAjuda.Picture.LoadFromFile(caminho + 'icons\help.ico');

End;
procedure TFrmPrincipal_Religiao.Indice1Click(Sender: TObject);
begin
//WinHelp(FrmPrincipal_Religiao.Handle,'Ajuda.hlp',HELP_CONTENTS,0);
ShellExecute(Handle,nil,PChar(caminho + 'Ajuda.hlp'),nil,nil,sw_Shownormal);
end;

procedure TFrmPrincipal_Religiao.activo();
Begin

if Nate =0 then
Begin
dm.qrreligiao.Active:=True;
qrpesq.Active:=True;

Nave:= 0;
Web.Navigate(caminho + 'Páginas\Dic_Reli.html');
//Web.Navigate(ExtractFilePath(Application.ExeName) + 'Páginas\Dic_Reli.html');
End else

if Nate =1 then
Begin

dm.qrreligiao.Active:=True;
qrpesq.Active:=True;

End;
End;

procedure TFrmPrincipal_Religiao.ImgPoupClick(Sender: TObject);
begin
  Application.CreateForm(TFrmDicionario_Reli_Pop, FrmDicionario_Reli_Pop);
  FrmPrincipal_Religiao.Hide;
  FrmMenu.Hide;
  FrmDicionario_Reli_Pop.Naque:=0;
  FrmDicionario_Reli_Pop.feito;
  FrmDicionario_Reli_Pop.activo;
  FrmDicionario_Reli_Pop.edtbusca.Text:=FrmPrincipal_Religiao.edtbusca.Text;
  FrmDicionario_Reli_Pop.show;

end;

procedure TFrmPrincipal_Religiao.Sair2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.CloseQuery;
end;

procedure TFrmPrincipal_Religiao.Imprimir2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Imprimir1Click(nil);
end;

procedure TFrmPrincipal_Religiao.Salvar2Click(Sender: TObject);
begin
//FrmPrincipal_Religiao.Salvar1Click(nil);
end;

procedure TFrmPrincipal_Religiao.Abrir2Click(Sender: TObject);
begin
//FrmPrincipal_Religiao.Abrir1Click(nil);
end;

procedure TFrmPrincipal_Religiao.Cor1Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Cor1Click(nil);
end;

procedure TFrmPrincipal_Religiao.Fonte1Click(Sender: TObject);
begin
FrmPrincipal_Religiao.FontedoPrograma1Click(nil);
end;

procedure TFrmPrincipal_Religiao.Colar2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Colar1Click(nil);
end;

procedure TFrmPrincipal_Religiao.Copiar2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Copiar1Click(nil);
end;

procedure TFrmPrincipal_Religiao.Recortar2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Recortar1Click(nil);
end;

procedure TFrmPrincipal_Religiao.BlocodeNotas2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.BlocodeNotas2Click(nil);
end;

procedure TFrmPrincipal_Religiao.Calculadora2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Calculadora1Click(nil);
end;

procedure TFrmPrincipal_Religiao.ndice1Click(Sender: TObject);
begin
WinHelp(FrmPrincipal_Religiao.Handle,'Ajuda.hlp',HELP_CONTENTS,0);
end;

procedure TFrmPrincipal_Religiao.Sobre2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Sobre1Click(nil);
end;

procedure TFrmPrincipal_Religiao.DicionrioReligioso2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Hide;
FrmMenu.SpedButonDicionarioClick(nil);
end;

procedure TFrmPrincipal_Religiao.Jogos1Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Hide;
FrmMenu.SpedButonJogosClick(nil);

end;

procedure TFrmPrincipal_Religiao.Literatura1Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Hide;
FrmMenu.SpedButonLiteraturaClick(nil);

end;

procedure TFrmPrincipal_Religiao.Pgina1Click(Sender: TObject);
begin
FrmMenu.SpedButonPaginaClick(nil);
end;

procedure TFrmPrincipal_Religiao.Dados1Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Hide;
FrmMenu.SpedButonDados_EstatcsClick(nil);

end;

procedure TFrmPrincipal_Religiao.Crditos1Click(Sender: TObject);
begin
FrmMenu.SpedButonCreditosClick(nil);
end;

procedure TFrmPrincipal_Religiao.Configuraes1Click(Sender: TObject);
begin
FrmPrincipal_Religiao.Hide;
FrmMenu.SpedButonConfigClick(nil);
end;

procedure TFrmPrincipal_Religiao.BlocodeNotas1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmNotas, FrmNotas);
       FrmNotas.show;

end;

procedure TFrmPrincipal_Religiao.ModoPopup1Click(Sender: TObject);
begin
FrmPrincipal_Religiao.ImgPoupClick(nil);
end;

procedure TFrmPrincipal_Religiao.ModoPopup2Click(Sender: TObject);
begin
FrmPrincipal_Religiao.ModoPopup1Click(nil);
end;

procedure TFrmPrincipal_Religiao.FormActivate(Sender: TObject);
begin
edtbusca.SetFocus;
end;

procedure TFrmPrincipal_Religiao.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= '';

end;

procedure TFrmPrincipal_Religiao.ImgAbrirMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre Arquivos de Texto Salvos';

end;

procedure TFrmPrincipal_Religiao.ImgSalvarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Salva o Significado em Arquivos de Texto';

end;

procedure TFrmPrincipal_Religiao.ImgFonteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Muda o Tipo de Fonte do Dicionário';

end;

procedure TFrmPrincipal_Religiao.ImgColorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Muda a Cor do Dicionário';

end;

procedure TFrmPrincipal_Religiao.ImgBlocoNotasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre um Bloco de Notas para Anotações';

end;

procedure TFrmPrincipal_Religiao.ImgCalcMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta opção Abre a Calculadora do Sistema';

end;

procedure TFrmPrincipal_Religiao.ImgImpressaoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Imprime o Significado Pesquisado';

end;

procedure TFrmPrincipal_Religiao.ImgPoupMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre a Forma Pop-up do Dicionário';

end;

procedure TFrmPrincipal_Religiao.ImgAjudaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre a Ajuda do Dicionário';

end;

End.
