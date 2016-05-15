proyek=guidata(gcbo);
citra_hasil=get(proyek.figure1,'Userdata');
citra_hasil=get(proyek.display_gambar_hasil,'Userdata');
[filename, foldername] = uiputfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
    '*.*','All Files' },'Save Image');
complete_name = fullfile(foldername, filename);
imwrite(citra_hasil, complete_name);