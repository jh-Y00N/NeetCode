import Foundation

func simplifyPath(_ path: String) -> String {
    var pathStack = [String]()
    let pathArray = path.split(separator: "/")
    pathArray.forEach {
        if $0 == ".." {
            if !pathStack.isEmpty {
                pathStack.removeLast()
            }
        } else {
            if $0 != "." {
                pathStack.append(String($0))
            }
        }
    }
    if !pathStack.isEmpty, pathStack.last == "/" {
        pathStack.removeLast()
    }
    return "/\(pathStack.joined(separator: "/"))"
}

print(simplifyPath("/home/"))
print(simplifyPath("/home//foo/"))
print(simplifyPath("/home/user/Documents/../Pictures"))
print(simplifyPath("/../"))
print(simplifyPath("/.../a/../b/c/../d/./"))
