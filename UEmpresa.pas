unit UEmpresa;

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
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls, DB,
  StdCtrls, Buttons;

type
  TFEmpresa = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    dsEmpresa: TDataSource;
    TEmpresa: TSQLQuery;
    TEmpresaCODFAB: TIntegerField;
    TEmpresaNOMEFAB: TStringField;
    TEmpresaTIPOPROD: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    TEmpresaCODCID: TIntegerField;
    TEmpresaCODEST: TIntegerField;
    TEmpresaENDERECOFAB: TStringField;
    TEmpresaBAIRROFAB: TStringField;
    TEmpresaCEPFAB: TStringField;
    TEmpresaFONEFAB: TStringField;
    TEmpresaEMAILFAB: TStringField;
    TEmpresaSITEFAB: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    TCidade: TSQLQuery;
    TEstado: TSQLQuery;
    dsCidade: TDataSource;
    dsEstado: TDataSource;
    TCidadeCODCID: TIntegerField;
    TCidadeCODEST: TIntegerField;
    TCidadeNOMECID: TStringField;
    TCidadeDISTUBA: TIntegerField;
    TEstadoCODEST: TIntegerField;
    TEstadoNOMEEST: TStringField;
    TEstadoSIGLAEST: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEmpresa: TFEmpresa;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TEmpresa.Close;
     TCidade.Close;
     TEstado.Close;
     Destroy;
end;

procedure TFEmpresa.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     DBEdit1.SetFocus;
end;

procedure TFEmpresa.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TFEmpresa.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

procedure TFEmpresa.DBLookupComboBox1DropDown(Sender: TObject);
begin
     TCidade.Active:=false;
     TCidade.Active:=true;
end;

procedure TFEmpresa.DBLookupComboBox2DropDown(Sender: TObject);
begin
     TEstado.Active:=false;
     TEstado.Active:=true;
end;

end.
