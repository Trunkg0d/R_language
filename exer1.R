a = scan()
b = scan()

if(a>b){
    for(i in a:1){
        if(a%%i== 0 & b%%i== 0){
            print(i)
            break
        }
    }
} else{
    for(i in b:1){
        if(a%%i == 0 & b%%i == 0){
            print(i)
            break
        }
    }
}
