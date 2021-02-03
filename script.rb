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

puts caesar_cipher("This is a common secret message", 7)
