unit UVeiculos;

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
  Dialogs, ComCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, DB, Buttons;

type
  TFVeiculos = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    TVeiculos: TSQLQuery;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    TVeiculosCODVEIC: TIntegerField;
    TVeiculosCHASSI: TStringField;
    TVeiculosPLACA: TStringField;
    TVeiculosMARCAVEIC: TStringField;
    TVeiculosMODELOVEIC: TStringField;
    TVeiculosNOMEVEIC: TStringField;
    TVeiculosANOVEIC: TStringField;
    TVeiculosPROCEDVEIC: TStringField;
    TVeiculosTERCEIRIZADO: TSmallintField;
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
  FVeiculos: TFVeiculos;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFVeiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TVeiculos.Close;
     Destroy;
end;

procedure TFVeiculos.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     DBEdit1.SetFocus;
end;

procedure TFVeiculos.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TFVeiculos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

end.
