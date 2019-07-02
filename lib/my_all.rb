require 'pry'

def my_all?(collection)
    #Iterate through the collection
    i = 0
    yielded = []
    while i < collection.length
        # Pass each element of the collection to a block
        eval = yield(collection[i])
        # Continue to iterate if true, otherwise return false
        if eval  === true
        yielded << collection[i]
        i += 1
        else
        yielded << collection[i]
        break
        end
    end
    if eval === false
        return false
    else
    return true
    end
end