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

% Last Modified by GUIDE v2.5 16-Feb-2017 09:50:42

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
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to recent (see VARARGIN)

% Choose default command line output for recent
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes recent wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = recent_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)

I=imread('m.png')
J = rgb2gray(I);
p=edge(J,'sobel');

q=bwarea(p)

imshow(p)
axes(handles.axes2)
L=imread('k.png')
imshow(L)
 

J1 = rgb2gray(L);


p1=edge(J1,'sobel');

w=bwarea(p1)
imshow(p1)

u=imsubtract(p,p1);


percentage=((w-q)/q)*100
disp(percentage)
set((handles.text1),'string',percentage)
