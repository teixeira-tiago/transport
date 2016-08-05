unit UCidades;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  IBTable, IBCustomDataSet, IBQuery, Mask, Windows,
{$ELSE}
  sqldb, MaskEdit, LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, DB, Buttons;

type
  TFCidades = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DataSource2: TDataSource;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    TCidade: TSQLQuery;
    TEstado: TSQLQuery;
    TCidadeNOMECID: TStringField;
    TCidadeCODCID: TIntegerField;
    TCidadeCODEST: TIntegerField;
    TEstadoCODEST: TIntegerField;
    TEstadoNOMEEST: TStringField;
    TEstadoSIGLAEST: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    TCidadeDISTUBA: TIntegerField;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCidades: TFCidades;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TCidade.Close;
     TEstado.Close;
     Destroy;
end;

procedure TFCidades.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     DBEdit1.SetFocus;
end;

procedure TFCidades.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TFCidades.DBLookupComboBox1DropDown(Sender: TObject);
begin
     TEstado.Active:=false;
     TEstado.Active:=true;
end;

procedure TFCidades.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

procedure TFCidades.Edit1Change(Sender: TObject);
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
        DataSource1.DataSet.Locate('NOMECID',Edit1.Text,[lopartialkey,locaseinsensitive]);
     end;
end;

end.
