function test(file)
cd D:\zw\gitfile\Autohotkey\Screenshot
img=imread(file);
img=img(round(0.95*size(img,1)):end,round(0.83*size(img,2)):end,:);
outname='new.jpg';
imwrite(img,outname)
end

