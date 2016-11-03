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
