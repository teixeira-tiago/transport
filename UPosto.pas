unit UPosto;

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
  Dialogs, DB, StdCtrls, DBCtrls,
  Buttons, Grids, DBGrids, ExtCtrls, ComCtrls;

type
  TFPosto = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    TPosto: TSQLQuery;
    DataSource1: TDataSource;
    TPostoCODPOS: TIntegerField;
    TPostoNOMEPOS: TStringField;
    Label2: TLabel;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPosto: TFPosto;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFPosto.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TFPosto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TPosto.Close;
     Destroy;
end;

procedure TFPosto.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

procedure TFPosto.Edit1Change(Sender: TObject);
var
   i:integer;
   Key:char;
   aux:string;
begin
     Key:=#0;
     aux:=Edit1.Text;
     for i:=1 to Length(aux) do
     begin
        Key:=aux[i];
     if Key in ['a'..'z','A'..'Z'] then
        DataSource1.DataSet.Locate('NOMEPOS',Edit1.Text,[lopartialkey,locaseinsensitive]);
     end;
end;

end.
