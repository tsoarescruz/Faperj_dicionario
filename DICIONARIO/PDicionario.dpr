program PDicionario;

uses
  Forms,
  Windows,
  Dialogs,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UAbout in 'UAbout.pas' {AboutBox},
  ULigBanco in 'ULigBanco.pas' {DM: TDataModule},
  UNotas_Poesias in 'UNotas_Poesias.pas' {FrmNotas_Poesias},
  ULoggo in 'ULoggo.pas' {FrmLoggo},
  UJogos in 'UJogos.pas' {FrmJogo},
  UJogo_das_Letras in 'UJogo_das_Letras.pas' {FrmJogo_das_Letras},
  UMenu_Poemas_Poesias in 'UMenu_Poemas_Poesias.pas' {FrmLiteratura},
  UTipos_Poemas in 'UTipos_Poemas.pas' {FrmTipos_Poemas},
  UMedia_Musikas in 'UMedia_Musikas.pas' {FrmMedia_Misikas},
  UPricipal_Religiao in 'UPricipal_Religiao.pas' {FrmPrincipal_Religiao},
  UMenu in 'UMenu.pas' {FrmMenu},
  UPaises in 'UPaises.pas' {FrmDicionario_Reli_Pop},
  UTipo_Poeta in 'UTipo_Poeta.pas' {FrmTipo_Poetas},
  UDados in 'UDados.pas' {FrmDados},
  UMachado_Assis in 'UMachado_Assis.pas' {FrmMachado_Assis},
  UCruz_Souza in 'UCruz_Souza.pas' {FrmCruz_Sousa},
  UConfing in 'UConfing.pas' {FrmConfiguracoes},
  UNomes in 'UNomes.pas' {FrmNomes},
  UCastro_Alves in 'UCastro_Alves.pas' {FrmCastro_Alves},
  UBibi_Machado_Assis in 'UBibi_Machado_Assis.pas' {FrmBibi_Machado_Assis},
  UPoe_Castro_Alves in 'UPoe_Castro_Alves.pas' {FrmPoe_Castro_Alves},
  UMachado_Assis_Romances in 'UMachado_Assis_Romances.pas' {FrmMachado_Assis_Romance},
  UGilberto_Gil in 'UGilberto_Gil.pas' {FrmGilberto_Gil},
  UMilton_Nascimento in 'UMilton_Nascimento.pas' {FrmMilton_Nascimento},
  UPreconceito in 'UPreconceito.pas' {FrmAdbias_Nascimento},
  UDados_Estatis in 'UDados_Estatis.pas' {FrmDados_esta},
  UPoe_Cruz_Souza in 'UPoe_Cruz_Souza.pas' {FrmCruz_Souza_Poema},
  UManuel_Inacio in 'UManuel_Inacio.pas' {FrmManuel_Inacio},
  ULuiz_Gama in 'ULuiz_Gama.pas' {FrmDados_esta_Tabel},
  UGoncalves_Dias in 'UGoncalves_Dias.pas' {FrmGoncalves_Dias},
  ULino_Guedes in 'ULino_Guedes.pas' {FrmGT_Dieese},
  UBroq_Cruz_Sousa in 'UBroq_Cruz_Sousa.pas' {FrmNovas_Poesias_03},
  UJogo_Velha in 'UJogo_Velha.pas' {FrmJogo_Velha},
  UNotas in 'UNotas.pas' {FrmNotas},
  UMidias in 'UMidias.pas' {FrmMidias},
  UMaps in 'UMaps.pas' {FrmMaps},
  UMapa in 'UMapa.pas' {FrmOrixas},
  USlide in 'USlide.pas' {FrmDicionario_pop_up},
  UNovas_Poesias in 'UNovas_Poesias.pas' {FrmNovas_Poesias},
  UNovas_Poesias_02 in 'UNovas_Poesias_02.pas' {FrmNovas_Poesias_02},
  UGame_Intera in 'UGame_Intera.pas' {FrmGame_Intera},
  UCaca_Palavras in 'UCaca_Palavras.pas' {FrmCaca_Palavras},
  UMapa_Intera in 'UMapa_Intera.pas' {FrmMapa_Intera},
  UCont_Cartola in 'UCont_Cartola.pas' {FrmCont_Cartola},
  ULivros_02 in 'ULivros_02.pas' {FrmLivro_02},
  UApre in 'UApre.pas' {FrmApre},
  UTipo_Midia in 'UTipo_Midia.pas' {FrmPixinguinha};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Dicionário de Vocabulário Técnico Lingüístico e Literário das Culturas Negras no Brasil';
  Application.CreateForm(TFrmLoggo, FrmLoggo);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmApre, FrmApre);
  Application.Run;
End.

