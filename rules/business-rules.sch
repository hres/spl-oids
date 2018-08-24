<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <!-- The business-rules.sch file contains all techical business rules that are validated. The 
    hc-report.xml file is used to determine the applicability and severity of each rule based upon the 
    doctype. The monenclature is SPL for generic SPL rules and DT for DocType specific rules. -->
    <sch:ns uri="http://docs.oasis-open.org/codelist/ns/genericode/1.0/" prefix="gc"/>
    <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
        

    <!-- file locations, note: this variable needs to be changed if the installation location change -->
    <sch:let name="oid_loc" value="'../oids/'"/>
    
    <!-- global variables -->
    <sch:let name="file-suffix" value="'.xml'"/>
    <sch:let name="scheduling-symbol-oid" value="'2.16.840.1.113883.2.20.6.2'"/>
    <sch:let name="dosage-form-oid" value="'2.16.840.1.113883.2.20.6.3'"/>
    <sch:let name="telecom-use-oid" value="'2.16.840.1.113883.2.20.6.4'"/>
    <sch:let name="pharmaceutical-standard-oid" value="'2.16.840.1.113883.2.20.6.5'"/>
    <sch:let name="therapeutic-class-oid" value="'2.16.840.1.113883.2.20.6.6'"/>
    <sch:let name="route-of-administration-oid" value="'2.16.840.1.113883.2.20.6.7'"/>
    <sch:let name="section-id-oid" value="'2.16.840.1.113883.2.20.6.8'"/>
    <sch:let name="template-id-oid" value="'2.16.840.1.113883.2.20.6.9'"/>
    <sch:let name="document-id-oid" value="'2.16.840.1.113883.2.20.6.10'"/>
    <sch:let name="marketing-category-oid" value="'2.16.840.1.113883.2.20.6.11'"/>
    <sch:let name="equivalence-codes-oid" value="'2.16.840.1.113883.2.20.6.12'"/>
    <sch:let name="identifier-type-oid" value="'2.16.840.1.113883.2.20.6.13'"/>
    <sch:let name="ingredient-id-oid" value="'2.16.840.1.113883.2.20.6.14'"/>
    <sch:let name="units-of-measure-oid" value="'2.16.840.1.113883.2.20.6.15'"/>
    <sch:let name="form-code-oid" value="'2.16.840.1.113883.2.20.6.16'"/>
    <sch:let name="country-code-oid" value="'2.16.840.1.113883.2.20.6.17'"/>
    <sch:let name="contact-person-role" value="'2.16.840.1.113883.2.20.6.18'"/>
    <sch:let name="telecom-capability-oid" value="'2.16.840.1.113883.2.20.6.19'"/>
    <sch:let name="information-disclosure-oid" value="'2.16.840.1.113883.2.20.6.21'"/>
    <sch:let name="schedule-oid" value="'2.16.840.1.113883.2.20.6.22'"/>
    <sch:let name="product-characteristics-oid" value="'2.16.840.1.113883.2.20.6.23'"/>
    <sch:let name="color-oid" value="'2.16.840.1.113883.2.20.6.24'"/>
    <sch:let name="shape-oid" value="'2.16.840.1.113883.2.20.6.25'"/>
    <sch:let name="flavor-oid" value="'2.16.840.1.113883.2.20.6.26'"/>
    <sch:let name="product-classification-oid" value="'2.16.840.1.113883.2.20.6.27'"/>
    <sch:let name="submission-tracking-system-oid" value="'2.16.840.1.113883.2.20.6.28'"/>
    <sch:let name="language-code-oid" value="'2.16.840.1.113883.2.20.6.29'"/>
    <sch:let name="combination-product-type-oid" value="'2.16.840.1.113883.2.20.6.30'"/>
    <sch:let name="company-id-oid" value="'2.16.840.1.113883.2.20.6.31'"/>
    <sch:let name="pack-type-oid" value="'2.16.840.1.113883.2.20.6.32'"/>
    <sch:let name="organization-role-oid" value="'2.16.840.1.113883.2.20.6.33'"/>
    <sch:let name="product-source-oid" value="'2.16.840.1.113883.2.20.6.34'"/>
    <sch:let name="derived-source-oid" value="'2.16.840.1.113883.2.20.6.35'"/>
    <sch:let name="structure-aspects-oid" value="'2.16.840.1.113883.2.20.6.36'"/>
    <sch:let name="status-oid" value="'2.16.840.1.113883.2.20.6.37'"/>
    <sch:let name="units-of-presentation-oid" value="'2.16.840.1.113883.2.20.6.38'"/>
    <sch:let name="ingredient-role-oid" value="'2.16.840.1.113883.2.20.6.39'"/>
    <sch:let name="notice-type-oid" value="'2.16.840.1.113883.2.20.6.40'"/>
    <sch:let name="related-documents-oid" value="'2.16.840.1.113883.2.20.6.41'"/>
    <sch:let name="din-oid" value="'2.16.840.1.113883.2.20.6.42'"/>
    <sch:let name="submission-control-number-oid" value="'2.16.840.1.113883.2.20.6.49'"/>
    <sch:let name="telecom-type-oid" value="'2.16.840.1.113883.2.20.6.51'"/>
    <sch:let name="media-type-oid" value="'2.16.840.1.113883.2.20.6.52'"/>
    <sch:let name="product-type-oid" value="'2.16.840.1.113883.2.20.6.53'"/>
    <sch:let name="regulatory-activity-id-oid" value="'2.16.840.1.113883.2.20.6.54'"/>
    <sch:let name="mpid-oid" value="'2.16.840.1.113883.2.20.6.55'"/>
    <sch:let name="pcid-oid" value="'2.16.840.1.113883.2.20.6.56'"/>
    
    <sch:let name="code" value="'TBD'"/>
    <sch:let name="oid" value="'TBD'"/>
    <sch:let name="oid-section-title" value="'TBD'"/>
    
    <sch:let name="doc-doctype" value="document/code/@code"/>
    <sch:let name="doc-template" value="document/templateId[./@root=$template-id-oid]/@extension"/>
    <sch:let name="doc-id" value="document/id/@root"/>
    
    <sch:let name="array_position" value="'TBD'"/>
    <sch:let name="oid-derived_section" value="'TBD'"/>
    <sch:let name="section_counter" value="0"/>
    
    <sch:let name="product-driven-doctypes" value="'1', '2'"/>
    <sch:let name="product-required" value="$doc-doctype=$product-driven-doctypes"/>
    <sch:let name="active-ingredient-roles" value="'ACTI','ACTIB','ACTIM','ACTIR'"/>
    <sch:let name="ref-ingredient-roles" value="'ACTIR'"/>
    <sch:let name="exception_sections" value="'10','20','30','40','530','370-10','580','48780-1','999999'"/>
    <sch:let name="PM-root-sections" value="'10','20','30','40','48780-1'"/>
    <sch:let name="strict-PM-templates" value="'6','7','8','9','10'"/>
    
    
    <!-- Set debug to 1 of you want the debuging details -->
    <sch:let name="debug" value="0"/>
    
   
    <sch:pattern>
        <sch:title>pbx: test area</sch:title>
        <sch:rule context="/">
            <!-- 
            <sch:let name="context" value="(document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue='210-240']/Value[@ColumnRef='context']/SimpleValue"/>
            <sch:let name="context2" value="string($context)"/> 
            
            <sch:report test="1=1" flag="0">PBX: Testing area, please ignore me!</sch:report>
            <sch:report test="1=1" flag="DT1">PBX: maybe</sch:report>
            <sch:report test="1=1" flag="0">context: <sch:value-of select="$context"/></sch:report>
             -->
        </sch:rule>
    </sch:pattern>
 
    <sch:pattern>
        <sch:title>Prolog Information Validation</sch:title>
        <sch:p>This section will encode all non doctype specific rules related to the Prolog Information</sch:p>
        <sch:rule context="/">
            <sch:let name="doc_info" value="processing-instruction('xml')"/>
                        
            <sch:report test="$debug=1" flag="0">********************* Document Processing Instruction Debuging ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">Doc Information: <sch:value-of select="$doc_info"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern>
        <sch:title> General Validation Aspects</sch:title>
        <sch:title>This pattern includes all rules where the element can occur in any part of the content</sch:title>
    </sch:pattern>

    <sch:pattern>
        <sch:title>Document Information Validation</sch:title>
        <sch:rule context="document">
            
            <sch:let name="context" value="1"/> 
            <sch:let name="valid_templates" value="(document(concat($oid_loc,$template-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_doctypes" value="(document(concat($oid_loc,$document-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_languages" value="(document(concat($oid_loc,$language-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_status" value="(document(concat($oid_loc,$status-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="language-code" value="languageCode/@code"/>
            <sch:let name="language-display-name" value="(document(concat($oid_loc,$language-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$language-code]/Value[@ColumnRef=$display-language]/SimpleValue"/>
            
            <sch:report test="count(typeId) = 0" flag="SPL-3">Document Information: The typeId element is missing.</sch:report>
            <sch:report test="count(typeId[@assigningAuthorityName]) = 0" flag="SPL-5">Document Information: The typeId@assigningAuthorityName attribute is missing.</sch:report>
            <sch:assert test="count(typeId[@assigningAuthorityName = 'Health Products and Food Branch']) = 1" flag="SPL-8">Document Information: The value for the typeId@assigningAuthorityName attribute is not 'Health Products and Food Branch'.</sch:assert>
            
            <sch:report test="count(id[@root]) = 0" id="SPL-5-001" flag="SPL-5">Document Information: The id@root attribute is missing.</sch:report>
            
            <sch:report test="count(code[@code]) = 0" flag="SPL-5">Document Information: The code@code attribute is missing.</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0" flag="SPL-5">Document Information: The code@codeSystem attribute is missing.</sch:report>
            <sch:assert test="code[@codeSystem = $document-id-oid]" id="SPL-2-002" flag="SPL-2">Document Information: The OID for element: <sch:value-of select=" local-name(code)"/> should be: <sch:value-of select="$document-id-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/></sch:assert>
            <sch:assert test="code/@code=$valid_doctypes" id="SPL-8-002" flag="SPL-8">Document Information: code: <sch:value-of select="code/@code"/> is not contained in OID: <sch:value-of select="$document-id-oid"/></sch:assert>
            
            <sch:report test="count(templateId) = 0" flag="SPL-3">Document Information: The templateId element is missing.</sch:report>
            <sch:assert test="count(templateId[@root]) = count(templateId)" flag="SPL-5">Document Information: The templateId@root attribute is missing.</sch:assert>
            <sch:assert test="count(templateId[@extension]) = count(templateId)" flag="SPL-5">Document Information: The templateId@extension attribute is missing.</sch:assert>
            <sch:assert test="templateId[@root = $template-id-oid]" flag="SPL-2" id="SPL-2-001">Document Information: There is no templateId where the @root value is <sch:value-of select="$template-id-oid"/>.</sch:assert>
            <sch:assert test="templateId[@root = $template-id-oid]/@extension = $valid_templates" id="SPL-8-001" flag="SPL-8">Document Information: template: <sch:value-of select="templateId[@root = $template-id-oid]/@extension"/> is not in OID: <sch:value-of select="$template-id-oid"/></sch:assert>
            <sch:report test="count(templateId[@root = $template-id-oid]) >1" flag="SPL-4">Document Information: There is more than one templateId where the @root value is <sch:value-of select="$template-id-oid"/>.</sch:report>
            
            <sch:report test="count(effectiveTime) = 0" flag="SPL-3">Document Information: The effectiveTime element is missing.</sch:report>
            
            <sch:report test="count(languageCode) = 0" flag="SPL-3">Document Information: The languageCode element is missing.</sch:report>
            <sch:report test="count(languageCode[@code]) = 0" flag="SPL-5">Document Information: The languageCode@code attribute is missing.</sch:report>
            <sch:assert test="languageCode/@code=$valid_languages" flag="SPL-8">Document Information: code: <sch:value-of select="languageCode/@code"/> is not contained in OID: <sch:value-of select="$language-code-oid"/></sch:assert>
            <sch:assert test="languageCode[@code = '1'] or languageCode[@code = '2']" flag="SPL-8">Document Information: The value for the languageCode@code attribute is neither ENG or FRA.</sch:assert>
            <sch:report test="count(languageCode[@codeSystem]) = 0" flag="SPL-5">Document Information: The languageCode@codeSystem attribute is missing.</sch:report>
            <sch:assert test="languageCode[@codeSystem = $language-code-oid]" flag="SPL-2">Document Information: The OID for element: <sch:value-of select=" local-name(languageCode)"/> should be: <sch:value-of select="$language-code-oid"/> however the codeSystem is set to: <sch:value-of select="languageCode/@codeSystem"/></sch:assert>
            
            <sch:report test="count(setId) = 0" id="SPL-3-001" flag="SPL-3">Document Information: The setId element is missing.</sch:report>
            <sch:report test="count(setId[@root]) = 0"  id="SPL-5-002" flag="SPL-5">Document Information: The setId@root attribute is missing.</sch:report>
            
            <sch:report test="count(versionNumber) = 0 " flag="SPL-3">Document Information: The versionNumber element is missing.</sch:report>
            <sch:report test="count(versionNumber[@value]) = 0" flag="SPL-5">Document Information: The versionNumber@value attribute is missing.</sch:report>
            <sch:report test="count(versionNumber[@description]) = 0" flag="SPL-5">Document Information: The versionNumber@description attribute is missing.</sch:report>
            <sch:assert test="versionNumber/@description = $valid_status" flag="SPL-8">Document Information: Version description: <sch:value-of select="versionNumber/@description"/> is not in OID: <sch:value-of select="$status-oid"/></sch:assert>
            <sch:report test="versionNumber/@value &#60; 1" flag="SPL-8">Document Information: The version number is less than one (1).</sch:report>
            <sch:assert test="versionNumber/@value castable as xs:integer" flag="SPL-8">Document Information: The version number should be an integer but was '<sch:value-of select="versionNumber/@value"/>'.</sch:assert>

            <sch:report test="count(author) = 0" flag="SPL-3">Document Information: The author element is missing.</sch:report>
            <sch:report test="count(author) > 1" flag="SPL-4">Document Information: There is more than 1 author element defined.</sch:report>
          
            <sch:report test="$debug=1" flag="0">*********************  Document Information Debuging ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">display_laguage: <sch:value-of select="$display-language"/></sch:report>
            <sch:report test="$debug=1" flag="0">doctype: <sch:value-of select="$doc-doctype"/></sch:report>
            <sch:report test="$debug=1" flag="0">template: <sch:value-of select="$doc-template"/></sch:report>
            <sch:report test="$debug=1" flag="0">id: <sch:value-of select="$doc-id"/></sch:report>
            <sch:report test="$debug=1" flag="0">Stylesheet Info: <sch:value-of select="$oid-section-title"/></sch:report>
            <sch:report test="$debug=1" flag="0">Valid Doctypes: <sch:value-of select="$valid_doctypes"/></sch:report>
            <sch:report test="$debug=1" flag="0">Current DocType: <sch:value-of select="code/@code"/></sch:report>
            <sch:report test="$debug=1" flag="0">Valid Templates: <sch:value-of select="$valid_templates"/></sch:report>
            <sch:report test="$debug=1" flag="0"> Current Template: <sch:value-of select="templateId/@extension"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        <!-- pbx: This will only be validated in the future 
        <sch:rule context="templateId[@root = $submission-control-number-oid]">
            <sch:let name="valid_control-numbers" value="(document(concat($oid_loc,$submission-control-number-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:assert test="@extension = $valid_control-numbers" flag="SPL-8">Document Information: Control Number: <sch:value-of select="@extension"/> is not in OID: <sch:value-of select="$submission-control-number-oid"/></sch:assert>
            
            <sch:report test="$debug=1" flag="0">*********************  templateId[@root = $submission-control-number-oid] Information Validation Debuging ************************* </sch:report>
            <sch:report test="$debug=1" flag="0"> Valid Control Numbers: <sch:value-of select="$valid_control-numbers"/></sch:report>
            <sch:report test="$debug=1" flag="0"> Current Control Numbers: <sch:value-of select="@extension"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        -->
    </sch:pattern>
    
    
    <sch:pattern>
        <sch:title>Author Information Validation</sch:title>
        <sch:rule context="author/assignedEntity">
            <sch:report test="count(representedOrganization) = 0" flag="SPL-3">Author: The representedOrganization element is missing.</sch:report>
        </sch:rule>
        
        <sch:rule context="representedOrganization">
            <sch:let name="company_id" value="id[@root = $company-id-oid]/@extension"/>
            <sch:let name="allowed_company_ids" value="(document(concat($oid_loc,$company-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_company" value="$company_id=$allowed_company_ids or $company_id='999999999'"/>
            <sch:let name="company_name" value="(document(concat($oid_loc,$company-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$company_id]/Value[@ColumnRef=$display-language]/SimpleValue"/>
            
            <sch:report test="count(id[@root]) = 0" flag="SPL-5">Author: The id@root attribute is missing.</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) = 0" flag="SPL-8">Author: No id@root equals <sch:value-of select="$company-id-oid"/>.</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) > 1" flag="SPL-8">Author: More than one id@root equals <sch:value-of select="$company-id-oid"/>.</sch:report>
            <sch:assert test="$valid_company" flag="SPL-8">Author: The company ID: <sch:value-of select="$company_id"/> is not in OID: <sch:value-of select="$company-id-oid"/> or 999999999</sch:assert>
            <sch:report test="count(id[@root = $company-id-oid and @extension]) = 0" flag="SPL-5">Author: An id@extension attribute is missing for the company.</sch:report>
            
            <sch:report test="count(name) = 0" flag="SPL-3">Author: The name element is missing.</sch:report>
            <sch:report test="string-length(name)&#60;1" flag="SPL-6">Author: The name element is empty.</sch:report>
            <sch:assert test="name=$company_name" flag="SPL-8">Author: The company name: <sch:value-of select="name"/> is not the same as: <sch:value-of select="$company_name"/>, as defined in the extension</sch:assert>
            
            <sch:report test="count(contactParty) = 0" flag="SPL-3">Author: The contactParty element is missing.</sch:report>
            <sch:report test="count(contactParty/addr) = 0" flag="SPL-3">Author: The contactParty.addr element is missing.</sch:report>
            
            <sch:report test="count(/document/author/assignedEntity/representedOrganization/assignedEntity/performance/actDefinition/code[./@code='1' and @codeSystem='2.16.840.1.113883.2.20.6.33']) = 0" flag="SPL-3">Author: The DIN Owner Role is is missing for the representedOrganization.</sch:report>
            <sch:report test="count(/document/author/assignedEntity/representedOrganization/assignedEntity/performance/actDefinition/code[./@code='1' and @codeSystem='2.16.840.1.113883.2.20.6.33']) > 1" flag="SPL-4">Author: There is more than 1 DIN Owner Role defined.</sch:report>
                        
            <sch:report test="$debug=1" flag="0">********************* represented orginization debuging  ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">company id: <sch:value-of select="$company_id"/></sch:report>
            <sch:report test="$debug=1" flag="0">company name: <sch:value-of select="name"/></sch:report>
            <sch:report test="$debug=1" flag="0">CV company name: <sch:value-of select="$company_name"/></sch:report>
            <sch:report test="$debug=1" flag="0">allowed_company_ids: <sch:value-of select="$allowed_company_ids"/></sch:report>
            <sch:report test="$debug=1" flag="0">valid company id: <sch:value-of select="$valid_company"/></sch:report>            
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
       
        <sch:rule context="contactPerson/name">
            <sch:report test="count(family) = 0" flag="SPL-3">Author: The family name element is missing.</sch:report>
            <sch:report test="count(family) > 1" flag="SPL-4">Author: The family name element defined more than once.</sch:report>
            <sch:report test="count(given) = 0" flag="SPL-3">Author: The given name element is missing.</sch:report>
            <sch:report test="count(given) > 1" flag="SPL-4">Author: The given name element defined more than once.</sch:report>
     </sch:rule>
       
        <sch:rule context="contactPerson/templateId[@root='2.16.840.1.113883.2.20.6.18']">
            <sch:let name="valid_roles" value="(document(concat($oid_loc,$contact-person-role,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(@root) = 0" flag="SPL-3">Author: The contactPerson/templateId@root attribute is missing.</sch:report>
            <sch:report test="count(@extension) = 0" flag="SPL-3">Author: The contactPerson/templateId@extension attribute is missing.</sch:report>
            <sch:assert test="@root = $contact-person-role" flag="SPL-3">Author: The OID for element: <sch:value-of select=" local-name(@root)"/> should be: <sch:value-of select="$contact-person-role"/> however the codeSystem is set to: <sch:value-of select="@root"/>.</sch:assert>
            <sch:assert test="@extension=$valid_roles" flag="SPL-8">Author: code: <sch:value-of select="@extension"/> is not contained in OID: <sch:value-of select="$contact-person-role"/></sch:assert>
        </sch:rule>

        <sch:rule context="representedOrganization/assignedEntity/assignedOrganization/assignedEntity">
            <sch:report test="count(assignedOrganization) =0" flag="SPL-3">Author: The assignedOrganization element is missing.</sch:report>
            <sch:report test="count(assignedOrganization) &gt; 1" flag="SPL-4">Author: The assignedOrganization element is defined more than once.</sch:report>
        </sch:rule>
        
        <sch:rule context="performance/actDefinition">
            <sch:let name="valid_roles" value="(document(concat($oid_loc,$organization-role-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(code) =0" flag="SPL-3">Author: The actDefinition.code element is missing.</sch:report>
            
            <sch:report test="count(code[@code]) = 0" flag="SPL-5">Author: The code@code attribute is missing.</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0" flag="SPL-5">Author: The code@codeSystem attribute is missing.</sch:report>
            <sch:assert test="code[@codeSystem = $organization-role-oid]" flag="SPL-2">Author: The OID for element: <sch:value-of select=" local-name(code)"/> should be: <sch:value-of select="$organization-role-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/></sch:assert>
            <sch:assert test="code/@code=$valid_roles" flag="SPL-8">Author: code: <sch:value-of select="code/@code"/> is not contained in OID: <sch:value-of select="$organization-role-oid"/></sch:assert>
            
            <sch:report test="(count(product/manufacturedProduct/manufacturedMaterialKind/code[@codeSystem='2.16.840.1.113883.2.20.6.55'])=0) and (count(product/manufacturedProduct/manufacturedMaterialKind/code[@codeSystem='2.16.840.1.113883.2.20.6.56'])=0)" flag="SPL-3">Author: There are no MPID's or PCID's associated with a performance element.</sch:report>
            <sch:report test="count(product/manufacturedProduct/manufacturedMaterialKind)=0" flag="SPL-3">Author: There is no product root for a specific manufactured product.</sch:report>
        </sch:rule>
        
        <sch:rule context="performance/actDefinition/product/manufacturedProduct">
            <sch:let name="valid_product" value="(document(concat($oid_loc,$mpid-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_package" value="(document(concat($oid_loc,$pcid-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:assert test="@classCode='MANU'" flag="SPL-2">Author: There is a manufactured product that does not have the @classCode='MANU'.</sch:assert>
            
            <sch:report test="count(manufacturedMaterialKind/code/@code) = 0" flag="SPL-5">Author: The @code attribute is missing.</sch:report>
            <sch:report test="count(manufacturedMaterialKind/code/@codeSystem) = 0" flag="SPL-5">Author: The @codeSystem attribute is missing.</sch:report>
            <sch:assert test="(manufacturedMaterialKind/code/@codeSystem = $mpid-oid) or (manufacturedMaterialKind/code/@codeSystem = $pcid-oid)" flag="SPL-2">Author: The OID for element: <sch:value-of select=" local-name(manufacturedMaterialKind/code/@codeSystem)"/> should be: <sch:value-of select="$mpid-oid"/> or <sch:value-of select="$pcid-oid"/> however the codeSystem is set to: <sch:value-of select="manufacturedMaterialKind/code/@codeSystem"/></sch:assert>
            <!-- temporarily remove CV validation for PCID
            <sch:assert test="(manufacturedMaterialKind/code/@code=$valid_product) or (manufacturedMaterialKind/code/@code = $valid_package)" flag="SPL-8">Author: code: <sch:value-of select="manufacturedMaterialKind/code/@code"/> is not contained in OID: <sch:value-of select="$mpid-oid"/> or <sch:value-of select="$pcid-oid"/></sch:assert>
            -->
        </sch:rule>
            
        <sch:rule context="performance/actDefinition/product/manufacturedProduct/manufacturedMaterialKind/templateId">
            <sch:let name="valid_ingredient" value="(document(concat($oid_loc,$ingredient-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(@root) = 0" flag="SPL-5">Author: The @root attribute is missing.</sch:report>
            <sch:report test="count(@extension) = 0" flag="SPL-5">Author: The @extension attribute is missing.</sch:report>
            <sch:assert test="@root = $ingredient-id-oid" flag="SPL-2">Author: The OID for element: <sch:value-of select=" local-name(@root)"/> should be: <sch:value-of select="$ingredient-id-oid"/> however the codeSystem is set to: <sch:value-of select="@root"/></sch:assert>
            <sch:assert test="@extension=$valid_ingredient" flag="SPL-8">Author: code: <sch:value-of select="code/@code"/> is not contained in OID: <sch:value-of select="$ingredient-id-oid"/></sch:assert>
        </sch:rule>
        
        <sch:rule context="country">
            <sch:let name="allowed_countries" value="((document(concat($oid_loc,$country-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            
            <sch:assert test="@codeSystem = $country-code-oid" flag="SPL-2">Author: The OID for element: country should be: <sch:value-of select="$country-code-oid"/> however the codeSystem is set to: <sch:value-of select="@codeSystem "/></sch:assert>
            <sch:assert test="@code=$allowed_countries" flag="SPL-8">Author: country code: <sch:value-of select="@code"/> is not in OID: <sch:value-of select="$country-code-oid"/>.</sch:assert>
            
            <sch:report test="$debug=1" flag="0">********************* country debuging  ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">valid_country_codes: <sch:value-of select="((document(concat($oid_loc,$country-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/></sch:report>
            <sch:report test="$debug=1" flag="0">country code: <sch:value-of select="@code"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        
        <!-- pbx: currently not implemented
        <sch:rule context="telecom[@value]">
            <sch:let name="allowed_types" value="((document(concat($oid_loc,$telecom-type-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            
            <sch:assert test="@value=$allowed_types" flag="SPL-8">The type: <sch:value-of select="@value"/> is not in OID: <sch:value-of select="$telecom-type-oid"/></sch:assert>
        </sch:rule>
         -->
        
        <sch:rule context="telecom[@use]">
            <sch:let name="allowed_uses" value="((document(concat($oid_loc,$telecom-use-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
             
            <sch:assert test="@use=$allowed_uses" flag="SPL-8">The use: <sch:value-of select="@use"/> is not in OID: <sch:value-of select="$telecom-use-oid"/></sch:assert>
        </sch:rule>

        <sch:rule context="telecom[@capabilities]">
            <sch:let name="allowed_capabilities" value="((document(concat($oid_loc,$telecom-capability-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            
            <sch:assert test="@capabilities=$allowed_capabilities" flag="SPL-8">The capability: <sch:value-of select="@capabilities"/> is not in OID: <sch:value-of select="$telecom-capability-oid"/></sch:assert>
        </sch:rule>
        
        <sch:rule context="contactParty/addr">
            <sch:let name="allowed_countries" value="((document(concat($oid_loc,$country-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            
            <sch:assert test="count(*) = 5" flag="SPL-9">Author: Part of the address in the representedOrganization is missing.</sch:assert>
            <sch:report test="count(streetAddressLine) = 0" flag="SPL-3">Author: The streetAddressLine element is missing in the representedOrganization.</sch:report>
            <sch:report test="string-length(streetAddressLine)&#60;1" flag="SPL-6">Author: The streetAddressLine element is empty in the representedOrganization.</sch:report>
            <sch:report test="count(city) = 0" flag="SPL-3">Author: The city element is missing in the representedOrganization.</sch:report>
            <sch:report test="string-length(city)&#60;1" flag="SPL-6">Author: The city element is empty in the author (representedOrganization) section.</sch:report>
            <sch:report test="count(state) = 0" flag="SPL-3">Author: The state element is missing in the representedOrganization.</sch:report>
            <sch:report test="string-length(state)&#60;1" flag="SPL-6">Author: The state element is empty in the author section.</sch:report>
            <sch:report test="count(postalCode) = 0" flag="SPL-3">Author: The postalCode element is missing in the representedOrganization.</sch:report>
            <sch:report test="string-length(postalCode)&#60;1" flag="SPL-6">Author: The postalCode element is empty in the author (representedOrganization) section.</sch:report>
            <sch:report test="count(country) = 0" flag="SPL-3">Author: The country element is missing in the representedOrganization.</sch:report>
            
            <sch:report test="$debug=1" flag="0">********************* represented orginization country debuging  ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">valid_country_codes: <sch:value-of select="((document(concat($oid_loc,$country-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/></sch:report>
            <sch:report test="$debug=1" flag="0">country code: <sch:value-of select="country/@code"/></sch:report>
            <sch:report test="$debug=1" flag="0">country code length: <sch:value-of select="string-length(country/@code)"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>

        <sch:rule context="representedOrganization/assignedEntity/assignedOrganization/assignedEntity/assignedOrganization">
            <sch:let name="company_id" value="id[@root = $company-id-oid]/@extension"/>
            <sch:let name="allowed_company_ids" value="(document(concat($oid_loc,$company-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_company" value="$company_id=$allowed_company_ids or $company_id='999999999'"/>
            <sch:let name="company_name" value="(document(concat($oid_loc,$company-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$company_id]/Value[@ColumnRef=$display-language]/SimpleValue"/>
            
            <sch:report test="count(id[@root]) = 0" flag="SPL-5">Author: The id@root attribute is missing.</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) = 0" flag="SPL-8">Author: No id@root equals <sch:value-of select="$company-id-oid"/>.</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) > 1" flag="SPL-8">Author: More than one id@root equals <sch:value-of select="$company-id-oid"/>.</sch:report>
            <sch:assert test="$valid_company" flag="SPL-8">Author: The company ID: <sch:value-of select="$company_id"/> is not in OID: <sch:value-of select="$company-id-oid"/> or 999999999</sch:assert>
            <sch:report test="count(id[@root = $company-id-oid and @extension]) = 0" flag="SPL-5">Author: An id@extension attribute is missing for the company.</sch:report>
            
            <sch:report test="count(name) = 0" flag="SPL-3">Author: The name element is missing.</sch:report>
            <sch:report test="string-length(name)&#60;1" flag="SPL-6">Author: The name element is empty.</sch:report>
            <sch:assert test="name=$company_name" flag="SPL-8">Author: The company name: <sch:value-of select="name"/> is not the same as: <sch:value-of select="$company_name"/>, as defined in the extension</sch:assert>
            
            <sch:report test="$debug=1" flag="0">********************* assigned orginization debuging  ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">company id: <sch:value-of select="$company_id"/></sch:report>
            <sch:report test="$debug=1" flag="0">company name: <sch:value-of select="name"/></sch:report>
            <sch:report test="$debug=1" flag="0">CV company name: <sch:value-of select="$company_name"/></sch:report>
            <sch:report test="$debug=1" flag="0">allowed_company_ids: <sch:value-of select="$allowed_company_ids"/></sch:report>
            <sch:report test="$debug=1" flag="0">valid company id: <sch:value-of select="$valid_company"/></sch:report>            
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>       
    </sch:pattern>
    
    <sch:pattern>
        <sch:title>Product Data Section Validation</sch:title>
        <!-- Broken down by what is being examined, only specifics are included as all general aspects are done as part of labeling section -->

        <sch:rule context="component/structuredBody/component/section">
             <!-- content checks for the product data section -->
            <sch:report test="code[@code = '48780-1'] and string-length(title)&gt;0" flag="SPL-11">Product: The title element has content.</sch:report>
            <sch:report test="code[@code = '48780-1'] and string-length(text)&gt;0" flag="SPL-11">Product: The text element has content.</sch:report>
            <sch:report test="code[@code = '48780-1'] and count(subject) = 0" flag="SPL-3">Product: The subject element is missing.</sch:report>
            <sch:report test="code[@code = '48780-1'] and count(subject/manufacturedProduct/subjectOf) = 0" flag="SPL-3">Product: The subjectOf element is missing.</sch:report>
        
            <sch:report test="$debug=1" flag="0">********************* product data section debuging  ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">product id count:  <sch:value-of select="count(code[@code = '48780-1'])"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        
        <sch:rule context="section/subject/manufacturedProduct/subjectOf/approval">
            <sch:let name="allowed-activity-codes" value="(document(concat($oid_loc,$regulatory-activity-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="allowed-marketing-codes" value="(document(concat($oid_loc,$marketing-category-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="allowed-territory-codes" value="(document(concat($oid_loc,$country-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(id) = 0" flag="SPL-3">Product: The id element is missing for an approval element.</sch:report>
            <sch:report test="count(id[@root]) = 0" flag="SPL-5">Product: The id@root attribute is missing for an approval element.</sch:report>
            <sch:report test="count(id[@extension]) = 0" flag="SPL-5">Product: The id@extension attribute is missing for an approval element.</sch:report>
            <sch:assert test="id/@root=$regulatory-activity-id-oid" flag="SPL-2">Product: The OID for an approval.id element should be: <sch:value-of select="$regulatory-activity-id-oid"/> however the codeSystem is set to: <sch:value-of select="id/@root"/></sch:assert>
            <sch:assert test="id/@extension=$allowed-activity-codes" flag="SPL-8">Product: Code: <sch:value-of select="id/@extension"/> is not in OID: <sch:value-of select="$regulatory-activity-id-oid"/>.</sch:assert>
  
            <sch:report test="count(code) = 0" flag="SPL-3">Product: The code element is missing for an approval element.</sch:report>
            <sch:report test="count(code[@code]) = 0" flag="SPL-5">Product: The approval.code@code attribute is missing.</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0" flag="SPL-5">Product: The approval.code@codeSystem attribute is missing.</sch:report>
            <sch:assert test="code/@codeSystem=$marketing-category-oid" flag="SPL-2">Product: The OID for approval.code@codeSystem should be: <sch:value-of select="$marketing-category-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/></sch:assert>
            <sch:assert test="code/@code=$allowed-marketing-codes" flag="SPL-8">Product: Code: <sch:value-of select="code/@code"/> is not in OID: <sch:value-of select="$marketing-category-oid"/>.</sch:assert>
            
            <sch:report test="count(author) = 0" flag="SPL-3">Product: The author element is missing for an approval element.</sch:report>
            <sch:report test="count(author) &gt; 1" flag="SPL-4">Product: The author element has been defined more than once for an approval element.</sch:report>
            
            <sch:report test="count(author/territorialAuthority/territory) = 0" flag="SPL-3">Product: The territory element is missing for an approval element.</sch:report>
            
            <sch:report test="count(author/territorialAuthority/territory/code) = 0" flag="SPL-3">Product: The territory.code element is missing for an approval element.</sch:report>
            <sch:report test="count(author/territorialAuthority/territory/code[@code]) = 0" flag="SPL-5">Product: The territory.code@code attribute is missing.</sch:report>
            <sch:report test="count(author/territorialAuthority/territory/code[@codeSystem]) = 0" flag="SPL-5">Product: The territory.code@codeSystem attribute is missing.</sch:report>
            <sch:assert test="author/territorialAuthority/territory/code/@codeSystem=$country-code-oid" flag="SPL-2">Product: The OID for territory.code@codeSystem should be: <sch:value-of select="$country-code-oid"/> however the codeSystem is set to: <sch:value-of select="author/territorialAuthority/territory/code/@codeSystem"/></sch:assert>
            <sch:assert test="author/territorialAuthority/territory/code/@code=$allowed-territory-codes" flag="SPL-8">Product: Code: <sch:value-of select="author/territorialAuthority/territory/code/@code"/> is not in OID: <sch:value-of select="$country-code-oid"/>.</sch:assert>
            
            <sch:report test="count(effectiveTime) = 0" flag="SPL-3">Product: The effectiveTime element is missing for an approval element.</sch:report>
        </sch:rule>
        
        <sch:rule context="manufacturedProduct/manufacturedProduct">
            <!-- The collection of items that define a product -->
            <sch:let name="current-section" value="code/@code"/>
            <sch:let name="form-code" value="formCode/@code"/>
            <sch:let name="form-allowed-codes" value="(document(concat($oid_loc,$dosage-form-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="form-code-system" value="$dosage-form-oid"/>
            <sch:let name="product-code" value="code/@code"/>
            <sch:let name="product-allowed-codes" value="(document(concat($oid_loc,$mpid-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="product-code-system" value="$mpid-oid"/>
            <sch:let name="generic-name" value="asEntityWithGeneric/genericMedicine/name"/>
                        
            <sch:report test="count(code) = 0" flag="SPL-3">Product: The code element is missing.</sch:report>
            <sch:report test="count(code[@code]) = 0" flag="SPL-5">Product: The code@code attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0" flag="SPL-5">Product: The code@codeSystem attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:assert test="code[@codeSystem=$mpid-oid]" flag="SPL-2">Product: The OID for element: <sch:value-of select=" local-name(code)"/> should be: <sch:value-of select="$mpid-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/></sch:assert>
            <!-- tempoarily remove checking of CV values for MPID
            <sch:assert test="$product-code=$product-allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="$product-code"/> is not in OID: <sch:value-of select="$mpid-oid"/>.</sch:assert>
            -->
            
            <sch:report test="count(name) = 0" flag="SPL-3">Product: The name element is missing.</sch:report>
            <sch:report test="count(name) > 1" flag="SPL-4">Product: There is more than 1 name element defined.</sch:report>
            <sch:report test="string-length(name)&lt;1" flag="SPL-6">Product: The name element is empty.</sch:report>
            
            <sch:report test="count(formCode ) = 0" flag="SPL-3">Product: The formCode element is missing.</sch:report>
            <sch:report test="count(formCode[@code]) = 0" flag="SPL-5">Product: The formCode@code attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(formCode[@codeSystem]) = 0" flag="SPL-5">Product: The formCode@codeSystem attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:assert test="formCode[@codeSystem=$dosage-form-oid]" flag="SPL-2">Product: The OID for element: <sch:value-of select=" local-name(formCode)"/> should be: <sch:value-of select="$dosage-form-oid"/> however the codeSystem is set to: <sch:value-of select="formCode/@codeSystem"/></sch:assert>
            <sch:assert test="$form-code=$form-allowed-codes" flag="SPL-8">Product: <sch:value-of select="$code"/> is not in OID: <sch:value-of select="$dosage-form-oid"/>.</sch:assert>
            
            <sch:report test="count(asEntityWithGeneric) = 0 " flag="SPL-3">Product: The asEntityWithGeneric element is missing.</sch:report>
            <sch:report test="count(asEntityWithGeneric/genericMedicine) = 0" flag="SPL-3">Product: The asEntityWithGeneric.genericMedicine element is missing.</sch:report>
            <sch:report test="count(asEntityWithGeneric/genericMedicine) > 1" flag="SPL-4">Product: There is more than 1 asEntityWithGeneric.genericMedicine element defined.</sch:report>
            <sch:report test="count(asEntityWithGeneric/genericMedicine/name) = 0" flag="SPL-3">Product: The asEntityWithGeneric.genericMedicine.name element is missing.</sch:report>
            <sch:report test="string-length(asEntityWithGeneric/genericMedicine/name) &lt;1" flag="SPL-6">Product: The asEntityWithGeneric.genericMedicine.name element is empty.</sch:report>
            <sch:report test="string-length(asEntityWithGeneric/genericMedicine/name) &gt;512" flag="SPL-12">Product: The asEntityWithGeneric.genericMedicine.name element is longer than 512 characters.</sch:report>
            
             <!-- ingredient validation has been broken out -->
            <sch:report test="count(ingredient) = 0" flag="SPL-3">Product: The ingredient element is missing.</sch:report>
            <!-- asContent validation has been broken out -->
            <sch:report test="count(asContent) = 0" flag="SPL-3">Product: The asContent element is missing.</sch:report>
             
            <sch:report test="count(asEquivalentEntity) &gt; 1" flag="SPL-4">Product: There is more than 1 asEquivalentEntity element defined.</sch:report>
             
            <sch:report test="$debug=1" flag="0">********************* product data debuging  ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">generic-name: <sch:value-of select="$generic-name"/></sch:report>            
            <sch:report test="$debug=1" flag="0">code-code: <sch:value-of select="$product-code"/></sch:report>   
            <sch:report test="$debug=1" flag="0">form-code: <sch:value-of select="$form-code"/></sch:report>   
            <sch:report test="$debug=1" flag="0">form allowed codes: <sch:value-of select="$form-allowed-codes"/></sch:report>
            <sch:report test="$debug=1" flag="0">e allowed codes: <sch:value-of select="$product-allowed-codes"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>

        <sch:rule context="manufacturedProduct/manufacturedProduct/ingredient">
            <!-- all detailed validation aspects for ingredient -->
            <sch:let name="code" value="ingredientSubstance/code/@code"/>
            <sch:let name="code-system" value="ingredientSubstance/code/@codeSystem"/>
            <sch:let name="role-allowed-codes" value="((document(concat($oid_loc,$ingredient-role-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            <sch:let name="ingredient-allowed-codes" value="((document(concat($oid_loc,$ingredient-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            <sch:let name="ingredient-name" value="((document(concat($oid_loc,$ingredient-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/>

            <sch:let name="classCode" value="@classCode"/>
            <sch:let name="valid_units" value="(document(concat($oid_loc,$units-of-measure-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="numerator_units" value="quantity/numerator/@unit"/>
            <sch:let name="denominator_units" value="quantity/denominator/@unit"/>
                        
            <sch:report test="count(./@classCode) = 0" flag="SPL-5">Product: The ingredient@classCode attribute is missing.</sch:report>
            <sch:assert test="./@classCode=$role-allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="./@classCode"/> is not in OID: <sch:value-of select="$ingredient-role-oid"/>.</sch:assert>
            
            <sch:report test="count(ingredientSubstance) = 0" flag="SPL-3">Product: The ingredientSubstance element is missing for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
            <sch:report test="count(ingredientSubstance/code) = 0" flag="SPL-3">Product: The ingredientSubstance.code element is missing for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
            <sch:report test="count(ingredientSubstance/code[@code]) = 0" flag="SPL-5">Product: The ingredientSubstance.code@code attribute is missing for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
            <sch:report test="count(ingredientSubstance/code[@codeSystem]) = 0" flag="SPL-5">Product: The ingredientSubstance.code@codeSystem attribute is missing for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
                
            <sch:assert test="$code-system=$ingredient-id-oid" flag="SPL-2">Product: The OID for element: <sch:value-of select=" local-name(code)"/> should be: <sch:value-of select="$ingredient-id-oid"/> however the codeSystem is set to: <sch:value-of select="ingredientSubstance/code/@codeSystem"/>.</sch:assert>
                
            <sch:assert test="ingredientSubstance/code/@code=$ingredient-allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="$code"/> is not in OID: <sch:value-of select="$ingredient-id-oid"/>.</sch:assert>
                
            <sch:report test="count(ingredientSubstance/name) > 1" flag="SPL-4">Product: There is more than 1 ingredientSubstance.name element defined for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
            <sch:assert test="ingredientSubstance/name=$ingredient-name" flag="SPL-7">Product: The document contains: <sch:value-of select="ingredientSubstance/name"/> while code: <sch:value-of select="$code"/> for OID: <sch:value-of select="$ingredient-id-oid"/> contains: <sch:value-of select="$ingredient-name"/></sch:assert>
            
            <sch:report test="$numerator_units and not($numerator_units=$valid_units)" flag="SPL-8">Product: The numerator unit <sch:value-of select="$numerator_units"/> is not in for OID: <sch:value-of select="$units-of-measure-oid"/>.</sch:report>
            <sch:report test="$denominator_units and not($denominator_units=$valid_units)" flag="SPL-8">Product: The numerator unit <sch:value-of select="$denominator_units"/> is not in for OID: <sch:value-of select="$units-of-measure-oid"/>.</sch:report>
            
            <sch:report test="$classCode=$active-ingredient-roles and not(quantity/numerator/@value)" flag="SPL-5">Product: An active ingredient is missing the numerator value.</sch:report>
            <sch:report test="$classCode=$active-ingredient-roles and not(quantity/denominator/@value)" flag="SPL-5">Product: An active ingredient is missing the denominator value.</sch:report>
            
            <sch:report test="$classCode=$active-ingredient-roles and quantity/numerator/@value &lt; 1" flag="SPL-8">Product: An active ingredient has a numerator value less than 1.</sch:report>
            <sch:report test="$classCode=$active-ingredient-roles and quantity/denominator/@value &lt; 1" flag="SPL-8">Product: An active ingredient has a denominator value less than 1.</sch:report>
            

            <sch:report test="$classCode=$active-ingredient-roles and empty(ingredientSubstance/activeMoiety/activeMoiety)" flag="SPL-3" id="SPL-3-002">Product: An activeMoiety element is required for <sch:value-of select="./@classCode"/> ingredients.</sch:report>
         
            <sch:report test="not($classCode=$active-ingredient-roles) and not(empty(ingredientSubstance/activeMoiety/activeMoiety))" flag="SPL-11" id="SPL-11-001">Product: An activeMoiety element is not permited for <sch:value-of select="./@classCode"/> ingredients.</sch:report>
         
            <sch:report test="$classCode=$ref-ingredient-roles and not(ingredientSubstance/asEquivalentSubstance)" flag="SPL-3">Product: An active ingredient reference role is missing the definingsubstance.</sch:report>
            <sch:report test="not($classCode=$ref-ingredient-roles) and ingredientSubstance/asEquivalentSubstance" flag="SPL-11">Product: A definingsubstance has been include for a non reference ingredient.</sch:report>
            
            <sch:report test="$debug=1" flag="0">********************* ingredient debuging info ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">class code: <sch:value-of select="./@classCode"/></sch:report>
            <sch:report test="$debug=1" flag="0">allowed role codes: <sch:value-of select="role-allowed-codes"/></sch:report>
            <sch:report test="$debug=1" flag="0">ingredient codeSystem: <sch:value-of select="ingredientSubstance/code/@codeSystem"/></sch:report>
            <sch:report test="$debug=1" flag="0">ingredient code: <sch:value-of select="$code"/></sch:report>
            <sch:report test="$debug=1" flag="0">allowed ingredient codes: <sch:value-of select="$ingredient-allowed-codes"/></sch:report>
            <sch:report test="$debug=1" flag="0">ingredient name: <sch:value-of select="ingredientSubstance/name"/></sch:report>
            <sch:report test="$debug=1" flag="0">display language: <sch:value-of select="$display-language"/></sch:report>
            <sch:report test="$debug=1" flag="0">classCode: <sch:value-of select="$classCode"/></sch:report>         
            <sch:report test="$debug=1" flag="0">valid units: <sch:value-of select="$valid_units"/></sch:report>
            <sch:report test="$debug=1" flag="0">unit1: <sch:value-of select="$denominator_units"/></sch:report>
            <sch:report test="$debug=1" flag="0">unit2: <sch:value-of select="$numerator_units"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>

        <sch:rule context="activeMoiety/activeMoiety">
            <sch:let name="code" value="code/@code"/>
            <sch:let name="ingredient-allowed-codes" value="((document(concat($oid_loc,$ingredient-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            <sch:let name="ingredient-name" value="((document(concat($oid_loc,$ingredient-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/>
            
            <sch:report test="count(code) = 0" flag="SPL-3">Product: The activeMoiety.code element is missing.</sch:report>
            <sch:report test="count(code[@code]) = 0" flag="SPL-5">Product: The activeMoiety.code@code attribute is missing.</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0" flag="SPL-5">Product: The activeMoiety.code@codeSystem attribute is missing.</sch:report>
            <sch:assert test="code/@codeSystem=$ingredient-id-oid" flag="SPL-2">Product: The OID for the activeMoiety should be: <sch:value-of select="$ingredient-id-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/>.</sch:assert>
            <sch:assert test="code/@code=$ingredient-allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="code/@code"/> is not in OID: <sch:value-of select="$ingredient-id-oid"/>.</sch:assert>
            <sch:assert test="name=$ingredient-name" flag="SPL-7">Product: The document contains: <sch:value-of select="name"/> while code: <sch:value-of select="code/@code"/> for OID: <sch:value-of select="$ingredient-id-oid"/> contains: <sch:value-of select="$ingredient-name"/></sch:assert>
        </sch:rule>
        
        <sch:rule context="asEquivalentSubstance">
            <sch:let name="code" value="definingSubstance/code/@code"/>
            <sch:let name="ingredient-allowed-codes" value="((document(concat($oid_loc,$ingredient-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            <sch:let name="ingredient-name" value="((document(concat($oid_loc,$ingredient-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/>
            
            <sch:report test="count(definingSubstance/code) = 0" flag="SPL-3">Product: The definingSubstance.code element is missing.</sch:report>
            <sch:report test="count(definingSubstance/code[@code]) = 0" flag="SPL-5">Product: The definingSubstance.code@code attribute is missing.</sch:report>
            <sch:report test="count(definingSubstance/code[@codeSystem]) = 0" flag="SPL-5">Product: The definingSubstance.code@codeSystem attribute is missing.</sch:report>
            <sch:assert test="definingSubstance/code/@codeSystem=$ingredient-id-oid" flag="SPL-2">Product: The OID for the definingSubstance should be: <sch:value-of select="$ingredient-id-oid"/> however the codeSystem is set to: <sch:value-of select="definingSubstance/code/@codeSystem"/>.</sch:assert>
            <sch:assert test="definingSubstance/code/@code=$ingredient-allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="definingSubstance/code/@code"/> is not in OID: <sch:value-of select="$ingredient-id-oid"/>.</sch:assert>
            <sch:assert test="definingSubstance/name=$ingredient-name" flag="SPL-7">Product: The document contains: <sch:value-of select="definingSubstance/name"/> while code: <sch:value-of select="definingSubstance/code/@code"/> for OID: <sch:value-of select="$ingredient-id-oid"/> contains: <sch:value-of select="$ingredient-name"/></sch:assert>
        </sch:rule>
        
        <sch:rule context="consumedIn/substanceAdministration/routeCode">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$route-of-administration-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(@code) = 0" flag="SPL-5">Product: The @code attribute is missing for a routeCode element.</sch:report>
            <sch:report test="count(@codeSystem) = 0" flag="SPL-5">Product: The codeSystem attribute is missing for a routeCode element.</sch:report>
            <sch:assert test="@codeSystem=$route-of-administration-oid" flag="SPL-2">Product: The OID for the routeCode should be: <sch:value-of select="$route-of-administration-oid"/> however the codeSystem is set to: <sch:value-of select="@codeSystem"/>.</sch:assert>
            <sch:assert test="@code=$allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="@code"/> is not in OID: <sch:value-of select="$route-of-administration-oid"/>.</sch:assert>
            
            <sch:report test="$debug=1" flag="0">********************* route debuging  ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">code: <sch:value-of select="$code"/></sch:report>            
            <sch:report test="$debug=1" flag="0">allowed codes: <sch:value-of select="$allowed-codes"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        
        <sch:rule context="marketingAct">
            <sch:let name="allowed-status-codes" value="(document(concat($oid_loc,$status-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(code) = 0" flag="SPL-3">Product: The code element is missing for an marketingAct element.</sch:report>
            <sch:report test="count(code[@code]) = 0" flag="SPL-5">Product: The marketingAct.code@code attribute is missing.</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0" flag="SPL-5">Product: The marketingAct.code@codeSystem attribute is missing.</sch:report>
             <sch:assert test="code/@codeSystem=$status-oid" flag="SPL-2">Product: The OID for marketingAct.code@codeSystem should be: <sch:value-of select="$status-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/></sch:assert>
            <sch:assert test="code/@code=$allowed-status-codes" flag="SPL-8">Product: Code: <sch:value-of select="code/@code"/> is not in OID: <sch:value-of select="$status-oid"/>.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic">
             <sch:report test="not(code[@codeSystem=$product-characteristics-oid])" flag="SPL-2">Product: There is a characteristic where the OID should be: <sch:value-of select="$product-characteristics-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/>.</sch:report>
        </sch:rule>
        
        <sch:rule context="section/subject/manufacturedProduct">
            <sch:report test="count(subjectOf/characteristic/code[@code='1' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Color characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='2' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Image characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='3' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Shape  characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='4' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Flavor characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='5' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Scoring  characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='6' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Production Amount characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='7' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Combination Product Type characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='8' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Reusability characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='9' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Sterile Use characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='10' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one MRI Use characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='11' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Size characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='12' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Imprint characteristic is allowed for a product.</sch:report>
            <sch:report test="count(subjectOf/characteristic/code[@code='16' and @codeSystem=$product-characteristics-oid]) &gt; 1" flag="SPL-11">Product: Only one Coating characteristic is allowed for a product.</sch:report>
        </sch:rule>
        
        <!-- pbx: not sure how to manage the different characteristics so they are split apart -->
        <sch:rule context="characteristic/code[@code='1' and @codeSystem=$product-characteristics-oid]">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$color-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Color characteristic.</sch:report>
            <sch:report test="count(../value/@code) = 0" flag="SPL-5">Product: The @code attribute is missing for a Color characteristic.</sch:report>
            <sch:report test="count(../value/@codeSystem) = 0" flag="SPL-5">Product: The codeSystem attribute is missing for a Color characteristic.</sch:report>
            <sch:assert test="../value/@codeSystem=$color-oid" flag="SPL-2">Product: The OID for color should be: <sch:value-of select="$color-oid"/> however the codeSystem is set to: <sch:value-of select="../value/@codeSystem"/></sch:assert>
            <sch:assert test="../value/@code=$allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="../value/@code"/> is not in OID: <sch:value-of select="$color-oid"/>.</sch:assert>
            <sch:assert test="../value/@type='CE'" flag="SPL-8">Product: The value of the xsi:type attribute should be CE however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='2' and @codeSystem=$product-characteristics-oid]">
            <sch:let name="allowed-media-types" value="(document(concat($oid_loc,$media-type-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Image characteristic.</sch:report>
            <sch:report test="count(../value/reference) = 0" flag="SPL-3">Product: The value.reference element is missing for an Image characteristic.</sch:report>
            <sch:report test="count(../value/@mediaType) = 0" flag="SPL-5">Product: The value@mediaType attribute is missing for an Image characteristic.</sch:report>
            <sch:report test="count(../value/@type) = 0" flag="SPL-5">Product: The value@type attribute is missing for an Image characteristic.</sch:report>
            <sch:report test="count(../value/reference/@value) = 0" flag="SPL-5">Product: The value.reference@value attribute is missing for an Image characteristic.</sch:report>
            <sch:assert test="../value/@mediaType=$allowed-media-types" flag="SPL-8">Product: Code: <sch:value-of select="../value/@mediaType"/> is not in OID: <sch:value-of select="$media-type-oid"/>.</sch:assert>
            <sch:assert test="../value/@type='ED'" flag="SPL-8">Product: The value of the xsi:type attribute should be ED however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
            
            <sch:assert test="string-length(../value/reference/@value) &gt; 0" flag="SPL-8">Product: The value.reference@reference attribute is empty for an Image characteristic.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='3' and @codeSystem=$product-characteristics-oid]">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$shape-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Shape characteristic.</sch:report>
            <sch:report test="count(../value/@code) = 0" flag="SPL-5">Product: The @code attribute is missing for a Shape characteristic.</sch:report>
            <sch:report test="count(../value/@codeSystem) = 0" flag="SPL-5">Product: The codeSystem attribute is missing for a Shape characteristic.</sch:report>
            <sch:assert test="../value/@codeSystem=$shape-oid" flag="SPL-2">Product: The OID for Shape should be: <sch:value-of select="$shape-oid"/> however the codeSystem is set to: <sch:value-of select="../value/@codeSystem"/></sch:assert>
            <sch:assert test="../value/@code=$allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="../value/@code"/> is not in OID: <sch:value-of select="$shape-oid"/>.</sch:assert>
            <sch:assert test="../value/@type='CE'" flag="SPL-8">Product: The value of the xsi:type attribute should be CE however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='4' and @codeSystem=$product-characteristics-oid]">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$flavor-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Flavor characteristic.</sch:report>
            <sch:report test="count(../value/@code) = 0" flag="SPL-5">Product: The @code attribute is missing for a Flavor characteristic.</sch:report>
            <sch:report test="count(../value/@codeSystem) = 0" flag="SPL-5">Product: The codeSystem attribute is missing for a Flavor characteristic.</sch:report>
            <sch:assert test="../value/@codeSystem=$flavor-oid" flag="SPL-2">Product: The OID for Flavor should be: <sch:value-of select="$flavor-oid"/> however the codeSystem is set to: <sch:value-of select="../value/@codeSystem"/></sch:assert>
            <sch:assert test="../value/@code=$allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="../value/@code"/> is not in OID: <sch:value-of select="$flavor-oid"/>.</sch:assert>
            <sch:assert test="../value/@type='CE'" flag="SPL-8">Product: The value of the xsi:type attribute should be CE however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='5' and @codeSystem=$product-characteristics-oid]">
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Scoring characteristic.</sch:report>
            <sch:report test="count(../value/@value) = 0" flag="SPL-5">Product: The value@value attribute is missing for an Scoring characteristic.</sch:report>
            <sch:report test="count(../value/@type) = 0" flag="SPL-5">Product: The value@type attribute is missing for an Scoring characteristic.</sch:report>
            <sch:assert test="../value/@type='INT'" flag="SPL-8">Product: The value of the xsi:type attribute should be INT however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
            <sch:assert test="string-length(../value/@value) &gt; 0" flag="SPL-8">Product: The value@value attribute is empty for an Scoring characteristic.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='6' and @codeSystem=$product-characteristics-oid]">
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Production Amount characteristic.</sch:report>
            <sch:report test="count(../value/@value) = 0" flag="SPL-5">Product: The value@value attribute is missing for an Production Amount characteristic.</sch:report>
            <sch:report test="count(../value/@type) = 0" flag="SPL-5">Product: The value@type attribute is missing for an Production Amount characteristic.</sch:report>
            <sch:assert test="../value/@type='INT'" flag="SPL-8">Product: The value of the xsi:type attribute should be INT however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
            <sch:assert test="string-length(../value/@value) &gt; 0" flag="SPL-8">Product: The value@value attribute is empty for an Production Amount characteristic.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='7' and @codeSystem=$product-characteristics-oid]">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$combination-product-type-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Combination Product Type characteristic.</sch:report>
            <sch:report test="count(../value/@code) = 0" flag="SPL-5">Product: The @code attribute is missing for a Combination Product Type characteristic.</sch:report>
            <sch:report test="count(../value/@codeSystem) = 0" flag="SPL-5">Product: The codeSystem attribute is missing for a Combination Product Type characteristic.</sch:report>
            <sch:assert test="../value/@codeSystem=$combination-product-type-oid" flag="SPL-2">Product: The OID for Combination Product Type should be: <sch:value-of select="$combination-product-type-oid"/> however the codeSystem is set to: <sch:value-of select="../value/@codeSystem"/></sch:assert>
            <sch:assert test="../value/@code=$allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="../value/@code"/> is not in OID: <sch:value-of select="$combination-product-type-oid"/>.</sch:assert>
            <sch:assert test="../value/@type='CV'" flag="SPL-8">Product: The value of the xsi:type attribute should be CV however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='8' and @codeSystem=$product-characteristics-oid]">
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Reusability characteristic.</sch:report>
            <sch:report test="count(../value/@value) = 0" flag="SPL-5">Product: The value@value attribute is missing for an Reusability characteristic.</sch:report>
            <sch:report test="count(../value/@type) = 0" flag="SPL-5">Product: The value@type attribute is missing for an Reusability characteristic.</sch:report>
            <sch:assert test="../value/@type='INT'" flag="SPL-8">Product: The value of the xsi:type attribute should be INT however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
            <sch:assert test="string-length(../value/@value) &gt; 0" flag="SPL-8">Product: The value@value attribute is empty for an Reusability characteristic.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='9' and @codeSystem=$product-characteristics-oid]">
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for a Sterile Use characteristic.</sch:report>
            <sch:report test="count(../value/@value) = 0" flag="SPL-5">Product: The value@value attribute is missing for a Sterile Use characteristic.</sch:report>
            <sch:report test="count(../value/@type) = 0" flag="SPL-5">Product: The value@type attribute is missing for a Sterile Use characteristic.</sch:report>
            <sch:assert test="../value/@type='BL'" flag="SPL-8">Product: The value of the xsi:type attribute should be BL however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
            <sch:assert test="string-length(../value/@value) &gt; 0" flag="SPL-8">Product: The value@value attribute is empty for a Sterile Use characteristic.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='10' and @codeSystem=$product-characteristics-oid]">
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for a MRI Use characteristic.</sch:report>
            <sch:report test="count(../value/@value) = 0" flag="SPL-5">Product: The value@value attribute is missing for a MRI Use characteristic.</sch:report>
            <sch:report test="count(../value/@type) = 0" flag="SPL-5">Product: The value@type attribute is missing for a MRI Use characteristic.</sch:report>
            <sch:assert test="../value/@type='BL'" flag="SPL-8">Product: The value of the xsi:type attribute should be BL however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
            <sch:assert test="string-length(../value/@value) &gt; 0" flag="SPL-8">Product: The value@value attribute is empty for a MRI Use characteristic.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='11' and @codeSystem=$product-characteristics-oid]">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$units-of-measure-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for a Size characteristic.</sch:report>
            <sch:report test="count(../value/@value) = 0" flag="SPL-5">Product: The value@value attribute is missing for a Size characteristic.</sch:report>
            <sch:report test="count(../value/@unit) = 0" flag="SPL-5">Product: The value@unit attribute is missing for a Size characteristic.</sch:report>
            <sch:report test="count(../value/@type) = 0" flag="SPL-5">Product: The value@type attribute is missing for a Size characteristic.</sch:report>
            <sch:assert test="../value/@unit=$allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="../value/@unit"/> is not in OID: <sch:value-of select="$units-of-measure-oid"/>.</sch:assert>
            <sch:assert test="../value/@type='PQ'" flag="SPL-8">Product: The value of the xsi:type attribute should be PQ however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
            <sch:assert test="string-length(../value/@value) &gt; 0" flag="SPL-8">Product: The value@value attribute is empty for a Size characteristic.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='12' and @codeSystem=$product-characteristics-oid]">
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Imprint characteristic.</sch:report>
            <sch:report test="count(../value/@type) = 0" flag="SPL-5">Product: The value@type attribute is missing for an Imprint characteristic.</sch:report>
            <sch:assert test="../value/@type='ST'" flag="SPL-8">Product: The value of the xsi:type attribute should be ST however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
            <sch:assert test="string-length(../value) &gt; 0" flag="SPL-8">Product: The value@value attribute is empty for an Imprint characteristic.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='13' and @codeSystem=$product-characteristics-oid]">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$pharmaceutical-standard-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Pharmaceutical Standard characteristic.</sch:report>
            <sch:report test="count(../value/@code) = 0" flag="SPL-5">Product: The @code attribute is missing for a Pharmaceutical Standard characteristic.</sch:report>
            <sch:report test="count(../value/@codeSystem) = 0" flag="SPL-5">Product: The codeSystem attribute is missing for a Pharmaceutical Standard characteristic.</sch:report>
            <sch:assert test="../value/@codeSystem=$pharmaceutical-standard-oid" flag="SPL-2">Product: The OID for Pharmaceutical Standard should be: <sch:value-of select="$pharmaceutical-standard-oid"/> however the codeSystem is set to: <sch:value-of select="../value/@codeSystem"/></sch:assert>
            <sch:assert test="../value/@code=$allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="../value/@code"/> is not in OID: <sch:value-of select="$pharmaceutical-standard-oid"/>.</sch:assert>
            <sch:assert test="../value/@type='CE'" flag="SPL-8">Product: The value of the xsi:type attribute should be CE however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='14' and @codeSystem=$product-characteristics-oid]">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$scheduling-symbol-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Pharmaceutical Standard characteristic.</sch:report>
            <sch:report test="count(../value/@code) = 0" flag="SPL-5">Product: The @code attribute is missing for a Pharmaceutical Standard characteristic.</sch:report>
            <sch:report test="count(../value/@codeSystem) = 0" flag="SPL-5">Product: The codeSystem attribute is missing for a Pharmaceutical Standard characteristic.</sch:report>
            <sch:assert test="../value/@codeSystem=$scheduling-symbol-oid" flag="SPL-2">Product: The OID for Pharmaceutical Standard should be: <sch:value-of select="$scheduling-symbol-oid"/> however the codeSystem is set to: <sch:value-of select="../value/@codeSystem"/></sch:assert>
            <sch:assert test="../value/@code=$allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="../value/@code"/> is not in OID: <sch:value-of select="$scheduling-symbol-oid"/>.</sch:assert>
            <sch:assert test="../value/@type='CE'" flag="SPL-8">Product: The value of the xsi:type attribute should be CE however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
        </sch:rule>
        
        <sch:rule context="characteristic/code[@code='15' and @codeSystem=$product-characteristics-oid]">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$therapeutic-class-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Pharmaceutical Standard characteristic.</sch:report>
            <sch:report test="count(../value/@code) = 0" flag="SPL-5">Product: The @code attribute is missing for a Pharmaceutical Standard characteristic.</sch:report>
            <sch:report test="count(../value/@codeSystem) = 0" flag="SPL-5">Product: The codeSystem attribute is missing for a Pharmaceutical Standard characteristic.</sch:report>
            <sch:assert test="../value/@codeSystem=$therapeutic-class-oid" flag="SPL-2">Product: The OID for Pharmaceutical Standard should be: <sch:value-of select="$therapeutic-class-oid"/> however the codeSystem is set to: <sch:value-of select="../value/@codeSystem"/></sch:assert>
            <sch:assert test="../value/@code=$allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="../value/@code"/> is not in OID: <sch:value-of select="$therapeutic-class-oid"/>.</sch:assert>
            <sch:assert test="../value/@type='CE'" flag="SPL-8">Product: The value of the xsi:type attribute should be CE however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
        </sch:rule>     
        
        <sch:rule context="characteristic/code[@code='16' and @codeSystem=$product-characteristics-oid]">
            <sch:report test="count(../value) = 0" flag="SPL-3">Product: The value element is missing for an Coating characteristic.</sch:report>
            <sch:report test="count(../value/@type) = 0" flag="SPL-5">Product: The value@type attribute is missing for an Coating characteristic.</sch:report>
            <sch:assert test="../value/@type='ST'" flag="SPL-8">Product: The value of the xsi:type attribute should be ST however it is: <sch:value-of select="../value/@type"/>.</sch:assert>
            <sch:assert test="string-length(../value) &gt; 0" flag="SPL-8">Product: The value@value attribute is empty for an Coating characteristic.</sch:assert>
        </sch:rule>
        
        <sch:rule context="manufacturedProduct/manufacturedProduct/templateId[@root='2.16.840.1.113883.2.20.6.53']">
            <sch:let name="allowed-products" value="(document(concat($oid_loc,$product-type-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(@root) = 0" flag="SPL-5">Product: The root attribute is missing.</sch:report>
            <sch:report test="count(@extension) = 0" flag="SPL-5">Product: The extension attribute is missing.</sch:report>
            <sch:assert test="@root=$product-type-oid" flag="SPL-2">Content: The OID should be: <sch:value-of select="$product-type-oid"/> however the codeSystem is set to: <sch:value-of select="@root"/></sch:assert>
            <sch:assert test="@extension=$allowed-products" flag="SPL-8">Content: Code: <sch:value-of select="@extension"/> is not in OID: <sch:value-of select="$product-type-oid"/>.</sch:assert>
        </sch:rule>
    
        <sch:rule context="manufacturedProduct/asContent/quantity">
            <sch:let name="valid_units" value="(document(concat($oid_loc,$units-of-presentation-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="numerator_units" value="numerator/@unit"/>
            <sch:let name="denominator_units" value="denominator/@unit"/>            
            
            <sch:report test="count(numerator/@unit)=0" flag="SPL-5">Product: The unit attribute is missing for the numerator in an asContent element.</sch:report>
            <sch:report test="count(numerator/@value)=0" flag="SPL-5">Product: The value attribute is missing for the numerator in an asContent element.</sch:report>
            <sch:assert test="$numerator_units=$valid_units" flag="SPL-8">Product: The numerator unit <sch:value-of select="$numerator_units"/> is not in OID: <sch:value-of select="$units-of-presentation-oid"/>.</sch:assert>
            <sch:report test="numerator/@value &lt; 1" flag="SPL-8">Product: An asContent element has a numerator with a value smaller than 1.</sch:report>
            
            <sch:report test="count(denominator/@unit)=0 and not(numerator/@unit='1')" flag="SPL-5">Product: The unit attribute is missing for the denominator in an asContent element.</sch:report>
            <sch:report test="count(denominator/@value)=0" flag="SPL-5">Product: The value attribute is missing for the denominator in an asContent element.</sch:report>
            <sch:assert test="denominator/@unit='1' or numerator/@unit='1'" flag="SPL-8">Product: The unit attribute is not 1 for the denominator in an asContent element.</sch:assert>
            <sch:assert test="denominator/@value='1' " flag="SPL-8">Product: The value attribute is not 1 for the denominator in an asContent element.</sch:assert>
        </sch:rule>
     
        <sch:rule context="manufacturedProduct/asContent/containerPackagedProduct">
            <sch:let name="package-allowed-codes" value="((document(concat($oid_loc,$pcid-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            <sch:let name="allowed-form-codes" value="((document(concat($oid_loc,$pack-type-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            
            <sch:report test="count(code) = 0" flag="SPL-3">Product: The containerPackagedProduct.code element is missing.</sch:report>
            <sch:report test="count(code[@code]) = 0" flag="SPL-5">Product: The containerPackagedProduct.code@code attribute is missing.</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0" flag="SPL-5">Product: The containerPackagedProduct.code@codeSystem attribute is missing.</sch:report>
            <sch:assert test="code/@codeSystem=$pcid-oid" flag="SPL-2">Product: The OID for the containerPackagedProduct.code should be: <sch:value-of select="$pcid-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/>.</sch:assert>
            <sch:assert test="code/@code=$package-allowed-codes" flag="SPL-8">Product: Code: <sch:value-of select="code/@code"/> is not in OID: <sch:value-of select="$pcid-oid"/>.</sch:assert>
            
            <sch:report test="count(formCode) = 0" flag="SPL-3">Product: The containerPackagedProduct.formCode element is missing.</sch:report>
            <sch:report test="count(formCode[@code]) = 0" flag="SPL-5">Product: The containerPackagedProduct.formCode@code attribute is missing.</sch:report>
            <sch:report test="count(formCode[@codeSystem]) = 0" flag="SPL-5">Product: The containerPackagedProduct.formCode@codeSystem attribute is missing.</sch:report>
            <sch:assert test="formCode/@codeSystem=$pack-type-oid" flag="SPL-2">Product: The OID for the containerPackagedProduct.formCode should be: <sch:value-of select="$pack-type-oid"/> however the codeSystem is set to: <sch:value-of select="formCode/@codeSystem"/>.</sch:assert>
            <sch:assert test="formCode/@code=$allowed-form-codes" flag="SPL-8">Product: Code: <sch:value-of select="formCode/@code"/> is not in OID: <sch:value-of select="$pack-type-oid"/>.</sch:assert>
        </sch:rule>
        
        <sch:rule context="subject/manufacturedProduct">
            <sch:report test="count(consumedIn) = 0" flag="SPL-3">Product: The consumedIn element is missing.</sch:report>
            <sch:report test="count(consumedIn/substanceAdministration) = 0" flag="SPL-3">Product: The consumedIn.substanceAdministration element is missing.</sch:report>
            <sch:report test="count(consumedIn/substanceAdministration/routeCode) = 0" flag="SPL-3">Product: The consumedIn.substanceAdministration.routeCode element is missing.</sch:report>
        </sch:rule>
        
        <sch:rule context="manufacturedProduct/asEquivalentEntity">
            <sch:report test="count(@classCode) = 0" flag="SPL-5">Product: The @classCode attribute is missing for a asEquivalentEntity element.</sch:report>
            <sch:assert test="@classCode='EQUIV'" flag="SPL-2">Product: The @classCode attribute should be EQUIV it is set to: <sch:value-of select="@codeSystem"/></sch:assert>
            
            <sch:let name="valid_product" value="(document(concat($oid_loc,$mpid-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_package" value="(document(concat($oid_loc,$pcid-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_equivalancy" value="(document(concat($oid_loc,$equivalence-codes-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(code) = 0" flag="SPL-3">Product: The code element is missing in an asEquivalentEntity element.</sch:report>
            <sch:report test="count(code/@code) = 0" flag="SPL-5">Product: The asEquivalentEntity@code attribute is missing.</sch:report>
            <sch:report test="count(code/@codeSystem) = 0" flag="SPL-5">Product: The asEquivalentEntity@codeSystem attribute is missing.</sch:report>
            <sch:assert test="(code/@codeSystem = $equivalence-codes-oid)" flag="SPL-2">Product: The OID for the asEquivalentEntity element should be: <sch:value-of select="$equivalence-codes-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/></sch:assert>
            <sch:assert test="(code/@code=$valid_equivalancy)" flag="SPL-8">Product: Code: <sch:value-of select="code/@code"/> is not contained in OID: <sch:value-of select="$equivalence-codes-oid"/>.</sch:assert>
            
            <sch:report test="count(definingMaterialKind) = 0" flag="SPL-3">Product: The definingMaterialKind element is missing in an asEquivalentEntity element.</sch:report>
            <sch:report test="count(definingMaterialKind/code/@code) = 0" flag="SPL-5">Author: The definingMaterialKind@code attribute is missing.</sch:report>
            <sch:report test="count(definingMaterialKind/code/@codeSystem) = 0" flag="SPL-5">Author: The definingMaterialKind@codeSystem attribute is missing.</sch:report>
            <sch:assert test="(definingMaterialKind/code/@codeSystem = $mpid-oid) or (definingMaterialKind/code/@codeSystem = $pcid-oid)" flag="SPL-2">Author: The OID for element: <sch:value-of select=" local-name(definingMaterialKind/code/@codeSystem)"/> should be: <sch:value-of select="$mpid-oid"/> or <sch:value-of select="$pcid-oid"/> however the codeSystem is set to: <sch:value-of select="definingMaterialKind/code/@codeSystem"/></sch:assert>
            <!-- temporarily remove CV validation for PCID
            <sch:assert test="(definingMaterialKind/code/@code=$valid_product) or (definingMaterialKind/code/@code = $valid_package)" flag="SPL-8">Author: code: <sch:value-of select="definingMaterialKind/code/@code"/> is not contained in OID: <sch:value-of select="$mpid-oid"/> or <sch:value-of select="$pcid-oid"/></sch:assert>
            -->
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern>
        <sch:title>Labeling Section Validation</sch:title>
        <sch:p>This covers both the Labeling and the Product Data Sections, any aspect that is only applicable to the
        Product aspects have been located in the Product Data section.</sch:p>
        <sch:rule context="component/section">
            <sch:let name="current-section_code" value="code/@code"/>
            <sch:let name="current-section_codesystem" value="code/@codeSystem"/>
            <sch:let name="allowed-section-codes" value="(document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="oid-section-title" value="(document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section_code]/Value[@ColumnRef=$display-language]/SimpleValue"/>
            

            <sch:report test="count(code) = 0 " flag="SPL-3">Content: The code element is missing in section: <sch:value-of select="$current-section_code"/>.</sch:report>
            <sch:report test="count(code[@code]) = 0" flag="SPL-5">Content: The code@code attribute is missing in section: <sch:value-of select="$current-section_code"/>.</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0" flag="SPL-5">Content: The code@codeSystem attribute is missing in section: <sch:value-of select="$current-section_code"/>.</sch:report>
            <sch:assert test="$current-section_codesystem=$section-id-oid" flag="SPL-2">Content: The OID for element: <sch:value-of select=" local-name($current-section_codesystem)"/> should be: <sch:value-of select="$section-id-oid"/> however the codeSystem is set to: <sch:value-of select="$current-section_codesystem"/></sch:assert>
            <sch:assert test="$current-section_code=$allowed-section-codes" flag="SPL-8">Content: Code: <sch:value-of select="$current-section_code"/> is not in OID: <sch:value-of select="$section-id-oid"/>.</sch:assert>

            <sch:report test="count(effectiveTime) = 0" flag="SPL-3">Content: The effectiveTime element is missing in the <sch:value-of select="$oid-section-title"/> (<sch:value-of select="$current-section_code"/>) section.</sch:report>
            
            <sch:report test="$debug=1" flag="0">********************* section aspect debuging info for section: <sch:value-of select="$current-section_code"/> ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">The location of the oid file: <sch:value-of select="concat($oid_loc,$structure-aspects-oid,$file-suffix)"/></sch:report>
            <sch:report test="$debug=1" flag="0">section code: <sch:value-of select="$current-section_code"/> </sch:report>
            <sch:report test="$debug=1" flag="0">section codeSystem: <sch:value-of select="$current-section_codesystem"/> </sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info for section: <sch:value-of select="$current-section_code"/> ************************* </sch:report>
        </sch:rule>

        <sch:rule context="renderMultiMedia">
            <sch:assert test="@referencedObject=//observationMedia/@ID" flag="SPL-6">Image: There was no link target found for renderMultiMedia element: <sch:value-of select="./@referencedObject"/></sch:assert>
            
            <sch:report test="$debug=1" flag="0">********************* debuging info for renderMultiMedia ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">Content of renderMultiMedia: <sch:value-of select=" attribute::*"/></sch:report>
            <sch:report test="$debug=1" flag="0">Content of renderMultiMedia@referencedObject : <sch:value-of select="./@referencedObject"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info for section: ************************* </sch:report>
        </sch:rule>

        <sch:rule context="observationMedia">
            <sch:let name="file_formats" value="((document(concat($oid_loc,$media-type-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef=$display-language]/SimpleValue)"/>
            <sch:let name="allowed_format" value="(value/@mediaType = $file_formats)"/>
            <sch:let name="period" value="contains(value/reference/@value, '.')"/>
            <sch:let name="extension" value="substring-after(value/reference/@value, '.')"/>
            
            <sch:report test="count(@ID) = 0" flag="SPL-5">Image: The ID attribute is missing in a observationMedia element.</sch:report>
            <sch:report test="string-length(@ID)&lt;1" flag="SPL-6">Image: The ID attribute is empty in a observationMedia element.</sch:report>
            <sch:assert test="@ID=//renderMultiMedia/@referencedObject" flag="SPL-6">Image: There was no source link found for observationMedia element: <sch:value-of select="./@ID"/></sch:assert>
            
            <sch:report test="count(text) = 0" flag="SPL-3">Image: The text element is missing in a observationMedia element.</sch:report>
            <sch:report test="string-length(text)&lt;1" flag="SPL-6">Image: The text element is empty in a observationMedia element.</sch:report>
            
            <sch:report test="string-length(value)&lt;1" flag="SPL-6">Image: The text element is empty in a observationMedia element.</sch:report>
            <sch:report test="count(value/@mediaType) = 0" flag="SPL-3">Image: The value@mediaType atribute is missing in a observationMedia element.</sch:report>
            <sch:report test="string-length(value/@mediaType)&lt;1" flag="SPL-6">Image: The value@mediaType attribute is empty in a observationMedia element.</sch:report>
            <sch:assert test="value/@type = 'ED'" flag="SPL-8">Image: The value/@type attribute is not 'ED', it is <sch:value-of select="value/@type"/>.</sch:assert>
            <sch:report test="not($allowed_format)" flag="SPL-8">Image: The value/@mediaType attribute equals: <sch:value-of select="value/@mediaType"/> which is not in OID: <sch:value-of select="$media-type-oid"/>.</sch:report>
            
            <sch:report test="count(value/reference) = 0" flag="SPL-3">Image: The value.reference@value atribute is missing in a renderMultiMedia element.</sch:report>
            <sch:report test="count(value/reference/@value) = 0" flag="SPL-5">Image: The value.reference@value atribute is missing in a renderMultiMedia element.</sch:report>
            <sch:report test="string-length(value/reference/@value)&lt;1" flag="SPL-6">Image: The value.reference@value attribute is empty in a renderMultiMedia element.</sch:report>
            <sch:assert test="string-length(value/reference/@value)&lt;60" flag="SPL-12">Image: The value.reference@value atribute <sch:value-of select="value/reference/@value"/> is more than 59 characters long in a renderMultiMedia element.</sch:assert>
            <sch:assert test="value/reference/@value = lower-case(value/reference/@value)" flag="SPL-12">Image: The value/reference@value atribute <sch:value-of select="value/reference/@value"/> is not all lowercase in a renderMultiMedia element.</sch:assert>
            <sch:assert test="$period" flag="SPL-12">Image: The value/reference@value atribute <sch:value-of select="value/reference/@value"/> does not contain an extension.</sch:assert>
            <sch:assert test="string-length($extension)&lt;4" flag="SPL-12">Image: The extension part of the value.reference@value atribute <sch:value-of select="value/reference/@value"/> is more than 3 characters long in a renderMultiMedia element.</sch:assert>
            <sch:assert test="local-name(..)='component'" flag="SPL-9">Image: The parent element for the observationMedia element should be component but it was <sch:value-of select="local-name(..)"/></sch:assert>
            

            <!-- pbx: something is wrong with the file exist test -->
            <!-- 
            <sch:let name="file-ref" value="(concat('.',(string(value/reference/@value))))"/>
             
            <sch:report test="1=1" flag="0">: 1 <sch:value-of select="doc-available('./chem.jpg')"/>: 2 <sch:value-of select="(document('./chem.jpg'))"/>: 3 <sch:value-of select="boolean(document(('./chem.jpg')))"/>: 4 <sch:value-of select="exists(document(('./chem.jpg')))"/></sch:report>
            <sch:report test="1=1" flag="0">file: <sch:value-of select="$file-ref"/></sch:report>
            <sch:assert test="doc-available($file-ref)" flag="SPL-6">exists no: Image: The file <sch:value-of select="value/reference/@value"/> can not be found.</sch:assert>
            <sch:report test="doc-available($file-ref)" flag="SPL-6">exists yes  Image: The file <sch:value-of select="value/reference/@value"/> can not be found./></sch:report>
            <sch:report test="1=1" flag="0">file? <sch:value-of select="$file-ref"/></sch:report>
            <sch:report test="1=1" flag="0">exists? <sch:value-of select="exists($file-ref)"/></sch:report>
            -->
            
            <sch:report test="$debug=1" flag="0">********************* observationMedia Debuging ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">value: <sch:value-of select="value/@type"/></sch:report>
            <sch:report test="$debug=1" flag="0">value2: <sch:value-of select="value/attribute::*"/>"</sch:report>
            <sch:report test="$debug=1" flag="0">@mediaType = <sch:value-of select="value/@mediaType"/>"</sch:report>
            <sch:report test="$debug=1" flag="0">allowed_format = <sch:value-of select="$allowed_format"/>"</sch:report>
            <sch:report test="$debug=1" flag="0">allowed formats: <sch:value-of select="$file_formats"/>"</sch:report>
            <sch:report test="$debug=1" flag="0">file name: <sch:value-of select="value/reference/@value"/>"</sch:report>
            <sch:report test="$debug=1" flag="0">file name lower: <sch:value-of select="lower-case(value/reference/@value)"/>"</sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        
        <sch:rule context="effectiveTime">
            <sch:assert test="@value or low/@value or high/@value" flag="SPL-6">Content: The effectiveTime element that has no direct or indirect value</sch:assert>
            
            <sch:report test="$debug=1" flag="0">*********************  effectiveTime Debuging ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">effectiveTime@value <sch:value-of select="effectiveTime/@value"/></sch:report>
            <sch:report test="$debug=1" flag="0">effectiveTime/low/@value <sch:value-of select="effectiveTime/low/@value "/></sch:report>
            <sch:report test="$debug=1" flag="0">effectiveTime/high/@value <sch:value-of select="effectiveTime/high/@value"/></sch:report>
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>

        <sch:rule context="effectiveTime/low">
            <sch:assert test="@value" flag="SPL-5">Content: There is no value for the effectiveTime.low element.</sch:assert> 

            <sch:report test="(@value ) and (../high/@value) and not(@value &lt;= (../high/@value))" flag="SPL-8">Content: The effectiveTime.low value: <sch:value-of select="@value"/> is not smaller or equal to the effectiveTime.high value: <sch:value-of select="../high/@value"/> in an effectiveTime.low element.</sch:report>
        </sch:rule>

        <sch:rule context="effectiveTime/high">
            <sch:assert test="@value" flag="SPL-5">Content: There is no value for the effectiveTime.high element.</sch:assert> 
            
            <sch:report test="(@value ) and (../low/@value) and not(@value &gt;= (../low/@value))" flag="SPL-8">Content: The effectiveTime.high value: <sch:value-of select="@value"/> is not greater or equal to the effectiveTime.low value: <sch:value-of select="../low/@value"/> in an effectiveTime.high element.</sch:report>
        </sch:rule>
        
        <sch:rule context="confidentialityCode">
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$information-disclosure-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(@code) = 0" flag="SPL-5">Content: The @code attribute is missing for a confidentialityCode element.</sch:report>
            <sch:report test="count(@codeSystem) = 0" flag="SPL-5">Content: The @codeSystem attribute is missing for a confidentialityCode element.</sch:report>
            <sch:assert test="@codeSystem=$information-disclosure-oid" flag="SPL-2">Content: The OID for the confidentialityCode element should be: <sch:value-of select="$information-disclosure-oid"/> however the codeSystem is set to: <sch:value-of select="@codeSystem"/></sch:assert>
            <sch:assert test="@code=$allowed-codes" flag="SPL-8">Content: Code: <sch:value-of select="@code"/> is not in OID: <sch:value-of select="$information-disclosure-oid"/>.</sch:assert>
        </sch:rule>
    </sch:pattern>
    
    
    <sch:pattern>
        <sch:title>Doctype Prolog Validation</sch:title>
        <sch:rule context="/">
            <sch:let name="stylesheet-info" value="processing-instruction('xml-stylesheet')"/>
            <sch:let name="stylesheet1" value="'type=&#34;text/xsl&#34; href=&#34;https://rawgit.com/HealthCanada/HPFB/master/Structured-Product-Labeling-(SPL)/Style-Sheets/current/hpfb-spm.xsl&#34;'"/>
            <sch:let name="stylesheet2" value="'type=&#34;text/css&#34; href=&#34;https://rawgit.com/HealthCanada/HPFB/master/Structured-Product-Labeling-(SPL)/Style-Sheets/current/hpfb-spm-core.css&#34;'"/>
            
            <sch:assert test="$stylesheet1=$stylesheet-info" flag="DT-11">Doctype Prolog: Doctype: <sch:value-of select="$doc-doctype"/> processing instructions did not contain: <sch:value-of select="$stylesheet1"/> </sch:assert>
            <sch:assert test="$stylesheet2=$stylesheet-info" flag="DT-11">Doctype Prolog: Doctype: <sch:value-of select="$doc-doctype"/> processing instructions did not contain: <sch:value-of select="$stylesheet2"/> </sch:assert>
            
            <!-- pbx: Try to figure out how to test if there is more to the string? tried string replace but not sure how to get it to work -->
            
            <sch:report test="$debug=1" flag="0">********************* Doctype Processing Instruction Debuging ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">TemplateID: <sch:value-of select="$doc-template"/>"</sch:report>
            <sch:report test="$debug=1" flag="0">Valid Template: <sch:value-of select="$doc-template='1', '2', '3'"/>"</sch:report>
            <sch:report test="$debug=1" flag="0">Processing Information: <sch:value-of select="processing-instruction('xml-stylesheet')"/>"</sch:report>
            <sch:report test="$debug=1" flag="0">PI: <sch:value-of select="$stylesheet-info"/>"</sch:report>         
            <sch:report test="$debug=1" flag="0">Stylesheet1: <sch:value-of select="$stylesheet1"/>"</sch:report>         
            <sch:report test="$debug=1" flag="0">Stylesheet2: <sch:value-of select="$stylesheet2"/>"</sch:report>         
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>
        <sch:title>Doctype Document Infomation Validation</sch:title>
        
        <sch:rule context="document">
            <sch:let name="allowed-marketing-codes" value="(document(concat($oid_loc,$marketing-category-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="$doc-doctype='1' and not(title)" flag="DT-1">Doctype Document Information: Doctype: <sch:value-of select="$doc-doctype"/> requires a title element.</sch:report>
            <sch:report test="$doc-doctype='1' and not(effectiveTime/originalText)" flag="DT-1">Doctype Document Information: Doctype: <sch:value-of select="$doc-doctype"/> requires an originalText element to capture the Date of Initial Approval aspects.</sch:report>
            <sch:report test="$doc-doctype='1' and not(effectiveTime/originalText/@description='Date of Initial Approval')" flag="DT-4">Doctype Document Information: The originalText@description is incorrect for Doctype: <sch:value-of select="$doc-doctype"/>.</sch:report>
            <sch:report test="$doc-doctype='1' and not(string-length(effectiveTime/originalText) &gt; 1)" flag="DT-4">Doctype Document Information: Doctype: <sch:value-of select="$doc-doctype"/> requires infomation in the originalText@description.</sch:report>
            <sch:report test="$doc-doctype='1' and count(templateId[@root=$marketing-category-oid]) = 0" flag="DT-4">Doctype Document Information: Doctype: <sch:value-of select="$doc-doctype"/> requires a templateId element where the OID is <sch:value-of select="$marketing-category-oid"/>.</sch:report>
            <sch:report test="$doc-doctype='1' and count(templateId[@root=$marketing-category-oid and @extension=$allowed-marketing-codes]) = 0" flag="DT-6">Doctype Document Information: The templateId@extension value is not in OID <sch:value-of select="$marketing-category-oid"/>.</sch:report>
        </sch:rule>
    </sch:pattern>

        
    <sch:pattern>
        <sch:title>Doctype Author Validation</sch:title>
        <sch:rule context="representedOrganization">
            <sch:let name="company_id" value="id[@root = $company-id-oid]/@extension"/>
            
            <sch:report test="($doc-doctype='1') and $company_id='999999999'" flag="DT-9">Doctype Author: Doctype: <sch:value-of select="$doc-doctype"/> does not allow undefined company's</sch:report>
        </sch:rule>
        <sch:rule context="assignedEntity/assignedOrganization">
            <sch:let name="company_id" value="id[@root = $company-id-oid]/@extension"/>
            
            <sch:report test="($doc-doctype='1') and $company_id='999999999'" flag="DT-9">Doctype Author: Doctype: <sch:value-of select="$doc-doctype"/> does not allow undefined company's</sch:report>
        </sch:rule>

    </sch:pattern>
    
    <sch:pattern>
        <sch:title>Doctype Product Data Section Validation</sch:title>
        
        <sch:rule context="component/structuredBody">
            <sch:report test="$product-required and count(component/section/code[@code = '48780-1']) = 0" id="DT-Rule-30001" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> reqires a product data section (the section where the code@code = '48780-1').</sch:report>
        
            <sch:report test="$debug=1" flag="0">********************* Doctype Product Data Section Validation ************************* </sch:report>
            <sch:report test="$debug=1" flag="0">what doctype are we? <sch:value-of select="$doc-doctype"/></sch:report>
            <sch:report test="$debug=1" flag="0">who needs products? <sch:value-of select="$product-driven-doctypes"/></sch:report>         
            <sch:report test="$debug=1" flag="0">do we need a product? <sch:value-of select="$doc-doctype=$product-driven-doctypes"/></sch:report>         
            <sch:report test="$debug=1" flag="0">do we need a product alternate? <sch:value-of select="$product-required"/></sch:report>         
            <sch:report test="$debug=1" flag="0">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        
        <sch:rule context="component/section/code[@code = '48780-1']">
            <sch:report test="($doc-doctype='1') and count(../effectiveTime/low)=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires an effectiveTime.low element.</sch:report>
            <sch:report test="($doc-doctype='1') and count(../effectiveTime/high)=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires an effectiveTime.high element.</sch:report>
            <sch:report test="($doc-doctype='1') and count(../subject)=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires one or more subject elements.</sch:report>
            <sch:report test="($doc-doctype='1') and count(../subject/manufacturedProduct/manufacturedProduct)=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires one or more products.</sch:report>
            <sch:report test="($doc-doctype='1') and count(../subject/manufacturedProduct/subjectOf/marketingAct/effectiveTime/low) &gt; 0" flag="DT-9">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> may not include a marketing effectiveTime.low element.</sch:report>
        </sch:rule>
        
        <sch:rule context="component/section[./code/@code = '48780-1']/subject">
            <sch:report test="($doc-doctype='1') and count(manufacturedProduct/subjectOf/approval)=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires an approval element.</sch:report>
            <sch:report test="($doc-doctype='1') and count(manufacturedProduct/subjectOf/approval/effectiveTime/low)=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires an approval.effectiveTime.low element.</sch:report>
            <sch:report test="($doc-doctype='1') and count(manufacturedProduct/subjectOf/approval/effectiveTime/high)=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires an approval.effectiveTime.high element.</sch:report>
            <sch:report test="($doc-doctype='1') and count(manufacturedProduct/subjectOf/characteristic/code[@codeSystem=$product-characteristics-oid and @code='13'])=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires a Pharmaceutical Standard characteristic.</sch:report>
            <sch:report test="($doc-doctype='1') and count(manufacturedProduct/subjectOf/characteristic/code[@codeSystem=$product-characteristics-oid and @code='14'])=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires a Scheduling Symbol characteristic.</sch:report>
            <sch:report test="($doc-doctype='1') and count(manufacturedProduct/subjectOf/characteristic/code[@codeSystem=$product-characteristics-oid and @code='15'])=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires a Therapeutic Classification characteristic.</sch:report>
            <sch:report test="($doc-doctype='1') and count(manufacturedProduct/consumedIn/substanceAdministration/routeCode)=0" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires a Route of Administration (substanceAdministration.routeCode element).</sch:report> 
        </sch:rule>
        
        <sch:rule context="manufacturedProduct/manufacturedProduct">
            <sch:report test="($doc-doctype='1') and not(templateId[@root=$product-type-oid])" flag="DT-1">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> requires a templateID element where the root is: <sch:value-of select="$product-type-oid"/>.</sch:report>
            <sch:report test="($doc-doctype='1') and asEquivalentEntity" flag="DT-9">Doctype Product: Doctype: <sch:value-of select="$doc-doctype"/> may not contain the asEquivalentEntity element.</sch:report>
        </sch:rule>
        

    </sch:pattern>
    

<sch:pattern>
    <sch:title>Doctype Labeling Section Validation</sch:title>
    <!-- The following items have been deffered:
        Check that the section is contextually correct
        Check that the section inclusion is correct 
        Check that the there are no omited sections   
        Check that the section order is correct
        Check that the section nesting is correct
        Check that the section cardinality is correct
    -->
    
    <!-- The following are done at the SPL level:
        Check that the section is in OID 
    -->
        
        <sch:rule context="component/section">
            <sch:let name="current-section_code" value="code/@code"/>
            <sch:let name="current-section_codesystem" value="code/@codeSystem"/>
            <sch:let name="current-section_title" value="title"/>
            <sch:let name="oid-section-codes" value="(document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="oid-section-title" value="(document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section_code]/Value[@ColumnRef=$display-language]/SimpleValue"/>
            <sch:let name="oid-derived_section" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section_code]/Value[@ColumnRef='derived']/SimpleValue"/>
            <sch:let name="oid-fixed-title-section" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section_code]/Value[@ColumnRef='fixed_title']/SimpleValue"/>
            <sch:let name="section_cardinality" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section_code]/Value[@ColumnRef='cardinality']/SimpleValue"/>
            
            
            <!-- Check if the SPL UNCLASSIFIED SECTION section is used out of context -->
            <sch:report test="($doc-doctype='1') and not($doc-template='11') and ($current-section_code='999999')" flag="DT-9">Doctype Content: Section (code: <sch:value-of select="$current-section_code"/>) can only be used in Doctype:1 Template:11.</sch:report>
            
            <!-- Check if the section is derived -->
            <sch:report test="($doc-doctype='1') and ($oid-derived_section='True')" flag="DT-9">Doctype Content: Section (code: <sch:value-of select="$current-section_code"/>) is derived and therefore should not be included in the content.</sch:report>
            
            <!-- Check that the section title is correct, ie the title matches the oid unless free form -->
            <sch:report test="($doc-doctype='1') and ($doc-template=$strict-PM-templates) and ($oid-fixed-title-section='True') and not($current-section_code=$exception_sections) and (not($current-section_title=$oid-section-title))" flag="DT-5">Doctype Content: The title in the document: <sch:value-of select="$current-section_title"/> does not match the requirements for the <sch:value-of select="$current-section_code"/> section.</sch:report>
                        
            <!-- Check that the section effictive.low is correct -->
            <sch:report test="($doc-doctype='1') and ($doc-template=$strict-PM-templates) and (count(effectiveTime/low) &lt; 1)" flag="DT-1">Doctype Content: Section (code: <sch:value-of select="$current-section_code"/>) is missing the effectiveTime.low element</sch:report> 
            
            <!-- Check that the section effective.high is correct -->
            <sch:report test="($doc-doctype='1') and ($doc-template=$strict-PM-templates) and (count(effectiveTime/high) &lt; 1)" flag="DT-1">Doctype Content: Section (code: <sch:value-of select="$current-section_code"/>) is missing the effectiveTime.high element</sch:report> 
    </sch:rule>
      
        
    <!-- Section exception block --> 
    <sch:rule context="//asEquivalentEntity">
        <sch:report test="($doc-doctype='1')" flag="DT-9">Doctype: There is an asEquivalentEntity element defined.</sch:report>
    </sch:rule>
    <sch:rule context="structuredBody/component/section/code[@code = '10' and @codeSystem = $section-id-oid]">
        <sch:report test="($doc-doctype='1') and (string-length(parent::section/text) &gt; 0)" flag="DT-9">Doctype Content: Section 10 has has content in the text element</sch:report>
        <sch:report test="($doc-doctype='1') and (string-length(parent::section/title) &gt; 0)" flag="DT-9">Doctype Content: Section 10 has has content in the title element</sch:report>
    </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '20' and @codeSystem = $section-id-oid]">
            <sch:report test="($doc-doctype='1') and (string-length(parent::section/text) &gt; 0)" flag="DT-9">Doctype Content: Section 20 has has content in the text element</sch:report>
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '30' and @codeSystem = $section-id-oid]">
            <sch:report test="($doc-doctype='1') and (string-length(parent::section/text) &gt; 0)" flag="DT-9">Doctype Content: Section 30 has has content in the text element</sch:report>
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '40' and @codeSystem = $section-id-oid]">
            <sch:report test="($doc-doctype='1') and (string-length(parent::section/text) &gt; 0)" flag="DT-9">Doctype Content: Section 40 has has content in the text element</sch:report>
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '530' and @codeSystem = $section-id-oid]">
            <sch:report test="($doc-doctype='1') and (string-length(parent::section/title) &gt; 0)" flag="DT-9">Doctype Content: Section 530 has has content in the title element</sch:report>
        </sch:rule>
    <sch:rule context="structuredBody/component/section/code[@code = '370-10' and @codeSystem = $section-id-oid]">
        <sch:report test="($doc-doctype='1') and (string-length(parent::section/title) &gt; 0)" flag="DT-9">Doctype Content: Section 530 has has content in the title element</sch:report>
    </sch:rule>
    <sch:rule context="structuredBody/component/section/code[@code = '580' and @codeSystem = $section-id-oid]">
        <sch:report test="($doc-doctype='1') and (string-length(parent::section/title) &gt; 0)" flag="DT-9">Doctype Content: Section 530 has has content in the title element</sch:report>
    </sch:rule>
    </sch:pattern>
</sch:schema>
