citra_hasil=get(proyek.figure1,'Userdata');
citra_hasil=get(proyek.display_gambar_hasil,'Userdata');
[namafile, direktori] = uiputfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
    '*.*','All Files' },'Save Image');
if isequal(namefile,0 | direktori,0)
    return;
else
    complete_name = fullfile(direktori, namafile);
    imwrite(citra_hasil, complete_name);
end
