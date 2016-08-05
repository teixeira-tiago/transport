unit UDespesas;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  IBCustomDataSet, IBTable, Mask, Windows,
{$ELSE}
  sqldb, MaskEdit, LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, DB, StdCtrls,
  Buttons;

type
  TFDespesas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    TDespesas: TSQLQuery;
    TDespesasCODDESP: TIntegerField;
    TDespesasTIPODESP: TStringField;
    TDespesasDESCDESP: TMemoField;
    TDespesasVALRSDESP: TIntegerField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDespesas: TFDespesas;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFDespesas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TDespesas.Close;
     Destroy;
end;

procedure TFDespesas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     DBEDit1.SetFocus;
end;

procedure TFDespesas.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TFDespesas.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

end.
