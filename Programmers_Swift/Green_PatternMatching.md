# 그린의 면접 라이브 코딩테스트 복기 문제

- 2021.06.02

## 문제 제시
인자로 문자열 2개가 전달된다.

하나는 패턴을 나타내는 문자열이고 하나는 데이터를 담은 문자열이다.

데이터를 담은 문자열이 패턴과 일치하는지를 판별하는 메서드를 만드시오.



## 예시


```swift
func solution(_ pattern: String, _ data: String) -> Bool {
    ...
}
solution("abbaa", "dog cat cat dog dog") // true
solution("xyxy", "one two two one") // false
solution("cbac", "dog cat bird dog") // true
```

