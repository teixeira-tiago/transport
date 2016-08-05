unit UEstados;

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
  Dialogs, ComCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, DB, StdCtrls,
  Buttons;

type
  TFEstados = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    TEstados: TSQLQuery;
    TEstadosCODEST: TIntegerField;
    TEstadosNOMEEST: TStringField;
    TEstadosSIGLAEST: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
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
  FEstados: TFEstados;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFEstados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TEstados.Close;
     Destroy;
end;

procedure TFEstados.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     DBEDit1.SetFocus;
end;

procedure TFEstados.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TFEstados.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

end.
