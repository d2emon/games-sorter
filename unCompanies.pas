unit unCompanies;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TfmCompanies = class(TForm)
    dbgdCompanies: TDBGrid;
    pnNav: TPanel;
    dbnvNav: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCompanies: TfmCompanies;

implementation

uses unData;

{$R *.dfm}

end.
