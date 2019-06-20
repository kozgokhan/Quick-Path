function dbpath = qpf_getdbpath()
    fullDbPath = mfilename('fullpath');
    whereSlash = strfind(fullDbPath,'/');
    if isempty(whereSlash)
        % for windows systems
        whereSlash = strfind(fullDbPath,'\');
        dbpath = [fullDbPath(1:whereSlash(end)-1),'\qpdatabase.pdb'];
    else
        % for mac os systems
        dbpath = [fullDbPath(1:whereSlash(end)-1),'/qpdatabase.pdb'];
    end
end