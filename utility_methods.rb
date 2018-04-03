def included_only_once array, string
    if array.include? string
        # compares length of array after removal of any duplicates against original length
        if array.uniq.length == array.length 
            # if length is the same (ie. no duplicates)
            return true
        else
            # if length is not the same (ie. there were duplicates)
            return false
        end
    else   
        # if array doesn't even have the string
        return false
    end
end

