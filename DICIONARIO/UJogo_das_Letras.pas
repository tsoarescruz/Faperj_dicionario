Unit UJogo_das_Letras;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Math, AppEvnts, CustomizeDlg, MPlayer,
  ComCtrls;

Type
  TFrmJogo_das_Letras = class(TForm)
    lblletra1: TLabel;
    lblletra2: TLabel;
    lblletra3: TLabel;
    lblletra4: TLabel;
    maintimer: TTimer;
    Debug: TLabel;
    shpproxletra: TShape;
    lblproxletra: TLabel;
    lblletra: TLabel;
    aumentaveloc: TTimer;
    lblponts: TLabel;
    shparealetras: TShape;
    lblpausa: TLabel;
    timerpausa: TTimer;
    timerletra: TTimer;
    Bevel1: TBevel;
    media: TMediaPlayer;
    lblmusik: TLabel;
    lbltoca: TLabel;
    richajuda: TRichEdit;
    lblajuda: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    lblsobre: TLabel;
    richsobre: TRichEdit;
    Procedure maintimerTimer(Sender: TObject);
    Procedure FormKeyPress(Sender: TObject; var Key: Char);
    Procedure aumentavelocTimer(Sender: TObject);
    Procedure timerpausaTimer(Sender: TObject);
    Procedure timerletraTimer(Sender: TObject);
    Procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
  Private
    { Private declarations }
  Public
    Tatu:integer;
    { Public declarations }
  End;

Var
  FrmJogo_das_Letras: TFrmJogo_das_Letras;
  pontuacao: integer=0;
  erros: integer=0;
  veloc: integer=10;
  lbl: Integer =0;
  paused: Boolean = false;
  musikinha: array [0..13] of String;
  musik:string='';
  mus:integer=0;

Implementation

Uses UJogos, UMenu, ULoggo;

{$R *.dfm}

Procedure musical;
Begin
  musikinha[0]:='Breed.mid';
  musikinha[1]:='Frances Farmer.mid';
  musikinha[2]:='On A Plain.mid';
  musikinha[3]:='Heart Shaped Box.mid';
  musikinha[4]:='Pennyroyal  Tea.mid';
  musikinha[5]:='Scentless Apprentice.mid';
  musikinha[6]:='Territorial Pissings.mid';
  musikinha[7]:='Serve The Servants.mid';
  musikinha[8]:='Something In The Way.mid';
  musikinha[9]:='Smells Like Teen Spirit.mid';
  musikinha[10]:='Radio Friendly Unit Shifter.mid';  // Não tah rodando este e o de baixo;
  musikinha[11]:='Endless Nameless.mid';
  musik:=musikinha[0];
End;

Procedure pausa;
Begin
 If paused=false then
  paused:=true  else
  paused:=false;

 If FrmJogo_das_Letras.maintimer.Enabled=true then
  Begin
   FrmJogo_das_Letras.timerpausa.Enabled:=true;
   FrmJogo_das_Letras.maintimer.Enabled:=false;
   FrmJogo_das_Letras.aumentaveloc.Enabled:=false;
  End else
  Begin
   FrmJogo_das_Letras.timerpausa.Enabled:=false;
   FrmJogo_das_Letras.lblpausa.Visible:=false;
   FrmJogo_das_Letras.maintimer.Enabled:=true;
   FrmJogo_das_Letras.aumentaveloc.Enabled:=true;
  end;
End;

Function letrar:String;
var letra:Integer;
Begin
 letra:=Random(36);
 Randomize;
  case letra of
   0: letrar:='a';
   1: letrar:='b';
   2: letrar:='c';
   3: letrar:='d';
   4: letrar:='e';
   5: letrar:='f';
   6: letrar:='g';
   7: letrar:='h';
   8: letrar:='i';
   9: letrar:='j';
   10: letrar:='k';
   11: letrar:='l';
   12: letrar:='m';
   13: letrar:='n';
   14: letrar:='o';
   15: letrar:='p';
   16: letrar:='q';
   17: letrar:='r';
   18: letrar:='s';
   19: letrar:='t';
   20: letrar:='u';
   21: letrar:='v';
   22: letrar:='w';
   23: letrar:='x';
   24: letrar:='y';
   25: letrar:='z';
   26: letrar:='0';
   27: letrar:='1';
   28: letrar:='2';
   29: letrar:='3';
   30: letrar:='4';
   31: letrar:='5';
   32: letrar:='6';
   33: letrar:='7';
   34: letrar:='8';
   35: letrar:='9';
  End;
End;

Function colore:Tcolor;
Begin
 colore:=random(65000);
 randomize;
End;

Procedure inicializa;
Begin
 FrmJogo_das_Letras.maintimer.Enabled:=true;
 FrmJogo_das_Letras.aumentaveloc.Enabled:=true;
 erros:=0;
 pontuacao:=0;
 veloc:=10;
 musical;
 FrmJogo_das_Letras.Media.FileName:=caminho+'Musikins\Game\'+musik;
 FrmJogo_das_Letras.media.open;
 FrmJogo_das_Letras.media.Play;
 FrmJogo_das_Letras.lblmusik.caption:=musik;
 FrmJogo_das_Letras.lblletra1.Caption:=letrar;
 FrmJogo_das_Letras.lblletra2.Caption:=letrar;
 FrmJogo_das_Letras.lblletra3.Caption:=letrar;
 FrmJogo_das_Letras.lblletra4.Caption:=letrar;
 FrmJogo_das_Letras.lblletra1.Top:=(FrmJogo_das_Letras.lblletra1.Top-RandomRange(280, 480));
 FrmJogo_das_Letras.lblletra1.Left:=RandomRange(0, 392);
 FrmJogo_das_Letras.lblletra2.Top:=(FrmJogo_das_Letras.lblletra2.Top-RandomRange(280, 480));
 FrmJogo_das_Letras.lblletra2.Left:=RandomRange(0, 392);
 FrmJogo_das_Letras.lblletra3.Top:=(FrmJogo_das_Letras.lblletra3.Top-RandomRange(280, 480));
 FrmJogo_das_Letras.lblletra3.Left:=RandomRange(0, 392);
 FrmJogo_das_Letras.lblletra4.Top:=(FrmJogo_das_Letras.lblletra4.Top-RandomRange(280, 480));
 FrmJogo_das_Letras.lblletra4.Left:=RandomRange(0, 392);
 FrmJogo_das_Letras.lblletra1.Font.color:=colore;
 FrmJogo_das_Letras.lblletra2.Font.color:=colore;
 FrmJogo_das_Letras.lblletra3.Font.color:=colore;
 FrmJogo_das_Letras.lblletra4.Font.color:=colore;
End;

Procedure aumentaponto;
Begin
 If lbl=1 then
  Begin
   FrmJogo_das_Letras.lblletra1.Caption:=letrar;
   FrmJogo_das_Letras.lblletra1.font.color:=colore;
   Pontuacao:=pontuacao+10;
  End;
 If lbl=2 then
  Begin
   FrmJogo_das_Letras.lblletra2.Caption:=letrar;
   FrmJogo_das_Letras.lblletra2.font.color:=colore;
   Pontuacao:=pontuacao+10;
  End;
 If lbl=3 then
  Begin
   FrmJogo_das_Letras.lblletra3.Caption:=letrar;
   FrmJogo_das_Letras.lblletra3.font.color:=colore;
   Pontuacao:=pontuacao+10;
  End;
 If lbl=4 then
  Begin
   FrmJogo_das_Letras.lblletra4.Caption:=letrar;
   FrmJogo_das_Letras.lblletra4.font.color:=colore;
   Pontuacao:=pontuacao+10;
  End;
End;

Procedure move;
Begin
 If lbl=1 then
  Begin
   FrmJogo_das_Letras.lblletra1.Top:=(FrmJogo_das_Letras.lblletra1.Top-RandomRange(480, 630));
   FrmJogo_das_Letras.lblletra1.Left:=RandomRange(0, 392);
  End;
 If lbl=2 then
  Begin
   FrmJogo_das_Letras.lblletra2.Top:=(FrmJogo_das_Letras.lblletra2.Top-RandomRange(480, 630));
   FrmJogo_das_Letras.lblletra2.Left:=RandomRange(0, 392);
 End;
 If lbl=3 then
  Begin
   FrmJogo_das_Letras.lblletra3.Top:=(FrmJogo_das_Letras.lblletra3.Top-RandomRange(480, 630));
   FrmJogo_das_Letras.lblletra3.Left:=RandomRange(0, 392);
 End;
 If lbl=4 then
  Begin
  FrmJogo_das_Letras.lblletra4.Top:=(FrmJogo_das_Letras.lblletra4.Top-RandomRange(480, 630));
  FrmJogo_das_Letras.lblletra4.Left:=RandomRange(0, 392);
 End;
End;

Procedure nextletra;
Begin
 If(FrmJogo_das_Letras.lblletra1.top>=0) and
   (FrmJogo_das_Letras.lblletra1.top>FrmJogo_das_Letras.lblletra2.top) and
   (FrmJogo_das_Letras.lblletra1.top>FrmJogo_das_Letras.lblletra3.top) and
   (FrmJogo_das_Letras.lblletra1.top>FrmJogo_das_Letras.lblletra4.top) then
     FrmJogo_das_Letras.lblproxletra.Caption:=FrmJogo_das_Letras.lblletra1.Caption;

 If(FrmJogo_das_Letras.lblletra2.top>=0) and
   (FrmJogo_das_Letras.lblletra2.top>FrmJogo_das_Letras.lblletra1.top) and
   (FrmJogo_das_Letras.lblletra2.top>FrmJogo_das_Letras.lblletra3.top) and
   (FrmJogo_das_Letras.lblletra2.top>FrmJogo_das_Letras.lblletra4.top) then
     FrmJogo_das_Letras.lblproxletra.Caption:=FrmJogo_das_Letras.lblletra2.Caption;

 If(FrmJogo_das_Letras.lblletra3.top>=0) and
   (FrmJogo_das_Letras.lblletra3.top>FrmJogo_das_Letras.lblletra2.top) and
   (FrmJogo_das_Letras.lblletra3.top>FrmJogo_das_Letras.lblletra1.top) and
   (FrmJogo_das_Letras.lblletra3.top>FrmJogo_das_Letras.lblletra4.top) then
     FrmJogo_das_Letras.lblproxletra.Caption:=FrmJogo_das_Letras.lblletra3.Caption;

 If(FrmJogo_das_Letras.lblletra4.top>=0) and
   (FrmJogo_das_Letras.lblletra4.top>FrmJogo_das_Letras.lblletra2.top) and
   (FrmJogo_das_Letras.lblletra4.top>FrmJogo_das_Letras.lblletra3.top) and
   (FrmJogo_das_Letras.lblletra4.top>FrmJogo_das_Letras.lblletra1.top) then
     FrmJogo_das_Letras.lblproxletra.Caption:=FrmJogo_das_Letras.lblletra4.Caption;
End;

Procedure ehumlerdo;
Begin
 FrmJogo_das_Letras.maintimer.Enabled:=false;
 FrmJogo_das_Letras.aumentaveloc.enabled:=false;
//  sleep(1000);
  erros:=0;
  pontuacao:=0;
  veloc:=0;

 If MessageDlg('Você Perdeu, Deseja Continuar Jogando?', mtInformation, [mbyes,mbno], 0) = mryes   then
    Begin
    erros:=0;
    pontuacao:=0;
    veloc:=0;
    FrmJogo_das_Letras.maintimer.Enabled:=true;
    FrmJogo_das_Letras.aumentaveloc.Enabled:=true;
    inicializa;
       End
   else
    If FrmJogo_das_Letras.Tatu =1 then
       Begin
        FrmJogo_das_Letras.media.Stop;
        FrmJogo_das_Letras.media.Close;
        FrmJogo.tatu:=1;
        FrmJogo_das_Letras.Hide;
        erros:=0;
        pontuacao:=0;
        veloc:=0;
        FrmJogo.Show;

         End else
      If FrmJogo_das_Letras.Tatu=0 then
      Begin
        FrmJogo_das_Letras.media.Stop;
        FrmJogo_das_Letras.media.Close;
        FrmJogo.tatu:=0;
        erros:=0;
        pontuacao:=0;
        veloc:=0;
        FrmJogo_das_Letras.Hide;
        FrmJogo.Show;
        FrmMenu.media.open;
        FrmMenu.media.play;
         End;
     End;
     
Procedure TFrmJogo_das_Letras.maintimerTimer(Sender: TObject);
Begin
 lblletra1.Top:=lblletra1.top+veloc;
 lblletra2.Top:=lblletra2.top+veloc;
 lblletra3.Top:=lblletra3.top+veloc;
 lblletra4.Top:=lblletra4.top+veloc;

  If lblletra1.Top>=clientheight then
   Begin
    lbl:=1;
    move;
    lblletra1.caption:=letrar;
    lblletra1.font.color:=colore;
    if (erros<100) then
    erros:=erros+1;
   End;

   If lblletra2.Top>=ClientHeight then
    Begin
     lbl:=2;
     move;
     lblletra2.caption:=letrar;
     lblletra2.font.color:=colore;
     if (erros<100) then
     erros:=erros+1;
    End;

   If lblletra3.Top>=ClientHeight then
    Begin
     lbl:=3;
     move;
     lblletra3.caption:=letrar;
     lblletra3.font.color:=colore;
     if (erros<100) then
     erros:=erros+1;
    End;

   If lblletra4.Top>=ClientHeight then
    Begin
     lbl:=4;
     move;
     lblletra4.caption:=letrar;
     lblletra4.font.color:=colore;
     if (erros<100) then
     erros:=erros+1;
    End;

  If (erros=100) then
   Begin
   ehumlerdo;
   End;
  lblponts.caption:=' Pontuação: '+
  inttostr(pontuacao)+#13+
  ' Erros : '+inttostr(erros)+#13+
  ' Velocidade: '+ inttostr(veloc);

  debug.caption:=
  ' Lbl1Top: '+inttostr(lblletra1.Top)+#13+
  ' Lbl1Left: '+inttostr(lblletra1.left)+#13+#13+
  ' Lbl2Top: '+inttostr(lblletra2.Top)+#13+
  ' Lbl2Left: '+inttostr(lblletra2.left)+#13+#13+
  ' Lbl3Top: '+inttostr(lblletra3.Top)+#13+
  ' Lbl3Left: '+inttostr(lblletra3.left)+#13+#13+
  ' Lbl4Top: '+inttostr(lblletra4.Top)+#13+
  ' Lbl4Left: '+inttostr(lblletra4.left)+#13+
  ' LblAtiva: '+inttostr(lbl)+#13+
  ' Lbl1.Caption: '+lblletra1.caption+#13+
  ' Lbl2.Caption: '+lblletra2.caption+#13+
  ' Lbl3.Caption: '+lblletra3.caption+#13+
  ' Lbl4.Caption: '+lblletra4.caption;
end;

Procedure TFrmJogo_das_Letras.FormKeyPress(Sender: TObject; var Key: Char);
Begin
If (key=lblletra1.caption) and
   (lblletra1.top>=lblletra2.top) and
   (lblletra1.top>=lblletra3.top) and
   (lblletra1.top>=lblletra4.top) then
Begin
 lbl:=1;
 move;
 if (erros<100) then
 aumentaponto;
End;

If (key=lblletra2.caption) and
   (lblletra2.top>=lblletra1.top) and
   (lblletra2.top>=lblletra3.top) and
   (lblletra2.top>=lblletra4.top) then
Begin
 lbl:=2;
 move;
if (erros<100) then
 aumentaponto;
End;

If (key=lblletra3.caption) and
   (lblletra3.top>=lblletra1.top) and
   (lblletra3.top>=lblletra2.top) and
   (lblletra3.top>=lblletra4.top) then
Begin
 lbl:=3;
 move;
 if (erros<100) then
 aumentaponto;
End;

If (key=lblletra4.caption) and
   (lblletra4.top>=lblletra1.top) and
   (lblletra4.top>=lblletra2.top) and
   (lblletra4.top>=lblletra3.top) then
Begin
 lbl:=4;
 move;
 if (erros<100) then
 aumentaponto;
End;

If key = '+' then
 Begin
 if (Veloc<100) and (erros<100) then
 Begin
 veloc:=veloc+1;
  end;
  End
 else
If key = '-' then
 If veloc>0 then
  veloc:=veloc-1;

{If key='.' then
 If debug.visible=true then
  debug.Visible:=false else
   debug.Visible:=true;
}

If key='*' then
 pausa;

If key='/' then
Begin
FrmJogo_das_Letras.media.stop;
FrmJogo_das_Letras.media.close;
  If mus< 11 then
   mus:=mus+1
  Else mus:=0;
 musik:=musikinha[mus];
 media.filename:=caminho+'Musikins\Game\'+musik;
FrmJogo_das_Letras.media.Open;
FrmJogo_das_Letras.media.play;
lblmusik.caption:=musik;
End;

 If key=#8 then
  Begin
FrmJogo_das_Letras.media.stop;
FrmJogo_das_Letras.media.close;
 If mus> 0 then
   mus:=mus-1
 Else mus:=11;
   musik:=musikinha[mus];
   media.filename:=caminho+'Musikins\Game\'+musik;
   lblmusik.caption:=musik;
FrmJogo_das_Letras.media.Open;
FrmJogo_das_Letras.media.play;
 End;

If key=#32 then   //espaço
 If richajuda.visible = true and richsobre.visible=false then
  richajuda.visible:=false else
  richajuda.Visible:=true;

If key=#13 then
 If richsobre.visible=true and richajuda.visible=false then
  richsobre.Visible:=false else
  richsobre.Visible:=true;
  End;

Procedure TFrmJogo_das_Letras.aumentavelocTimer(Sender: TObject);
 Begin
  if (Veloc<100) and (erros<100) then
  Begin
  veloc:=veloc+1;
  End;
  End;

Procedure TFrmJogo_das_Letras.timerpausaTimer(Sender: TObject);
 Begin
  If lblpausa.visible=true then
     lblpausa.Visible:=false else
     lblpausa.Visible:=true;

      lblponts.caption:=' Pontuação: '+
      inttostr(pontuacao)+#13+
       ' Erros : '+inttostr(erros)+#13+
       ' Velocidade: '+ inttostr(veloc);
End;

Procedure TFrmJogo_das_Letras.timerletraTimer(Sender: TObject);
 Begin
 if (erros<100) then
  nextletra;
   End;

Procedure TFrmJogo_das_Letras.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Begin
 pausa;
  If MessageDlg('Deseja Mesmo Sair?', mtInformation, [mbyes,mbno], 0) = mryes then
     Begin
      If Tatu=1 then
     {if tatu = 1 then   // Music tocando}
      Begin
        FrmJogo_das_Letras.media.Stop;
        FrmJogo_das_Letras.media.Close;
        FrmJogo.tatu:=1;
        FrmJogo_das_Letras.Hide;
        erros:=0;
        pontuacao:=0;
        veloc:=0;
        FrmJogo.Show;

         End else
      If Tatu=0 then
      Begin
        FrmJogo_das_Letras.media.Stop;
        FrmJogo_das_Letras.media.Close;
        FrmJogo.tatu:=0;
        erros:=0;
        pontuacao:=0;
        veloc:=0;
        FrmJogo_das_Letras.Hide;
        FrmJogo.Show;
        FrmMenu.media.open;
        FrmMenu.media.play;
         End;
     End
  Else
  Begin
   CanClose:=False;
   pausa;
  End;
End;
procedure TFrmJogo_das_Letras.FormActivate(Sender: TObject);
begin
inicializa;
end;

End.


{if key=#27 then    // ESC
Begin
  pausa;
 If MessageDlg('Deseja Mesmo Sair?', mtInformation, [mbyes,mbno], 0) = mryes then
     Begin
        FrmJogo_das_Letras.media.Stop;
        FrmJogo_das_Letras.media.Close;
        FrmJogo.tatu:=0;
        FrmJogo_das_Letras.Hide;
        FrmJogo.Show;
        FrmMenu.media.open;
        FrmMenu.media.play;
     End else
 pausa;
End; }
