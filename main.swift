var n = [5, 4, 6, 3, 7, 2, 8, 1, 9]

func check(n2: Int...) -> Bool {
    for i in 0..<(n2.count - 1) {
        if n2[i] <= n2[i + 1] {
            continue
        } else {
            return false
        }
        
    }
    return true
}

func sort(numbers: Int...){
    for i in 0..<(n.count - 1) {
        if n[i] > n[i + 1] {
            let j = n[i]
            n[i] = n[i + 1]
            n[i + 1] = j
            
        }
    }
}

if check(n2: n) {
    print(n)
    print("true")
} else {
    print(n)
}
