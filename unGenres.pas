unit unGenres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TfmGenres = class(TForm)
    pnNav: TPanel;
    dbnvNav: TDBNavigator;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGenres: TfmGenres;

implementation

uses unData;

{$R *.dfm}

end.
