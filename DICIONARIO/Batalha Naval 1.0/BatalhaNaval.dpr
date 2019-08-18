program BatalhaNaval;

uses
  Forms,
  Un_BatalhaNavalDisplay in 'Un_BatalhaNavalDisplay.pas' {Fm_BatalhaNavalDisplay},
  Un_BackGround in 'Un_BackGround.pas' {Fm_BackGround},
  Un_Mensagem in 'Un_Mensagem.pas' {Fm_Mensagem};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Batalha Naval';
  Application.CreateForm(TFm_BackGround, Fm_BackGround);
  Application.CreateForm(TFm_Mensagem, Fm_Mensagem);
  Application.Run;
end.
