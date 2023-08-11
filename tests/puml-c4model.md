
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.


```plantuml
"%version() " as b
version -> b
```


this here is a test that uses `Person_ext()` and an `office/Concepts/settings`-symbol.

```plantuml
@startuml(id=c1-datamine)
!include <c4/C4.puml>
!include <c4/C4_Context.puml>
!include <c4/C4_Container.puml>
!include <c4/C4_Component.puml>
' icon "settings" -> a cog for a machine (https://github.com/Roemer/plantuml-office)
!include <office/Concepts/settings>

'LAYOUT_TOP_DOWN()
LAYOUT_WITH_LEGEND()

title Example IIoT System, System Context (C1)
caption Elaborate Variant

Person_Ext(simple_hw, "Simple Hardware", "MQTT, REST, ...", settings)
Person_Ext(connected_machine, "Connected Hardware", "Connected Hardware.", settings)
System_Ext(connector, "Connector", "Connector component.")

Enterprise_Boundary(all, "Inhouse") {
  System(wiq, "Inhouse System", "Visualize IIoT Data")
  System(iiot, "IIoT System", "Collect, Store,\nAggregate, Mine")
}

Person_Ext(user, "User", "User.")
Person(miner, "Mining Expert", "Research")

Rel(simple_hw, iiot, "send")
Rel_L(connector, iiot, "push", "rest")
Rel(connected_machine, connector, "send")
Rel_Back(wiq, user, "use", "Browser")
Rel_Back(iiot, miner, "use")

Rel_Neighbor(wiq, iiot, "view")

@enduml
```
