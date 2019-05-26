% https://www.mathworks.com/matlabcentral/answers/383592-how-to-remove-some-lines-of-a-file

fid=fopen('qpdatabase.pdb');
fff = textscan(fid,'%s','Delimiter','\n');
fclose(fid);

name = 'testilop';

qpdb = qpf_dbread();
[isFound, rowNum, ~] = qpf_searchName(qpdb,name);

if isFound
   fff{1,1}(rowNum) = [];
end

fff{1,1}

fid = fopen('qpdatabase.pdb');
fprintf(fid, '%s\n', fff{:});
fclose(fid);

qplist