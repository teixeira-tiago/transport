unit Ubancos;

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
  Dialogs, DBCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls, DB, Buttons;

type
  TFBancos = class(TForm)
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
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DataSource2: TDataSource;
    Label5: TLabel;
    DataSource3: TDataSource;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    TBancos: TSQLQuery;
    TCidade: TSQLQuery;
    TEstado: TSQLQuery;
    TCidadeCODCID: TIntegerField;
    TCidadeCODEST: TIntegerField;
    TCidadeNOMECID: TStringField;
    TEstadoCODEST: TIntegerField;
    TEstadoNOMEEST: TStringField;
    TEstadoSIGLAEST: TStringField;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    TBancosCODBAN: TIntegerField;
    TBancosCODCID: TIntegerField;
    TBancosCODEST: TIntegerField;
    TBancosNOMEBAN: TStringField;
    TBancosAGENCIA: TStringField;
    TBancosTIPOCONTA: TStringField;
    TBancosNUMEROCONTA: TStringField;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBancos: TFBancos;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TBancos.Close;
     TCidade.Close;
     TEstado.Close;
     Destroy;
end;

procedure TFBancos.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     DBEdit4.SetFocus;
end;

procedure TFBancos.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TFBancos.DBLookupComboBox2DropDown(Sender: TObject);
begin
     TCidade.Active:=false;
     TCidade.Active:=true;
end;

procedure TFBancos.DBLookupComboBox3DropDown(Sender: TObject);
begin
     TEstado.Active:=false;
     TEstado.Active:=true;
end;

procedure TFBancos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

end.
