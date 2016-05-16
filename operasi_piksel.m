
function varargout = operasi_piksel(varargin)
% OPERASI_PIKSEL MATLAB code for operasi_piksel.fig
%      OPERASI_PIKSEL, by itself, creates a new OPERASI_PIKSEL or raises the existing
%      singleton*.
%
%      H = OPERASI_PIKSEL returns the handle to a new OPERASI_PIKSEL or the handle to
%      the existing singleton*.
%
%      OPERASI_PIKSEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPERASI_PIKSEL.M with the given input arguments.
%
%      OPERASI_PIKSEL('Property','Value',...) creates a new OPERASI_PIKSEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before operasi_piksel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to operasi_piksel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help operasi_piksel

% Last Modified by GUIDE v2.5 17-May-2016 04:43:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @operasi_piksel_OpeningFcn, ...
    'gui_OutputFcn',  @operasi_piksel_OutputFcn, ...
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


% --- Executes just before operasi_piksel is made visible.
function operasi_piksel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to operasi_piksel (see VARARGIN)

% Choose default command line output for operasi_piksel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%sumar
set(handles.figure1, 'units', 'normalized', 'position', [0.05 0.15 0.9 0.8])
s = SplashScreen( 'operasi_piksel', 'splash_sumar.png', ...
    'ProgressBar', 'on', ...
    'ProgressPosition', 5, ...
    'ProgressRatio', 0.8)
% s.addText( 300, 50, 'OPERASI PIKSEL', 'FontSize', 30, 'FontWeight', 'bold', 'Color', 'white' )
% s.addText( 30, 270, 'Sumarsono', 'FontSize', 15, 'FontWeight', 'bold', 'Color', 'white' )
% s.addText( 30, 290, 'Cahyo Fajar Adhiningtyas',  'FontWeight', 'bold', 'FontSize', 15, 'Color', 'white' )
% s.addText( 30, 310, 'Dian Prasetya Pujijaya', 'FontWeight', 'bold', 'FontSize', 15, 'Color', 'white' )
% s.addText( 30, 330, 'Mustafa Kemal Pasha', 'FontSize', 15, 'FontWeight', 'bold', 'Color', 'white' )
% s.addText( 30, 350, 'Lutfiyana', 'FontSize', 15,'FontWeight', 'bold', 'Color', 'white' )
% s.addText( 30, 370, 'Rian Riskiadi', 'FontSize', 15,'FontWeight', 'bold', 'Color', 'white' )
%s.addText( 300, 270, 'Loading...', 'FontSize', 20, 'Color', 'white' )
pause(3)
delete( s )

% UIWAIT makes operasi_piksel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = operasi_piksel_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Edit dari sini
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Executes on button press in tombol_buka_gambar.
function tombol_buka_gambar_Callback(hObject, eventdata, handles)
% hObject    handle to tombol_buka_gambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% [namafile,direktori]=uigetfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
%     '*.*','All Files' },'Buka Gambar');
% if isequal(namafile,0 | direktori,0)
%     return;
% end
% 
% path_citra = fullfile(direktori, namafile);
% citra_asli = imread(path_citra);
% 
% 
% axes(handles.display_gambar_asli);
% imshow(citra_asli);
% set(handles.lokasi_gambar,'string', path_citra);
% 
% info = imfinfo(path_citra);
% handles.info = info;
% handles.citra_asli = citra_asli;
% guidata(hObject,handles);
buka_gambar;

function lokasi_gambar_Callback(hObject, eventdata, handles)
% hObject    handle to lokasi_gambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of lokasi_gambar as text
%        str2double(get(hObject,'String')) returns contents of lokasi_gambar as a double

% --- Executes during object creation, after setting all properties.
function lokasi_gambar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lokasi_gambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in tombol_simpan.
function tombol_simpan_Callback(hObject, eventdata, handles)
% hObject    handle to tombol_simpan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%proyek=guidata(gcbo);
simpan_hasil;

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%POPUP MENU
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
contents = get(hObject,'Value')
nama_popupmenu = get(handles.popupmenu1,'String');
popupmenu1value = nama_popupmenu{get(handles.popupmenu1,'Value')};

citra_asli = handles.citra_asli;

switch contents
    
    case 1
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        axes(handles.display_gambar_hasil);
        imshow([]);
        
    case 2
        %brightness
        set(handles.panel_option,'visible','on');
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        set(handles.pilih_kernel,'visible','off');
        
    case 3
        %kontras
        set(handles.panel_option,'visible','on');
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        set(handles.pilih_kernel,'visible','off');
        
    case 4
        %invers
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            citra_hasil = ~(im2bw(citra_asli));
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
        end
        
    case 5
        %thresholding
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        set(handles.panel_option,'visible','on');
        set(handles.pilih_kernel,'visible','off');
        
    case 6
        %Ekualisasi Histogram
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        figure;
        BitDepth = handles.info.BitDepth;
        
        if BitDepth==8
            subplot(1,1,1);
            imhist(citra_asli(:,:,1));
            title('Histogram Intensitas Warna Grayscale');
        else
            subplot(3,1,1);
            imhist(citra_asli(:,:,1));
            title('Histogram Intensitas Warna Merah(R)');
            subplot(3,1,2);
            imhist(citra_asli(:,:,2));
            title('Histogram Intensitas Warna Hijau(G)');
            subplot(3,1,3);
            imhist(citra_asli(:,:,3));
            title('Histogram Intensitas Warna Biru(B)');
        end
        
    case 7
        %Filter Batas
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            F = (citra_asli);
            Ukuran = size(F);
            tinggi = Ukuran(1);
            lebar = Ukuran(2);
            %F=rgb2gray(F);
            G = F;
            for baris=2 : tinggi-1
                for kolom=2 : lebar-1
                    minPiksel = min([F(baris-1, kolom-1) ...
                        F(baris-1, kolom) F(baris, kolom+1) ...
                        F(baris, kolom-1) ...
                        F(baris, kolom+1) F(baris+1, kolom-1) ...
                        F(baris+1, kolom) F(baris+1, kolom+1)]);
                    maksPiksel = min([F(baris-1, kolom-1) ...
                        F(baris-1, kolom) F(baris, kolom+1) ...
                        F(baris, kolom-1) ...
                        F(baris, kolom+1) F(baris+1, kolom-1) ...
                        F(baris+1, kolom) F(baris+1, kolom+1)]);
                    if F(baris, kolom) < minPiksel
                        G(baris, kolom) = minPiksel;
                    else
                        if F(baris, kolom) > maksPiksel
                            G(baris, kolom) = maksPiksel;
                        else
                            G(baris, kolom) = F(baris, kolom);
                        end
                    end
                end
            end
            citra_hasil = G;
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
        end
        
    case 8
        %Filter Rerata
        set(handles.panel_option,'visible','on');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','on');
        %loncat ke fungsi pilih_kernel_Callback(hObject, eventdata, handles)
        
        
    case 9
        %Filter Median
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            citra_gray=rgb2gray(citra_asli);
            %F = (I);
            F = citra_gray;
            [tinggi, lebar] = size(F);
            for baris=2 : tinggi-1
                for kolom=2 : lebar-1
                    data = [F(baris-1, kolom-1) ...
                        F(baris-1, kolom) ...
                        F(baris-1, kolom+1) ...
                        F(baris, kolom-1) ...
                        F(baris, kolom) ...
                        F(baris, kolom+1) ...
                        F(baris+1, kolom-1) ...
                        F(baris+1, kolom) ...
                        F(baris+1, kolom+1)];
                    % Urutkan
                    for i=1 : 8
                        for j=i+1 : 9
                            if data(i) > data(j)
                                tmp = data(i);
                                data(i) = data(j);
                                data(j) = tmp;
                            end
                        end
                    end
                    % Ambil nilai median
                    G(baris, kolom) = data(5);
                end
            end
            
            citra_hasil = G;
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
            
        end
        
    case 10
        %Filter Low Pass
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        
        
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            BitDepth = handles.info.BitDepth;
            if BitDepth == 8
                
                I=citra_asli;
                
                A = fft2(double(I)); % compute FFT of the grey image
                A1=fftshift(A); % frequency scaling
                
                % Gaussian Filter Response Calculation
                
                [M N]=size(A); % image size
                R=10; % filter size parameter
                X=0:N-1;
                Y=0:M-1;
                [X Y]=meshgrid(X,Y);
                Cx=0.5*N;
                Cy=0.5*M;
                Lo=exp(-((X-Cx).^2+(Y-Cy).^2)./(2*R).^2);
                Hi=1-Lo; % High pass filter=1-low pass filter
                
                % Filtered image=ifft(filter response*fft(original image))
                
                J=A1.*Lo;
                J1=ifftshift(J);
                B1=ifft2(J1);
                
                K=A1.*Hi;
                K1=ifftshift(K);
                B2=ifft2(K1);
                
            else
                I=rgb2gray(citra_asli);
                
                A = fft2(double(I)); % compute FFT of the grey image
                A1=fftshift(A); % frequency scaling
                
                % Gaussian Filter Response Calculation
                
                [M N]=size(A); % image size
                R=10; % filter size parameter
                X=0:N-1;
                Y=0:M-1;
                [X Y]=meshgrid(X,Y);
                Cx=0.5*N;
                Cy=0.5*M;
                Lo=exp(-((X-Cx).^2+(Y-Cy).^2)./(2*R).^2);
                Hi=1-Lo; % High pass filter=1-low pass filter
                
                % Filtered image=ifft(filter response*fft(original image))
                
                J=A1.*Lo;
                J1=ifftshift(J);
                B1=ifft2(J1);
                
                K=A1.*Hi;
                K1=ifftshift(K);
                B2=ifft2(K1);
                
           
            end

            axes(handles.display_gambar_hasil);
            %imshow(citra_hasil)
            imshow(abs(B1),[12 290]), colormap gray;
            F = getframe(handles.display_gambar_hasil);
            citra_hasil = F.cdata;
            %citra_hasil = 
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
            
            
%             %             J=rgb2gray(citra_asli);
%             h= fspecial('gaussian',[3 3],0.5);
%             L=imfilter(citra_asli,h);
%             k= [1 1 1;
%                 1 1 1;
%                 1 1 1]/9;
%             %             citra_hasil=imfilter(J,k);
%             citra_hasil = imfilter(citra_asli,h);
%             axes(handles.display_gambar_hasil);
%             imshow(citra_hasil);
%             handles.citra_hasil = citra_hasil;
%             guidata(hObject,handles);
        end
        
    case 11
        %Filter High Pass
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            a=rgb2gray(citra_asli);
            [m n]=size(a);
            f_transform=fft2(a);
            f_shift=fftshift(f_transform);
            p=m/2;
            q=n/2;
            d0=70;
            for i=1:m
                for j=1:n
                    distance=sqrt((i-p)^2+(j-q)^2);
                    HPF(i,j)=1-exp(-(distance)^2/(2*(d0^2)));
                end
            end
            filter_apply=f_shift.*HPF;
            image_orignal=ifftshift(filter_apply);
            image_filter_apply=abs(ifft2(image_orignal));
            citra_hasil = image_filter_apply;
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
        end
        
    case 12
        %Filter High Boost
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            
            %f=rgb2gray(I);
            [~,~,z]=size(citra_asli);
            if z>1
                citra_asli=rgb2gray(citra_asli);
            end
            
            citra_asli=double(citra_asli);
            c=3;
            w_all=c*[0 0 0; 0 1 0; 0 0 0];
            w_high=[0 -1 0; -1 4 -1; 0 -1 0];
            w_boost=w_all+w_high;
            h_boost=conv2(citra_asli,w_boost,'same');
            h_boost=uint8(h_boost);
            
            citra_hasil = h_boost;
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
            
        end
        
    case 13
        %level cliping
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            BitDepth = handles.info.BitDepth;
            
            if BitDepth == 8
                citra_gray = citra_asli;
                [tinggi, lebar] = size(citra_gray);
                for baris=1 : tinggi
                    for kolom=1 : lebar
                        if citra_gray(baris, kolom) <= 70
                            citra_gray(baris, kolom) = 0;
                        end
                        if citra_gray(baris, kolom) >= 120
                            citra_gray(baris, kolom) = 255;
                        end
                    end
                end
            else
                citra_gray=rgb2gray(citra_asli);
                [tinggi, lebar] = size(citra_gray);
                for baris=1 : tinggi
                    for kolom=1 : lebar
                        if citra_gray(baris, kolom) <= 70
                            citra_gray(baris, kolom) = 0;
                        end
                        if citra_gray(baris, kolom) >= 120
                            citra_gray(baris, kolom) = 255;
                        end
                    end
                end
            end
            citra_hasil = citra_gray;
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
        end
        
    otherwise
end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
%proyek=guidata(gcbo);
%citra_asli=get(proyek.display_gambar_asli,'Userdata');
% path_citra = get(handles.path_citra);
citra_asli = handles.citra_asli;
handles.nilai= get(handles.slider1,'Value');

nama_popupmenu = get(handles.popupmenu1,'String');
popupmenu1value = nama_popupmenu{get(handles.popupmenu1,'Value')};

if isequal(citra_asli,[])
    msgbox('Belum ada gambar!');
else
    switch popupmenu1value
        
        case 'Brightness'
            citra_hasil = citra_asli+handles.nilai;
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            set(handles.nilai_slider1,'string', handles.nilai);
            guidata(hObject,handles);
            
        case 'Kontras'
            %%%%coba algoritma contrast stretching%%%%
            e=3;
            m=handles.nilai;
            citra_input = double(citra_asli);
            citra_hasil = 1./(1+(m./citra_input).^e);
            citra_hasil = im2uint8(mat2gray(citra_hasil));
            %%%%%%%%%%            
            
            %citra_hasil = citra_asli*handles.nilai;
            %handles.nilai = handles.nilai/255;
            %citra_hasil = imadjust(citra_asli,[0 handles.nilai],[0 1]);
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            set(handles.nilai_slider1,'string', handles.nilai);
            guidata(hObject,handles);
            
        case 'Thresholding'
            if isequal(citra_asli,[])
                msgbox('Belum ada gambar!');
            else
                %I=rgb2gray(I);
                %level = graythresh(citra_asli);
                level = handles.nilai/255;
                set(handles.nilai_slider1,'string', level);
                citra_hasil = im2bw(citra_asli,level);
                
                axes(handles.display_gambar_hasil);
                imshow(citra_hasil);
                handles.citra_hasil = citra_hasil;
                guidata(hObject,handles);
            end
    end
end


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function nilai_slider1_Callback(hObject, eventdata, handles)
% hObject    handle to nilai_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nilai_slider1 as text
%        str2double(get(hObject,'String')) returns contents of nilai_slider1 as a double


% --- Executes during object creation, after setting all properties.
function nilai_slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nilai_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pilih_kernel.
function pilih_kernel_Callback(hObject, eventdata, handles)
% hObject    handle to pilih_kernel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pilih_kernel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pilih_kernel
contents = get(hObject,'Value')
citra_asli = handles.citra_asli;
switch contents
    case 1
        
        axes(handles.display_gambar_hasil);
        imshow([]);
        guidata(hObject,handles);
        
    case 2 %Mean filter kernel 3x3
        
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            %citra_asli=rgb2gray(citra_asli);
            
            H = fspecial('average',3);
            citra_hasil = imfilter(citra_asli, H);
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
        end
        
    case 3 %Mean filter kernel 5x5
        
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            %citra_asli=rgb2gray(citra_asli);
            H = fspecial('average',5);
            citra_hasil = imfilter(citra_asli, H);
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
        end
end
% --- Executes during object creation, after setting all properties.
function pilih_kernel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pilih_kernel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

h = get(handles.radiobutton1,'Value');

if h==1
    set(handles.slider1,'visible','on')
else
    set(handles.slider1,'visible','off')
end

% --------------------------------------------------------------------
function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function buka_gambar_Callback(hObject, eventdata, handles)
% hObject    handle to buka_gambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
buka_gambar;

% --------------------------------------------------------------------
function simpan_Callback(hObject, eventdata, handles)
% hObject    handle to simpan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
simpan_hasil;
% --------------------------------------------------------------------
function tutup_Callback(hObject, eventdata, handles)
% hObject    handle to tutup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
respon=keluar('Title','Konfirmasi Keluar');
switch lower(respon)
    case 'tidak'
        %tidak ada aksi
    case 'ya'
        close
end

% --------------------------------------------------------------------


% --------------------------------------------------------------------
function bantuan_Callback(hObject, eventdata, handles)
% hObject    handle to bantuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function about_Callback(hObject, eventdata, handles)
% hObject    handle to about (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
About




% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
   konfirmasi_keluar = questdlg('Tutup aplikasi?',...
      'Keluar',...
      'Yes','No','Yes'); 
   switch konfirmasi_keluar, 
      case 'Yes',
         delete(hObject)
      case 'No'
      return 
   end
%delete(hObject);
