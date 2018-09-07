function varargout = Saurabh(varargin)
% SAURABH MATLAB code for Samreen.fig
%      SAURABH, by itself, creates a new SAMREEN or raises the existing
%      singleton*.
%
%      H = SAURABH returns the handle to a new SAMREEN or the handle to
%      the existing singleton*.
%
%      SAURABH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAMREEN.M with the given input arguments.
%
%      SAURABH('Property','Value',...) creates a new SAMREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Samreen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Samreen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Saurabh

% Last Modified by GUIDE v2.5 15-Feb-2018 20:39:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Samreen_OpeningFcn, ...
                   'gui_OutputFcn',  @Samreen_OutputFcn, ...
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

function Samreen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Samreen (see VARARGIN)

% Choose default command line output for Samreen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Samreen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in input1.
function input1_Callback(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
C=imread('C:\Users\shamim\Desktop/Lane5.jpg');
axes(handles.axes1);
imshow(C);
C1=imread('C:\Users\shamim\Desktop/Lane1.jpg');
axes(handles.axes3);
imshow(C1);
C2=imread('C:\Users\shamim\Desktop/Lane2.jpg');
axes(handles.axes5);
imshow(C2);
C3=imread('C:\Users\shamim\Desktop/lane3.jpg');
axes(handles.axes7);
imshow(C3);
B=rgb2gray(C);
B1=rgb2gray(C1);
B2=rgb2gray(C2);
B3=rgb2gray(C3);
A=edge(B,'canny')
axes(handles.axes2);
imshow(A);
[r0,c0]=size(A);
A1=edge(B1, 'canny');
axes(handles.axes4);
imshow(A1);
[r1,c1]=size(A1);
A2=edge(B2,'canny');
axes(handles.axes6);
imshow(A2);
[r2,c2]=size(A2);
A3=edge(B3,'canny');
axes(handles.axes8);
imshow(A3);
[r3,c3]=size(A3);
h=0;
for i=1:r0
    for j=1:c0
        if A(i,j)==1
        h=h+1;
        end;
    end;
end;
set(handles.c1,'String', h);
h1=0;
for i=1:r1
    for j=1:c1
        if A1(i,j)==1
        h1=h1+1;
    end;
    end;
end;
h2=0;
set(handles.c2,'String', h1);
for i=1:r2
    for j=1:c2
        if A2(i,j)==1
        h2=h2+1;
    end;
    end;
end;
h3=0;
set(handles.c3,'String', h2);
for i=1:r3
    for j=1:c3
        if A3(i,j)==1
        h3=h3+1;
        end;
    end;
end;
set(handles.c4,'String', h3);
t=[h h1 h2 h3];
n=sort(t,'descend');
set(handles.n1,'String','Pixel Count =');
set(handles.n2,'String','Pixel Count =');
set(handles.n3,'String','Pixel Count =');
set(handles.n4,'String','Pixel Count =');%%first
if t(1)==n(1)
    temp1 =[1 0 0 0]
else if t(1)==n(2)
      temp1 =[0 0 0 1]
    else if t(1)==n(3)
     temp1 =[0 0 1 0]
        else if t(1)==n(4)
     temp1 =[0 1 0 0]
            else
                temp1=0;
            end
        end 
    end
end
%%
if t(2)==n(1)
    temp2 =[1 0 0 0]
else if t(2)==n(2)
      temp2 =[0 0 0 1]
    else if t(2)==n(3)
     temp2 =[0 0 1 0]
        else if t(2)==n(4)
     temp2 =[0 1 0 0]
            else
                temp2=0;
            end
        end 
    end
end
    %%
    if t(3)==n(1)
    temp3 =[1 0 0 0]
else if t(3)==n(2)
      temp3 =[0 0 0 1]
    else if t(3)==n(3)
     temp3 =[0 0 1 0]
        else if t(3)==n(4)
     temp3 =[0 1 0 0]
            else
                temp3=0;
            end
        end 
    end
    end
 %%
if t(4)==n(1)
    temp4 =[1 0 0 0]
else if t(4)==n(2)
      temp4 =[0 0 0 1];
    else if t(4)==n(3)
     temp4 =[0 0 1 0]
        else if t(4)==n(4)
     temp4 =[0 1 0 0];
            else
                temp=0;
            end
        end 
    end
end
%% first
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;

if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=30;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
%% second
temp1= circshift(temp1,[0,1]);
temp2= circshift(temp2,[0,1]);
temp3= circshift(temp3,[0,1]);
temp4= circshift(temp4,[0,1]);


%%
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);

end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=31;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;
if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=25;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
%% third
temp1= circshift(temp1,[0,1]);
temp2= circshift(temp2,[0,1]);
temp3= circshift(temp3,[0,1]);
temp4= circshift(temp4,[0,1]);
%%
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);

end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;
if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=20;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
%% fourth
temp1= circshift(temp1,[0,1]);
temp2= circshift(temp2,[0,1]);
temp3= circshift(temp3,[0,1]);
temp4= circshift(temp4,[0,1]);
%%
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);

end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;
if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=5;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end;
%%loop2
C=imread('C:\Users\shamim\Desktop/Lane1.jpg');
axes(handles.axes1);
imshow(C)
C1=imread('C:\Users\shamim\Desktop/Lane2.jpg');
axes(handles.axes3);
imshow(C1)
C2=imread('C:\Users\shamim\Desktop/Lane3.jpg');
axes(handles.axes5);
imshow(C2)
C3=imread('C:\Users\shamim\Desktop/lane5.jpg');
axes(handles.axes7);
imshow(C3)
B=rgb2gray(C);
B1=rgb2gray(C1);
B2=rgb2gray(C2);
B3=rgb2gray(C3);
A=edge(B,'canny')
axes(handles.axes2);
imshow(A)
[r0,c0]=size(A);
A1=edge(B1,'canny');
axes(handles.axes4);
imshow(A1)
[r1,c1]=size(A1)
A2=edge(B2,'canny')
axes(handles.axes6);
imshow(A2)
[r2,c2]=size(A2)
A3=edge(B3,'canny')
axes(handles.axes8);
imshow(A3)
[r3,c3]=size(A3)
h=0;
for i=1:r0
    for j=1:c0
        if A(i,j)==1
        h=h+1;
        end;
    end;
end;
set(handles.c1,'String', h);
h1=0;
for i=1:r1
    for j=1:c1
        if A1(i,j)==1
        h1=h1+1;
    end;
    end;
end;
h2=0;
set(handles.c2,'String', h1);
for i=1:r2
    for j=1:c2
        if A2(i,j)==1
        h2=h2+1;
    end;
    end;
end;
h3=0;
set(handles.c3,'String', h2);
for i=1:r3
    for j=1:c3
        if A3(i,j)==1
        h3=h3+1;
        end;
    end;
end;
set(handles.c4,'String', h3);
t=[h h1 h2 h3];
n=sort(t,'descend');
set(handles.n1,'String','Pixel Count =');
set(handles.n2,'String','Pixel Count =');
set(handles.n3,'String','Pixel Count =');
set(handles.n4,'String','Pixel Count =');%%first
if t(1)==n(1)
    temp1 =[1 0 0 0]
else if t(1)==n(2)
      temp1 =[0 0 0 1]
    else if t(1)==n(3)
     temp1 =[0 0 1 0]
        else if t(1)==n(4)
     temp1 =[0 1 0 0]
            else
                temp1=0;
            end
        end 
    end
end
%%
if t(2)==n(1)
    temp2 =[1 0 0 0]
else if t(2)==n(2)
      temp2 =[0 0 0 1]
    else if t(2)==n(3)
     temp2 =[0 0 1 0]
        else if t(2)==n(4)
     temp2 =[0 1 0 0]
            else
                temp2=0;
            end
        end 
    end
end
    %%
    if t(3)==n(1)
    temp3 =[1 0 0 0]
else if t(3)==n(2)
      temp3 =[0 0 0 1]
    else if t(3)==n(3)
     temp3 =[0 0 1 0]
        else if t(3)==n(4)
     temp3 =[0 1 0 0]
            else
                temp3=0;
            end
        end 
    end
    end
 %%
if t(4)==n(1)
    temp4 =[1 0 0 0]
else if t(4)==n(2)
      temp4 =[0 0 0 1];
    else if t(4)==n(3)
     temp4 =[0 0 1 0];
        else if t(4)==n(4)
     temp4 =[0 1 0 0];
            else
                temp=0;
            end
        end 
    end
end
%% first
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;

if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=30;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
%% second
temp1= circshift(temp1,[0,1]);
temp2= circshift(temp2,[0,1]);
temp3= circshift(temp3,[0,1]);
temp4= circshift(temp4,[0,1]);


%%
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);

end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=31;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;
if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=25;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
%% third
temp1= circshift(temp1,[0,1]);
temp2= circshift(temp2,[0,1]);
temp3= circshift(temp3,[0,1]);
temp4= circshift(temp4,[0,1]);
%%
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);

end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;
if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=20;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
%% fourth
temp1= circshift(temp1,[0,1]);
temp2= circshift(temp2,[0,1]);
temp3= circshift(temp3,[0,1]);
temp4= circshift(temp4,[0,1]);
%%
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);

end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;
if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=5;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end;
%%loop3
C=imread('C:\Users\shamim\Desktop/Lane3.jpg');
axes(handles.axes1);
imshow(C)
C1=imread('C:\Users\shamim\Desktop/Lane5.jpg');
axes(handles.axes3);
imshow(C1)
C2=imread('C:\Users\shamim\Desktop/Lane1.jpg');
axes(handles.axes5);
imshow(C2)
C3=imread('C:\Users\shamim\Desktop/lane2.jpg');
axes(handles.axes7);
imshow(C3)
B=rgb2gray(C);
B1=rgb2gray(C1);
B2=rgb2gray(C2);
B3=rgb2gray(C3);
A=edge(B,'canny')
axes(handles.axes2);
imshow(A)
[r0,c0]=size(A)
A1=edge(B1,'canny');
axes(handles.axes4);
imshow(A1)
[r1,c1]=size(A1)
A2=edge(B2,'canny')
axes(handles.axes6);
imshow(A2)
[r2,c2]=size(A2)
A3=edge(B3,'canny')
axes(handles.axes8);
imshow(A3)
[r3,c3]=size(A3)
h=0;
for i=1:r0
    for j=1:c0
        if A(i,j)==1
        h=h+1;
        end;
    end;
end;
set(handles.c1,'String', h);
h1=0;
for i=1:r1
    for j=1:c1
        if A1(i,j)==1
        h1=h1+1;
    end;
    end;
end;
h2=0;
set(handles.c2,'String', h1);
for i=1:r2
    for j=1:c2
        if A2(i,j)==1
        h2=h2+1;
    end;
    end;
end;
h3=0;
set(handles.c3,'String', h2);
for i=1:r3
    for j=1:c3
        if A3(i,j)==1
        h3=h3+1;
        end;
    end;
end;
set(handles.c4,'String', h3);
t=[h h1 h2 h3];
n=sort(t,'descend');
set(handles.n1,'String','Pixel Count =');
set(handles.n2,'String','Pixel Count =');
set(handles.n3,'String','Pixel Count =');
set(handles.n4,'String','Pixel Count =');%%first
if t(1)==n(1)
    temp1 =[1 0 0 0]
else if t(1)==n(2)
      temp1 =[0 0 0 1]
    else if t(1)==n(3)
     temp1 =[0 0 1 0]
        else if t(1)==n(4)
     temp1 =[0 1 0 0]
            else
                temp1=0;
            end
        end 
    end
end
%%
if t(2)==n(1)
    temp2 =[1 0 0 0]
else if t(2)==n(2)
      temp2 =[0 0 0 1]
    else if t(2)==n(3)
     temp2 =[0 0 1 0]
        else if t(2)==n(4)
     temp2 =[0 1 0 0]
            else
                temp2=0;
            end
        end 
    end
end
    %%
    if t(3)==n(1)
    temp3 =[1 0 0 0]
else if t(3)==n(2)
      temp3 =[0 0 0 1]
    else if t(3)==n(3)
     temp3 =[0 0 1 0]
        else if t(3)==n(4)
     temp3 =[0 1 0 0]
            else
                temp3=0;
            end
        end 
    end
    end
 %%
if t(4)==n(1)
    temp4 =[1 0 0 0]
else if t(4)==n(2)
      temp4 =[0 0 0 1];
    else if t(4)==n(3)
     temp4 =[0 0 1 0]
        else if t(4)==n(4)
     temp4 =[0 1 0 0];
            else
                temp=0;
            end
        end 
    end
end
%% first
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;

if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=30;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
%% second
temp1= circshift(temp1,[0,1]);
temp2= circshift(temp2,[0,1]);
temp3= circshift(temp3,[0,1]);
temp4= circshift(temp4,[0,1]);


%%
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);

end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=31;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;
if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=25;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
%% third
temp1= circshift(temp1,[0,1]);
temp2= circshift(temp2,[0,1]);
temp3= circshift(temp3,[0,1]);
temp4= circshift(temp4,[0,1]);
%%
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);

end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;
if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=20;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
%% fourth
temp1= circshift(temp1,[0,1]);
temp2= circshift(temp2,[0,1]);
temp3= circshift(temp3,[0,1]);
temp4= circshift(temp4,[0,1]);
%%
if temp1(1)==1
    b=0;
    set(handles.r1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.g1, 'String', i);
elseif temp1(2)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.r1, 'String', b);
    i=1;
set(handles.y1, 'String', i);
elseif temp1(3)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);
elseif temp1(4)==1
    b=0;
    set(handles.g1, 'String', b);
    set(handles.y1, 'String', b);
    i=1;
set(handles.r1, 'String', i);

end;
if temp2(1)==1
    b=0;
    set(handles.r2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.g2, 'String', i);
elseif temp2(2)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.r2, 'String', b);
    i=1;
set(handles.y2, 'String', i);
elseif temp2(3)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
elseif temp2(4)==1
    b=0;
    set(handles.g2, 'String', b);
    set(handles.y2, 'String', b);
    i=1;
set(handles.r2, 'String', i);
end;
if temp3(1)==1
    b=0;
    set(handles.r3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.g3, 'String', i);
elseif temp3(2)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.r3, 'String', b);
    i=1;
set(handles.y3, 'String', i);
elseif temp3(3)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
elseif temp3(4)==1
    b=0;
    set(handles.g3, 'String', b);
    set(handles.y3, 'String', b);
    i=1;
set(handles.r3, 'String', i);
end;
if temp4(1)==1
    b=0;
    set(handles.r4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.g4, 'String', i);
elseif temp4(2)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.r4, 'String', b);
    i=1;
set(handles.y4, 'String', i);
elseif temp4(3)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
elseif temp4(4)==1
    b=0;
    set(handles.g4, 'String', b);
    set(handles.y4, 'String', b);
    i=1;
set(handles.r4, 'String', i);
end;
%%
i=15;
for j=1:i
    a=i-j;
set(handles.counter, 'String', a);
pause(1)
end
% --- Executes on button press in input2.
function input2_Callback(~, ~, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in input3.
function input3_Callback(hObject, eventdata, handles)
% hObject    handle to input3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in input4.
function input4_Callback(hObject, eventdata, handles)
% hObject    handle to input4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
