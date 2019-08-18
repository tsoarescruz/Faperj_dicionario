Unit UPrincipal;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ComCtrls, ExtCtrls, Buttons, DB, DBCtrls, Mask,
  ImgList, ADODB, Grids, DBGrids, Shellapi, MPlayer, OleCtrls, SHDocVw ;

Type
  TFrmPrincipal = class(TForm)
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    PrintDialog1: TPrintDialog;
    DataSource2: TDataSource;
    qrpesq: TADOQuery;
    DataSource1: TDataSource;
    qrpesq2: TADOQuery;
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
    TrocarcordoPrograma1: TMenuItem;
    Ferramentas1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    Calculadora1: TMenuItem;
    Ajuda1: TMenuItem;
    Indice1: TMenuItem;
    Sobre1: TMenuItem;
    PpDicionario_Tec: TPopupMenu;
    DicionrioReligioso1: TMenuItem;
    DicionrioReligioso2: TMenuItem;
    Jogos1: TMenuItem;
    Literatura1: TMenuItem;
    Pgina1: TMenuItem;
    Dados1: TMenuItem;
    Crditos1: TMenuItem;
    Configuraes1: TMenuItem;
    Menu1: TMenuItem;
    Editar2: TMenuItem;
    Ferramentas2: TMenuItem;
    Ajuda2: TMenuItem;
    indice2: TMenuItem;
    Sobre2: TMenuItem;
    BlocodeNotas2: TMenuItem;
    Calculadora2: TMenuItem;
    Recortar2: TMenuItem;
    Copiar2: TMenuItem;
    Colar2: TMenuItem;
    Fonte1: TMenuItem;
    Cor1: TMenuItem;
    Imprimir2: TMenuItem;
    Sair2: TMenuItem;
    N1: TMenuItem;
    N5: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    OpenDialog1: TOpenDialog;
    ModoPopup1: TMenuItem;
    ModoPopup2: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    LblHint: TLabel;
    edtbusca: TEdit;
    DBGrid1: TDBGrid;
    Bevel2: TBevel;
    Bevel1: TBevel;
    BDMemSign: TDBMemo;
    Web: TWebBrowser;
    ImgAjuda: TImage;
    ImgPoup: TImage;
    ImgImpressao: TImage;
    ImgCalc: TImage;
    ImgBlocoNotas: TImage;
    ImgColor: TImage;
    ImgFonte: TImage;
    Procedure Sair1Click(Sender: TObject);
    Procedure Sobre1Click(Sender: TObject);
   // Procedure Salvar1Click(Sender: TObject);
    Procedure Copiar1Click(Sender: TObject);
    Procedure ImgFonteClick(Sender: TObject);
    Procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    Procedure TrocarcordoPrograma1Click(Sender: TObject);
    Procedure FontedoPrograma1Click(Sender: TObject);
    Procedure ImgImpressaoClick(Sender: TObject);
    Procedure Imprimir1Click(Sender: TObject);
    Procedure Recortar1Click(Sender: TObject);
    Procedure Colar1Click(Sender: TObject);
    Procedure edtbuscaChange(Sender: TObject);
    procedure ImgColorClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure BlocodeNotas1Click(Sender: TObject);
    procedure BDMemSignChange(Sender: TObject);
    procedure ImgBlocoNotasClick(Sender: TObject);
    procedure ImgAbrirClick(Sender: TObject);
    procedure ImgSalvarClick(Sender: TObject);
    procedure ImgCalcClick(Sender: TObject);
    procedure ImgAjudaClick(Sender: TObject);
    procedure feito();
    procedure Indice1Click(Sender: TObject);
    procedure ImgPoupClick(Sender: TObject);
    procedure activo();
    procedure Sair2Click(Sender: TObject);
    procedure Imprimir2Click(Sender: TObject);
    procedure Salvar2Click(Sender: TObject);
    procedure Abrir2Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure Colar2Click(Sender: TObject);
    procedure Copiar2Click(Sender: TObject);
    procedure Recortar2Click(Sender: TObject);
    procedure BlocodeNotas2Click(Sender: TObject);
    procedure Calculadora2Click(Sender: TObject);
    procedure indice2Click(Sender: TObject);
    procedure DicionrioReligioso2Click(Sender: TObject);
    procedure Pgina1Click(Sender: TObject);
    procedure Dados1Click(Sender: TObject);
    procedure Crditos1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure ModoPopup1Click(Sender: TObject);
    procedure ModoPopup2Click(Sender: TObject);
    procedure JogodaVelha1Click(Sender: TObject);
    procedure JogodasLetras1Click(Sender: TObject);
    procedure LinguaPortuguesanoMundo1Click(Sender: TObject);
    procedure Leis1Click(Sender: TObject);
    procedure QuilombosnoBrasil1Click(Sender: TObject);
    procedure Preconceito1Click(Sender: TObject);
    procedure MercadodeTrabalho1Click(Sender: TObject);
    procedure Mapas1Click(Sender: TObject);
    procedure Orixs1Click(Sender: TObject);
    procedure Poetas1Click(Sender: TObject);
    procedure Literatura1Click(Sender: TObject);
    procedure Jogos1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ImgAbrirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
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
  Private
       { Private declarations }
  Public
   Nate:integer;
   fec:integer;
    { Public declarations }
  End;

Var
  FrmPrincipal: TFrmPrincipal;
  Nave:integer;
  Implementation

     Uses UAbout, UNotas, ULigBanco, UMenu, UPricipal_Religiao, USlide, UPaises,
  UJogos, UDados, UMaps, UDados_Estatis, UMenu_Poemas_Poesias,
  UCaca_Palavras, ULoggo;

{$R *.dfm}

Procedure TFrmPrincipal.Sair1Click(Sender: TObject);
  Begin
    FrmPrincipal.CloseQuery;
   End;

Procedure TFrmPrincipal.Sobre1Click(Sender: TObject);
     Begin
     Application.CreateForm(TAboutBox, AboutBox);
     AboutBox.showmodal;
      End;

{Procedure TFrmPrincipal.Salvar1Click(Sender: TObject);
 Begin
  Try
   if SaveDialog1.Execute then
    Begin
   BDMemSign.Lines.SaveToFile(SaveDialog1.FileName);
   End;
 except on  EInOutError  do
MessageDlg('Erro ao salvar o arquivo!', mtError, [mbyes,mbno], 0);
   end;
  end; }

Procedure TFrmPrincipal.Copiar1Click(Sender: TObject);
    Begin
    BDMemSign.CopyToClipboard;
      End;

Procedure TFrmPrincipal.ImgFonteClick(Sender: TObject);
   Begin
      FontDialog1.Font:=FrmPrincipal.Font;
    If FontDialog1.Execute then
    Begin
      FrmPrincipal.Font:=FontDialog1.Font;
      FrmPrincipal.edtbusca.Font:=FontDialog1.Font;

      FrmPrincipal.edtbusca.Font.Name:='Times New Roman';
      FrmPrincipal.edtbusca.Font.Style:=[fsBold,fsItalic];
      FrmPrincipal.edtbusca.Font.Size:=10;

      FrmPrincipal.LblHint.Font:=FontDialog1.Font;
      FrmPrincipal.LblHint.Font.Size:=10;
      FrmPrincipal.LblHint.Font.Name:='Times New Roman';
End;
      End;

Procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
    Begin
   if fec=0 then
    Begin
   dm.qrpalavras.Active:=false;
   qrpesq.Active:=false;
   FrmPrincipal.Hide;
   FrmMenu.show;
    end else
   if fec = 1 then
      Begin
   dm.qrpalavras.Active:=false;
   qrpesq.Active:=false;
   FrmPrincipal.Hide;
   FrmCaca_Palavras.show;
      End;
    End;

Procedure TFrmPrincipal.TrocarcordoPrograma1Click(Sender: TObject);
    Begin
    ColorDialog1.Color:=FrmPrincipal.Color;
      if ColorDialog1.Execute then
       FrmPrincipal.Color:=ColorDialog1.color;
        End;

Procedure TFrmPrincipal.FontedoPrograma1Click(Sender: TObject);
    Begin
      FontDialog1.Font:=FrmPrincipal.Font;
    If FontDialog1.Execute then
      FrmPrincipal.Font:=FontDialog1.Font;
          End;

Procedure TFrmPrincipal.ImgImpressaoClick(Sender: TObject);
    Begin
    PrintDialog1.Execute;
     End;

Procedure TFrmPrincipal.Imprimir1Click(Sender: TObject);
    Begin
    PrintDialog1.Execute;
     End;

Procedure TFrmPrincipal.Recortar1Click(Sender: TObject);
    Begin
      BDMemSign.CutToClipboard;
     End;

Procedure TFrmPrincipal.Colar1Click(Sender: TObject);
   Begin
     BDMemSign.PasteFromClipboard;
    End;

Procedure TFrmPrincipal.edtbuscaChange(Sender: TObject);
Var sql, sql2:string;
Begin

  sql:='select palavras from palavras where palavras like' + #39 + edtbusca.text + '%' + #39;
  qrpesq.sql.Clear;
  qrpesq.SQL.Add(sql);
  qrpesq.Open;

  qrpesq2.sql.clear;
  sql2:='select significado from palavras where palavras like' + #39 + edtbusca.text + '%' + #39;
  qrpesq2.sql.Add(sql2);
  qrpesq2.Open;

   if Nave=0 then
     Begin
      Web.Destroy;
       Nave:=1;
     End;
End;

Procedure TFrmPrincipal.ImgColorClick(Sender: TObject);
 Begin
    ColorDialog1.Color:=FrmPrincipal.Color;
      if ColorDialog1.Execute then
     FrmPrincipal.Color:=ColorDialog1.color;

    End;

procedure TFrmPrincipal.DBGrid1DblClick(Sender: TObject);
var sql2:string;
begin
qrpesq2.sql.clear;
sql2:='select significado from palavras where palavras =' + #39 + qrpesq['palavras'] + #39;
qrpesq2.sql.Add(sql2);
qrpesq2.Open;

if Nave = 0 then
Begin
Web.Destroy;
Nave:=1;
End;
End;


procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar('calc.exe'),
            		    nil,nil,sw_Shownormal);

end;

procedure TFrmPrincipal.BlocodeNotas1Click(Sender: TObject);
begin
     Application.CreateForm(TFrmNotas, FrmNotas);
       FrmNotas.show;

end;

procedure TFrmPrincipal.BDMemSignChange(Sender: TObject);
begin
 Recortar1.Enabled:=True;
 Copiar1.Enabled:=True;
 Colar1.Enabled:=True;
end;
procedure TFrmPrincipal.ImgBlocoNotasClick(Sender: TObject);
begin
     Application.CreateForm(TFrmNotas, FrmNotas);
      FrmNotas.Sna:=1;
      FrmNotas.feito(nil);
     //FrmPrincipal.Hide;
       FrmNotas.show;

end;

procedure TFrmPrincipal.ImgAbrirClick(Sender: TObject);
begin
FrmPrincipal.Abrir1Click(nil);
end;

procedure TFrmPrincipal.ImgSalvarClick(Sender: TObject);
begin
//FrmPrincipal.Salvar1Click(nil);
end;

procedure TFrmPrincipal.ImgCalcClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar('calc.exe'),
            		    nil,nil,sw_Shownormal);
end;

procedure TFrmPrincipal.ImgAjudaClick(Sender: TObject);
begin
FrmPrincipal.Indice1Click(nil);
end;

procedure TFrmPrincipal.feito();
Begin
   FrmPrincipal.Color:=clBtnText;
   FrmPrincipal.Font.Name:='Times New Roman';
   FrmPrincipal.Font.Color:=clRed;
   FrmPrincipal.Font.Style:=[fsBold,fsItalic];
   FrmPrincipal.Font.Size:=8;

   FrmPrincipal.edtbusca.Font.Name:='Times New Roman';
   FrmPrincipal.edtbusca.Font.Style:=[fsBold,fsItalic];
   FrmPrincipal.edtbusca.Font.Size:=10;

   Recortar1.Enabled:=False;
   Copiar1.Enabled:=False;
   Colar1.Enabled:=False;

//   FrmPrincipal.ImgAbrir.Picture.LoadFromFile(caminho + 'Icons\Closed Folder.ico');
//   FrmPrincipal.ImgSalvar.Picture.LoadFromFile(caminho + 'icons\My Downloads.ico');
//   FrmPrincipal.ImgFonte.Picture.LoadFromFile(caminho + 'icons\FONTE.ICO');
   FrmPrincipal.ImgFonte.Picture.LoadFromFile(caminho + 'icons\28-Font Type.ico');
//   FrmPrincipal.ImgColor.Picture.LoadFromFile(caminho + 'icons\Icon_162.ICO');
   FrmPrincipal.ImgColor.Picture.LoadFromFile(caminho + 'icons\Charts_2.ico');
   FrmPrincipal.ImgPoup.Picture.LoadFromFile(caminho + 'icons\msn logo.ICO');
   FrmPrincipal.ImgBlocoNotas.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
   FrmPrincipal.ImgCalc.Picture.LoadFromFile(caminho + 'icons\calculator.ico');
   FrmPrincipal.ImgImpressao.Picture.LoadFromFile(caminho + 'icons\printer.ico');
   FrmPrincipal.ImgAjuda.Picture.LoadFromFile(caminho + 'icons\help.ico');


End;

procedure TFrmPrincipal.Indice1Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Ajuda.hlp'),nil,nil,sw_Shownormal);
end;

procedure TFrmPrincipal.ImgPoupClick(Sender: TObject);
Begin
   Application.CreateForm(TFrmDicionario_pop_up, FrmDicionario_pop_up);
   FrmPrincipal.Hide;
   FrmMenu.Hide;
   FrmDicionario_pop_up.Naqe:=0;
   FrmDicionario_pop_up.feito;
   FrmDicionario_pop_up.activo;
   FrmDicionario_pop_up.edtbusca.Text:=FrmPrincipal.edtbusca.Text;
   FrmDicionario_pop_up.show;

   end;

procedure TFrmPrincipal.activo();
Begin

if Nate=0 then
Begin
dm.qrPalavras.Active:=true;
qrpesq.Active:=true;


Nave:= 0;
Web.Navigate(ExtractFilePath(Application.ExeName) + 'Páginas\Dic_Tec.html');
End else

if Nate=1 then
Begin
dm.qrPalavras.Active:=true;
qrpesq.Active:=true;

End;
End;

procedure TFrmPrincipal.Sair2Click(Sender: TObject);
begin
FrmPrincipal.CloseQuery;
end;

procedure TFrmPrincipal.Imprimir2Click(Sender: TObject);
begin
FrmPrincipal.Imprimir1Click(nil);
end;

procedure TFrmPrincipal.Salvar2Click(Sender: TObject);
begin
//FrmPrincipal.Salvar1Click(nil);
end;

procedure TFrmPrincipal.Abrir2Click(Sender: TObject);
begin
FrmPrincipal.Abrir1Click(nil);
end;

procedure TFrmPrincipal.Fonte1Click(Sender: TObject);
begin
FrmPrincipal.ImgFonteClick(nil);
end;

procedure TFrmPrincipal.Cor1Click(Sender: TObject);
begin
FrmPrincipal.ImgColorClick(nil);
end;

procedure TFrmPrincipal.Colar2Click(Sender: TObject);
begin
FrmPrincipal.Colar1Click(nil);
end;

procedure TFrmPrincipal.Copiar2Click(Sender: TObject);
begin
FrmPrincipal.Copiar1Click(nil);
end;

procedure TFrmPrincipal.Recortar2Click(Sender: TObject);
begin
FrmPrincipal.Recortar1Click(nil);
end;

procedure TFrmPrincipal.BlocodeNotas2Click(Sender: TObject);
begin
FrmPrincipal.BlocodeNotas1Click(nil);
end;

procedure TFrmPrincipal.Calculadora2Click(Sender: TObject);
begin
FrmPrincipal.Calculadora1Click(nil);
end;

procedure TFrmPrincipal.indice2Click(Sender: TObject);
begin
WinHelp(FrmPrincipal.Handle,'Ajuda.hlp',HELP_CONTENTS,0);end;

procedure TFrmPrincipal.DicionrioReligioso2Click(Sender: TObject);
begin
FrmPrincipal.Hide;
FrmMenu.SpedButonDicionario_ReligiosoClick(nil);
end;

procedure TFrmPrincipal.Pgina1Click(Sender: TObject);
begin
FrmMenu.SpedButonPaginaClick(nil);
end;

procedure TFrmPrincipal.Dados1Click(Sender: TObject);
begin
FrmPrincipal.Hide;
FrmMenu.SpedButonDados_EstatcsClick(nil);
end;

procedure TFrmPrincipal.Crditos1Click(Sender: TObject);
begin
FrmMenu.SpedButonCreditosClick(nil);
end;

procedure TFrmPrincipal.Configuraes1Click(Sender: TObject);
begin
FrmPrincipal.Hide;
FrmMenu.SpedButonConfigClick(nil);
end;

procedure TFrmPrincipal.Sobre2Click(Sender: TObject);
begin
FrmPrincipal.Sobre1Click(nil);
end;

procedure TFrmPrincipal.Abrir1Click(Sender: TObject);
begin
 Try
  if OpenDialog1.Execute then
    Begin
   FrmPrincipal.BlocodeNotas1Click(nil);
   FrmNotas.MemBloc_Notas.Lines.LoadFromFile(OpenDialog1.FileName);

    End;
  except on  EInOutError  do
  MessageDlg('Erro ao Abrir o Arquivo!', mtError, [mbyes,mbno], 0);
 end;
end;

procedure TFrmPrincipal.ModoPopup1Click(Sender: TObject);
begin
FrmPrincipal.ImgPoupClick(nil);
end;

procedure TFrmPrincipal.ModoPopup2Click(Sender: TObject);
begin
FrmPrincipal.ModoPopup1Click(nil);
end;

procedure TFrmPrincipal.JogodaVelha1Click(Sender: TObject);
begin
 
 FrmJogo.SpedButonVelhaClick(nil);
 FrmPrincipal.Hide;
 end;

procedure TFrmPrincipal.JogodasLetras1Click(Sender: TObject);
begin
 FrmJogo.SpedButonJogos_das_LetrasClick(nil);
 FrmPrincipal.Hide;
 end;

procedure TFrmPrincipal.LinguaPortuguesanoMundo1Click(Sender: TObject);
begin
FrmMaps.SpedButonLingua_Port_MundiClick(nil);
end;

procedure TFrmPrincipal.Leis1Click(Sender: TObject);
begin
FrmDados.SpedButonLeisClick(nil);
end;

procedure TFrmPrincipal.QuilombosnoBrasil1Click(Sender: TObject);
begin
FrmMaps.SpedButonQuilombosClick(nil);
end;

procedure TFrmPrincipal.Preconceito1Click(Sender: TObject);
begin
FrmDados_esta.SpedButon_PreconceitoClick(nil);
FrmPrincipal.Hide;
end;

procedure TFrmPrincipal.MercadodeTrabalho1Click(Sender: TObject);
begin
FrmDados_esta.SpedButonDiscriClick(nil);
FrmPrincipal.Hide;
end;

procedure TFrmPrincipal.Mapas1Click(Sender: TObject);
begin
FrmDados.SpedButonMapaClick(nil);
FrmPrincipal.Hide;
end;

procedure TFrmPrincipal.Orixs1Click(Sender: TObject);
Begin
Application.CreateForm(TFrmLiteratura, FrmLiteratura);
FrmLiteratura.SpedButonOrixasClick(nil);
FrmPrincipal.Hide;
end;

procedure TFrmPrincipal.Poetas1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmLiteratura, FrmLiteratura);
  FrmLiteratura.SpedButonPoetasClick(nil);
  FrmPrincipal.Hide;
end;

procedure TFrmPrincipal.Literatura1Click(Sender: TObject);
begin
FrmPrincipal.Hide;
FrmMenu.SpedButonLiteraturaClick(nil);

end;

procedure TFrmPrincipal.Jogos1Click(Sender: TObject);
begin
FrmPrincipal.Hide;
FrmMenu.SpedButonJogosClick(nil);

end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
edtbusca.SetFocus;
end;

procedure TFrmPrincipal.ImgAbrirMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre Arquivos de Texto Salvos';
end;

procedure TFrmPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
LblHint.Caption:='';
end;

procedure TFrmPrincipal.ImgSalvarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Salva o Significado em Arquivos de Texto';

end;

procedure TFrmPrincipal.ImgFonteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Muda o Tipo de Fonte do Dicionário';

end;

procedure TFrmPrincipal.ImgColorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Muda a Cor do Dicionário';

end;

procedure TFrmPrincipal.ImgBlocoNotasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre um Bloco de Notas para Anotações';

end;

procedure TFrmPrincipal.ImgCalcMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta opção Abre a Calculadora do Sistema';

end;

procedure TFrmPrincipal.ImgImpressaoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Imprime o Significado Pesquisado';

end;

procedure TFrmPrincipal.ImgPoupMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre a Forma Pop-up do Dicionário';

end;

procedure TFrmPrincipal.ImgAjudaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre a Ajuda do Dicionário';

end;

End.
