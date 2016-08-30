function makePalindrome(text){
    var reverseString = s => s.split('').reverse().join(''),
        isPalindrome = function(s) {
            for (var i = 0; i < Math.floor(s.length / 2); i++) {
                if (s[i] !== s[s.length - 1 - i]) {
                    return false;
                }
            }

            return true;
        };

    for (var i = 0; i < text.length - 1; i++) {
        if (isPalindrome(text.slice(i))) {
            return text + reverseString(text.slice(0, i));
        } else if (isPalindrome(text.slice(0, text.length - i))) {
            return reverseString(text.slice(text.length - i)) + text;
        }
    }

    return text + reverseString(text.slice(0, -1));
}