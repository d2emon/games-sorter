program games;

uses
  Forms,
  unMain in 'unMain.pas' {fmMain},
  unData in 'unData.pas' {dmData: TDataModule},
  unGenres in 'unGenres.pas' {fmGenres},
  unCompanies in 'unCompanies.pas' {fmCompanies},
  unEngine in 'unEngine.pas' {fmEngine},
  unTheme in 'unTheme.pas' {fmTheme};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfmGenres, fmGenres);
  Application.CreateForm(TfmCompanies, fmCompanies);
  Application.CreateForm(TfmEngine, fmEngine);
  Application.CreateForm(TfmTheme, fmTheme);
  Application.Run;
end.
