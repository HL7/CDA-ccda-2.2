Profile: HighestPressureUlcerStage
Parent: $Observation
Id: HighestPressureUlcerStage
Title: "Highest Pressure Ulcer Stage"
Description: "This observation contains a description of the wound tissue of the most severe or highest staged pressure ulcer observed on a patient."

* insert LogicalModelTemplateRootOnly(highestPressureUlcerStage, 2.16.840.1.113883.10.20.22.4.77)

* classCode 1..1
* classCode = #OBS (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:81-14726)."
* moodCode 1..1
* moodCode = #EVN (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:81-14727)."
* id 1..*
  * ^comment = "SHALL contain at least one [1..*] id (CONF:81-14730)."
* code 1..1
  * ^comment = "SHALL contain exactly one [1..1] code (CONF:81-14731)."
  * code 1..1
  * code = #420905001
    * ^comment = "This code SHALL contain exactly one [1..1] @code=\"420905001\" Highest Pressure Ulcer Stage (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:81-14732)."
* value 1..1
  * ^comment = "SHALL contain exactly one [1..1] value (CONF:81-14733)."