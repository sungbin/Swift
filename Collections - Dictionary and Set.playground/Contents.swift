//27번째 줄 수정 필요
//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

/*:Swift Collections의 Dictionary와 Set을 배웠다.
//:자바와 크게 다르지 않다.
//:Dictionary는 key값과 value값을 가지고 있는 것이 자바의 ArrayList와 비슷하다.
 
//:Set은 마치 집합의 개념과 흡사하다. 동일하게 중복은 허용하지 않는다.
//:Set에는 Intersect, Subtract, Union, ExclusiveOR가 존재하고 각각 교집합, 집합빼기 집합의 부분 집합, 합집합, 합집합에서 교집합을 뺀 부분집합을 의미한다.*/
/*교집합: intersect -> intersection으로 변경
//대칭 차 집합: ExclusiveOR -> symmetricDifference*/

var roomCapacity:[String:Int] = ["Ab":4, "Bc":8, "De":11]

//roomCapacity += ["Fg":15] -> Dictionary에서는 이런식으로 접근이 불가능하다
roomCapacity["Fg"] = 15
roomCapacity["Bc"]

//let roomNames = roomCapacity.keys
//let capacity = roomCapacity.values
// -> 이런식으로 받아내면 내가 원하는 방식으로 받아낼 수 없다. 올바르게 받아내려면..
let roomNames = [String](roomCapacity.keys)
let capacites = [Int](roomCapacity.values)

//let total = capacites.reduce(0, combine: +)
// ->이건 되야하는데 왜 안되는지 모르겠다. 배열의 값의 합 method를 알아봐야겠다.

//Set 부분은 스크린샷으로 추가하면 좋겠다. 11-14줄의 개념.
//"Set-ex01" 라는 이름으로 사진을 추가하겠다.
