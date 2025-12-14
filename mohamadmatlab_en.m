bbfunction varargout = mohamadmatlab_en(varargin)
% MOHAMADMATLAB1 MATLAB code for mohamadmatlab1.fig
%      MOHAMADMATLAB1, by itself, creates a new MOHAMADMATLAB1 or raises the existing
%      singleton*.
%
%      H = MOHAMADMATLAB1 returns the handle to a new MOHAMADMATLAB1 or the handle to
%      the existing singleton*.
%
%      MOHAMADMATLAB1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MOHAMADMATLAB1.M with the given input arguments.
%
%      MOHAMADMATLAB1('Property','Value',...) creates a new MOHAMADMATLAB1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mohamadmatlab1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mohamadmatlab1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mohamadmatlab1

% Last Modified by GUIDE v2.5 22-Apr-2024 01:14:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mohamadmatlab_en_OpeningFcn, ...
                   'gui_OutputFcn',  @mohamadmatlab_en_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before mohamadmatlab1 is made visible.
function mohamadmatlab_en_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mohamadmatlab1 (see VARARGIN)
global V1 HZ z2 z1 C1 simout C3 F1 ffff
ffff=0
% Choose default command line output for mohamadmatlab1
handles.output = hObject;
C3=0
F1=0
C4=0
F4=0
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mohamadmatlab1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
z1= get(handles.radiobutton1,'value')
z2= get(handles.radiobutton2,'value')
set(handles.edit1,'string',num2str (380))
set(handles.edit3,'string',num2str (50))

% --- Outputs from this function are returned to the command line.
function varargout = mohamadmatlab_en_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global V1 HZ z2 z1 deg1 deg2 deg3

z1= get(handles.radiobutton1,'value')
if z1==1 && z2==0
%  set(handles.radiobutton2,'value',0)
deg1=120
deg2=0
deg3=-120
assignin('base','deg1',deg1)
assignin('base','deg2',deg2)
assignin('base','deg3',deg3)
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global V1 HZ z2 z1 deg1 deg2 deg3
z2= get(handles.radiobutton2,'value')
if z2==1 && z1==0
%  set(handles.radiobutton1,'value',0)
deg1=0
deg2=120
deg3=-120
assignin('base','deg1',deg1)
assignin('base','deg2',deg2)
assignin('base','deg3',deg3)
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z3  deg1 deg2 deg3

z3= get(handles.radiobutton3,'value')
if z3==1
%  set(handles.radiobutton2,'value',0)
deg1=0
deg2=-120
deg3=120
assignin('base','deg1',deg1)
assignin('base','deg2',deg2)
assignin('base','deg3',deg3)
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
global z4  deg1 deg2 deg3

z4= get(handles.radiobutton4,'value')
if z4==1
%  set(handles.radiobutton2,'value',0)
deg1=120
deg2=-120
deg3=0
assignin('base','deg1',deg1)
assignin('base','deg2',deg2)
assignin('base','deg3',deg3)
end

% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
global z5  deg1 deg2 deg3

z5= get(handles.radiobutton5,'value')
if z5==1
%  set(handles.radiobutton2,'value',0)
deg1=-120
deg2=120
deg3=0
assignin('base','deg1',deg1)
assignin('base','deg2',deg2)
assignin('base','deg3',deg3)
end

% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z6  deg1 deg2 deg3

z6= get(handles.radiobutton6,'value')
if z6==1
%  set(handles.radiobutton2,'value',0)
deg1=-120
deg2=0
deg3=120
assignin('base','deg1',deg1)
assignin('base','deg2',deg2)
assignin('base','deg3',deg3)
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton6



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global V1 HZ z2 z1 deg1 deg2 deg3 simout C1 simout2 I5 IC1  ic2 l2 l1 I11 T s TM TM11 C3 F1 degre degre1 degre2 degre3 degre4 degre5 vout fout vout1 vout2 vout3 
V1=str2double(get(handles.edit1,'string'))
HZ=str2double(get(handles.edit3,'string'))         
assignin('base','V1',V1)
assignin('base','HZ',HZ)
assignin('base','TM11',TM11)
matlabprojectnaser5
sim('matlabprojectnaser5')
plot(handles.axes1,s)
plot(handles.axes3,IC1)
grid on
if rotor(1000)==1
 set(handles.edit7,'string','«·œÊ—«‰ ÿ»Ì⁄Ì ' )
 set(handles. edit7 , 'backgroundcolor' ,'green' )
else
  set(handles.edit7,'string','«·œÊ—«‰ „⁄ﬂÊ”' )
 set(handles. edit7 , 'backgroundcolor' ,'red' )  
end
degre=degree(1000)
degre1=degree1(1000)
degre2=degree2(1000)
degre3=degree3(1000)
degre4=degree4(1000)
degre5=degree5(1000)
 if  degre == 1
 set(handles.edit8,'string','A-B-C' )
 elseif   degre1 == 1
 set(handles.edit8,'string','B-C-A' ) 
 elseif  degre2 == 1
 set(handles.edit8,'string','C-A-B' )
 elseif  degre3 == 1
 set(handles.edit8,'string','B-A-C' )
 elseif   degre4 == 1
 set(handles.edit8,'string','A-C-B' )
 else degre5 == 1
 set(handles.edit8,'string','C-B-A' )
 end 
 vout1=VOUT(950,1)
 vout1=mean(vout1)
 vout1=vout1*1.41422
 vout2=VOUT(950,2)
 vout2=mean(vout2)
 vout2=vout2*1.41422
 vout3=VOUT(950,3)
%  vout3=mean(vout)
 vout3=vout3*1.41422
 fout=mean(FOUT)
 set(handles.edit10,'string',num2str (fout) )
 set(handles.edit11,'string',num2str (vout) )
 set(handles.edit9,'string',num2str (vout1) )
 set(handles.edit12,'string',num2str (vout2) )
 set(handles.edit13,'string',num2str (vout3) )
% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
global C1
C1=(get(handles.togglebutton1,'value'))
assignin('base','C1',C1)
switch C1
    case 0
      set(handles.text21,'string','ON' )
         set(handles. text20 , 'backgroundcolor' ,'red' ) 
     case 1
       set(handles.text21,'string','OFF' )
        set(handles. text20 , 'backgroundcolor' ,'GREEN' )
  end

% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3
global C4
C4=(get(handles.togglebutton3,'value'))
assignin('base','C4',C4)
switch C4
     case 0
       set(handles.text23,'string','OFF' )
          set(handles. text22 , 'backgroundcolor' ,'GREEN' ) 
      case 1
        set(handles.text23,'string',' ON' )
         set(handles. text22 , 'backgroundcolor' ,'red' )
end
% function togglebutton10_Callback(hObject, eventdata, handles)
% % hObject    handle to togglebutton10 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% global C3
% C3=(get(handles.togglebutton10,'value'))
% assignin('base','C3',C3)
% switch C3
%      case 0
%        set(handles.text25,'string','OFF' )
%      set(handles. text24 , 'backgroundcolor' ,'GREEN' ) 
%       case 1
%         set(handles.text25,'string',' ON' )
%           set(handles. text24 , 'backgroundcolor' ,'red' )
%    end 
% Hint: get(hObject,'Value') returns toggle state of togglebutton4


% --- Executes on button press in togglebutton5.
function togglebutton5_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C5
C5=(get(handles.togglebutton5,'value'))
assignin('base','C5',C5)
switch C5
    case 1
      set(handles.text27,'string','ON' )
         set(handles. text26 , 'backgroundcolor' ,'red' ) 
     case 0
       set(handles.text27,'string','OFF' )
        set(handles. text26 , 'backgroundcolor' ,'GREEN' )
  end 

% Hint: get(hObject,'Value') returns toggle state of togglebutton5


% --- Executes on button press in togglebutton6.
function togglebutton6_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global F4
F4=(get(handles.togglebutton6,'value'))
assignin('base','F4',F4)
switch F4
     case 0
       set(handles.text29,'string','OFF' )
          set(handles. text28 , 'backgroundcolor' ,'GREEN' ) 
      case 1
        set(handles.text29,'string',' ON' )
         set(handles. text28 , 'backgroundcolor' ,'red' )
   end 
% Hint: get(hObject,'Value') returns toggle state of togglebutton6


% --- Executes on button press in togglebutton7.
function togglebutton7_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton7
 global F1
F1=(get(handles.togglebutton7,'value'))
assignin('base','F1',F1)
switch F1
     case 0
       set(handles.text31,'string','OFF' )
          set(handles. text30 , 'backgroundcolor' ,'GREEN' ) 
      case 1
        set(handles.text31,'string',' ON' )
         set(handles. text30 , 'backgroundcolor' ,'red' )
   end 


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global In Tn ffff
%  Tn=Tn/10
In=str2double(get(handles.edit5,'string'))
Tn=str2double(get(handles.edit4,'string'))
assignin('base','In',In)
assignin('base','Tn',Tn)

ffff=ffff+1;
if (mod(ffff,2)==1)
     
               set(handles. text49 , 'backgroundcolor' ,'GREEN' )
else
  set(handles. text49 , 'backgroundcolor' ,'red' ) 
end
      


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global TM11
TM11=get(handles.slider1,'value')
set(handles.edit6,'string',num2str(TM11))

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global degre degre1 degre2 degre3 degre4 degre5
% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double



% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
