unit ULigBanco;

interface

uses
  SysUtils, Classes, DB, DBTables, ADODB, QForms;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    qrpalavras: TADOQuery;
    qrreligiao: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    caminho: string;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
    ADOConnection1.ConnectionString :=  'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + ExtractFilePath(Application.ExeName) +'\BDPalavras.mdb;Persist Security Info=False';
    ADOConnection1.open;
end;

end.
