program games;

uses
  Forms,
  unMain in 'unMain.pas' {fmMain},
  unData in 'unData.pas' {dmData: TDataModule},
  unGenres in 'unGenres.pas' {fmGenres},
  unCompanies in 'unCompanies.pas' {fmCompanies};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfmGenres, fmGenres);
  Application.CreateForm(TfmCompanies, fmCompanies);
  Application.Run;
end.
