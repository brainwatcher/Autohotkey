function [idx,ssimval]= compare_img(prefix)
img=imread([prefix '.jpg']);
ref_list={'new0.jpg'};
ssimval=zeros(length(ref_list)+1,1);
for i=1:length(ref_list)+1
    if i<=length(ref_list)
        ref=imread(ref_list{i});
    else
        ref=uint8(zeros(size(img)));
    end
    ssimval(i) = ssim(img,ref);
end
[~,idx]=max(ssimval);