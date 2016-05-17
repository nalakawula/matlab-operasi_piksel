% proyek=guidata(gcbo);
% [namafile,direktori]=uigetfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
%     '*.*','All Files' },'Buka Gambar')
% if isequal(namafile,0)
%     return;
% end
% eval(['cd ''' direktori ''';']);
% citra_asli=imread(namafile);
% set(proyek.figure1,'CurrentAxes',proyek.display_gambar_asli);
% set(imshow(citra_asli));
% imshow(citra_asli);
% set(proyek.figure1,'Userdata',citra_asli);
% set(proyek.display_gambar_asli,'Userdata',citra_asli);
% info=imfinfo(namafile);
% set(handles.lokasi_gambar,'string', info.Filename);

[namafile,direktori]=uigetfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
    '*.*','All Files' },'Buka Gambar');
if isequal(namafile,0 | direktori,0)
    return;
end

path_citra = fullfile(direktori, namafile);
citra_asli = imread(path_citra);
inm = imfinfo(path_citra)
inm.ColorType


% axes(handles.display_gambar_asli);
% imshow(citra_asli);
% set(handles.lokasi_gambar,'string', path_citra);
% 
% handles.citra_asli = citra_asli;
% guidata(hObject,handles);