program JpegErrorNumber;

uses
  Forms,
  MainFrm in 'MainFrm.pas' {Form1},
  JpegErrors in 'JpegErrors.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
