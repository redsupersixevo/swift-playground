import UIKit

var str = "Hello, playground"

/*
 grouping object based on some properties
 */

struct Topic {
    let name: String
    let section: String
    let use_topic_section: Bool
}

let a = Topic(name: "topic a", section: "First group", use_topic_section: true)
let b = Topic(name: "topic b", section: "First group", use_topic_section: true)
let c = Topic(name: "topic c", section: "First group", use_topic_section: true)

let aa = Topic(name: "topic aa", section: "Second group", use_topic_section: true)
let bb = Topic(name: "topic bb", section: "Second group", use_topic_section: true)
let cc = Topic(name: "topic cc", section: "Second group", use_topic_section: true)

let aaa = Topic(name: "topic aaa", section: "Third group", use_topic_section: true)
let bbb = Topic(name: "topic bbb", section: "Third group", use_topic_section: true)
let ccc = Topic(name: "topic ccc", section: "Third group", use_topic_section: true)

let group = [a, b, c, aa, bb, cc, aaa, bbb, ccc]
let groupedItem = Dictionary(grouping: group, by: { $0.section })


groupedItem.forEach { (key, group) in
    print(key)
    print(group.count)
}

// get number of sections
let sectionNumber = groupedItem.count

// get title each section
let sectionName = groupedItem.keys.forEach { (title) in
    print(title)
}

