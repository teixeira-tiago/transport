unit UHistorico;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
    Mask, Windows,
{$ELSE}
    MaskEdit,
{$ENDIF}
   Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, IBCustomDataSet, IBTable, StdCtrls, DBCtrls,
  Grids, DBGrids;

type
  TFHistorico = class(TForm)
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    THistorico: TIBTable;
    dsHistorico: TDataSource;
    THistoricoCODHIST: TIntegerField;
    THistoricoCODIGOHIST: TIntegerField;
    THistoricoSUBCODIGOHIST: TIntegerField;
    THistoricoINCHIST: TIntegerField;
    THistoricoDESCHIST: TIBStringField;
    THistoricoTIPOHIST: TIBStringField;
    THistoricoEMPRESAHIST: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHistorico: TFHistorico;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFHistorico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     THistorico.Close;
     Destroy;
end;

procedure TFHistorico.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

end.
