unit Unit_Client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ScktComp, sPanel, sGauge;

type
  TForm_Client = class(TForm)
    GroupBox3: TGroupBox;
    Button2: TButton;
    Edit5: TEdit;
    Memo1: TMemo;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Shape1: TShape;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    ClientSocket1: TClientSocket;
    sPanel1: TsPanel;
    sGauge1: TsGauge;
    Label5: TLabel;
    Timer1: TTimer;
    Shape2: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form_Client: TForm_Client;

implementation

{$R *.dfm}

procedure TForm_Client.Button1Click(Sender: TObject);
begin
    ClientSocket1.Active := false;
    ClientSocket1.Host := Edit1.Text ;
    ClientSocket1.Port := strToint(Edit2.Text);
    sGauge1.Visible := true ;
    timer1.Enabled := true ;
    

end;

procedure TForm_Client.Button2Click(Sender: TObject);
begin
    ClientSocket1.Socket.SendText(Edit5.Text);
    Memo1.Lines.Add('Moi : '+Edit5.Text);
    Edit5.Text := '';
end;

procedure TForm_Client.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
     CheckBox1.Checked := Socket.Connected ; //True/False
     Shape1.Brush.Color := $0000FF80 ;
     Edit3.Text := Socket.LocalAddress ;
     Edit4.Text := Socket.LocalHost ;
     Memo1.Lines.Clear ;

end;

procedure TForm_Client.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
begin
    Memo1.Lines.Add(ClientSocket1.Socket.ReceiveText);
end;

procedure TForm_Client.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
    CheckBox1.Checked := Socket.Connected ; //True/False
end;

procedure TForm_Client.Timer1Timer(Sender: TObject);
begin
    sGauge1.Progress :=  sGauge1.Progress+1 ;
    if  sGauge1.Progress = 100 then
    begin
        Timer1.Enabled := false ;
        ClientSocket1.Active := true ;
        Shape2.Brush.Color := $0000FF80 ;
        ShowMessage('Connexion établie avec succès ...');
    end;
end;

end.
