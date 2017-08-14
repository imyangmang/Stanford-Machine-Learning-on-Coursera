function savefile(object_mat,file_path)
%object_mat:需要输出的矩阵，file_path：输出到的目标文件
fid=fopen(file_path,'w');%写入文件路径
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

