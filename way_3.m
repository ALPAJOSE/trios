function varargout = way_3(varargin)
% WAY_3 M-file for way_3.fig
%      WAY_3, by itself, creates a new WAY_3 or raises the existing
%      singleton*.
%
%      H = WAY_3 returns the handle to a new WAY_3 or the handle to
%      the existing singleton*.
%
%      WAY_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WAY_3.M with the given input arguments.
%
%      WAY_3('Property','Value',...) creates a new WAY_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before way_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to way_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help way_3

% Last Modified by GUIDE v2.5 18-Feb-2017 06:59:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @way_3_OpeningFcn, ...
                   'gui_OutputFcn',  @way_3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin);
end
% End initialization code - DO NOT EDIT


% --- Executes just before way_3 is made visible.
function way_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to way_3 (see VARARGIN)

% Choose default command line output for way_3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes way_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = way_3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in way1.
function way1_Callback(hObject, eventdata, handles)
% hObject    handle to way1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
I1=imread('ref.png');
a=rgb2gray(I1);
g=im2bw(I1);


b=imresize(a,[300,300]);
c_edge=edge(b,'sobel');
h=bwarea(c_edge);
disp(h);

axes(handles.axes2);
I2=imread('ref - Copy.png');   %ccc-0.3831; cc0.42   c-0.166
d=rgb2gray(I2);
i=im2bw(I2);


e=imresize(d,[300,300]);
f_edge=edge(e,'sobel');
j=bwarea(f_edge);
disp(j)
percentage1 =((j-h)/j)*100;
disp(percentage1)

if(percentage1>=80)
  disp('green light on for 35s')
elseif(percentage1>=60)
  disp('green light on for 20s')
elseif(percentage1>=40)
  disp('green light on for 15s')
else
    disp('green light on for 10s')
end
set((handles.p1),'string',percentage1);

% --- Executes on button press in way2.
function way2_Callback(hObject, eventdata, handles)
% hObject    handle to way2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes3);
I3=imread('ref - copy - copy.png');
k=rgb2gray(I3);
l=im2bw(I3);


m=imresize(k,[300,300]);
n_edge=edge(l,'sobel');
o=bwarea(n_edge);
disp(o);
percentage2 =((o-h)/o)*100; 
disp(percentage2)

if(percentage2>=80)
  disp('green light on for 35s')
elseif(percentage2>=60)
  disp('green light on for 20s')
elseif(percentage2>=40)
  disp('green light on for 15s')
else
    disp('green light on for 10s')
end
set((handles.p2),'string',percentage2);


% --- Executes on button press in way3.
function way3_Callback(hObject, eventdata, handles)
% hObject    handle to way3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes4);
I4=imread('ref - Copy - Copy (2).png');   %ccc-0.3831; cc0.42   c-0.166
p=rgb2gray(I4);
q=im2bw(I4);


r=imresize(d,[300,300]);
s_edge=edge(e,'sobel');
t=bwarea(s_edge);
disp(t)
percentage3 =((t-h)/t)*100; 
disp(percentage3)

if(percentage3>=80)
  disp('green light on for 35s')
elseif(percentage3>=60)
  disp('green light on for 20s')
elseif(percentage3>=40)
  disp('green light on for 15s')
else
    disp('green light on for 10s')
end
set((handles.p3),'string',percentage3);
