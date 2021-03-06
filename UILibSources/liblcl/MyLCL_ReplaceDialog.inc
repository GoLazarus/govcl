
//----------------------------------------
// 代码由GenlibVcl工具自动生成。
// Copyright ? ying32. All Rights Reserved.
//
//----------------------------------------

function ReplaceDialog_Create(AOwner: TComponent): TReplaceDialog; extdecl;
begin
  Result :=  TReplaceDialog.Create(AOwner);
end;

procedure ReplaceDialog_Free(AObj: TReplaceDialog); extdecl;
begin
  AObj.Free;
end;

procedure ReplaceDialog_CloseDialog(AObj: TReplaceDialog); extdecl;
begin
  AObj.CloseDialog;
end;

function ReplaceDialog_Execute(AObj: TReplaceDialog): LongBool; extdecl;
begin
  Result :=  AObj.Execute;
end;

function ReplaceDialog_FindComponent(AObj: TReplaceDialog; AName: PChar): TComponent; extdecl;
begin
  Result :=  AObj.FindComponent(AName);
end;

function ReplaceDialog_GetNamePath(AObj: TReplaceDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.GetNamePath);
end;

function ReplaceDialog_HasParent(AObj: TReplaceDialog): LongBool; extdecl;
begin
  Result :=  AObj.HasParent;
end;

procedure ReplaceDialog_Assign(AObj: TReplaceDialog; Source: TPersistent); extdecl;
begin
  AObj.Assign(Source);
end;

function ReplaceDialog_ClassName(AObj: TReplaceDialog): PChar; extdecl;
begin
  Result :=  ToPChar(AObj.ClassName);
end;

function ReplaceDialog_Equals(AObj: TReplaceDialog; Obj: TObject): LongBool; extdecl;
begin
  Result :=  AObj.Equals(Obj);
end;

function ReplaceDialog_GetHashCode(AObj: TReplaceDialog): Integer; extdecl;
begin
  Result :=  AObj.GetHashCode;
end;

function ReplaceDialog_ToString(AObj: TReplaceDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.ToString);
end;

function ReplaceDialog_GetReplaceText(AObj: TReplaceDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.ReplaceText);
end;

procedure ReplaceDialog_SetReplaceText(AObj: TReplaceDialog; AValue: PChar); extdecl;
begin
  AObj.ReplaceText := AValue;
end;

procedure ReplaceDialog_SetOnReplace(AObj: TReplaceDialog; AEventId: NativeUInt); extdecl;
begin
  if AEventId = 0 then
  begin
    AObj.OnReplace := nil;
    EventClass.Remove(AObj, geReplace);
    Exit;
  end;
  AObj.OnReplace := @EventClass.OnReplace;
  EventClass.Add(AObj, geReplace, AEventId);
end;

function ReplaceDialog_GetLeft(AObj: TReplaceDialog): Integer; extdecl;
begin
  Result :=  AObj.Left;
end;

procedure ReplaceDialog_SetLeft(AObj: TReplaceDialog; AValue: Integer); extdecl;
begin
  AObj.Left := AValue;
end;

procedure ReplaceDialog_GetPosition(AObj: TReplaceDialog; var Result: TPoint); extdecl;
begin
  Result :=  AObj.Position;
end;

procedure ReplaceDialog_SetPosition(AObj: TReplaceDialog; var AValue: TPoint); extdecl;
begin
  AObj.Position := AValue;
end;

function ReplaceDialog_GetTop(AObj: TReplaceDialog): Integer; extdecl;
begin
  Result :=  AObj.Top;
end;

procedure ReplaceDialog_SetTop(AObj: TReplaceDialog; AValue: Integer); extdecl;
begin
  AObj.Top := AValue;
end;

function ReplaceDialog_GetFindText(AObj: TReplaceDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.FindText);
end;

procedure ReplaceDialog_SetFindText(AObj: TReplaceDialog; AValue: PChar); extdecl;
begin
  AObj.FindText := AValue;
end;

function ReplaceDialog_GetOptions(AObj: TReplaceDialog): TFindOptions; extdecl;
begin
  Result :=  AObj.Options;
end;

procedure ReplaceDialog_SetOptions(AObj: TReplaceDialog; AValue: TFindOptions); extdecl;
begin
  AObj.Options := AValue;
end;

procedure ReplaceDialog_SetOnFind(AObj: TReplaceDialog; AEventId: NativeUInt); extdecl;
begin
  if AEventId = 0 then
  begin
    AObj.OnFind := nil;
    EventClass.Remove(AObj, geFind);
    Exit;
  end;
  AObj.OnFind := @EventClass.OnFind;
  EventClass.Add(AObj, geFind, AEventId);
end;

function ReplaceDialog_GetHandle(AObj: TReplaceDialog): HWND; extdecl;
begin
  Result :=  AObj.Handle;
end;

procedure ReplaceDialog_SetOnClose(AObj: TReplaceDialog; AEventId: NativeUInt); extdecl;
begin
  if AEventId = 0 then
  begin
    AObj.OnClose := nil;
    EventClass.Remove(AObj, geClose);
    Exit;
  end;
  AObj.OnClose := @EventClass.OnClose;
  EventClass.Add(AObj, geClose, AEventId);
end;

procedure ReplaceDialog_SetOnShow(AObj: TReplaceDialog; AEventId: NativeUInt); extdecl;
begin
  if AEventId = 0 then
  begin
    AObj.OnShow := nil;
    EventClass.Remove(AObj, geShow);
    Exit;
  end;
  AObj.OnShow := @EventClass.OnShow;
  EventClass.Add(AObj, geShow, AEventId);
end;

function ReplaceDialog_GetComponentCount(AObj: TReplaceDialog): Integer; extdecl;
begin
  Result :=  AObj.ComponentCount;
end;

function ReplaceDialog_GetComponentIndex(AObj: TReplaceDialog): Integer; extdecl;
begin
  Result :=  AObj.ComponentIndex;
end;

procedure ReplaceDialog_SetComponentIndex(AObj: TReplaceDialog; AValue: Integer); extdecl;
begin
  AObj.ComponentIndex := AValue;
end;

function ReplaceDialog_GetOwner(AObj: TReplaceDialog): TComponent; extdecl;
begin
  Result :=  AObj.Owner;
end;

function ReplaceDialog_GetName(AObj: TReplaceDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.Name);
end;

procedure ReplaceDialog_SetName(AObj: TReplaceDialog; AValue: PChar); extdecl;
begin
  AObj.Name := AValue;
end;

function ReplaceDialog_GetTag(AObj: TReplaceDialog): NativeInt; extdecl;
begin
  Result :=  AObj.Tag;
end;

procedure ReplaceDialog_SetTag(AObj: TReplaceDialog; AValue: NativeInt); extdecl;
begin
  AObj.Tag := AValue;
end;

function ReplaceDialog_GetComponents(AObj: TReplaceDialog; AIndex: Integer): TComponent; extdecl;
begin
  Result :=  AObj.Components[AIndex];
end;


exports
  ReplaceDialog_Create,
  ReplaceDialog_Free,
  ReplaceDialog_CloseDialog,
  ReplaceDialog_Execute,
  ReplaceDialog_FindComponent,
  ReplaceDialog_GetNamePath,
  ReplaceDialog_HasParent,
  ReplaceDialog_Assign,
  ReplaceDialog_ClassName,
  ReplaceDialog_Equals,
  ReplaceDialog_GetHashCode,
  ReplaceDialog_ToString,
  ReplaceDialog_GetReplaceText,
  ReplaceDialog_SetReplaceText,
  ReplaceDialog_SetOnReplace,
  ReplaceDialog_GetLeft,
  ReplaceDialog_SetLeft,
  ReplaceDialog_GetPosition,
  ReplaceDialog_SetPosition,
  ReplaceDialog_GetTop,
  ReplaceDialog_SetTop,
  ReplaceDialog_GetFindText,
  ReplaceDialog_SetFindText,
  ReplaceDialog_GetOptions,
  ReplaceDialog_SetOptions,
  ReplaceDialog_SetOnFind,
  ReplaceDialog_GetHandle,
  ReplaceDialog_SetOnClose,
  ReplaceDialog_SetOnShow,
  ReplaceDialog_GetComponentCount,
  ReplaceDialog_GetComponentIndex,
  ReplaceDialog_SetComponentIndex,
  ReplaceDialog_GetOwner,
  ReplaceDialog_GetName,
  ReplaceDialog_SetName,
  ReplaceDialog_GetTag,
  ReplaceDialog_SetTag,
  ReplaceDialog_GetComponents;

