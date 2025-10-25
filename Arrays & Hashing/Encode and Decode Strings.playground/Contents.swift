import Foundation

let encodingLetter = "@#$"

func encode(_ strs: [String]) -> String {
    var encodedStr = ""
    for str in strs {
        encodedStr += "\(str)\(encodingLetter)"
    }
    return encodedStr
}

func decode(_ s: String) -> [String] {
    return s.split(separator: encodingLetter).map({ String($0) })
}

print(encode(["neet","code","love","you"]))
print(decode(encode(["neet","code","love","you"])))
