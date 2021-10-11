unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    TrackBar1: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses JpegErrors;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
 i: integer;
begin
  i:=StrToInt(Edit1.Text);
  Label1.Caption:='Error: JPEG # '+IntToStr(i)+' - '+cJpegErrors[i];
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
 Edit1.Text:=IntToStr(TrackBar1.Position);
 Button1.Click;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
 TrackBar1.Position:=StrToInt(Edit1.Text);
end;

end.
