def caesar_cipher(string, shift)
    arrayOfValues = string.chars.map { |letter| letter.ord }

    newArrayOfValues = arrayOfValues.map do |letter|
        actualShift = shift % 26
        newValue = letter + actualShift
        if letter >= 65 && letter <= 90
            if newValue > 90
                newValue - 26
            elsif newValue < 65
                newValue + 26
            else
                newValue
            end
        elsif letter >= 97 && letter <= 122
            if newValue > 122
                newValue - 26
            elsif newValue < 97
                newValue + 26
            else
                newValue
            end
        else
            letter
        end
    end
    p newArrayOfValues.map { |val| val.chr }.join

end

caesar_cipher("What a string!", -1)