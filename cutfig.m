% a script to cut fig
% Shan Jiayu (ION,CAS) 20200708
% my goal is to cut psycholomatric curve (monkey training data) only (all fig include other blocks) to print on Experiment record book

figpath= ' D:\Desktop\Shan\jyshan_PhD\data\ToJY';
namelist = dir(strcat(figpath,'\*.fig'));


len = length(namelist);
for i = 1:len
    file_name{i}=namelist(i).name;
    file_name_2{i}=strrep(namelist(i).name,'.fig','');
    %     x= load(file_name{i});
    h1 = openfig(file_name{i},'reuse');
    saveas(h1,strcat(file_name_2{i},'.tif'));
    h2 = imread(strcat(file_name_2{i},'.tif'));
    h3=imcrop(h2,[0,0,570,550]);
      imshow(h2);
      figure
     h4=imshow(h3);
     text(450,50,file_name_2{i})
    file_name_3{i}=strcat('cut_',file_name_2{i});
    saveas(h4,strcat(file_name_3{i},'.tif'));

end
