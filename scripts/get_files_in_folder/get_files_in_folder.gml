
var i = 0;
var folder_path = argument0;
var fileName = file_find_first(folder_path + "/*.csv",fa_directory);
var fArray = [];

while(fileName != "")
{
    fArray[i] = folder_path + "/" + fileName;
    fileName = file_find_next();
    i += 1;
}

file_find_close();

show_debug_message("LEVELS in this directory: "+argument0);
show_debug_message(fArray);

return fArray;