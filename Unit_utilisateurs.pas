unit Unit_utilisateurs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, sGroupBox, sSkinManager, sSkinProvider,
  ComCtrls, sStatusBar, Buttons, sBitBtn, sEdit, ExtCtrls, sPanel,
  IBDatabase, DB, IBCustomDataSet, IBTable, DBCtrls, Mask, IBQuery, ExtDlgs,
  ADODB;

type
  TUtilisateurs = class(TForm)
    sGroupBox1: TsGroupBox;
    DBGrid1: TDBGrid;
    sPanel1: TsPanel;
    sStatusBar1: TsStatusBar;
    Panel1: TPanel;
    sBitBtn5: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sGroupBox4: TsGroupBox;
    sGroupBox5: TsGroupBox;
    sGroupBox6: TsGroupBox;
    sGroupBox7: TsGroupBox;
    sGroupBox8: TsGroupBox;
    sGroupBox9: TsGroupBox;
    SpeedButton2: TSpeedButton;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    sGroupBox10: TsGroupBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBImage1: TDBImage;
    sBitBtn6: TsBitBtn;
    sBitBtn7: TsBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    sGroupBox11: TsGroupBox;
    DBEdit9: TDBEdit;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Utilisateurs: TUtilisateurs;

implementation

uses Unit_principale, Unit_loading;

{$R *.dfm}

procedure TUtilisateurs.SpeedButton1Click(Sender: TObject);
begin
     Form_principale.Show ;
     Utilisateurs.Close ;
end;

procedure TUtilisateurs.sBitBtn1Click(Sender: TObject);
begin
     ADOTable1.Append ;
end;


procedure TUtilisateurs.sBitBtn2Click(Sender: TObject);
begin


     try
        ADOTable1.Post;
        
        ShowMessage('Les données a été enregistrer avec succée');

     Except
          on E: Exception do
          begin
            showmessage(E.message);
          end;
     end ;
end;

procedure TUtilisateurs.sBitBtn6Click(Sender: TObject);
begin
    ADOTable1.Next ;
end;

procedure TUtilisateurs.sBitBtn7Click(Sender: TObject);
begin
     ADOTable1.Prior ;
end;

procedure TUtilisateurs.sBitBtn5Click(Sender: TObject);
begin
    Loading_form.ADOConnection1.Connected := false ;
    ADOTable1.Active := false ;

    Loading_form.ADOConnection1.Connected := true ;
    ADOTable1.Active := true ;

end;

procedure TUtilisateurs.SpeedButton2Click(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then
     begin
          DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
     end;
end;

procedure TUtilisateurs.sBitBtn4Click(Sender: TObject);
begin
    ADOTable1.Delete ;
end;

procedure TUtilisateurs.sBitBtn3Click(Sender: TObject);
begin
    ADOTable1.Edit;
    ADOTable1.UpdateRecord ;
end;

procedure TUtilisateurs.FormShow(Sender: TObject);
begin
    ADOTable1.Close;
    ADOTable1.TableName := 'Utilisateurs';
    ADOTable1.open;
end;

end.
