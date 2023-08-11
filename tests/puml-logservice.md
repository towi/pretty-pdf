# Example Logservice Concept

Lorem ipsum dolor sit amet consectetuer adipiscing elit sed diam nonummy nibh euismod tincidunt ut la
lore magna aliquam erat volutpat. Ut wisi enim ad minim veniam quis nostrud exerci tation ullamcorper


```plantuml
@startuml
hide footbox
skinparam componentStyle rectangle

skinparam rectangle {
    BackgroundColor<<Topic>> white
    BorderStyle<<Topic>> dotted
}
skinparam shadowing<<Topic>> false
hide <<Topic>> stereotype

skinparam rectangle {
    BackgroundColor<<tbd>> #edb
    BorderStyle<<tbd>> dotted
}

'
' Components
'

cloud "Extern" as erp {
}

package "Import/Export" {

  queue "Kafka" as ki {
    rectangle record.data<<Topic>>
    rectangle record.result<<Topic>>
    rectangle broadcast.result<<Topic>>
    rectangle broadcast.data<<Topic>>
  }

  [Simulator] #lightblue

  [Rec Service]
  [Broadcast Service]

  database "DB" as db {
  }

}

rectangle "User interface" as [UI] #white
actor "User" as user #white

'
' main
'


title Logservice Concept

ext ---> record.data
record.data )---> [Rec Service]
[Rec Service] ~[norank,#a88]~~> broadcast.result
[Rec Service] --> intern
broadcast.result )~[norank,#a88]~~> ext

[Simulator] -[hidden]-> record.data

[Broadcast Service] -[hidden]> [Rec Service]

intern -- [UI]
[UI] - user


[Broadcast Service] <-[#blue]-( intern
broadcast.data <--[#blue]- [Broadcast Service]
ext <-[#blue]--( broadcast.data
' [Simulator] <--( broadcast.data
ext ~[#66f]~~> record.result

record.result )~[#88f]~~> [Rec Service]


@enduml
```

 * Lorem ipsum dolor sit amet consectetuer adipiscing elit sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat
 * Sed diam voluptua At vero eos et accusam et justo duo dolores et ea rebum Stet clita kasd gubergren no sea takimata sanctus est Lorem ipsum dolor sit amet
