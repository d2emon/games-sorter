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
    tbFilterDevelopers: TTable;
    tbFilterPublishers: TTable;
    tbFilterGenres: TTable;
    dsFilterDevelopers: TDataSource;
    dsFilterPublishers: TDataSource;
    dsFilterGenres: TDataSource;
    tbGamesGenreName: TStringField;
    tbGamesPublisherCompany: TStringField;
    tbGamesDeveloperCompany: TStringField;
    tbFilterDevelopersId: TAutoIncField;
    tbFilterDevelopersCompany: TStringField;
    tbFilterPublishersId: TAutoIncField;
    tbFilterPublishersCompany: TStringField;
    tbFilterGenresId: TAutoIncField;
    tbFilterGenresGenre: TStringField;
    tbAtmosphere: TTable;
    tbEngine: TTable;
    tbPlot: TTable;
    tbTheme: TTable;
    tbView: TTable;
    dsEngine: TDataSource;
    tbEngineId: TAutoIncField;
    tbEngineEngine: TStringField;
    dsTheme: TDataSource;
    tbThemeId: TAutoIncField;
    tbThemeTheme: TStringField;
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
