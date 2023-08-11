# Broadcast

## Visualization of SQL


```plantuml
@startuml
digraph map {
    rankdir="LR"; bgcolor = "#ffffff"; fontsize=12; fontname="sans bold";
    nodesep=0.3 ; ranksep=0.8 ; // vertical and horizontal
    node[shape=record,fontname="sans",fontsize=10,width=2.2,height=0.1,labeljust=l,fillcolor="#e0e0e0",style=filled];

    // ====================================
    // tables
    
    ent [label="{entity|ent}
        |<id>__[ id ]__ = :? 
        |<common_number>common_number
        | [ entity_number ]
        | [ company_number ]
        | [ entity_type ]
        | [ entity_group ]
        | [ when_date ]
        | [ technical_type ]
        | __ auth_id __ = :?
        |<common_id>common_id
    ", 
        fillcolor="#ffff99"];
        
    c [label="{common|c}|<id>[ id ]|<customer_id>customer_id | __ auth_id __ = :?"];
    
    cust [label="{customer|cust}|<id>id|<reference_id>[ reference_id ] | __ auth_id __ = :?"];
    
    enta [label="{entity_action|enta}|<entity_id>entity_id | [ short_description ] | [ long_description ] | <id>id"];
    
    subgraph cluster_1 {
        color="#aaaaaa";
        ephy [label="{entity_physical|ephy}|<entity_action_id>entity_action_id | [ state ] | <original_physical_id>original_physical_id"];
        e [label="{physical|e}|<id>id | [ reference_id ] | __ auth_id __ = :?"];
    }

    kva [label="{key_value|kva}|~ parent_type='Entity' ~ | <parent_id>parent_id | ~ attribute_key='value1' ~ | ~ id not null ~ | [ value ] "];
    
    kvb [label="{key_value|kvb}|~ parent_type='Entity' ~ | <parent_id>parent_id | ~ attribute_key='value-other'  ~| ~ id not null ~ | [ value ] "];

    // ====================================
    // connections
    
    c:id -> ent:common_id  ;
    cust:id -> c:customer_id
    enta:entity_id -> ent:id ;
    ephy:entity_action_id -> enta:id [arrowtail=icurve,dir=both] ;
    ephy:original_physical_id -> e:id  ;
    
    kva:parent_id -> ent:id [arrowtail=icurve,dir=both,color="#aaaaaa"];
    kvb:parent_id -> ent:id [arrowtail=icurve,dir=both,color="#aaaaaa"]; 


    // ====================================
    // whole graph (at the end to not propagate it to subgraph clusters)
    
    labelloc="t";    
    label = "Broadcast";
}
@enduml
```

### Legend Key
 
 * top row of node/box shows the table name and its alias 
 * `__ input_field __= :?` -- and input field, probably set via a prepared query
 * `[ output_field ] ` -- field passed to outside via the outermost select clause
 * `~ field_with = filter ~` -- inner filter in a where clause
 * arrows are joins
 * circle-arrows are outer joins
 * boxes are subqueries (eg, to realize outer joins over multiple tables)
 * colored backgrounds on nodes/boxes and arrows just (de)emphasize


