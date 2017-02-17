function varargout = recent(varargin)
% RECENT M-file for recent.fig
%      RECENT, by itself, creates a new RECENT or raises the existing
%      singleton*.
%
%      H = RECENT returns the handle to a new RECENT or the handle to
%      the existing singleton*.
%
%      RECENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECENT.M with the given input arguments.
%
%      RECENT('Property','Value',...) creates a new RECENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before recent_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to recent_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help recent

% Last Modified by GUIDE v2.5 18-Feb-2017 03:20:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @recent_OpeningFcn, ...
                   'gui_OutputFcn',  @recent_OutputFcn, ...
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


% --- Executes just before recent is made visible.
function recent_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output1 args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to recent (see VARARGIN)

% Choose default command line output1 for recent
handles.output1 = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes recent wait for user response (see UIRESUME)
% uiwait(handles.output2);


% --- Outputs from this function are returned to the command line.
function varargout = recent_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output1 args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output1 from handles structure
varargout{1} = handles.output1;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.axes5);
i=imread('ref1.png');
o = rgb2gray(i);
h=edge(o,'sobel');

g=100
disp(g)
imshow(h);

axes(handles.axes1);
I=imread('m.png');
J = rgb2gray(I);
p=edge(J,'sobel');
q=bwarea(p)
imshow(p);
u1=imsubtract(q,g);
per1=((u1-g)/u1)
M=per1*100
%set((handles.text1),'string',per1)

axes(handles.axes2);
L=imread('k.png');
imshow(L);
J1 = rgb2gray(L);
p1=edge(J1,'sobel');
w=bwarea(p1);
imshow(p1);
u2=imsubtract(w,g)
per2=((u2-g)/u2)

M1=per2*100
disp(M1)
%set((handles.output1),'string',per1)



%u=imsubtract(p1,p);



axes(handles.axes3);
e=imread('2.jpg');
r = rgb2gray(e);
k=edge(r,'sobel');
y=bwarea(k);
imshow(k);
u3=imsubtract(y,g)

per3=((u3-g)/u3)
M3=per3*100

axes(handles.axes6);
e1=imread('1.jpg');
r1 = rgb2gray(e1);
k1=edge(r1,'sobel');
y1=bwarea(k1);
imshow(k1);
u4=imsubtract(y1,g)
per4=((u4-g)/u4)
M4=per4*100















