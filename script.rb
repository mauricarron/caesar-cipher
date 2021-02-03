def get_message
    print "Message to encrypt: "
    message = gets.chomp
    return message
end

def get_key
    print "...Shift Key: "
    key = gets.chomp.to_i

    while key == 0 do 
        get_key 
    end

    return key
end

def caesar_cipher(str, key=3)
    
    ordinals = str.codepoints
    shifted_ordinals = ordinals.map do |n| 
        if n >= 65 && n <= 90
            if n + key > 90
                n + key - 26
            else
                n + key
            end
        elsif n >= 97 && n <= 122
            if n + key > 122
                n + key - 26
            else
                n + key
            end
        else
            n
        end    
    end
    
    encrypted_msg = ""
    shifted_ordinals.each { |n| encrypted_msg << n.chr }

    return encrypted_msg
end

message = get_message
key = get_key
puts caesar_cipher(message, key)