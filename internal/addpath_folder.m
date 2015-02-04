%% install all 
%% addpath_folder(path)
% hierarchically add all inner folders.
function addpath_folder(path)
addpath(path);
folders = dir(path);
% the first two is '.', and '..' .
for i= 1:length(folders)
    if (folders(i).isdir)&&~strcmp(folders(i).name,'.') &&~strcmp(folders(i).name,'..')
        fprintf('addpath: %s \n',[path,folders(i).name]);
        addpath([path,folders(i).name])
    	addpath_folder([path,folders(i).name,'/']);
    end
end
