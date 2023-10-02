Profile: PreoperativeDiagnosisSection
Parent: $Section
Id: PreoperativeDiagnosisSection
Title: "Preoperative Diagnosis Section"
Description: "The Preoperative Diagnosis Section records the surgical diagnoses assigned to the patient before the surgical procedure which are the reason for the surgery. The preoperative diagnosis is, in the surgeon's opinion, the diagnosis that will be confirmed during surgery."
* insert LogicalModelNA
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.2.34:2015-08-01"
* ^version = "2015-08-01"
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains primary 1..1
* templateId[primary] ^comment = "SHALL contain exactly one [1..1] templateId (CONF:1198-8097) such that it"
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.2.34"
    * ^comment = "SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.2.34\" (CONF:1198-10439)."
  * extension 1..1
  * extension = "2015-08-01"
    * ^comment = "SHALL contain exactly one [1..1] @extension=\"2015-08-01\" (CONF:1198-32551)."
* code 1..1
  * ^comment = "SHALL contain exactly one [1..1] code (CONF:1198-15405)."
  * code 1..1
  * code = #10219-4
    * ^comment = "This code SHALL contain exactly one [1..1] @code=\"10219-4\" Preoperative Diagnosis (CONF:1198-15406)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^comment = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1198-30863)."
* title 1..1
  * ^comment = "SHALL contain exactly one [1..1] title (CONF:1198-8099)."
* text 1..1
  * ^comment = "SHALL contain exactly one [1..1] text (CONF:1198-8100)."
* entry ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "act"
  * ^slicing.rules = #open
* entry contains preopDiagnosis 0..1
* entry[preopDiagnosis] ^comment = "SHOULD contain zero or one [0..1] entry (CONF:1198-10096) such that it"
  * act 1..1
  * act only PreoperativeDiagnosis
    * ^comment = "SHALL contain exactly one [1..1] Preoperative Diagnosis (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.65:2015-08-01) (CONF:1198-15504)."