unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function NSD(a,b:integer):integer;
var pom:integer;
begin
  while b<>0 do begin
  pom:=b;
  b:=a mod b;
  a:=pom;
  end;
  result:=a;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
showmessage(inttostr(NSD(strtoint(edit1.Text),strtoint(edit2.Text))));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
showmessage(inttostr((strtoint(edit1.Text)*strtoint(edit2.text))div(NSD(strtoint(edit1.Text),strtoint(edit2.Text)))));
end;

end.
