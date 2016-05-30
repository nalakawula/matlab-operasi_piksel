[namafile,direktori]=uigetfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
    '*.*','All Files' },'Buka Gambar');
if isequal(namafile,0 | direktori,0)
    return;
end

path_citra = fullfile(direktori, namafile);
citra_asli = imread(path_citra);


axes(handles.display_gambar_asli);
imshow(citra_asli);
set(handles.lokasi_gambar,'string', path_citra);

info = imfinfo(path_citra);
handles.info = info;
handles.citra_asli = citra_asli;
set(handles.popupmenu1,'Value',1)
guidata(hObject,handles);

% info = imfinfo(path_citra);
% color_type = info.ColorType
% bit_depth = info.BitDepth