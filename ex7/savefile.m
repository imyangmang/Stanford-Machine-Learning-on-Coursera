function savefile(object_mat,file_path)
%object_mat:��Ҫ����ľ���file_path���������Ŀ���ļ�
fid=fopen(file_path,'w');%д���ļ�·��
[m,n]=size(object_mat);
for i=1:m
    for j=1:n
       if j==n
         fprintf(fid,'%g\n',object_mat(i,j));
       else
         fprintf(fid,'%g\t', object_mat(i,j));
       end
    end
end
fclose(fid);
  
end

