// function fibonacci(num)
// {
//     var num1=0;
//     var num2=1;
//     var sum;
//     var i=0;
//     for (i = 0; i < num; i++) 
//     {
//         sum=num1+num2;
//         num1=num2;
//         num2=sum;
//     }
//     return num2;
// }
  
// document.write("Fibonacci(5): "+fibonacci(5)+"<br>");
// document.write("Fibonacci(8): "+fibonacci(8)+"<br>");


// function num(){
//     let num1=1;
//     for(let i=0;i<8
//         ;i++)
//     {
//     console.log(num1);
//     num1=num1+2;
// }
// }
// num(10);

// var fs = require('fs');
// var outfile = "test.txt";
// var primality = function () {
//     var arr = [];
//     for (var n = 2; n <= 542; n++) {
//         var primeTrue = true;
//         for (var i = 2; i <= Math.sqrt(n); i++) {
//             if (n % i === 0) {
//                 primeTrue = false;
//             }
//         }
//         if (primeTrue) {
//             arr.push(n);
//         }
//     }
//     return arr;
// }
// fs.writeFileSync(outfile, arr);

function prime(data)
{
    var p1  = [], i, j, p2 = [];
    for (i = 2; i <= data; ++i) 
    {
        if (!p1 [i]) 
          {
            p2.push(i);
            for (j = i << 1; j <= data; j += i) 
            {
                p1[j] = true;
            }
        }
    }
    return p2;
}

console.log(prime(100));


// let star= "";

// for(let i = 1; i < 10; i++ ){
//     for(let j = 1; j < 10; j++){
//         if(i >= j ){
//             star = star.concat("*");
//         }
//     }
//     star = star.concat("\n")
// }

// console.log(star)