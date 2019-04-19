unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, mysql50conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls, DBGrids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MySQL50Connection1: TMySQL50Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
var str_sql : string;
begin
 try
   SQLTransaction1.Active:=true;
 except
   ShowMessage('Транзакция: ОШИБКА!');
   exit;
 end;
 try
   MySQL50Connection1.Connected:=true;
 except
   ShowMessage('Подключение к БД: ОШИБКА!');
   exit;
 end;
 try
   SQLQuery1.Active := false;
   SQLQuery1.SQL.Clear;
   str_sql := 'SET character_set_client='+#39+'utf8'+#39+',character_set_connection='+#39+'cp1251'+#39+',character_set_results='+#39+'utf8'+#39+';';
   SQLQuery1.sql.add(str_sql);
   SQLQuery1.ExecSQL;
   SQLQuery1.SQL.Clear;
   SQLQuery1.sql.add('SELECT * FROM film, zakazbiletov;');
   SQLQuery1.Open;
  except
   ShowMessage('SQL-запрос: ОШИБКА!');
   exit;
 end;
end;

end.

