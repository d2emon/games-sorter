unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ActnList, ToolWin, ComCtrls, Menus, StdActns,
  StdCtrls, DBCtrls, Mask, Grids, DBGrids;

type
  TfmMain = class(TForm)
    pnFilter: TPanel;
    pnMain: TPanel;
    mmMain: TMainMenu;
    cbTools: TCoolBar;
    alActions: TActionList;
    spFilter: TSplitter;
    pnDetail: TPanel;
    spDetail: TSplitter;
    pnList: TPanel;
    aOptions: TAction;
    File1: TMenuItem;
    Options1: TMenuItem;
    N1: TMenuItem;
    aFileExit: TFileExit;
    Exit1: TMenuItem;
    aCompanies: TAction;
    aGenres: TAction;
    Lookups1: TMenuItem;
    Companies1: TMenuItem;
    Genres1: TMenuItem;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Splitter2: TSplitter;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBRichEdit1: TDBRichEdit;
    DBGrid4: TDBGrid;
    Filters1: TMenuItem;
    miFilterDevelopers: TMenuItem;
    miFilterPublishers: TMenuItem;
    miFilterGenres: TMenuItem;
    aThemes: TAction;
    aViews: TAction;
    aEngines: TAction;
    aAtmospheres: TAction;
    aPlots: TAction;
    Engines1: TMenuItem;
    hemes1: TMenuItem;
    Atmospheres1: TMenuItem;
    Plots1: TMenuItem;
    procedure aCompaniesExecute(Sender: TObject);
    procedure aGenresExecute(Sender: TObject);
    procedure miFilterDevelopersClick(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure aEnginesExecute(Sender: TObject);
    procedure aThemesExecute(Sender: TObject);
  private
    FilterDevelopers: Boolean;
    FilterPublishers: Boolean;
    FilterGenres: Boolean;
    procedure Filter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

uses unCompanies, unGenres, unData, unEngine, unTheme;

{$R *.dfm}

procedure TfmMain.aCompaniesExecute(Sender: TObject);
begin
  fmCompanies.Show;
end;

procedure TfmMain.aGenresExecute(Sender: TObject);
begin
  fmGenres.Show;
end;

procedure TfmMain.Filter;
begin
  dmData.tbGames.Filter := '';
  if fmMain.FilterDevelopers then
    dmData.tbGames.Filter := 'Developer=''' + dmData.tbFilterDevelopersId.AsString + '''';
  if fmMain.FilterPublishers then
    dmData.tbGames.Filter := 'Publisher=''' + dmData.tbFilterPublishersId.AsString + '''';
  if fmMain.FilterGenres then
    dmData.tbGames.Filter := 'Genre=''' + dmData.tbFilterGenresId.AsString + '''';
  dmData.tbGames.Filtered := True;
end;

procedure TfmMain.miFilterDevelopersClick(Sender: TObject);
begin
  fmMain.FilterDevelopers := miFilterDevelopers.Checked;
  fmMain.FilterPublishers := miFilterPublishers.Checked;
  fmMain.FilterGenres := miFilterGenres.Checked;
  fmMain.Filter;
end;

procedure TfmMain.DBGrid3Exit(Sender: TObject);
begin
  fmMain.Filter;
end;

procedure TfmMain.aEnginesExecute(Sender: TObject);
begin
  fmEngine.Show;  
end;

procedure TfmMain.aThemesExecute(Sender: TObject);
begin
  fmTheme.Show;
end;

end.
