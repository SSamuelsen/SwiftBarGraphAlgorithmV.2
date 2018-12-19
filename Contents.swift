import UIKit

var numbers = [8,8,6,4,4,4,4,1]
var numbers2 = [1,1,1,3,3,4,5,5,9,9,9,9,9]


func BarGraph(numbers: [Int]) {

    //sort the number array by descending value
    numbers.sorted().reversed()
    
    
    
    
//step 1: make a dictionary containing frequency values for each element in array
    
    //map over array and create tuple pairs and assign the value of 1 to each element
    let mappedItems = numbers.map { ($0, 1) }
    //add 1 to each repeating value
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    //get the most frequent
   
    
    
    //Step 2: Create the graph
    for (_, frequency) in counts.sorted(by: {$0.1 < $1.1}) {        //sort by value
        for x in 0...frequency-1 {
            if (frequency >= x) {               //if frequency >=
                print("*",terminator:"   ")
            }
            else {
                print("-", terminator:"   ")
            }
            
        }
        print("\n")
    }
    
    
    
    
    //Step 3: Create the data labels for graph
    //print the bottom of the bar graph
    for (_, _) in counts{
        print("-", terminator:"---")
    }
    print("\n")
    
    for (number, _) in counts.sorted(by: {$0.value > $1.value}) {
        print(number, terminator:"   ")
    }
    
    
    
}//end func



BarGraph(numbers: numbers)
//BarGraph(numbers: numbers2)


