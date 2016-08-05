unit UPneu;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  IBCustomDataSet, Mask, IBTable, Windows,
{$ELSE}
  MaskEdit, sqldb, LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons,
  DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFPneu = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TPneu: TSQLQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    TPneuCODPNEU: TIntegerField;
    TPneuNSPNEU: TStringField;
    TPneuMARCAPNEU: TStringField;
    TPneuOBSPNEU: TMemoField;
    TPneuVALORPNEU: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    TPneuGARANPNEU: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPneu: TFPneu;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFPneu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TPneu.Close;
     Destroy;
end;

procedure TFPneu.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

end.
