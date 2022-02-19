unit Unit_principale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, Buttons, sSkinProvider,
  sSkinManager, StdCtrls, sPanel, sSpeedButton, sBitBtn, sStatusBar,
  sToolBar, sLabel;

type
  TForm_principale = class(TForm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sToolBar1: TsToolBar;
    sStatusBar1: TsStatusBar;
    sWebLabel1: TsWebLabel;
    sWebLabel2: TsWebLabel;
    sWebLabel3: TsWebLabel;
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form_principale: TForm_principale;

implementation

uses Unit_utilisateurs, Unit_bdd, Unit_Server, Unit_verification;

{$R *.dfm}

procedure TForm_principale.sSpeedButton2Click(Sender: TObject);
begin

    Form_principale.Hide ;
    Utilisateurs.Show ;
end;

procedure TForm_principale.sSpeedButton3Click(Sender: TObject);
begin
    Form_principale.Hide;
    Form_bdd.Show;

end;

procedure TForm_principale.BitBtn1Click(Sender: TObject);
begin
     Application.Terminate ;
end;

procedure TForm_principale.sSpeedButton1Click(Sender: TObject);
begin
    Form_Verification.Show;
    Form_principale.Hide ;

end;

end.
