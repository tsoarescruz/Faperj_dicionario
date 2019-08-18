Unit UJogos;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, shellapi;

Type
  TFrmJogo = class(TForm)
    SpedButonVelha: TSpeedButton;
    SpedButonJogos_das_Letras: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ImgVelha: TImage;
    ImgLetra: TImage;
    ImgCaca: TImage;
    SpedButonCaca_Palavras: TSpeedButton;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Procedure SpedButonVelhaClick(Sender: TObject);
    Procedure SpedButonJogos_das_LetrasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpedButonCaca_PalavrasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  Private
    { Private declarations }
  Public
    top, tatu :integer;
    { Public declarations }
  End;

Var
  FrmJogo: TFrmJogo;

Implementation

Uses UJogo_das_Letras,UJogo_Velha, UTipo_Midia, UMenu, UGame_Intera,
  UCaca_Palavras, ULoggo;

{$R *.dfm}

Procedure TFrmJogo.SpedButonVelhaClick(Sender: TObject);
 Begin
 Application.CreateForm(TFrmJogo_Velha, FrmJogo_Velha);
    FrmJogo_Velha.show;
     FrmJogo.hide;
       End;

Procedure TFrmJogo.SpedButonJogos_das_LetrasClick(Sender: TObject);
 Begin

  Application.CreateForm(TFrmJogo_das_Letras, FrmJogo_das_Letras);
 if tatu = 1 then   // Music Tocando
 Begin
 FrmJogo_das_Letras.Tatu:=1;
 FrmMenu.media.stop;
 FrmMenu.media.close;
 End
 else
 if tatu=0 then   //Music Parada
 Begin
 FrmMenu.media.open;
 FrmJogo_das_Letras.Tatu:=0;
  End;
 FrmJogo.hide;
 FrmJogo_das_Letras.show;

    End;

procedure TFrmJogo.FormActivate(Sender: TObject);
begin
FrmJogo.Font.Color:=clWhite;
FrmJogo.Color:=clBtnText;
FrmJogo.Font.Name:='Times New Roman';
FrmJogo.Font.Style:=[fsItalic, fsBold];
FrmJogo.Font.Size:=10;

end;

procedure TFrmJogo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   FrmMenu.show;
   FrmJogo.hide;

end;

procedure TFrmJogo.SpedButonCaca_PalavrasClick(Sender: TObject);
begin
 Application.CreateForm(TFrmCaca_Palavras, FrmCaca_Palavras);
 FrmJogo.hide;
 FrmCaca_Palavras.Show;
end;
procedure TFrmJogo.SpeedButton1Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Batalha Naval 1.0\BatalhaNaval.exe'),
            		    nil,nil,sw_Shownormal);
end;

End.
