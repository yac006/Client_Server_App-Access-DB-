program Project_principale;

uses
  Forms,
  Unit_principale in 'Unit_principale.pas' {Form_principale},
  Unit_loading in 'Unit_loading.pas' {Loading_form},
  Unit_utilisateurs in 'Unit_utilisateurs.pas' {Utilisateurs},
  Unit_bdd in 'Unit_bdd.pas' {Form_bdd},
  Unit_Server in 'Unit_Server.pas' {Form_Server},
  Unit_Client in 'Unit_Client.pas' {Form_Client},
  Unit_verification in 'Unit_verification.pas' {Form_Verification};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLoading_form, Loading_form);
  Application.CreateForm(TForm_bdd, Form_bdd);
  Application.CreateForm(TUtilisateurs, Utilisateurs);
  Application.CreateForm(TForm_principale, Form_principale);
  Application.CreateForm(TForm_Server, Form_Server);
  Application.CreateForm(TForm_Client, Form_Client);
  Application.CreateForm(TForm_Verification, Form_Verification);
  Application.Run;
end.
