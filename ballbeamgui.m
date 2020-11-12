function varargout = ballbeamgui(varargin)
% BALLBEAMGUI MATLAB code for ballbeamgui.fig
%      BALLBEAMGUI, by itself, creates a new BALLBEAMGUI or raises the existing
%      singleton*.
%
%      H = BALLBEAMGUI returns the handle to a new BALLBEAMGUI or the handle to
%      the existing singleton*.
%
%      BALLBEAMGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BALLBEAMGUI.M with the given input arguments.
%
%      BALLBEAMGUI('Property','Value',...) creates a new BALLBEAMGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ballbeamgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ballbeamgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ballbeamgui

% Last Modified by GUIDE v2.5 11-Nov-2020 04:32:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ballbeamgui_OpeningFcn, ...
                   'gui_OutputFcn',  @ballbeamgui_OutputFcn, ...
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


% --- Executes just before ballbeamgui is made visible.
function ballbeamgui_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ballbeamgui (see VARARGIN)

% Choose default command line output for ballbeamgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ballbeamgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ballbeamgui_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in input_sinyal.
function input_sinyal_Callback(~, ~, ~)
% hObject    handle to input_sinyal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns input_sinyal contents as cell array
%        contents{get(hObject,'Value')} returns selected item from input_sinyal
    
    

% --- Executes during object creation, after setting all properties.
function input_sinyal_CreateFcn(hObject, ~, ~)
% hObject    handle to input_sinyal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function R_Callback(~, ~, ~)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R as text
%        str2double(get(hObject,'String')) returns contents of R as a double


% --- Executes during object creation, after setting all properties.
function R_CreateFcn(hObject, ~, ~)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%set the default
NN=evalin('base','R');
NN=num2str(NN);
set(hObject,'String',NN);
set_param('Ballbeam2020a','SimulationCommand','update');

function Kp_Callback(~, ~, ~)
% hObject    handle to Kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kp as text
%        str2double(get(hObject,'String')) returns contents of Kp as a double

% --- Executes during object creation, after setting all properties.
function Kp_CreateFcn(hObject, ~, ~)
% hObject    handle to Kp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%set the default
NN=evalin('base','Kp');
NN=num2str(NN);
set(hObject,'String',NN);
set_param('Ballbeam2020a','SimulationCommand','update');

function Kd_Callback(~, ~, ~)
% hObject    handle to Kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kd as text
%        str2double(get(hObject,'String')) returns contents of Kd as a double

% --- Executes during object creation, after setting all properties.
function Kd_CreateFcn(hObject, ~, ~)
% hObject    handle to Kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%set the default
NN=evalin('base','Kd');
NN=num2str(NN);
set(hObject,'String',NN);
set_param('Ballbeam2020a','SimulationCommand','update');

function Num_Callback(~, ~, ~)
% hObject    handle to Num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Num as text
%        str2double(get(hObject,'String')) returns contents of Num as a double

% --- Executes during object creation, after setting all properties.
function Num_CreateFcn(hObject, ~, ~)
% hObject    handle to Num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%set the default
NN=evalin('base','Num');
NN=num2str(NN);
set(hObject,'String',NN);
set_param('Ballbeam2020a','SimulationCommand','update');

function Den_Callback(~, ~, ~)
% hObject    handle to Den (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Den as text
%        str2double(get(hObject,'String')) returns contents of Den as a double

% --- Executes during object creation, after setting all properties.
function Den_CreateFcn(hObject, ~, ~)
% hObject    handle to Den (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%set the default
NN=evalin('base','Den');
NN=num2str(NN);
set(hObject,'String',NN);
set_param('Ballbeam2020a','SimulationCommand','update');


% --- Executes on button press in Run.
function Run_Callback(hObject, ~, handles)
% hObject    handle to Run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set_param('Ballbeam2020a','SimulationCommand','start');

vrWorld = vrworld('ballbeam.wrl');
open(vrWorld);
myCanvas = vr.canvas(vrWorld, 'Parent', handles.uipanel, 'Units',...
'normalized', 'Position', [0 0 1 1],'Viewpoint','frontView');

handles.timer = timer('Name','MyTimer',               ...
                       'Period',0.1,                    ... 
                       'StartDelay',0,                 ... 
                       'TasksToExecute',inf,           ... 
                       'ExecutionMode','fixedSpacing', ...
                       'TimerFcn',{@timerCallback,hObject}); 
                   
guidata(hObject,handles);
start(handles.timer);
 
 function [] = timerCallback(~,~,guiHandle)
 if ~isempty(guiHandle)
      % get the handles
      handles = guidata(guiHandle);
      
      % if new data, then update the axes
      if ~isempty(handles)
          % get data from simulink
          rto = get_param('Ballbeam2020a/plot_time','RuntimeObject');
          x_time = rto.OutputPort(1).Data;
          
          rto_r_measured = get_param('Ballbeam2020a/plot_r_Measured','RuntimeObject');
          y_measured = rto_r_measured.OutputPort(1).Data;
          
          rto_r_predicted = get_param('Ballbeam2020a/plot_r_Predicted','RuntimeObject');
          y_predicted = rto_r_predicted.OutputPort(1).Data;
 
set(handles.plotR,'xLim',[x_time-10 x_time+20]);
set(handles.plotR,'yLim',[-10 10]);
plot(handles.plotR,[x_time x_time],[y_measured y_measured], 'bo', 'LineWidth', 1, 'MarkerSize', 1);
hold on;
plot(handles.plotR,[x_time x_time],[y_predicted y_predicted], 'ro', 'LineWidth', 1, 'MarkerSize', 1);
hold on;

hChildren = get(handles.plotR,'Children');
xData1 = get(hChildren(:),'XData');
yData1 = get(hChildren(:),'YData');

% inisiasi data x dan y
ns = size(xData1,1);
ax = [0 0 0 0]';
ay = [0 0 0 0]';

if ns > 2
   ax = cell2mat(xData1(1:4));
   ay = cell2mat(yData1(1:4));
end

%line measured
plot(handles.plotR,[ax(2) ax(4)] ,[ay(2) ay(4)], 'b-', 'LineWidth', 1);
hold on;
%line predicted
plot(handles.plotR,[ax(1) ax(3)] ,[ay(1) ay(3)], 'r-', 'LineWidth', 1);
hold on;
     end
 end

 % --- Executes on button press in Apply.
function Apply_Callback(~, ~, handles)
% hObject    handle to Apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%get the user entered value for gain and convert it to a string
val_Input = get(handles.input_sinyal,'Value');
val_R = str2num(get(handles.R,'String'));
val_Kp = str2num(get(handles.Kp,'String'));
val_Kd = str2num(get(handles.Kd,'String'));
val_Num = str2num(get(handles.Num,'String'));
val_Den = str2num(get(handles.Den,'String'));



%update both the model and the current string in the gain window.
if(val_R)
    assignin('base','SW_Control',val_Input);
    assignin('base','R',val_R);
    assignin('base','Kp',val_Kp);
    assignin('base','Kd',val_Kd);
    assignin('base','Num',val_Num);
    assignin('base','Den',val_Den);
    set_param('Ballbeam2020a','SimulationCommand','update');
else
    val_Input = evalin('base','SW_Control');
    val_R = evalin('base','R');
    val_Kp = evalin('base','Kp');
    val_Kd = evalin('base','Kd');
    val_Num = evalin('base','Num');
    val_Den = evalin('base','Den');
    set(handles.input_sinyal,'Value',val_Input);
    set(handles.R,'String',num2str(val_R));
    set(handles.Kp,'String',num2str(val_Kp));
    set(handles.Kd,'String',num2str(val_Kd));
    set(handles.Num,'String',num2str(val_Num));
    set(handles.Den,'String',num2str(val_Den));
end
 
% --- Executes on button press in Stop.
function Stop_Callback(~, ~, handles)
% hObject    handle to Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.plotR);
cla reset;

set_param('Ballbeam2020a','SimulationCommand','stop');
