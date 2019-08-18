unit UConfing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, shellapi, jpeg, Registry, WinProcs, MMSystem;

type
  TFrmConfiguracoes = class(TForm)
    GrB_Sistem: TGroupBox;
    SpedButonreboot: TSpeedButton;
    SpedButonshut_down: TSpeedButton;
    SpedButonLoggin: TSpeedButton;
    SpedButonforce: TSpeedButton;
    GrB_Program: TGroupBox;
    SpedButonProcess_Memory: TSpeedButton;
    SpedButonDados: TSpeedButton;
    LblHint: TLabel;
    LblHinter: TLabel;
    ImgDesl: TImage;
    ImgLogg: TImage;
    ImgFecharTudo: TImage;
    ImgReininciar: TImage;
    ImgDados_Mini: TImage;
    ImgStatus: TImage;
    GpBOutras_Func: TGroupBox;
    SpedButonA_CD: TSpeedButton;
    SpedButonF_CD: TSpeedButton;
    SpedButonScreen_Saver: TSpeedButton;
    SpedButonPlorer: TSpeedButton;
    ImgA_CD: TImage;
    ImgF_CD: TImage;
    ImgScr_Saver: TImage;
    ImgPlorer: TImage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure SpedButonrebootClick(Sender: TObject);
    procedure SpedButonshut_downClick(Sender: TObject);
    procedure SpedButonLogginClick(Sender: TObject);
    procedure SpedButonforceClick(Sender: TObject);
    procedure SpedButonProcess_MemoryClick(Sender: TObject);
    procedure SpedButonDadosClick(Sender: TObject);
    procedure SpedButonrebootMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpedButonshut_downMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpedButonLogginMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpedButonforceMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpedButonProcess_MemoryMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpedButonDadosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GrB_ProgramMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GrB_SistemMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgDeslClick(Sender: TObject);
    procedure ImgLoggClick(Sender: TObject);
    procedure ImgFecharTudoClick(Sender: TObject);
    procedure ImgReininciarClick(Sender: TObject);
    procedure ImgStatusClick(Sender: TObject);
    procedure ImgDados_MiniClick(Sender: TObject);
    procedure feito;
    procedure inicio;
    procedure SpedButonPlorerClick(Sender: TObject);
    procedure SpedButonScreen_SaverClick(Sender: TObject);
    procedure SpedButonA_CDClick(Sender: TObject);
    procedure SpedButonF_CDClick(Sender: TObject);
    procedure SpedButonA_CDMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpedButonF_CDMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpedButonScreen_SaverMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure SpedButonPlorerMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ImgA_CDClick(Sender: TObject);
    procedure ImgF_CDClick(Sender: TObject);
    procedure ImgScr_SaverClick(Sender: TObject);
    procedure ImgPlorerClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmConfiguracoes: TFrmConfiguracoes;

implementation

uses UMenu,UApre, USlide, ULoggo;

{$R *.dfm}

procedure TFrmConfiguracoes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     FrmMenu.show;
     FrmConfiguracoes.hide;

end;

procedure TFrmConfiguracoes.FormActivate(Sender: TObject);
begin

FrmConfiguracoes.Color:= clBtnText;
FrmConfiguracoes.Font.Name:='Times New Roman';
FrmConfiguracoes.Font.Color:=clRed;
FrmConfiguracoes.Font.Style:=[fsBold,fsItalic];
FrmConfiguracoes.Font.Size:=10;

end;

procedure TFrmConfiguracoes.SpedButonrebootClick(Sender: TObject);
begin
 If MessageDlg('Deseja Mesmo Reiniciar o seu Computador e Fechar este Programa?', mtConfirmation, [mbyes,mbno], 0) = mryes then
      Begin
      FrmConfiguracoes.hide;
      Application.Terminate;
      ExitWindowsEx(EWX_REBOOT,2);
      End;
end;

procedure TFrmConfiguracoes.SpedButonshut_downClick(Sender: TObject);
begin
 If MessageDlg('Deseja Mesmo Desligar o seu Computador e Fechar este Programa?', mtConfirmation, [mbyes,mbno], 0) = mryes then
      Begin
      FrmConfiguracoes.hide;
      Application.Terminate;
      ExitWindowsEx(EWX_SHUTDOWN,0);
      End;

end;
procedure TFrmConfiguracoes.SpedButonLogginClick(Sender: TObject);
begin
 If MessageDlg('Deseja Mesmo realizar o Loggin no seu Computador?', mtConfirmation, [mbyes,mbno], 0) = mryes then
      Begin
      ExitWindowsEx(EWX_LOGOFF,0);
      End;

end;

procedure TFrmConfiguracoes.SpedButonforceClick(Sender: TObject);
begin
 If MessageDlg('Deseja Mesmo Fechar Todos os Programas que estão sendo Executandos no seu Computador?', mtConfirmation, [mbyes,mbno], 0) = mryes then
      Begin
      FrmConfiguracoes.hide;
      Application.Terminate;
      ExitWindowsEx(EWX_FORCE,4);

      End;

end;

procedure TFrmConfiguracoes.SpedButonProcess_MemoryClick(Sender: TObject);
begin
   Application.CreateForm(TFrmApre, FrmApre);
   FrmConfiguracoes.Hide;
   FrmApre.show;

end;

procedure TFrmConfiguracoes.SpedButonDadosClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Páginas\Configuracão Mínima.html'),
            		    nil,nil,sw_Shownormal);

end;

procedure TFrmConfiguracoes.SpedButonrebootMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Finaliza a Aplicação';
LblHinter.Caption:='e Depois Desliga e Reinincia o Windows.'
end;

procedure TFrmConfiguracoes.SpedButonshut_downMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Finaliza a Aplicação e Desliga o Windows, de modo que';
LblHinter.Caption:='você possa desligar a energia com segurança. ';

end;

procedure TFrmConfiguracoes.SpedButonLogginMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Realiza o Logoff Sem Finalizar a Aplicação, outros ';
LblHinter.Caption:=' Programas ou o Windows.'

end;

procedure TFrmConfiguracoes.SpedButonforceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Finaliza a Aplicação e Todos os Programas, que estejam';
LblHinter.Caption:='sendo executados Sem Reininciar ou Desligar Windows.'
end;

procedure TFrmConfiguracoes.SpedButonProcess_MemoryMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Realiza um Pequeno Diagnóstico do Sistema';
LblHinter.Caption:='Sem Reininciar ou Desligar Windows.';
end;

procedure TFrmConfiguracoes.SpedButonDadosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Informa qual são os Requisítos Mínimos que';
LblHinter.Caption:='a Máquina Necessita para Rodar a Aplicação.';
end;

procedure TFrmConfiguracoes.GrB_ProgramMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='';
LblHinter.Caption:='';
end;

procedure TFrmConfiguracoes.GrB_SistemMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='';
LblHinter.Caption:='';

end;

procedure TFrmConfiguracoes.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='';
LblHinter.Caption:='';

end;

procedure TFrmConfiguracoes.ImgDeslClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonshut_downClick(nil);
end;

procedure TFrmConfiguracoes.ImgLoggClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonLogginClick(nil);
end;

procedure TFrmConfiguracoes.ImgFecharTudoClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonforceClick(nil);
end;

procedure TFrmConfiguracoes.ImgReininciarClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonrebootClick(nil);
end;

procedure TFrmConfiguracoes.ImgStatusClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonProcess_MemoryClick(nil);
end;

procedure TFrmConfiguracoes.ImgDados_MiniClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonDadosClick(nil);
end;

procedure TFrmConfiguracoes.feito;
Begin
   FrmConfiguracoes.Color:= clBtnText;
   FrmConfiguracoes.Font.Color:=clWhite;
   FrmConfiguracoes.Font.Style:=[fsItalic];
   FrmConfiguracoes.Font.Size:=10;
   FrmConfiguracoes.Font.Name:='Times New Roman';
   FrmConfiguracoes.LblHint.Font.Color:=clred;
   FrmConfiguracoes.LblHint.Font.Style:=[fsBold,fsItalic];
   FrmConfiguracoes.LblHinter.Font.Color:=clred;
   FrmConfiguracoes.LblHinter.Font.Style:=[fsBold,fsItalic];

End;

procedure TFrmConfiguracoes.inicio;
Begin

   ImgDesl.Picture.LoadFromFile(caminho + 'icons\desl.bmp');
   ImgLogg.Picture.LoadFromFile(caminho + 'icons\people.ico');
   ImgFecharTudo.Picture.LoadFromFile(caminho + 'icons\log_off.bmp');
   ImgReininciar.Picture.LoadFromFile(caminho + 'icons\reboot.ico');
   ImgDados_Mini.Picture.LoadFromFile(caminho + 'icons\Notepad.ico');
   ImgStatus.Picture.LoadFromFile(caminho + 'icons\paste.ico');
   ImgScr_Saver.Picture.LoadFromFile(caminho + 'icons\Monitor.ico');
   ImgA_CD.Picture.LoadFromFile(caminho + 'icons/CD Drive2.ico');
   ImgF_CD.Picture.LoadFromFile(caminho + 'icons/CD Drive2.ico');
   ImgPlorer.Picture.LoadFromFile(caminho + 'icons\Closed Folder.ico');
End;
procedure TFrmConfiguracoes.SpedButonPlorerClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar('Explorer.exe'),
            		    nil,nil,sw_Shownormal);end;


procedure TFrmConfiguracoes.SpedButonScreen_SaverClick(Sender: TObject);
begin
{ Ativa a proteção de tela do Windows, se estiver configurada. }
SendMessage(Application.Handle, WM_SYSCOMMAND, SC_SCREENSAVE, 0);
end;

procedure TFrmConfiguracoes.SpedButonA_CDClick(Sender: TObject);
begin

{ Para abrir }
mciSendString('Set cdaudio door open wait', nil, 0, handle);

end;

{ - Este código faz abrir a propriedade de vídeo do Win ;-p.
WinExec('RunDLL32.exe Shell32.DLL,Control_RunDLL Desk.cpl', SW_Show)
}
procedure TFrmConfiguracoes.SpedButonF_CDClick(Sender: TObject);
begin
{ Para fechar }
mciSendString('Set cdaudio door closed wait', nil, 0, handle);
end;


procedure TFrmConfiguracoes.SpedButonA_CDMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Abre o seu Drive de CD-Rom ';

end;

procedure TFrmConfiguracoes.SpedButonF_CDMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Fecha o seu Drive de CD-Rom ';

end;

procedure TFrmConfiguracoes.SpedButonScreen_SaverMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Ativa a Proteção de Tela do Windows ';

end;

procedure TFrmConfiguracoes.SpedButonPlorerMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:='Abre o Explorer ';

end;

procedure TFrmConfiguracoes.ImgA_CDClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonA_CDClick(nil);
end;

procedure TFrmConfiguracoes.ImgF_CDClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonF_CDClick(nil);
end;

procedure TFrmConfiguracoes.ImgScr_SaverClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonScreen_SaverClick(nil);
end;

procedure TFrmConfiguracoes.ImgPlorerClick(Sender: TObject);
begin
FrmConfiguracoes.SpedButonPlorerClick(nil);
end;

end.



