
procedure TForm1.bGoClick(Sender: TObject);
var
doc            : IDocument;
WS             : IWorkspace;
CurrentLib     :ISch_Lib;
LibIterator             : ISch_Iterator;
ImplIterator            : ISch_Iterator;
LibComponent            : ISch_Component;
SchPins                 : ISch_Pin;
txt                     : string;
dMode                   : string;
SchModelDatafileLink : ISch_ModelDatafileLink;
i                    : int;

begin
     WS  := GetWorkspace;
     Doc := WS.DM_FocusedDocument;
     CurrentLib := SchServer.GetCurrentSchDocument;

     If CurrentLib = Nil Then
     Begin
        ShowWarning('This is not a schematic library document. Aborting');
        Exit;
     End;
     If Doc.DM_DocumentKind <> 'SCHLIB' Then
     Begin
        ShowWarning('This is not a schematic library document. Aborting');
        Exit;
     End;

     LibIterator := CurrentLib.SchLibIterator_Create;
     LibIterator.AddFilter_ObjectSet(MkSet(eSchComponent));
     LibComponent := LibIterator.FirstSchObject;

     while (LibComponent <> Nil) do
     begin
        { Exclude bogus components, such as title blocks. }
        if (LibComponent.Designator.Text <> '*') then
        begin

          ImplIterator := LibComponent.SchIterator_Create;
          ImplIterator.AddFilter_ObjectSet(MkSet(ePin));
          SchPins := ImplIterator.FirstSchObject;
          txt := '';
          while (SchPins <> Nil) do
          begin
               dMode := IntToStr(SchPins.OwnerPartDisplayMode);

               if Pos('"' + SchPins.Designator + '_' + dMode + '"', txt)>0 then
               begin
                    Log.Lines.Add('Name: '+ LibComponent.LibReference + '   Pin� ' +SchPins.Designator + '   Mode�' + dMode);
                    //ShowMessage('������� ������������ ����� � ����������! ����� ������ � ���� ������� ��� ���������� � ������������� ����� � ������ ������������� ����');
               end
               else
               begin
                    txt := txt + '"' + SchPins.Designator + '_' + dMode + '" ';
               end;
               SchPins := ImplIterator.NextSchObject;
          end;
        end;
        LibComponent.SchIterator_Destroy(ImplIterator);

        { Move on to next schematic component. }
        LibComponent := LibIterator.NextSchObject;
     end;
        CurrentLib.SchIterator_Destroy(LibIterator);
    //ShowMessage('������������ ����� ����� �� �������!');
end;


