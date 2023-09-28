Profile: PolicyActivity
Parent: $Act
Id: PolicyActivity
Title: "Policy Activity"
Description: "A policy activity represents the policy or program providing the coverage. The person for whom payment is being provided (i.e., the patient) is the covered party. The subscriber of the policy or program is represented as a participant that is the holder of the coverage. The payer is represented as the performer of the policy activity."
* insert LogicalModelNA
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.61:2023-05-01"
* ^version = "2023-05-01"
* ^status = #draft
* classCode 1..1
* classCode = #ACT (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @classCode=\"ACT\" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:4537-8898)."
* moodCode 1..1
* moodCode = #EVN (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:4537-8899)."
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
  * ^comment = "SHALL contain exactly one [1..1] templateId (CONF:4537-8900) such that it"
* templateId contains templateId1 1..1
* templateId[templateId1] ^short = "templateId"
  * ^comment = "SHALL contain exactly one [1..1] templateId (CONF:4537-8900) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.61"
    * ^comment = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.61\" (CONF:4537-10516)."
  * extension 1..1
  * extension = "2023-05-01"
    * ^comment = "SHALL contain exactly one [1..1] @extension=\"2023-05-01\" (CONF:4537-32595)."
* id 1..*
  * ^comment = "SHALL contain at least one [1..*] id (CONF:4537-8901)."
* code 1..1
  * ^comment = "SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem X12N Insurance Type urn:oid:2.16.840.1.113883.6.255.1336 DYNAMIC (CONF:4537-8903)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.255.1336"
  * translation ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.rules = #open
    * ^comment = "This code SHALL contain at least one [1..*] translation (CONF:4537-32852) such that it"
  * translation contains translation1 1..*
  * translation[translation1] ^short = "translation"
    * ^comment = "This code SHALL contain at least one [1..*] translation (CONF:4537-32852) such that it"
    * code 0..1
    * code from Payer (preferred)
      * ^comment = "SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Payer urn:oid:2.16.840.1.114222.4.11.3591 DYNAMIC (CONF:4537-33066)."
* statusCode 1..1
  * ^comment = "SHALL contain exactly one [1..1] statusCode (CONF:4537-8902)."
  * code 1..1
  * code = #completed (exactly)
    * ^comment = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:4537-19109)."
* performer ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "templateId"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "assignedEntity"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
  * ^comment = "SHOULD contain zero or more [0..*] performer (CONF:4537-8961) such that it"
* performer contains
    performer1 1..1 and
    performer2 0..*
* performer[performer1] ^short = "performer"
  * ^comment = "SHALL contain exactly one [1..1] performer (CONF:4537-8906) such that it"
  * typeCode 1..1
  * typeCode = #PRF (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"PRF\" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:4537-8907)."
  * templateId 1..1
    * ^comment = "SHALL contain exactly one [1..1] templateId (CONF:4537-16808), SHALL not contain [0..0] extension.."
    * root 1..1
    * root = "2.16.840.1.113883.10.20.22.4.87"
      * ^comment = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.87\" Payer Performer (CONF:4537-16809)."
    * extension 0..0
  * assignedEntity 1..1
    * ^comment = "SHALL contain exactly one [1..1] assignedEntity (CONF:4537-8908)."
    * id 1..*
      * ^comment = "This assignedEntity SHALL contain at least one [1..*] id (CONF:4537-8909)."
    * code 0..1
      * ^comment = "This assignedEntity SHOULD contain zero or one [0..1] code (CONF:4537-8914)."
      * code 1..1
      * code from $2.16.840.1.113883.1.11.10416 (preferred)
        * ^comment = "The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Financially Responsible Party Type Value Set urn:oid:2.16.840.1.113883.1.11.10416 DYNAMIC (CONF:4537-15992)."
    * addr 0..1
    * addr only USRealmAddressADUSFIELDED
      * ^comment = "This assignedEntity MAY contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:4537-8910)."
    * telecom 0..*
      * ^comment = "This assignedEntity MAY contain zero or more [0..*] telecom (CONF:4537-8911)."
    * representedOrganization 0..1
      * ^comment = "This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:4537-8912)."
      * name 0..1
        * ^comment = "The representedOrganization, if present, SHOULD contain zero or one [0..1] name (CONF:4537-8913)."
* performer[performer2] ^short = "performer"
  * ^comment = "SHOULD contain zero or more [0..*] performer (CONF:4537-8961) such that it"
  * typeCode 1..1
  * typeCode = #PRF (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"PRF\" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:4537-32971)."
  * templateId 1..1
    * ^comment = "SHALL contain exactly one [1..1] templateId (CONF:4537-16810), SHALL not contain [0..0] extension."
    * root 1..1
    * root = "2.16.840.1.113883.10.20.22.4.88"
      * ^comment = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.88\" Guarantor Performer (CONF:4537-16811)."
    * extension 0..0
  * time 0..1
    * ^comment = "SHOULD contain zero or one [0..1] time (CONF:4537-8963)."
  * assignedEntity 1..1
    * obeys 4537-8967
    * ^comment = "SHALL contain exactly one [1..1] assignedEntity (CONF:4537-8962)."
    * code 1..1
      * ^comment = "This assignedEntity SHALL contain exactly one [1..1] code (CONF:4537-8968)."
      * code 1..1
      * code = #GUAR
        * ^comment = "This code SHALL contain exactly one [1..1] @code=\"GUAR\" Guarantor (CONF:4537-16096)."
      * codeSystem 1..1
      * codeSystem = "2.16.840.1.113883.5.110"
        * ^comment = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.5.110\" (CONF:4537-32165)."
    * addr 0..1
    * addr only USRealmAddressADUSFIELDED
      * ^comment = "This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:4537-8964)."
    * telecom 0..*
      * ^comment = "This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:4537-8965)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "templateId"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "participantRole"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
  * ^comment = "SHOULD contain zero or one [0..1] participant (CONF:4537-8934) such that it"
* participant contains
    participant1 1..1 and
    participant2 0..1
* participant[participant1] ^short = "participant"
  * ^comment = "SHALL contain exactly one [1..1] participant (CONF:4537-8916) such that it"
  * typeCode 1..1
  * typeCode = #COV (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"COV\" Coverage target (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:4537-8917)."
  * templateId 1..1
    * ^comment = "SHALL contain exactly one [1..1] templateId (CONF:4537-16812), SHALL not contain [0..0] extension."
    * root 1..1
    * root = "2.16.840.1.113883.10.20.22.4.89"
      * ^comment = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.89\" Covered Party Participant (CONF:4537-16814)."
    * extension 0..0
  * time 0..1
    * ^comment = "SHOULD contain zero or one [0..1] time (CONF:4537-8918)."
    * low 0..1
      * ^comment = "The time, if present, SHOULD contain zero or one [0..1] low (CONF:4537-8919)."
    * high 0..1
      * ^comment = "The time, if present, SHOULD contain zero or one [0..1] high (CONF:4537-8920)."
  * participantRole 1..1
    * ^comment = "SHALL contain exactly one [1..1] participantRole (CONF:4537-8921)."
    * id 1..*
      * obeys 4537-8984
      * ^comment = "This participantRole SHALL contain at least one [1..*] id (CONF:4537-8922)."
    * code 1..1
      * ^comment = "This participantRole SHALL contain exactly one [1..1] code (CONF:4537-8923)."
      * code 0..1
      * code from $2.16.840.1.113883.1.11.18877 (preferred)
        * ^comment = "This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Coverage Role Type Value Set urn:oid:2.16.840.1.113883.1.11.18877 DYNAMIC (CONF:4537-16078)."
    * addr 0..1
    * addr only USRealmAddressADUSFIELDED
      * ^comment = "This participantRole SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:4537-8956)."
    * playingEntity 0..1
      * ^comment = "This participantRole SHOULD contain zero or one [0..1] playingEntity (CONF:4537-8932)."
      * name 1..1
        * ^comment = "The playingEntity, if present, SHALL contain exactly one [1..1] name (CONF:4537-8930)."
      * sdtcBirthTime 1..1
        * obeys 4537-31345
        * ^short = "sdtc:birthTime"
        * ^comment = "The playingEntity, if present, SHALL contain exactly one [1..1] sdtc:birthTime (CONF:4537-31344)."
* participant[participant2] obeys 4537-17139
  * ^short = "participant"
  * ^comment = "SHOULD contain zero or one [0..1] participant (CONF:4537-8934) such that it"
  * typeCode 1..1
  * typeCode = #HLD (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"HLD\" Holder (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:4537-8935)."
  * templateId 1..1
    * ^comment = "SHALL contain exactly one [1..1] templateId (CONF:4537-16813), SHALL not contain [0..0] extension."
    * root 1..1
    * root = "2.16.840.1.113883.10.20.22.4.90"
      * ^comment = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.90\" Policy Holder Participant (CONF:4537-16815)."
    * extension 0..0
  * time 0..1
    * ^comment = "MAY contain zero or one [0..1] time (CONF:4537-8938)."
  * participantRole 1..1
    * ^comment = "SHALL contain exactly one [1..1] participantRole (CONF:4537-8936)."
    * id 1..*
      * obeys 4537-10120
      * ^comment = "This participantRole SHALL contain at least one [1..*] id (CONF:4537-8937)."
    * addr 0..1
    * addr only USRealmAddressADUSFIELDED
      * ^comment = "This participantRole SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:4537-8925)."
* entryRelationship ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
* entryRelationship contains entryRelationship1 0..*
* entryRelationship[entryRelationship1] obeys 4537-8942 and 4537-8943
  * ^short = "entryRelationship"
  * ^comment = "MAY contain one [0..*] entryRelationship (CONF:4537-8939) such that it"
  * typeCode 1..1
  * typeCode = #REFR (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:4537-8940)."

Invariant: 4537-8967
Description: "**SHOULD** include assignedEntity/assignedPerson/name AND/OR assignedEntity/representedOrganization/name (CONF:4537-8967)."
Severity: #warning

Invariant: 4537-8984
Description: "This id is a unique identifier for  the covered party member. Implementers **SHOULD** use the same GUID for each instance of a member identifier from the same health plan (CONF:4537-8984)."
Severity: #warning

Invariant: 4537-31345
Description: "The prefix sdtc: **SHALL** be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the birthTime element (CONF:4537-31345)."
Severity: #error

Invariant: 4537-17139
Description: "When the Subscriber is the patient, the participant element describing the subscriber **SHALL NOT** be present. This information will be recorded instead in the data elements used to record member information (CONF:4537-17139)."
Severity: #warning

Invariant: 4537-10120
Description: "This id is a unique identifier for the subscriber of the coverage (CONF:4537-10120)."
Severity: #warning

Invariant: 4537-8942
Description: "The target of a policy activity with act/entryRelationship/@typeCode=\"REFR\" **SHALL** be an authorization activity (templateId 2.16.840.1.113883.10.20.1.19) *OR* an act, with act[@classCode=\"ACT\"] and act[@moodCode=\"DEF\"], representing a description of the coverage plan (CONF:4537-8942)."
Severity: #warning

Invariant: 4537-8943
Description: "A description of the coverage plan **SHALL** contain one or more act/id, to represent the plan identifier, and an act/text with the name of the plan (CONF:4537-8943)."
Severity: #warning