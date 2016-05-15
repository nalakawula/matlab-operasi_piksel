proyek=guidata(gcbo);
[namafile,direktori]=uigetfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
    '*.*','All Files' },'Buka Gambar')
if isequal(namafile,0)
    return;
end
eval(['cd ''' direktori ''';']);
citra_asli=imread(namafile);
set(proyek.figure1,'CurrentAxes',proyek.display_gambar_asli);
set(imshow(citra_asli));
imshow(citra_asli);
set(proyek.figure1,'Userdata',citra_asli);
set(proyek.display_gambar_asli,'Userdata',citra_asli);
info=imfinfo(namafile);
set(handles.lokasi_gambar,'string', info.Filename);