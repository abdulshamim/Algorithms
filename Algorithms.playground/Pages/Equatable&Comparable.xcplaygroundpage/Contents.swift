//: [Previous](@previous)

import Foundation

struct Country {
    let name: String
    let capital: String
    var visited: Bool
}

extension Country: Comparable {
    static func == (left: Country, right: Country) -> Bool {
        return left.name == right.name &&
               left.capital == right.capital &&
               left.visited == right.visited
    }
    
    static func < (lhs: Country, rhs: Country) -> Bool {
        return (lhs.name < rhs.name) ||
               (lhs.name == rhs.name && lhs.capital < rhs.capital) ||
               (lhs.name == rhs.name && lhs.capital == rhs.capital && rhs.visited)
       
    }
}



let country1 = Country(name: "Australia", capital: "Canberra", visited: false)
let country2 = Country(name: "India", capital: "Delhi", visited: true)
let country3 = Country(name: "UK", capital: "London", visited: true)
let country4 = Country(name: "UAE", capital: "Dubai", visited: false)
let country5 = Country(name: "Srilanks", capital: "Colombo", visited: false)
let country6 = Country(name: "Nepal", capital: "Kathmandu", visited: true)
let country7 = Country(name: "Pak", capital: "Islamabad", visited: false)
let country8 = Country(name: "USA", capital: "Newyork", visited: false)
let countryList = [country1,country2, country3, country4, country5, country6, country7, country8]

print(country1 == country2)
let india = Country(name: "India", capital: "Delhi", visited: true)
print(countryList.contains(india))


let isVisited = countryList.contains { (country) -> Bool in
    return india.name == country.name
}

let sorted = countryList.sorted(by: {
    $0.name > $1.name
})
print(sorted)

print(country3 < country2)



            




