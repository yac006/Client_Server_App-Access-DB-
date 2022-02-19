unit Unit_Server;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp, ExtCtrls, IBDatabase, DB, IBCustomDataSet,
  IBTable, DBCtrls, Buttons, IBStoredProc, IBEvents, sSkinProvider,
  sSkinManager, sPanel, sGauge, acSlider, IBQuery;

type
  TForm_Server = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ServerSocket1: TServerSocket;
    Edit6: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    Label6: TLabel;
    sPanel1: TsPanel;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    sSlider1: TsSlider;
    Label7: TLabel;
    Shape1: TShape;
    procedure ServerSocket1Accept(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Button2Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure sSlider1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form_Server: TForm_Server;

implementation

{$R *.dfm}

procedure TForm_Server.ServerSocket1Accept(Sender: TObject;
  Socket: TCustomWinSocket);
begin
    CheckBox1.Checked := true ;
    Shape1.Brush.Color := $0000FF80 ;
    sSlider1.Color := $0076FEC5 ;
    Edit2.Text := socket.RemoteAddress ;
    Edit3.Text := socket.RemoteHost;
    Edit5.Text := socket.LocalAddress;
    Edit4.Text := 'Connecté' ;

end;

procedure TForm_Server.Button2Click(Sender: TObject);
begin
    ServerSocket1.Socket.Connections[0].SendText(Edit6.Text);
    Memo1.Lines.add( Label7.Caption+': '+Edit6.Text) ;
    Edit6.Text := '';
end;

procedure TForm_Server.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
     Memo1.Lines.Add(Socket.RemoteHost+' : '+Socket.ReceiveText);
end;

procedure TForm_Server.sSlider1Click(Sender: TObject);
var
  port : integer ;
begin
     if sSlider1.SliderOn = true then
     begin
           ServerSocket1.Active := false ;
           port := strToint(Edit1.Text);
           ServerSocket1.Port := port ;
           ServerSocket1.Active := true;
           edit4.Text := 'Lisning ....'
     end
       else
         begin
           ServerSocket1.Active := false ;
           edit4.Text := '' ;
         end;
end;

end.
