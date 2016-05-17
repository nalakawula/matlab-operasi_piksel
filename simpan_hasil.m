% citra_hasil=get(proyek.figure1,'Userdata');
% citra_hasil=get(proyek.display_gambar_hasil,'Userdata');
%citra_hasil = handles.citra_hasil;
[namafile, direktori] = uiputfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
    '*.*','All Files' },'Simpan citra');
if isequal (namafile,0 | direktori,0)
    return;
else
    complete_name = fullfile(direktori, namafile);
    imwrite(handles.citra_hasil, complete_name);
end