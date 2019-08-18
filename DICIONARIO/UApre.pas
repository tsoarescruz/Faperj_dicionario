unit UApre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Registry,  MMSystem, Printers, shellapi,
  Menus;

type
  TFrmApre = class(TForm)
    Memo1: TMemo;
    PopupMenu1: TPopupMenu;
    Salvar1: TMenuItem;
    Atualizar1: TMenuItem;
    SaveDialog1: TSaveDialog;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure feito;
    procedure Salvar1Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmApre: TFrmApre;

implementation

uses UMenu, UConfing;

{$R *.dfm}

procedure TFrmApre.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
FrmApre.Hide;
FrmConfiguracoes.show;
end;

procedure TFrmApre.FormActivate(Sender: TObject);
Begin
 FrmApre.feito;
End;

procedure TFrmApre.feito;
const
cBytesPorMb=1024*1024;
var
M:TMemoryStatus;
SetoresporAgrup, BytesPorSetor, AgrupLivres, TotalAgrup:DWORD;
VerInfo:TOSVersionInfo;
str : String;
I : Word;

Begin

M.dwLength:=SIZEOF(M);
GlobalMemoryStatus(M);
Memo1.Clear;

VerInfo.dwOSVersionInfoSize:=SizeOf(TosVersionInfo);
if getVersionEx(VerInfo) then
Begin
str:='Plataforma do Sistema: ';

case VerInfo.dwPlatformId of

VER_PLATFORM_WIN32s : Memo1.Lines.Add(Str + 'Windows 95');
VER_PLATFORM_WIN32_WINDOWS: Memo1.Lines.Add(Str + 'Windows 95 Osr2/ 98');
VER_PLATFORM_WIN32_NT: Memo1.Lines.Add(Str + 'Windows NT');
End;

str := '';
for I := 0 to 127 do
str := str + verInfo.szCSDVersion[I];
end;

with Memo1.Lines do Begin

Add('Sistema Operacional: ' + str);
Add('Versão: ' + IntToStr(VerInfo.dwMajorVersion) + IntToStr(VerInfo.dwMinorVersion));
Add('Compilação: ' + IntToStr(VerInfo.dwBuildNumber));

end;


if GetDiskFreeSpace('C:\', SetoresporAgrup, BytesPorSetor,AgrupLivres,TotalAgrup) then
with Memo1.Lines do Begin

Add('Setores por Agrupamento: ' + IntToStr(SetoresporAgrup));
Add('Bytes por Setor: ' + IntToStr(BytesPorSetor));
Add('Agrupamentos Livres: ' + IntToStr(AgrupLivres));
Add('Total de Agrupamentos: ' + IntToStr(TotalAgrup));
Add('');
Add('- Total Geral -  ');
Add('');
Add('Total de Bytes: ' + IntToStr(TotalAgrup * SetoresporAgrup * BytesPorSetor));
Add('Bytes Livres: ' + IntToStr(AgrupLivres * SetoresporAgrup * BytesPorSetor));

End;

with Memo1.Lines do Begin
  Add('');
  Add('- Memória -');
  Add('');
  Add(Format('Memória em uso: %d%%',[M.dwMemoryLoad]));
  Add(Format('Total de Memória Física: %f MB',[M.dwTotalPhys/cBytesPorMb]));
  Add(Format('Memória Física Disponível: %f MB',[M.dwAvailPhys / cBytesPorMb]));
  Add(Format('Tamanho Máximo de Arquivo de Paginação: %f MB', [M.dwTotalPageFile / cBytesPorMb]));
  Add(Format('Disponível no Arquivo de Paginação: %f MB',[M.dwAvailPageFile / cBytesPorMb]));
  Add(Format('Total de Memória Virtual: %f MB',[M.dwTotalVirtual / cBytesPorMb]));
  Add(Format('Total de Memória Virtual Disponível: %f MB',[M.dwAvailVirtual/cBytesPorMb]));

End;
end;



procedure TFrmApre.Salvar1Click(Sender: TObject);
begin
  Try
   if SaveDialog1.Execute then
    Begin
  Memo1.Lines.SaveToFile(SaveDialog1.FileName);
   End;

 except on  EInOutError  do
MessageDlg('Erro ao salvar o arquivo!', mtError, [mbyes,mbno], 0);

   end;

end;

procedure TFrmApre.Atualizar1Click(Sender: TObject);
begin
FrmApre.Memo1.Lines.Clear;
feito;
end;

End.
