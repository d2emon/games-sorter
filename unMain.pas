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
    procedure aCompaniesExecute(Sender: TObject);
    procedure aGenresExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

uses unCompanies, unGenres, unData;

{$R *.dfm}

procedure TfmMain.aCompaniesExecute(Sender: TObject);
begin
  fmCompanies.Show;
end;

procedure TfmMain.aGenresExecute(Sender: TObject);
begin
  fmGenres.Show;
end;

end.
