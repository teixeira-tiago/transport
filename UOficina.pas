unit UOficina;

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
  Dialogs, DB, StdCtrls, Buttons, DBCtrls,
  Grids, DBGrids, ExtCtrls, ComCtrls;

type
  TFOficina = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    TOficina: TSQLQuery;
    TCidade: TSQLQuery;
    TEstado: TSQLQuery;
    dsOficina: TDataSource;
    dsCidade: TDataSource;
    dsEstado: TDataSource;
    TOficinaCODOF: TIntegerField;
    TOficinaCODCID: TIntegerField;
    TOficinaCODEST: TIntegerField;
    TOficinaNOMEOF: TStringField;
    TOficinaRAZAOSOF: TStringField;
    TOficinaENDERECOOF: TStringField;
    TOficinaBAIRROOF: TStringField;
    TOficinaCEPOF: TStringField;
    TOficinaFONEOF: TStringField;
    TCidadeCODCID: TIntegerField;
    TCidadeCODEST: TIntegerField;
    TCidadeNOMECID: TStringField;
    TCidadeDISTUBA: TIntegerField;
    TEstadoCODEST: TIntegerField;
    TEstadoNOMEEST: TStringField;
    TEstadoSIGLAEST: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOficina: TFOficina;

implementation

uses Uprincipal;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TFOficina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TOficina.Close;
     TCidade.Close;
     TEstado.Close;
     Destroy;
end;

procedure TFOficina.DBLookupComboBox1DropDown(Sender: TObject);
begin
     TCidade.Active:=false;
     TCidade.Active:=true;
end;

procedure TFOficina.DBLookupComboBox2DropDown(Sender: TObject);
begin
     TEstado.Active:=false;
     TEstado.Active:=true;
end;

procedure TFOficina.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          Key:=#0;
          SelectNext((Sender as TWinControl),true,true);
     end;
end;

procedure TFOficina.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     DBEdit1.SetFocus;
end;

end.
