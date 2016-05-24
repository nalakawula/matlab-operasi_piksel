
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

% Last Modified by GUIDE v2.5 24-May-2016 14:05:51

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
%selalu ditengah ketika start
movegui(gcf,'center')
set(handles.figure1, 'units', 'normalized', 'position', [0.05 0.15 0.9 0.8])
%splash
s = SplashScreen( 'operasi_piksel', 'splash_sumar.png', ...
    'ProgressBar', 'on', ...
    'ProgressPosition', 5, ...
    'ProgressRatio', 0.8);
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
contents = get(hObject,'Value');
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
        set(handles.slider1,'Value',0)
        imshow([]);
        
    case 2
        %brightness
        set(handles.panel_option,'visible','on');
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        
        set(handles.pilih_kernel,'visible','off');
        set(handles.pilih_metode,'visible','off');    
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        
        set(handles.slider1,'Value',0)
        
    case 3
        %kontras
        set(handles.panel_option,'visible','on');
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        
        set(handles.pilih_kernel,'visible','off');
        set(handles.pilih_metode,'visible','off');
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        set(handles.slider1,'Value',0)
        
    case 4
        %invers
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            BitDepth = handles.info.BitDepth;
            if BitDepth==8 %untuk grayscale image
                uk          = size(citra_asli);
                pxl         = uk(1)*uk(2);
                suG         = sum(sum(citra_asli));
                Rat         = suG/pxl; prc=Rat/240;
                invk        = ~(im2bw(citra_asli,prc));
                citra_hasil = invk;
                axes(handles.display_gambar_hasil);
                imshow(citra_hasil);
                handles.citra_hasil = citra_hasil;
                guidata(hObject,handles);
                
            else %untuk color image
                uk          = size(citra_asli);
                pxl         = uk(1)*uk(2);
                Kam         = rgb2gray(citra_asli);
                suG         = sum(sum(Kam));
                Rat         = suG/pxl; prc=Rat/255;
                invk        = ~(im2bw(Kam,prc));
                citra_hasil = invk;
                axes(handles.display_gambar_hasil);
                imshow(citra_hasil);
                handles.citra_hasil = citra_hasil;
                guidata(hObject,handles);
            end
        end
        
    case 5
        %thresholding
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        
        set(handles.panel_option,'visible','on');
        set(handles.pilih_metode,'visible','on');
        
        set(handles.slider1,'Value',0)
        %loncat ke fungsi pilih_metode_Callback(hObject, eventdata, handles)
        
        
    case 6
        %Ekualisasi Histogram
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        
        BitDepth = handles.info.BitDepth;
        
        if BitDepth==8
            out             = histeq(citra_asli);
            
            citra_hasil     = out;
            
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
            
        else
            HSV             = rgb2hsv(citra_asli);
            Heq             = histeq(HSV(:,:,3));
            HSV_mod         = HSV;
            HSV_mod(:,:,3)  = Heq;
            RGB             = hsv2rgb(HSV_mod);
            citra_hasil     = RGB;
            
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
            
        end
        
    case 7
        %Filter Batas
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        
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
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');        
        set(handles.pilih_metode,'visible','off');
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        
        set(handles.panel_option,'visible','on');
        set(handles.pilih_kernel,'visible','on');
        %loncat ke fungsi pilih_kernel_Callback(hObject, eventdata, handles)

    case 9
        %Filter Median
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        
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
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        
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
                hasil_lowpass=ifft2(J1);
                
                K=A1.*Hi;
                K1=ifftshift(K);
                hasil_highpass=ifft2(K1);
                
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
                hasil_lowpass=ifft2(J1);
                
                K=A1.*Hi;
                K1=ifftshift(K);
                hasil_highpass=ifft2(K1);
                
                
            end
            
            axes(handles.display_gambar_hasil);
            imshow(abs(hasil_lowpass),[12 290]), colormap gray;
            F = getframe(handles.display_gambar_hasil);
            citra_hasil = F.cdata;
            handles.citra_hasil = citra_hasil;
            guidata(hObject,handles);
        end
        
    case 11
        %Filter High Pass
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');        
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        
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
        set(handles.pilih_kernel,'visible','off');
        set(handles.slider_min,'visible','off');
        set(handles.slider_max,'visible','off');
        set(handles.nilai_slider_min,'visible','off');
        set(handles.nilai_slider_max,'visible','off');
        
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        set(handles.panel_option,'visible','on');
        
        set(handles.slider1,'Value',1);
        set(handles.slider1,'min',1);
        set(handles.slider1,'max',3);
               
    case 13
        %level cliping
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','on');
        set(handles.pilih_kernel,'visible','off');
        set(handles.pilih_metode,'visible','off');
        
        set(handles.slider_min,'value', 0);
        set(handles.slider_max,'value', 255);
        
        set(handles.nilai_slider_min,'visible','on');
        set(handles.nilai_slider_max,'visible','on');
        set(handles.slider_min,'visible','on');
        set(handles.slider_max,'visible','on');

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

nama_metodethreshold = get(handles.pilih_metode,'String');
value_pilihmetode = nama_metodethreshold{get(handles.pilih_metode,'Value')};

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
            e=3;
            m=handles.nilai;
            citra_input = double(citra_asli);
            citra_hasil = 1./(1+(m./citra_input).^e);
            citra_hasil = im2uint8(mat2gray(citra_hasil));
            
            axes(handles.display_gambar_hasil);
            imshow(citra_hasil);
            handles.citra_hasil = citra_hasil;
            set(handles.nilai_slider1,'string', handles.nilai);
            guidata(hObject,handles);
            
        case 'Filter High Boost'
            if isequal(citra_asli,[])
                msgbox('Belum ada gambar!');
            else
                
                %f=rgb2gray(I);
                [~,~,z]=size(citra_asli);
                if z>1
                    citra_asli=rgb2gray(citra_asli);
                end
                citra_asli=double(citra_asli);
                c= handles.nilai;
                w_all=c*[0 0 0; 0 1 0; 0 0 0];
                w_high=[0 -1 0; -1 4 -1; 0 -1 0];
                w_boost=w_all+w_high;
                h_boost=conv2(citra_asli,w_boost,'same');
                h_boost=uint8(h_boost);
                
                citra_hasil = h_boost;
                axes(handles.display_gambar_hasil);
                imshow(citra_hasil);
                handles.citra_hasil = citra_hasil;
                
                set(handles.nilai_slider1,'string', handles.nilai);
                guidata(hObject,handles);
            end
    end
    
    switch value_pilihmetode
        case 'local'
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
contents = get(hObject,'Value');
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%EOF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Executes on selection change in pilih_metode.
function pilih_metode_Callback(hObject, eventdata, handles)
% hObject    handle to pilih_metode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pilih_metode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pilih_metode
metode_threshold = get(hObject,'Value');
citra_asli = handles.citra_asli;
switch metode_threshold
    case 1
        
        axes(handles.display_gambar_hasil);
        imshow([]);
        guidata(hObject,handles);
        
    case 2 %thresholding local
        
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        set(handles.panel_option,'visible','on');
        set(handles.pilih_kernel,'visible','off');
        set(handles.slider1,'Value',0)
        
    case 3 %thresholding global
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','on');
        set(handles.pilih_kernel,'visible','off');
        set(handles.slider1,'Value',0)
        
        level = graythresh(citra_asli);
        %level = handles.nilai/255;
        set(handles.nilai_slider1,'string', level);
        citra_hasil = im2bw(citra_asli,level);

        axes(handles.display_gambar_hasil);
        imshow(citra_hasil);
        handles.citra_hasil = citra_hasil;
        guidata(hObject,handles);

end

% --- Executes during object creation, after setting all properties.
function pilih_metode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pilih_metode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_min_Callback(hObject, eventdata, handles)
% hObject    handle to slider_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
citra_asli = handles.citra_asli;
handles.min = get(handles.slider_min,'Value');
handles.max = get(handles.slider_max,'Value');

set(handles.nilai_slider_min,'string', handles.min);
set(handles.nilai_slider_max,'string', handles.max);

nama_popupmenu1 = get(handles.popupmenu1,'String');
popupmenu2value = nama_popupmenu1{get(handles.popupmenu1,'Value')};
 
if isequal(citra_asli,[])
    msgbox('Belum ada gambar!');
else
    switch popupmenu2value
        
        case 'Level Clipping'
             if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            BitDepth = handles.info.BitDepth;
            
            if BitDepth == 8
                citra_gray = citra_asli;
                [tinggi, lebar] = size(citra_gray);
                for baris=1 : tinggi
                    for kolom=1 : lebar
                        if citra_gray(baris, kolom) <= handles.min
                            citra_gray(baris, kolom) = 0;
                        end
                        if citra_gray(baris, kolom) >= handles.max
                            citra_gray(baris, kolom) = 255;
                        end
                    end
                end
            else
                citra_gray=rgb2gray(citra_asli);
                [tinggi, lebar] = size(citra_gray);
                for baris=1 : tinggi
                    for kolom=1 : lebar
                        if citra_gray(baris, kolom) <= handles.min
                            citra_gray(baris, kolom) = 0;
                        end
                        if citra_gray(baris, kolom) >= handles.max
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
end
 guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function slider_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_max_Callback(hObject, eventdata, handles)
% hObject    handle to slider_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
citra_asli = handles.citra_asli;
handles.max = get(handles.slider_max,'Value');
handles.min = get(handles.slider_min,'Value');


set(handles.nilai_slider_min,'string', handles.min);
set(handles.nilai_slider_max,'string', handles.max);

nama_popupmenu1 = get(handles.popupmenu1,'String');
popupmenu2value = nama_popupmenu1{get(handles.popupmenu1,'Value')};

if isequal(citra_asli,[])
    msgbox('Belum ada gambar!');
else
    switch popupmenu2value
        
        case 'Level Clipping'
             if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            BitDepth = handles.info.BitDepth;
            
            if BitDepth == 8
                citra_gray = citra_asli;
                [tinggi, lebar] = size(citra_gray);
                for baris=1 : tinggi
                    for kolom=1 : lebar
                        if citra_gray(baris, kolom) <= handles.min
                            citra_gray(baris, kolom) = 0;
                        end
                        if citra_gray(baris, kolom) >= handles.max
                            citra_gray(baris, kolom) = 255;
                        end
                    end
                end
            else
                citra_gray=rgb2gray(citra_asli);
                [tinggi, lebar] = size(citra_gray);
                for baris=1 : tinggi
                    for kolom=1 : lebar
                        if citra_gray(baris, kolom) <= handles.min
                            citra_gray(baris, kolom) = 0;
                        end
                        if citra_gray(baris, kolom) >= handles.max
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
end
 guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function slider_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function nilai_slider_max_Callback(hObject, eventdata, handles)
% hObject    handle to nilai_slider_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nilai_slider_max as text
%        str2double(get(hObject,'String')) returns contents of nilai_slider_max as a double


% --- Executes during object creation, after setting all properties.
function nilai_slider_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nilai_slider_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nilai_slider_min_Callback(hObject, eventdata, handles)
% hObject    handle to nilai_slider_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nilai_slider_min as text
%        str2double(get(hObject,'String')) returns contents of nilai_slider_min as a double


% --- Executes during object creation, after setting all properties.
function nilai_slider_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nilai_slider_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
