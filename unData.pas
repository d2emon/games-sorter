unit unData;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdmData = class(TDataModule)
    tbGenres: TTable;
    tbCompanies: TTable;
    tbGames: TTable;
    dsGenres: TDataSource;
    dsCompanies: TDataSource;
    tbCompaniesId: TAutoIncField;
    tbCompaniesCompany: TStringField;
    dsGames: TDataSource;
    tbGamesId: TAutoIncField;
    tbGamesTitle: TStringField;
    tbGamesPublisher: TIntegerField;
    tbGamesDeveloper: TIntegerField;
    tbGamesGenre: TIntegerField;
    tbGamesRelease: TDateField;
    tbGamesDescription: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmData: TdmData;

implementation

{$R *.dfm}

end.
