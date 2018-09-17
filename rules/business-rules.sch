<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <!-- The business-rules.sch file contains all techical business rules that are validated. The 
    hc-report.xml file is used to determine the applicability and severity of each rule based upon the 
    doctype. The monenclature is SPL for generic SPL rules and DT for DocType specific rules. -->
    <sch:ns uri="http://docs.oasis-open.org/codelist/ns/genericode/1.0/" prefix="gc"/>
        
    <!-- file locations, note: this variable needs to be changed if the installation location change -->
    <sch:let name="oid_loc" value="'..\oids\'"/>
    
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
    <sch:let name="marketing-status-oid" value="'2.16.840.1.113883.2.20.6.18'"/>
    <sch:let name="telecom-capability-oid" value="'2.16.840.1.113883.2.20.6.19'"/>
    <sch:let name="product-item-code-oid" value="'2.16.840.1.113883.2.20.6.20'"/>
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
    <sch:let name="term-status-oid" value="'2.16.840.1.113883.2.20.6.37'"/>
    <sch:let name="units-of-presentation-oid" value="'2.16.840.1.113883.2.20.6.38'"/>
    <sch:let name="ingredient-role-oid" value="'2.16.840.1.113883.2.20.6.39'"/>
    <sch:let name="notice-type-oid" value="'2.16.840.1.113883.2.20.6.40'"/>
    <sch:let name="related-documents-oid" value="'2.16.840.1.113883.2.20.6.41'"/>
    <sch:let name="din-oid" value="'2.16.840.1.113883.2.20.6.42'"/>
    
    <!-- pbx: 17 Sep 2018, testing Ian's Validation Tool  -->
    <sch:let name="doc-language" value="lower-case(document/languageCode/@code)"/>
    <sch:let name="display-language" value="concat('name-',$doc-language)"/>
    <sch:let name="code" value="'TBD'"/>
    <sch:let name="oid" value="'TBD'"/>
    <sch:let name="display-name" value="'TBD'"/>
    <sch:let name="doctype" value="1"/>
    <sch:let name="doc-doctype" value="document/code/@code"/>
    <sch:let name="template" value="1"/>
    <sch:let name="doc-templateID" value="document/templateId[./@root=$template-id-oid]/@extension"/>
      
    <sch:let name="array_position" value="'TBD'"/>
    <sch:let name="derived_section" value="'TBD'"/>
    <sch:let name="section_counter" value="0"/>
    
    <!-- Set debut to 1 of you want the debuging details -->
    <sch:let name="debug" value="1"/>
    <sch:pattern>
        <sch:title>pbx: test area</sch:title>
        <sch:rule context="/">

            <sch:report test="1=1">PBX: Testing area, please ignore me!</sch:report>
            <sch:report test="1=1">1</sch:report>
            <sch:let name="timestamp" value="document/effectiveTime/@value"/>
            <sch:let name="timestamp-length" value="string-length($timestamp)"/>
            
            <sch:report test="1=1">timestamp: <sch:value-of select="$timestamp"/></sch:report>
            <sch:report test="1=1">timestamp length 19: <sch:value-of select=" string-length($timestamp)=19"/></sch:report>
            <sch:report test="1=1">timestamp length 14: <sch:value-of select=" string-length($timestamp)=14"/></sch:report>
            <sch:report test="1=1">timestamp length 8: <sch:value-of select=" string-length($timestamp)=8"/></sch:report>
            <!--    <sch:report test="1=1">timestamp regex: <sch:value-of select=" matches($timestamp,[0-9]{8}|([0-9]{14}|([0-9]{14}[+\-][0-9]{4}))"/></sch:report>  -->
            
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern>
        <sch:title>Prolog Information Validation</sch:title>
        <sch:p>This section will encode all non doctype specific rules related to the Prolog Information</sch:p>
        <sch:rule context="/">
            <sch:let name="doc_info" value="processing-instruction('xml')"/>
                        
            <!-- debuging -->
            <sch:report test="$debug=1">********************* Document Processing Instruction Debuging ************************* </sch:report>
            <sch:report test="$debug=1">Doc Information: <sch:value-of select="$doc_info"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:title> All General Validation Aspects</sch:title>
        <sch:rule context="//code[@displayName]">
            <sch:let name="code-system" value="attribute::codeSystem"/>
            <sch:let name="display-name" value="attribute::displayName"/>
            <sch:let name="code" value="attribute::code"/>
            <sch:let name="oid_term" value="attribute::code"/>
            <sch:let name="oid-display-name" value="(document(concat($oid_loc,$code-system,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue"/>
            
            <sch:assert test="$display-name=$oid-display-name">SPL Rule 7</sch:assert>
            <sch:assert test="$display-name=$oid-display-name">Details: For SPL Rule 7, the document contains: <sch:value-of select="$display-name"/> while code: <sch:value-of select="$code"/> for OID: <sch:value-of select="$code-system"/> contains: <sch:value-of select="$oid-display-name"/></sch:assert>
            
            <!-- debuging -->
            <sch:report test="$debug=1">********************* General Validation Debuging ************************* </sch:report>
            <sch:report test="$debug=1" > codeSystem: <sch:value-of select="attribute::codeSystem"/></sch:report>         
            <sch:report test="$debug=1" > oid-file: <sch:value-of select="($oid_loc,$code-system,$file-suffix)"/></sch:report>         
            <sch:report test="$debug=1" > displayName: <sch:value-of select="attribute::displayName"/></sch:report>         
            <sch:report test="$debug=1" > code: <sch:value-of select="attribute::code"/></sch:report>         
            <sch:report test="$debug=1" > oid-display-name: <sch:value-of select="$oid-display-name"/></sch:report>  
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
           </sch:rule>
    </sch:pattern>
   
    <sch:pattern>
        <sch:title>Document Information Validation</sch:title>

        <sch:rule context="document">
            <sch:let name="display-name" value="(document(concat($oid_loc,$document-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$doc-templateID]/Value[@ColumnRef=$display-language]/SimpleValue"/>
            <sch:let name="valid_templates" value="(document(concat($oid_loc,$template-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_doctypes" value="(document(concat($oid_loc,$document-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_languages" value="(document(concat($oid_loc,$language-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="language-code" value="languageCode/@code"/>
            <sch:let name="language-display-name" value="(document(concat($oid_loc,$language-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$language-code]/Value[@ColumnRef=$display-language]/SimpleValue"/>
            
            
            <sch:report test="count(typeId) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(typeId) = 0">Details: For SPL Rule 3, the document info section is missing the typeId element.</sch:report>
            <sch:report test="count(typeId) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(typeId) > 1">Details: For SPL Rule 4, the document info section has more than 1 typeId element defined.</sch:report>
            <sch:report test="count(typeId[@assigningAuthorityName]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(typeId[@assigningAuthorityName]) = 0">Details: For SPL Rule 5, the document info section is missing the typeId@assigningAuthorityName attribute.</sch:report>
            <sch:assert test="count(typeId[@assigningAuthorityName = 'Health Products and Food Branch']) = 1">SPL Rule 10</sch:assert>
            <sch:assert test="count(typeId[@assigningAuthorityName = 'Health Products and Food Branch']) = 1">Details: For SPL Rule 10, the value for the typeId@assigningAuthorityName attribute is not 'Health Products and Food Branch'.</sch:assert>
            <sch:report test="count(id) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(id) = 0 ">Details: For SPL Rule 3, the document info section is missing the id element.</sch:report>
            <sch:report test="count(id) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(id) > 1">Details: For SPL Rule 4, the document info section has more than 1 id element is defined.</sch:report>
            <sch:report test="count(id[@root]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(id[@root]) = 0">Details: the document info section is missing the id@root attribute.</sch:report>
            <sch:report test="count(code) = 0 ">SPL Rule 3</sch:report>
            <!-- here with association aspect -->
            <sch:report test="count(code) = 0 ">Details: For SPL Rule 3, the code element is missing in the document info section.</sch:report>
            <sch:report test="count(code) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(code) > 1">Details: For SPL Rule 4, there is more than 1 code element defined in the document info section.</sch:report>
            <sch:report test="count(code[@code]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(code[@code]) = 0">Details: For SPL Rule 5, the code@code attribute is missing in the document info section.</sch:report>

            <sch:report test="count(code[@codeSystem]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0">Details: For SPL Rule 5, the code@codeSystem attribute is missing in the document info section.</sch:report>
            <sch:report test="count(code[@displayName]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(code[@displayName]) = 0">Details: For SPL Rule 5, the code@displayName attribute is missing in the document info section.</sch:report>
            <sch:assert test="code/@code=$valid_doctypes">SPL Rule 8</sch:assert>
            <sch:assert test="code/@code=$valid_doctypes">Details: For SPL Rule 8, code: <sch:value-of select="code/@code"/> is not in the set of: <sch:value-of select="$valid_doctypes"/> based on OID: <sch:value-of select="$document-id-oid"/></sch:assert>
            <sch:assert test="code[@codeSystem = $document-id-oid]">SPL Rule 2</sch:assert>
            <sch:assert test="code[@codeSystem = $document-id-oid]">Details: For SPL Rule 2, the OID for element: <sch:value-of select=" local-name(code)"/> should be: <sch:value-of select="$document-id-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/></sch:assert>
            <sch:report test="count(templateId) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(templateId) = 0 ">Details: For SPL Rule 3, the templateId element is missing in the document info section.</sch:report>
            <sch:report test="count(templateId[@root]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(templateId[@root]) = 0">Details: For SPL Rule 5, the templateId@root attribute is missing in the document info section.</sch:report>
            <sch:report test="count(templateId[@extension]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(templateId[@extension]) = 0">Details: For SPL Rule 5, the templateId@extension attribute is missing in the document info section.</sch:report>
            <sch:assert test="templateId[@root = $template-id-oid]">SPL Rule 2</sch:assert>
            <sch:assert test="templateId[@root = $template-id-oid]">Details: For SPL Rule 2, the OID for element: <sch:value-of select=" local-name(templateId)"/> should be: <sch:value-of select="$template-id-oid"/> however the codeSystem is set to: <sch:value-of select="templateId/@root"/></sch:assert>
            <sch:assert test="templateId[@extension = $valid_templates]">SPL Rule 8</sch:assert>
            <sch:assert test="templateId[@extension = $valid_templates]">Details: For SPL Rule 8, template: <sch:value-of select="templateId/@extension"/> is not in the set of <sch:value-of select="$valid_templates"/>  based on OID: <sch:value-of select="$template-id-oid"/></sch:assert>
            <sch:report test="count(effectiveTime) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(effectiveTime) = 0 ">Details: For SPL Rule 3, the effectiveTime element is missing in the document info section.</sch:report>
            <sch:report test="count(effectiveTime) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(effectiveTime) > 1">Details: For SPL Rule 4, there is more than 1 effectiveTime element defined in the document info section.</sch:report>
            <sch:report test="count(effectiveTime[@value] or effectiveTime/low[@value]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(effectiveTime[@value] or effectiveTime/low[@value]) = 0">Details: For SPL Rule 5, the effectiveTime value is missing in the document info section.</sch:report>
            <sch:report test="count(languageCode) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(languageCode) = 0 ">Details: For SPL Rule 3, the languageCode element is missing in the document info section.</sch:report>
            <sch:report test="count(languageCode) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(languageCode) > 1">Details: For SPL Rule 4, there is more than 1 languageCode element defined in the document info section.</sch:report>
            <sch:report test="count(languageCode[@code]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(languageCode[@code]) = 0">Details: For SPL Rule 5, the languageCode@code attribute is missing in the document info section.</sch:report>
            <sch:assert test="languageCode/@code=$valid_languages">SPL Rule 8</sch:assert>
            <sch:assert test="languageCode/@code=$valid_languages">Details: For SPL Rule 8, code: <sch:value-of select="languageCode/@code"/> is not in the set of: <sch:value-of select="$valid_languages"/> based on OID: <sch:value-of select="$language-code-oid"/></sch:assert>
            <sch:assert test="languageCode[@code = 'ENG'] or languageCode[@code = 'FRA']">SPL Rule 10</sch:assert>
            <sch:assert test="languageCode[@code = 'ENG'] or languageCode[@code = 'FRA']">Details: For SPL Rule 10, the value for the languageCode@code attribute is neither ENG or FRA.</sch:assert>
            <sch:report test="count(languageCode[@codeSystem]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(languageCode[@codeSystem]) = 0">Details: The languageCode@codeSystem attribute is missing in the document info section.</sch:report>
            <sch:assert test="languageCode[@codeSystem = $language-code-oid]">SPL Rule 2</sch:assert>
            <sch:assert test="languageCode[@codeSystem = $language-code-oid]">Details: For SPL Rule 2, the OID for element: <sch:value-of select=" local-name(languageCode)"/> should be: <sch:value-of select="$language-code-oid"/> however the codeSystem is set to: <sch:value-of select="languageCode/@codeSystem"/></sch:assert>
            <sch:report test="count(languageCode[@displayName]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(languageCode[@displayName]) = 0">Details: For SPL Rule 5, the languageCode@displayName attribute is missing in the document info section.</sch:report>
            <sch:assert test="languageCode/@displayName=$language-display-name">SPL Rule 7</sch:assert>
            <sch:assert test="languageCode/@displayName=$language-display-name">Details: For SPL Rule 7, the document contains: <sch:value-of select="languageCode/@displayName"/> while code: <sch:value-of select="languageCode/@code"/> for OID: <sch:value-of select="$language-code-oid"/> contains: <sch:value-of select="$language-display-name"/></sch:assert>
            <sch:report test="count(setId) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(setId) = 0 ">Details: For SPL Rule 3, the setId element is missing in the document info section.</sch:report>
            <sch:report test="count(setId) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(setId) > 1">Details: For SPL Rule 4, there is more than 1 setId element defined in the document info section.</sch:report>
            <sch:report test="count(setId[@root]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(setId[@root]) = 0">Details: For SPL Rule 5, the setId@root attribute is missing in the document info section.</sch:report>
            <sch:report test="count(versionNumber) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(versionNumber) = 0 ">Details: For SPL Rule 3, the versionNumber element is missing in the document info section.</sch:report>
            <sch:report test="count(versionNumber) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(versionNumber) > 1">Details: For SPL Rule 4, there is more than 1 versionNumber element defined in the document info section.</sch:report>
            <sch:report test="count(versionNumber[@value]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(versionNumber[@value]) = 0">Details: For SPL Rule 5, the versionNumber@value attribute is missing in the document info section.</sch:report>
            <!-- pbx: fix rule 30 somehow details no rule in report! -->
            <sch:report test="versionNumber/@value = 0">SPL Rule 30</sch:report>
            <sch:report test="versionNumber/@value = 0">Details: Blah! For SPL Rule 30, the version number value in the document information section is zero (0).</sch:report>
            <sch:assert test="versionNumber/@value castable as xs:integer">SPL Rule 31</sch:assert>
            <sch:assert test="versionNumber/@value castable as xs:integer">Details: For SPL Rule 31, the version number value in the document information section should be an integer but was '<sch:value-of select="versionNumber/@value"/>'.</sch:assert>
            <sch:report test="count(author) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(author) = 0 ">Details: For SPL Rule 3, the author element is missing in the document info section.</sch:report>
            <sch:report test="count(author) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(author) > 1">Details: For SPL Rule 4, there is more than 1 author element defined in the document info section.</sch:report>
            
            <!-- pbx: this needs to be fixed to check the attribute of the document -->
            <sch:report test="1=1">********************* ??? ************************* </sch:report>
            <sch:report test="1=1" > Attribs : <sch:value-of select="attribute::*"/></sch:report>         
            <sch:report test="1=1" > Attribs2 : <sch:value-of select="document/@xsi"/></sch:report>  
            <sch:report test="1=1" > Attribs 3: <sch:value-of select="document[@xsi]"/></sch:report>  
            
            <!-- debuging -->
            <sch:report test="$debug=1">*********************  Document Information Validation Debuging ************************* </sch:report>
            <sch:report test="$debug=1" > Stylesheet Info: <sch:value-of select="$display-name"/></sch:report>
            <sch:report test="$debug=1" > Current DocType: <sch:value-of select="code/@code"/></sch:report>
            <sch:report test="$debug=1" > Current Template: <sch:value-of select="templateId/@extension"/></sch:report>
            <sch:report test="$debug=1" > Valid Templates: <sch:value-of select="$valid_templates"/></sch:report>
            <sch:report test="$debug=1" > Valid Doctypes: <sch:value-of select="$valid_doctypes"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        
    </sch:pattern>
    <sch:pattern>
        <sch:title>Author Information Validation</sch:title>
        <sch:rule context="author/assignedEntity">
            <sch:report test="count(representedOrganization) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(representedOrganization) = 0 ">Details: For SPL Rule 3, the representedOrganization element is missing in the author section.</sch:report>
            <sch:report test="count(representedOrganization) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(representedOrganization) > 1">Details: For SPL Rule 4, there is more than 1 representedOrganization element defined in the author section.</sch:report>
        </sch:rule>
        <sch:rule context="representedOrganization">
            <sch:let name="company_name" value="id[@root = $company-id-oid]/@extension"/>
            <sch:let name="allowed_company_ids" value="(document(concat($oid_loc,$company-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef=$display-language]/SimpleValue"/>
            <sch:let name="valid_company" value="$company_name=$allowed_company_ids or $company_name='999999999'"/>
            <sch:let name="company_role" value="id[@root=$organization-role-oid]/@extension"/>
            <sch:let name="allowed_company_roles" value="(document(concat($oid_loc,$organization-role-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:report test="count(id) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(id) = 0 ">Details: For SPL Rule 3, the author (representedOrganization) section is missing an id element.</sch:report>
            <sch:report test="count(id[@root]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(id[@root]) = 0">Details: For SPL Rule 5, the author (representedOrganization) section is missing an id@root attribute.</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid]) = 0">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid]) = 0">Details: For SPL Rule 10, in the author (representedOrganization) section no id@root equals <sch:value-of select="$organization-role-oid"/>.</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid]) > 1">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid]) > 1">Details: For SPL Rule 10, in the author (representedOrganization) section more than one id@root equals <sch:value-of select="$organization-role-oid"/>.</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and @extension = '1']) = 0">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and @extension = '1']) = 0">Details: For SPL Rule 10, in the author (representedOrganization) section no DIN owner has been idenitfied.</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and @extension]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and @extension]) = 0">Details: For SPL Rule 4, in the author (representedOrganization) section an id@extension attribute is missing for the role .</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and not(@extension = '1')]) > 0">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and not(@extension = '1')]) > 0">Details: For SPL Rule 10, in the author (representedOrganization) section the represented role can only be DIN owner .</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) = 0">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) = 0">Details: For SPL Rule 10, in the author (representedOrganization) section no id@root equals <sch:value-of select="$company-id-oid"/>.</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) > 1">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) > 1">Details: For SPL Rule 10, in the author (representedOrganization) section more than one id@root equals <sch:value-of select="$company-id-oid"/>.</sch:report>
            <sch:assert test="$valid_company">SPL Rule 8</sch:assert>
            <sch:assert test="$valid_company">Details: For SPL Rule 8, the company ID: <sch:value-of select="$company_name"/> is not in the set of: <sch:value-of select="$allowed_company_ids"/> or 999999999</sch:assert>
            <sch:report test="count(id[@root = $company-id-oid and @extension]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(id[@root = $company-id-oid and @extension]) = 0">Details: For SPL Rule 5, in the author (representedOrganization) section an id@extension attribute is missing for the company.</sch:report>
            
            <sch:report test="count(name) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(name) = 0 ">Details: For SPL Rule 3, the name element is missing in the author (representedOrganization) section.</sch:report>
            <sch:report test="string-length(name)&#60;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(name)&#60;1">Details: For SPL Rule 6, the name element is empty in the author (representedOrganization) section.</sch:report>
            
            <sch:assert test="name=$company_name or $company_name='999999999'">SPL Rule 10</sch:assert>  
            <sch:assert test="name=$company_name or $company_name='999999999'">Details: For SPL Rule 10, the company name: <sch:value-of select="name"/> is not the same as: <sch:value-of select="$company_name"/> ,as defined in the extension</sch:assert>
            <sch:assert test="$company_role=$allowed_company_roles">SPL Rule 8</sch:assert>
            <sch:assert test="$company_role=$allowed_company_roles">Details: For SPL Rule 8, company role: <sch:value-of select="$company_role"/> is not in set of: <sch:value-of select="$allowed_company_roles"/> on OID: <sch:value-of select="$organization-role-oid"/>.</sch:assert>
            
            <sch:report test="count(contactParty) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(contactParty) = 0 ">Details: For SPL Rule 3, the contactParty element is missing in the author (representedOrganization) section.</sch:report>
            <sch:report test="count(contactParty/addr) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(contactParty/addr) = 0 ">Details: For SPL Rule 3, the contactParty.addr element is missing in the author (representedOrganization) section.</sch:report>
            <sch:report test="count(contactParty/contactPerson/name) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(contactParty/contactPerson/name) = 0 ">Details: For SPL Rule 3, the contactPerson.name element is missing in the author (representedOrganization) section.</sch:report>
            
            <!-- debuging -->
            <sch:report test="$debug=1">********************* represented orginization debuging  ************************* </sch:report>
            <sch:report test="$debug=1">company name: <sch:value-of select="name"/></sch:report>    
            <sch:report test="$debug=1">company id: <sch:value-of select="$company_name"/></sch:report>
            <sch:report test="$debug=1">allowed_company_ids: <sch:value-of select="$allowed_company_ids"/></sch:report>
            <sch:report test="$debug=1">valid company id: <sch:value-of select="$valid_company"/></sch:report>
            <sch:report test="$debug=1">company role: <sch:value-of select="$company_role"/></sch:report>
            <sch:report test="$debug=1">allowed company roles: <sch:value-of select="$allowed_company_roles"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        <sch:rule context="country">
            <sch:let name="allowed_countries" value="((document(concat($oid_loc,$country-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
 
            <sch:assert test="@codeSystem = $country-code-oid">SPL Rule 2</sch:assert>
            <sch:assert test="@codeSystem = $country-code-oid">Details: For SPL Rule 2, the OID for element: country should be: <sch:value-of select="$country-code-oid"/> however the codeSystem is set to: <sch:value-of select="@codeSystem "/></sch:assert>
            <sch:assert test="@code=$allowed_countries">SPL Rule 8</sch:assert>
            <sch:assert test="@code=$allowed_countries">Details: For SPL Rule 8, country code: <sch:value-of select="@code"/> is not in the set of: <sch:value-of select="$allowed_countries"/> based on OID: <sch:value-of select="$country-code-oid"/>.</sch:assert>
            
            <sch:report test="$debug=1">********************* country debuging  ************************* </sch:report>
            <sch:report test="$debug=1">valid_country_codes: <sch:value-of select="((document(concat($oid_loc,$country-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/></sch:report>
            <sch:report test="$debug=1">country code: <sch:value-of select="@code"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        <sch:rule context="representedOrganization/contactParty/addr">
            <sch:let name="allowed_countries" value="((document(concat($oid_loc,$country-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            
            <sch:assert test="count(*) = 5">SPL Rule 9</sch:assert>
            <sch:assert test="count(*) = 5">Details: For SPL Rule 9, part of the address in the author (representedOrganization) section is missing.</sch:assert>
            <sch:report test="count(streetAddressLine) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(streetAddressLine) = 0">Details: For SPL Rule 3, the streetAddressLine element is missing in the author (representedOrganization) section.</sch:report>
            <sch:report test="string-length(streetAddressLine)&#60;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(streetAddressLine)&#60;1">Details: For SPL Rule 6, the streetAddressLine element is empty in the author (representedOrganization) section.</sch:report>
            <sch:report test="count(city) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(city) = 0">Details: For SPL Rule 3, the city element is missing in the author (representedOrganization) section.</sch:report>
            <sch:report test="string-length(city)&#60;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(city)&#60;1">Details: For SPL Rule 6, the city element is empty in the author (representedOrganization) section.</sch:report>
            <sch:report test="count(streetAddressLine) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(streetAddressLine) = 0">Details: For SPL Rule 3, the streetAddressLine element is missing in the author (representedOrganization) section.</sch:report>
            <sch:report test="string-length(streetAddressLine)&#60;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(streetAddressLine)&#60;1">Details: For SPL Rule 6, the streetAddressLine element is empty in the author (representedOrganization) section.</sch:report>
            <sch:report test="count(state) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(state) = 0">Details: For SPL Rule 3, the state element is missing in the author (representedOrganization) section.</sch:report>
            <sch:report test="string-length(state)&#60;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(state)&#60;1">Details: For SPL Rule 6, the state element is empty in the author section.</sch:report>
            <sch:report test="count(postalCode) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(postalCode) = 0">Details: For SPL Rule 3, the postalCode element is missing in the author (representedOrganization) section.</sch:report>
            <sch:report test="string-length(postalCode)&#60;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(postalCode)&#60;1">Details: For SPL Rule 6, the postalCode element is empty in the author (representedOrganization) section.</sch:report>
            <sch:report test="count(country) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(country) = 0">Details: For SPL Rule 3, the country element is missing in the author (representedOrganization) section.</sch:report>
            
            <sch:report test="$debug=1">********************* represented orginization country debuging  ************************* </sch:report>
            <sch:report test="$debug=1">valid_country_codes: <sch:value-of select="((document(concat($oid_loc,$country-code-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/></sch:report>
            <sch:report test="$debug=1">country code: <sch:value-of select="country/@code"/></sch:report>
            <sch:report test="$debug=1">country code length: <sch:value-of select="string-length(country/@code)"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        <sch:rule context="assignedOrganization/assignedEntity/assignedOrganization">
            <!-- pbx: here with rule association -->
            <sch:let name="company_id" value="id[@root = $company-id-oid]/@extension"/>
            <sch:let name="allowed_company_ids" value="(document(concat($oid_loc,$company-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef=$display-language]/SimpleValue"/>
            <sch:let name="valid_company" value="$company_id=$allowed_company_ids or $company_id='999999999'"/>
            <sch:let name="company_role" value="id[@root=$organization-role-oid]/@extension"/>
            <sch:let name="allowed_company_roles" value="(document(concat($oid_loc,$organization-role-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="valid_role" value="$company_role=$allowed_company_roles"/>
          
            <sch:report test="count(id) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(id) = 0 ">Details: For SPL Rule 3, the author (assignedOrganization) section is missing an id element.</sch:report>
            <sch:report test="count(id[@root]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(id[@root]) = 0">Details: For SPL Rule 5, the author (assignedOrganization) section is missing an id@root attribute.</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid]) = 0">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid]) = 0">Details: No id@root equals <sch:value-of select="$organization-role-oid"/> in the author (assignedOrganization) section.</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and @extension = '1']) > 0">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and @extension = '1']) > 0">Details: The assignedOrginization can not be the DIN owner.</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and @extension]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(id[@root = $organization-role-oid and @extension]) = 0">Details: An id@extension attribute is missing for the role in the author (assignedOrganization) section.</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) = 0">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) = 0">Details: For SPL Rule 10, no id@root equals <sch:value-of select="$company-id-oid"/> in the author (assignedOrganization) section.</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) > 1">SPL Rule 10</sch:report>
            <sch:report test="count(id[@root = $company-id-oid]) > 1">Details: For SPL Rule 10, more than one id@root equals <sch:value-of select="$company-id-oid"/>in the author (assignedOrganization) section.</sch:report>
            <sch:assert test="$valid_company">SPL Rule 8</sch:assert>
            <sch:assert test="$valid_company">Details: The company ID: <sch:value-of select="$company_id"/> is not in the set of: <sch:value-of select="$allowed_company_ids"/> or 999999999</sch:assert>
            <sch:report test="count(id[@root = $company-id-oid and @extension]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(id[@root = $company-id-oid and @extension]) = 0">Details: For SPL Rule 5, an id@extension attribute is missing for the company in the author (assignedOrganization) section.</sch:report>
                  
            <sch:assert test="$valid_role">SPL Rule 8</sch:assert>
            <sch:assert test="$valid_role">Details: The company ID: <sch:value-of select="$company_id"/> is not in the set of: <sch:value-of select="$allowed_company_ids"/> or 999999999 CV based on OID: <sch:value-of select="$company-id-oid"/> in the author (assignedOrganization) section.</sch:assert>
            <sch:assert test="$company_role=$allowed_company_roles">SPL Rule 8</sch:assert>
            <sch:assert test="$company_role=$allowed_company_roles">Details: For SPL Rule 8, <sch:value-of select="$company_role"/> is not in the  set of: <sch:value-of select="$allowed_company_ids"/> based on OID: <sch:value-of select="$company-id-oid"/> in the author (assignedOrganization) section.</sch:assert>
                        
            <sch:report test="count(name) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(name) = 0 ">Details:For SPL Rule 3, the name element is missing in the author (assignedOrganization) section.</sch:report>

            <sch:report test="string-length(name)&#60;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(name)&#60;1">Details: For SPL Rule 6, the name element is empty in the author (assignedOrganization) section.</sch:report>
            <sch:assert test="name=$company_id or $company_id='999999999'">SPL Rule 8</sch:assert>  
            <sch:assert test="name=$company_id or $company_id='999999999'">Details: For SPL Rule 8, the company name: <sch:value-of select="name"/> is not the same as: <sch:value-of select="$company_id"/> ,as defined in the extension in the author (assignedOrganization) section.</sch:assert>
            
            <sch:assert test="$valid_company">SPL Rule 8</sch:assert>
            <sch:assert test="$valid_company">Details: For SPL Rule 8, the company ID: <sch:value-of select="$company_id"/> is not in the set of: <sch:value-of select="$allowed_company_ids"/> or 999999999 in the author (assignedOrganization) section.</sch:assert>
            
            <!-- debuging -->
            <sch:report test="$debug=1">********************* assigned orginization debuging  ************************* </sch:report>
            <sch:report test="$debug=1">company id:  <sch:value-of select="$company_id"/></sch:report>
            <sch:report test="$debug=1">allowed_company_ids:  <sch:value-of select="$allowed_company_ids"/></sch:report>
            <sch:report test="$debug=1">valid company id: <sch:value-of select="$valid_company"/></sch:report>
            <sch:report test="$debug=1">company role: <sch:value-of select="$company_role"/></sch:report>
            <sch:report test="$debug=1">allowed company roles: <sch:value-of select="$allowed_company_roles"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>       
    </sch:pattern>
    <sch:pattern>
        <sch:title>Product Data Section Validation</sch:title>
        <!-- Broken down by what is being examined, specifics included all general aspects are done as part of labeling section -->
        <sch:rule context="component/structuredBody">
            <!-- pbx: restructure to for section code not number -->
            <!--  Make sure you have a product data section -->
            <sch:report test="count(component/section/code[@code = '48780-1']) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(component/section/code[@code = '48780-1']) = 0">Details: For SPL Rule 3, the section element where the code@code = '48780-1' is missing, therefore no product data section.</sch:report>
        </sch:rule>
        <sch:rule context="component/structuredBody/component/section">
        <!--  Make sure you have a product data section exists, the content are checked as part of the general labeling section aspects -->
            <sch:let name="code" value="code/@code"/>
            <sch:let name="oid-display-name" value="(document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue"/>
            
            <!-- content checks for the product data section -->
            <sch:report test="code[@code = '48780-1'] and string-length(title)&gt;0">SPL Rule 11</sch:report>
            <sch:report test="code[@code = '48780-1'] and string-length(title)&gt;0">Details: For SPL Rule 11, the title element in the product data section has content.</sch:report>
            <sch:report test="code[@code = '48780-1'] and string-length(text)&gt;0">SPL Rule 11</sch:report>
            <sch:report test="code[@code = '48780-1'] and string-length(text)&gt;0">Details: For SPL Rule 11, the text element in the product data section has content.</sch:report>
            <sch:report test="code[@code = '48780-1'] and count(subject) = 0">SPL Rule 3</sch:report>
            <sch:report test="code[@code = '48780-1'] and count(subject) = 0">Details: For SPL Rule 3, the section.subject element is missing in the product data section.</sch:report>
             
        <!-- debuging -->
            <sch:report test="$debug=1">********************* product data section debuging  ************************* </sch:report>
            <sch:report test="$debug=1">product id count:  <sch:value-of select="count(code[@code = '48780-1'])"/></sch:report>
            <sch:report test="$debug=1">display-name:  <sch:value-of select="code/@displayName"/></sch:report>
            <sch:report test="$debug=1">code:  <sch:value-of select="$code"/></sch:report>
            <sch:report test="$debug=1">oid-display-name:  <sch:value-of select="$oid-display-name"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>

        <sch:rule context="section/subject/manufacturedProduct">
            <!-- root of the manufactured product, check for the content aspect -->
            <sch:report test="count(manufacturedProduct) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(manufacturedProduct) = 0 ">Details: For SPL Rule 3, the manufacturedProduct element is missing in the product data section.</sch:report>
            <sch:report test="count(manufacturedProduct) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(manufacturedProduct) > 1">Details: For SPL Rule 4, there is more than 1 manufacturedProduct element is defined in the document product data section.</sch:report>
            <sch:report test="count(subjectOf) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(subjectOf) = 0 ">Details: For SPL Rule 3, the subjectOf element is missing in the product data section.</sch:report>
            <sch:report test="count(subjectOf/approval) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(subjectOf/approval) = 0">Details: For SPL Rule 3, the subjectOf.approval element is missing in the product data section.</sch:report>
            <sch:report test="count(subjectOf/approval) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(subjectOf/approval) > 1">Details: For SPL Rule 4, there is more than 1 subjectOf.approval element in the product data section.</sch:report>
            <sch:report test="count(subjectOf/approval/code[@code]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(subjectOf/approval/code[@code]) = 0">Details: For SPL Rule 5, the subjectOf.approval.code@code attribute is missing in the prodcut data section.</sch:report>
            <sch:assert test="subjectOf/approval/code[@codeSystem=$marketing-category-oid]">SPL Rule 2</sch:assert>
            <sch:assert test="subjectOf/approval/code[@codeSystem=$marketing-category-oid]">Details: For SPL Rule 2, the OID for element: <sch:value-of select=" local-name(code)"/> should be: <sch:value-of select="$marketing-category-oid"/> however the codeSystem is set to: <sch:value-of select="subjectOf/approval/code/@codeSystem"/></sch:assert>
            <sch:report test="count(subjectOf/marketingAct) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(subjectOf/marketingAct) = 0">Details: For SPL Rule 3, the subjectOf.marketingAct element is missing in the product data section.</sch:report>
            <sch:report test="count(subjectOf/marketingAct) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(subjectOf/marketingAct) > 1">Details: For SPL Rule 4, there is more than 1 subjectOf.marketingAct element in the product data section.</sch:report>
             
            <sch:report test="count(approval) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(approval) > 1">Details: For SPL Rule 4, there is more than 1 subjectOf.approval element is defined in the product data section.</sch:report>
            
            <sch:report test="count(consumedIn ) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(consumedIn ) = 0 ">Details: For SPL Rule 3, the consumedIn element is missing in the product data section.</sch:report>
        </sch:rule>
        <!-- pbx: here with adding detail link For SPL Rule 3, -->
        <sch:rule context="manufacturedProduct/manufacturedProduct">
            <!-- The collection of items that define a product -->
            <sch:let name="current-section" value="code/@code"/>
            <sch:let name="form-code" value="formCode/@code"/>
            <sch:let name="form-display-name" value="formCode/@displayName"/>
            <sch:let name="form-allowed-codes" value="(document(concat($oid_loc,$dosage-form-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="form-oid-display-name" value="((document(concat($oid_loc,$dosage-form-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$form-code]/Value[@ColumnRef=$display-language]/SimpleValue)"/>  
            <sch:let name="form-code-system" value="$dosage-form-oid"/>
            <sch:let name="code-code" value="code/@code"/>
            <sch:let name="code-display-name" value="code/@displayName"/>
            <sch:let name="code-allowed-codes" value="(document(concat($oid_loc,$din-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="code-oid-display-name" value="((document(concat($oid_loc,$din-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code-code]/Value[@ColumnRef=$display-language]/SimpleValue)"/>  
            <sch:let name="code-code-system" value="$din-oid"/>
            <sch:let name="generic-name" value="asEntityWithGeneric/genericMedicine/name"/>
                        
            <sch:report test="count(code) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(code) = 0 ">Details: The code element is missing in the product data section.</sch:report>
            <sch:report test="count(code) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(code) > 1">Details: There is more than 1 code element is defined in the document product data section.</sch:report>
            <sch:report test="count(code[@code]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(code[@code]) = 0">Details: The code@code attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0">Details: The code@codeSystem attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(code[@displayName]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(code[@displayName]) = 0">Details: The code@displayName attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:assert test="code[@codeSystem=$din-oid]">SPL Rule 2</sch:assert>
            <sch:assert test="code[@codeSystem=$din-oid]">Details: The OID for element: <sch:value-of select=" local-name(code)"/> should be: <sch:value-of select="$din-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/></sch:assert>
            <sch:assert test="$code-display-name=$code-oid-display-name">SPL Rule 7</sch:assert>
            <sch:assert test="$code-display-name=$code-oid-display-name">Details: The document contains: <sch:value-of select="$code-display-name"/> while code: <sch:value-of select="$code-code"/> for OID: <sch:value-of select="$code-code-system"/> contains: <sch:value-of select="$code-oid-display-name"/></sch:assert>
            <sch:assert test="$code-code=$code-allowed-codes">SPL Rule 8</sch:assert>
            <sch:assert test="$code-code=$code-allowed-codes">Details: <sch:value-of select="$code-code"/> is not in the set of: <sch:value-of select="$code-allowed-codes"/> based on OID: <sch:value-of select="$din-oid"/>.</sch:assert>
                        
            <sch:report test="count(name) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(name) = 0 ">Details: The code element is missing in the product data section.</sch:report>
            <sch:report test="string-length(name)&lt;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(name)&lt;1">Details: The name element is empty in the product data section.</sch:report>
            
            <sch:report test="count(formCode ) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(formCode ) = 0 ">Details: The formCode element is missing in the product data section.</sch:report>
            <sch:report test="count(formCode) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(formCode) > 1">Details: There is more than 1 formCode element is defined in the product data section.</sch:report>
            <sch:report test="count(formCode[@code]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(formCode[@code]) = 0">Details: The formCode@code attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(formCode[@codeSystem]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(formCode[@codeSystem]) = 0">Details: The formCode@codeSystem attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(formCode[@displayName]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(formCode[@displayName]) = 0">Details: The formCode@displayName attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:assert test="formCode[@codeSystem=$dosage-form-oid]">SPL Rule 2</sch:assert>
            <sch:assert test="formCode[@codeSystem=$dosage-form-oid]">Details: The OID for element: <sch:value-of select=" local-name(formCode)"/> should be: <sch:value-of select="$dosage-form-oid"/> however the codeSystem is set to: <sch:value-of select="formCode/@codeSystem"/></sch:assert>
            <sch:assert test="$form-code=$form-allowed-codes">SPL Rule 8</sch:assert>
            <sch:assert test="$form-code=$form-allowed-codes">Details: <sch:value-of select="$code"/> is not in the set of: <sch:value-of select="$form-allowed-codes"/> based on OID: <sch:value-of select="$dosage-form-oid"/>.</sch:assert>
            <sch:assert test="$form-display-name=$form-oid-display-name">SPL Rule 7</sch:assert>
            <sch:assert test="$form-display-name=$form-oid-display-name">Details: The document contains: <sch:value-of select="$form-display-name"/> while code: <sch:value-of select="$form-code"/> for OID: <sch:value-of select="$form-code-system"/> contains: <sch:value-of select="$form-oid-display-name"/></sch:assert>
            <sch:report test="count(asEntityWithGeneric) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(asEntityWithGeneric) = 0 ">Details: The asEntityWithGeneric element is missing in the product data section.</sch:report>
            <sch:report test="count(asEntityWithGeneric) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(asEntityWithGeneric) > 1">Details: There is more than 1 asEntityWithGeneric element is defined in the product data section.</sch:report>
            <sch:report test="count(asEntityWithGeneric/genericMedicine) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(asEntityWithGeneric/genericMedicine) = 0 ">Details: The asEntityWithGeneric.genericMedicine element is missing in the product data section.</sch:report>
            <sch:report test="count(asEntityWithGeneric/genericMedicine) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(asEntityWithGeneric/genericMedicine) > 1">Details: There is more than 1 asEntityWithGeneric.genericMedicine element is defined in the product data section.</sch:report>
            <sch:report test="count(asEntityWithGeneric/genericMedicine/name) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(asEntityWithGeneric/genericMedicine/name) = 0 ">Details: The asEntityWithGeneric.genericMedicine.name element is missing in the product data section.</sch:report>
            <!-- genericMedicine.name validation has been broken out -->
            
             <!-- ingredient validation has been broken out -->
            <sch:report test="count(ingredient) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(ingredient) = 0 ">Details: The ingredient element is missing in the product data section.</sch:report>
            <!-- asContent validation has been broken out -->
            <sch:report test="count(asContent) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(asContent) = 0 ">Details: The asContent element is missing in the product data section.</sch:report>
            <sch:report test="count(asContent) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(asContent) > 1">Details: There is more than 1 asContent element is defined in the product data section.</sch:report>
            
             
            <!-- debugging -->
            <sch:report test="$debug=1">********************* product data debuging  ************************* </sch:report>
            <sch:report test="$debug=1">generic-name: <sch:value-of select="$generic-name"/></sch:report>            
            <sch:report test="$debug=1">code-code: <sch:value-of select="$code-code"/></sch:report>   
            <sch:report test="$debug=1">form-code: <sch:value-of select="$form-code"/></sch:report>   
            <sch:report test="$debug=1">form allowed codes: <sch:value-of select="$form-allowed-codes"/></sch:report>
            <sch:report test="$debug=1">form display-name: <sch:value-of select="$form-display-name"/></sch:report>
            <sch:report test="$debug=1">form oid display names: <sch:value-of select="$form-oid-display-name"/></sch:report>
            <sch:report test="$debug=1">e allowed codes: <sch:value-of select="$code-allowed-codes"/></sch:report>
            <sch:report test="$debug=1">code display-name: <sch:value-of select="$code-display-name"/></sch:report>
            <sch:report test="$debug=1">code oid display names: <sch:value-of select="$code-oid-display-name"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        <sch:rule context="manufacturedProduct/manufacturedProduct/asEntityWithGeneric/genericMedicine/name">
            <sch:report test="string-length(.)&lt;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(.)&lt;1">Details: The asEntityWithGeneric.genericMedicine.name element is empty in the product data section.</sch:report>
           
            <!-- debugging -->
            <sch:report test="$debug=1">********************* genericMedicine data debuging  ************************* </sch:report>
            <sch:report test="$debug=1">generic-name: <sch:value-of select="."/></sch:report>
            <sch:report test="$debug=1">generic-name length: <sch:value-of select="string-length(.)"/></sch:report>
            
           <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        <sch:rule context="manufacturedProduct/manufacturedProduct/ingredient">
            <!-- all detailed validation aspects for ingredient -->
            <sch:let name="code" value="ingredientSubstance/code/@code"/>
            <sch:let name="code-system" value="ingredientSubstance/code/@codeSystem"/>
            <sch:let name="display-name" value="ingredientSubstance/code/@displayName"/>
            <sch:let name="oid-display-name" value="((document(concat($oid_loc,$ingredient-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/>
            <sch:let name="role-allowed-codes" value="((document(concat($oid_loc,$ingredient-role-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            <sch:let name="ingredient-allowed-codes" value="((document(concat($oid_loc,$ingredient-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue)"/>
            
            <sch:let name="classCode" value="@classCode"/>
            <sch:let name="checked_classCode" value="'A'"/>
            <sch:let name="valid_units" value="(document(concat($oid_loc,$units-of-measure-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="numerator_units"  value=" quantity/numerator/@unit"/>
            <sch:let name="denominator_units"  value=" quantity/denominator/@unit"/>
            
            
            <sch:report test="count(./@classCode) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(./@classCode) = 0">Details: The ingredient@classCode attribute is missing in the product data section.</sch:report>
            <sch:assert test="./@classCode=$role-allowed-codes">SPL Rule 8</sch:assert>
            <sch:assert test="./@classCode=$role-allowed-codes">Details: <sch:value-of select="./@classCode"/> is not in the set of: <sch:value-of select="$role-allowed-codes"/> based on OID: <sch:value-of select="$ingredient-role-oid"/>.</sch:assert>
            
            <sch:report test="count(ingredientSubstance) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(ingredientSubstance) = 0 ">Details: The ingredientSubstance element is missing in the product data section for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
            <sch:report test="count(ingredientSubstance) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(ingredientSubstance) > 1">Details: There is more than 1 ingredientSubstance element is defined in the product data section for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
                <sch:report test="count(ingredientSubstance/code) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(ingredientSubstance/code) = 0">Details: The ingredientSubstance.code element is missing in the document product data section for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
                <sch:report test="count(ingredientSubstance/code) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(ingredientSubstance/code) > 1">Details: There is more than 1 ingredientSubstance.code element is defined in the document product data section for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
                <sch:report test="count(ingredientSubstance/code[@code]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(ingredientSubstance/code[@code]) = 0">Details: The ingredientSubstance.code@code attribute is missing in the product data section for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
                <sch:report test="count(ingredientSubstance/code[@codeSystem]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(ingredientSubstance/code[@codeSystem]) = 0">Details: The ingredientSubstance.code@codeSystem attribute is missing in the product data section for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
                <sch:report test="count(ingredientSubstance/code[@displayName]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(ingredientSubstance/code[@displayName]) = 0">Details: The ingredientSubstance.code@displayName attribute is missing in the product data section for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
                
                <sch:assert test="$code-system=$ingredient-id-oid">SPL Rule 2</sch:assert>
                <sch:assert test="$code-system=$ingredient-id-oid">Details: The OID for element: <sch:value-of select=" local-name(code)"/> should be: <sch:value-of select="$ingredient-id-oid"/> however the codeSystem is set to: <sch:value-of select="ingredientSubstance/code/@codeSystem"/>.</sch:assert>
                
            <sch:assert test="ingredientSubstance/code/@code=$ingredient-allowed-codes">SPL Rule 8</sch:assert>
            <sch:assert test="ingredientSubstance/code/@code=$ingredient-allowed-codes">Details: <sch:value-of select="$code"/> is not in the set of: <sch:value-of select="$ingredient-allowed-codes"/> based on OID: <sch:value-of select="$ingredient-id-oid"/>.</sch:assert>
            <sch:assert test="ingredientSubstance/code/@displayName=$oid-display-name">SPL Rule 7</sch:assert>
            <sch:assert test="ingredientSubstance/code/@displayName=$oid-display-name">Details: The document contains: <sch:value-of select="ingredientSubstance/code/@displayName"/> while code: <sch:value-of select="$code"/> for OID: <sch:value-of select="$ingredient-id-oid"/> contains: <sch:value-of select="$display-name"/></sch:assert>
                
                <sch:report test="count(ingredientSubstance/name) = 0">SPL Rule 3</sch:report>
            <sch:report test="count(ingredientSubstance/name) = 0">Details: The ingredientSubstance.name element is missing in the document product data section for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
                <sch:report test="count(ingredientSubstance/name) > 1">SPL Rule 4</sch:report>
            <sch:report test="count(ingredientSubstance/name) > 1">Details: There is more than 1 ingredientSubstance.name element is defined in the document product data section for the ingredient with the ingredient role of: <sch:value-of select="./@classCode"/>.</sch:report>
                
                <sch:assert test="ingredientSubstance/name=$display-name">SPL Rule 7</sch:assert>
                <sch:assert test="ingredientSubstance/name=$display-name">Details: The document contains: <sch:value-of select="ingredientSubstance/name"/> while code: <sch:value-of select="$code"/> for OID: <sch:value-of select="$code-system"/> contains: <sch:value-of select="$display-name"/></sch:assert>
                
                
                <!-- debugging -->
                <sch:report test="$debug=1">********************* ingredient debuging info ************************* </sch:report>
                <sch:report test="$debug=1">class code: <sch:value-of select="./@classCode"/></sch:report>
            <sch:report test="$debug=1">allowed role codes: <sch:value-of select="role-allowed-codes"/></sch:report>
                <sch:report test="$debug=1">ingredient codeSystem: <sch:value-of select="ingredientSubstance/code/@codeSystem"/></sch:report>
                <sch:report test="$debug=1">ingredient code: <sch:value-of select="$code"/></sch:report>
                <sch:report test="$debug=1">allowed ingredient codes: <sch:value-of select="$ingredient-allowed-codes"/></sch:report>
                <sch:report test="$debug=1">ingredient name: <sch:value-of select="ingredientSubstance/name"/></sch:report>
                <sch:report test="$debug=1">display language: <sch:value-of select="$display-language"/></sch:report>
                <sch:report test="$debug=1">display name: <sch:value-of select="$display-name"/></sch:report>
            <sch:report test="$debug=1" >classCode: <sch:value-of select="$classCode"/></sch:report>         
            <sch:report test="$debug=1" >Checked classCodes: <sch:value-of select="$checked_classCode"/></sch:report>
            <sch:report test="$debug=1" >valid units: <sch:value-of select="$valid_units"/></sch:report>
            <sch:report test="$debug=1" >unit1: <sch:value-of select="$denominator_units"/></sch:report>
            <sch:report test="$debug=1" >unit2: <sch:value-of select="$numerator_units"/></sch:report>
            
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        
        </sch:rule>
        
        <sch:rule context="consumedIn/substanceAdministration/routeCode">
            <!-- Route of Admin, pbx: not linked yet? -->
            <sch:let name="code" value="@code"/>
            <sch:let name="display-name" value="@displayName"/>
            <sch:let name="allowed-codes" value="(document(concat($oid_loc,$route-of-administration-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="oid-display-name" value="((document(concat($oid_loc,$route-of-administration-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/>  
            <sch:let name="code-system" value="$route-of-administration-oid"/>
            
            
            <sch:assert test="@codeSystem=$route-of-administration-oid">SPL Rule 2</sch:assert>
            <sch:assert test="@codeSystem=$route-of-administration-oid">Details: The OID for element: <sch:value-of select=" local-name(routeCode)"/> should be: <sch:value-of select="$route-of-administration-oid"/> however the codeSystem is set to: <sch:value-of select="@codeSystem"/></sch:assert>
            <sch:assert test="$code=$allowed-codes">SPL Rule 8</sch:assert>
            <sch:assert test="$code=$allowed-codes">Details: <sch:value-of select="$code"/> is not in the set of: <sch:value-of select="$allowed-codes"/> based on OID: <sch:value-of select="$route-of-administration-oid"/>.</sch:assert>
            <sch:assert test="$display-name=$oid-display-name">SPL Rule 7</sch:assert>
            <sch:assert test="$display-name=$oid-display-name">Details: The document contains: <sch:value-of select="$display-name"/> while code: <sch:value-of select="$code"/> for OID: <sch:value-of select="$code-system"/> contains: <sch:value-of select="$oid-display-name"/></sch:assert>
            
            <!-- debugging -->
            <sch:report test="$debug=1">********************* route debuging  ************************* </sch:report>
            <sch:report test="$debug=1">code: <sch:value-of select="$code"/></sch:report>            
            <sch:report test="$debug=1">allowed codes: <sch:value-of select="$allowed-codes"/></sch:report>
            <sch:report test="$debug=1">display-name: <sch:value-of select="$display-name"/></sch:report>
            <sch:report test="$debug=1">alloweed display name: <sch:value-of select="$oid-display-name"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>

        </sch:rule>
        
        
        <sch:rule context="manufacturedProduct/subjectOf/characteristic">
            <!-- pbx: add all product characteristic rules -->
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern>
        <sch:title>Labeling Section Validation</sch:title>
        <sch:rule context="component/section">
            
            <!-- used in the section checking -->
            <sch:let name="exception_sections" value="'60','110','120','48780-1'"/>
            <sch:let name="current-section" value="code/@code"/>
            <sch:let name="current-section_codesystem" value="code/@codeSystem"/>
            <sch:let name="parent_section" value="../../../section/code/@code"/> 
            <sch:let name="derived_section" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=(concat($doc-templateID,'-derived'))]/SimpleValue"/>
            <sch:let name="oid_sections" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef=(concat($doc-templateID,'-included'))]/SimpleValue='T']/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:let name="included-section" value="'TBD'"/>
            <sch:let name="included-section" value="boolean($current-section=$oid_sections)"/>
            <sch:let name="nesting_exception" value="$parent_section=$exception_sections"/>
            <sch:let name="section_cardinality" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=(concat($doc-templateID,'-cardinality'))]/SimpleValue"/>
            <sch:let name="number_of_sections" value="count(//code[@code=$current-section])"/>
            <sch:let name="number_of_sections2" value="count(parent::code[@code=$current-section])"/>
            <sch:let name="number_of_sections3" value="count(./code[@code=$current-section])"/>
            <sch:let name="number_of_sections4" value="count(self::code[@code=$current-section])"/>
            <!-- known part 3 issue, need to count each part 3 independantly  -->
            
            <sch:let name="correct_number_of_sections" value="false()"/>
            <sch:let name="correct_number_of_sections" value="($section_cardinality='0:n' and $included-section)"/>
            <sch:let name="correct_number_of_sections" value="($section_cardinality='0:1'and $number_of_sections&lt;2 and $included-section) or ($correct_number_of_sections)"/>
            <sch:let name="correct_number_of_sections" value="($section_cardinality='1:1' and $number_of_sections=1 and $included-section) or ($correct_number_of_sections)"/>
            <sch:let name="correct_number_of_sections" value="($section_cardinality='1:n' and $number_of_sections&gt;0 and $included-section) or ($correct_number_of_sections)"/>
            <sch:let name="doc_display-name" value="code/@displayName"/>
            <sch:let name="doc_title" value="title"/>
            <sch:let name="display-name" value="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=$display-language]/SimpleValue)"/>  
            <sch:let name="fixed_display-name" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=(concat($doc-templateID,'-title'))]/SimpleValue='F'"/>
            
            <!-- general section requirements -->
            <sch:report test="count(code) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(code) = 0 ">Details: The code element is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(code) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(code) > 1">Details: There is more than 1 code element defined is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(code[@code]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(code[@code]) = 0">Details: The code@code attribute is missing in section: <sch:value-of select="$current-section"/> .</sch:report>
            <sch:report test="not($nesting_exception) and not(code/@code=$oid_sections)">SPL Rule 8</sch:report>
            <sch:report test="not($nesting_exception) and not(code/@code=$oid_sections)">Details: Code: <sch:value-of select="code/@code"/> is not in the set of <sch:value-of select="$oid_sections"/>based on OID: <sch:value-of select="$structure-aspects-oid"/></sch:report>
            <sch:report test="not($nesting_exception) and not(code[@codeSystem=$section-id-oid])">SPL Rule 2</sch:report>
            <sch:report test="not($nesting_exception) and not(code[@codeSystem=$section-id-oid])">Details: The OID for element: <sch:value-of select=" local-name(code)"/> should be: <sch:value-of select="$section-id-oid"/> however the codeSystem is set to: <sch:value-of select="code/@codeSystem"/></sch:report>
            
            
            <sch:report test="count(code[@codeSystem]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(code[@codeSystem]) = 0">Details: The code@codeSystem attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(code[@displayName]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(code[@displayName]) = 0">Details: The code@displayName attribute is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            
            <sch:report test="count(id) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(id) = 0 ">Details: The id element is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
            <sch:report test="count(id) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(id) > 1">Details: There is more than 1 id element defined is missing in section: <sch:value-of select="$display-name"/> (<sch:value-of select="$current-section"/>).</sch:report>
            <sch:report test="count(id[@root]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(id[@root]) = 0">Details: The id@root attribute is missing in section:  <sch:value-of select="$display-name"/> (<sch:value-of select="$current-section"/>).</sch:report>
            
            <sch:report test="count(effectiveTime) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(effectiveTime) = 0 ">Details: The effectiveTime element is missing in the <sch:value-of select="$display-name"/> (<sch:value-of select="$current-section"/>) section.</sch:report>
            <sch:report test="count(effectiveTime) > 1 ">SPL Rule 4</sch:report>
            <sch:report test="count(effectiveTime) > 1">Details: There is more than 1 effectiveTime element defined in section:  <sch:value-of select="$display-name"/> (<sch:value-of select="$current-section"/>)..</sch:report>
            <sch:report test="count(effectiveTime[@value] or effectiveTime/low[@value]) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(effectiveTime[@value] or effectiveTime/low[@value]) = 0">Details: The effectiveTime value is missing in section: <sch:value-of select="$current-section"/>.</sch:report>
                                  
            <!-- check if the code is in the CV
            <sch:report test="not($nesting_exception) and not($current-section=((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue))">SPL Rule 8</sch:report>
            <sch:report test="not($nesting_exception) and not($current-section=((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row/Value[@ColumnRef='code']/SimpleValue))">Details: Code: <sch:value-of select="$current-section"/> is not a valid CV term.</sch:report>
             -->
          
           
            <!-- Check that the display name and title match the oid unless free form -->
            <!-- the strange negated report allows us to omit the error if the section should not be included -->
            <sch:report test="(not($doc_display-name=$display-name)) and ($fixed_display-name) and $derived_section='F' and (not($current-section=$exception_sections))">SPL Rule 7</sch:report>
            <sch:report test="(not($doc_display-name=$display-name)) and ($fixed_display-name) and $derived_section='F' and (not($current-section=$exception_sections))">Details: The display name in the document: <sch:value-of select="$doc_display-name"/> does not match the requirements for the <sch:value-of select="$display-name"/> section.</sch:report>
            
            <!-- debuging -->
            <sch:report test="$debug=1">********************* section aspect debuging info for section: <sch:value-of select="$current-section"/> ************************* </sch:report>
            
            <sch:report test="$debug=1">number_of_sections: <sch:value-of select="$number_of_sections"/></sch:report>
            <sch:report test="$debug=1">number_of_sections2: <sch:value-of select="$number_of_sections2"/></sch:report>
            <sch:report test="$debug=1">number_of_sections3: <sch:value-of select="$number_of_sections3"/></sch:report>
            <sch:report test="$debug=1">number_of_sections4: <sch:value-of select="$number_of_sections4"/></sch:report>
            <sch:report test="$debug=1">The location of the oid file: <sch:value-of select="concat($oid_loc,$structure-aspects-oid,$file-suffix)"/></sch:report>
            <sch:report test="$debug=1">parent section: <sch:value-of select="$parent_section"/> </sch:report>
            <sch:report test="$debug=1">nesting section exception: <sch:value-of select="$nesting_exception"/> </sch:report>
            <sch:report test="$debug=1">parent section an exception: <sch:value-of select="$parent_section=$exception_sections"/> </sch:report>
            <sch:report test="$debug=1">parent section in OID list: <sch:value-of select="$parent_section=$oid_sections"/> </sch:report>
            
            <sch:report test="$debug=1">section code: <sch:value-of select="$current-section"/> </sch:report>
            <sch:report test="$debug=1">section codeSystem: <sch:value-of select="$current-section_codesystem"/> </sch:report>
            <sch:report test="$debug=1">derived_section: <sch:value-of select="$derived_section"/> </sch:report>
            <sch:report test="$debug=1">exception_section: <sch:value-of select="$exception_sections"/> </sch:report>
            <sch:report test="$debug=1">oid_sections: <sch:value-of select="$oid_sections"/> </sch:report>
            <sch:report test="$debug=1">included-section: <sch:value-of select="$included-section"/> </sch:report>
            
            <sch:report test="$debug=1">section_cardinality: <sch:value-of select="$section_cardinality"/> </sch:report>
            <sch:report test="$debug=1">number_of_sections: <sch:value-of select="$number_of_sections"/> </sch:report>
            <sch:report test="$debug=1">correct_number_of_sections: <sch:value-of select="$correct_number_of_sections"/> </sch:report>
            <sch:report test="$debug=1">doc_display-name: <sch:value-of select="$doc_display-name"/> </sch:report>
            <sch:report test="$debug=1">doc_title: <sch:value-of select="$doc_title"/> </sch:report>
            <sch:report test="$debug=1">display-name: <sch:value-of select="$display-name"/> </sch:report>
            <sch:report test="$debug=1">display-language: <sch:value-of select="$display-language"/> </sch:report>
            <sch:report test="$debug=1">fixed_display-name: <sch:value-of select="$fixed_display-name"/> </sch:report>
            <sch:report test="$debug=1">********************* end debuging info for section: <sch:value-of select="$current-section"/> ************************* </sch:report>
        </sch:rule>
        
 

        <sch:rule context="document">
            
            <!-- pbx: need to add test to ensure no section is missing in the document -->
            <sch:let name="required_sections-1" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef=(concat($doc-templateID,'-cardinality'))]/SimpleValue='1:1']/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="required_sections-2" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef=(concat($doc-templateID,'-cardinality'))]/SimpleValue='1:n']/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="document-sections" value="//structuredBody/component/section/code/@code"/>
            
            <sch:report test="1=1">the required_sections-1 are : <sch:value-of select="$required_sections-1"/></sch:report>
            <sch:report test="1=1">the required_sections-2 are : <sch:value-of select="$required_sections-2"/></sch:report>
            <sch:report test="1=1">the document sections are : <sch:value-of select="$document-sections"/></sch:report>
            
            <sch:assert test="$required_sections-1=$document-sections">all required sections are in 1</sch:assert>
            <sch:assert test="$required_sections-2=$document-sections">all required sections are in 2</sch:assert>
            
            <!-- pbx: need to add test to ensure no section is missing in the document -->
            <sch:let name="required_sections-1" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef=(concat($doc-templateID,'-cardinality'))]/SimpleValue='1:1']/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="required_sections-2" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef=(concat($doc-templateID,'-cardinality'))]/SimpleValue='1:n']/Value[@ColumnRef='code']/SimpleValue"/>
            <sch:let name="document-sections" value="//structuredBody/component/section/code/@code"/>
            <sch:report test="1=1">the required_sections-1 are : <sch:value-of select="$required_sections-1"/></sch:report>
            <sch:report test="1=1">the required_sections-2 are : <sch:value-of select="$required_sections-2"/></sch:report>
            <sch:report test="1=1">the document sections are : <sch:value-of select="$document-sections"/></sch:report>
            
            <sch:assert test="$required_sections-1=$document-sections">all required sections are in 1</sch:assert>
            <sch:assert test="$required_sections-2=$document-sections">all required sections are in 2</sch:assert>
            
        </sch:rule>
 
        <sch:rule context="renderMultiMedia">
            <sch:report test="string-length(.)&gt;0">SPL Rule 11</sch:report>
            <sch:report test="string-length(.)&gt;0">Details: The renderMultiMedia element has content.</sch:report>
            <sch:report test="count(@referencedObject) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(@referencedObject) = 0">Details: The referencedObject attribute is missing in an renderMultiMedia element.</sch:report>
            <sch:report test="string-length(@referencedObject)&lt;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(@referencedObject)&lt;1">Details: The @referencedObject attribute is empty in an renderMultiMedia element.</sch:report>
        
            <!-- debuging -->
            <sch:report test="$debug=1">********************* debuging info for renderMultiMedia ************************* </sch:report>
            <sch:report test="$debug=1">Content of renderMultiMedia: <sch:value-of select=" attribute::*"/></sch:report>
            <sch:report test="$debug=1">Content of renderMultiMedia@referencedObject : <sch:value-of select="./@referencedObject"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info for section: ************************* </sch:report>
            
        </sch:rule>

        <sch:rule context="observationMedia">
            <sch:let name="file_formats" value="'image/jpeg', 'image/jfif', 'image/pdf/a-1', 'image/pdf/a-2', 'xml'"/>
            <sch:let name="allowed_format" value="(value/@mediaType = $file_formats)"/>
            
            <sch:report test="count(@ID) = 0">SPL Rule 5</sch:report>
            <sch:report test="count(@ID) = 0">Details: The ID attribute is missing in a renderMultiMedia element.</sch:report>
            <sch:report test="string-length(@ID)&lt;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(@ID)&lt;1">Details: The ID attribute is empty in a renderMultiMedia element.</sch:report>
            <sch:report test="count(text) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(text) = 0 ">Details: The text element is missing in a renderMultiMedia element.</sch:report>
            <sch:report test="string-length(text)&lt;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(text)&lt;1">Details: The text element is empty in a renderMultiMedia element.</sch:report>
            <sch:report test="count(value) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(value) = 0 ">Details: The value element is missing in a renderMultiMedia element.</sch:report>
            <sch:report test="string-length(value)&lt;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(value)&lt;1">Details: The text element is empty in a renderMultiMedia element.</sch:report>
            <sch:report test="count(value/@mediaType) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(value/@mediaType) = 0 ">Details: The value@mediaType atribute is missing in a renderMultiMedia element.</sch:report>
            <sch:report test="string-length(value/@mediaType)&lt;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(value/@mediaType)&lt;1">Details: The value@mediaType attribute is empty in a renderMultiMedia element.</sch:report>
            <sch:assert test="value/@type = 'ED'">SPL Rule 10</sch:assert>
            <sch:assert test="value/@type = 'ED'">Details: For SPL Rule 10, the value/@type attribute is not 'ED', it is <sch:value-of select="value/@type"/>.</sch:assert>
            <sch:report test="not($allowed_format)">SPL Rule 10</sch:report>
            <sch:report test="not($allowed_format)">Details: For SPL Rule 10, the value/@mediaType attribute equals: <sch:value-of select="value/@mediaType"/> which is not in the CV: <sch:value-of select="$file_formats"/>.</sch:report>
            
            
                <!-- pbx: here -->
            <!-- 
            <sch:report test="string-length(value)&gt;0">SPL Rule 11</sch:report>
            <sch:report test="string-length(value)&gt;0">Details: The value element has content in a renderMultiMedia element.</sch:report>
             -->
            <sch:report test="count(value/reference) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(value/reference) = 0 ">Details: The value.reference element is missing in a renderMultiMedia element.</sch:report>
            <sch:report test="string-length(value/reference)&gt;0">SPL Rule 11</sch:report>
            <sch:report test="string-length(value/reference)&gt;0">Details: For SPL Rule 11, the value.reference element has content in a renderMultiMedia element.</sch:report>
            <sch:report test="count(value/reference) = 0 ">SPL Rule 3</sch:report>
            <sch:report test="count(value/reference) = 0 ">Details: For SPL Rule 3, the value.reference@value atribute is missing in a renderMultiMedia element.</sch:report>
            <sch:report test="count(value/reference/@value) = 0 ">SPL Rule 5</sch:report>
            <sch:report test="count(value/reference/@value) = 0 ">Details: For SPL Rule 5, the value/reference@value atribute is missing in a renderMultiMedia element.</sch:report>
            <sch:report test="string-length(value/reference/@value)&lt;1">SPL Rule 6</sch:report>
            <sch:report test="string-length(value/reference/@value)&lt;1">Details: For SPL Rule 6, the value.reference@value attribute is empty in a renderMultiMedia element.</sch:report>
            <sch:assert test="string-length(value/reference/@value)&lt;60">SPL Rule 12</sch:assert>
            <sch:assert test="string-length(value/reference/@value)&lt;60">Details: For SPL Rule 12, the value/reference@value atribute <sch:value-of select="value/reference/@value"/> is more than 59 characters long in a renderMultiMedia element.</sch:assert>
            <sch:assert test="value/reference/@value = lower-case(value/reference/@value)">SPL Rule 12</sch:assert>
            <sch:assert test="value/reference/@value = lower-case(value/reference/@value)">Details: For SPL Rule 12, the value/reference@value atribute <sch:value-of select="value/reference/@value"/> is not all lowercase in a renderMultiMedia element.</sch:assert>
            
            
            <!-- debuging -->
            <sch:report test="$debug=1">********************* observationMedia Debuging ************************* </sch:report>
            <sch:report test="$debug=1">value: <sch:value-of select="value/@type"/></sch:report>
            <sch:report test="$debug=1">value2: <sch:value-of select="value/attribute::*"/>"</sch:report>
            <sch:report test="$debug=1">@mediaType = <sch:value-of select="value/@mediaType"/>"</sch:report>
            <sch:report test="$debug=1">allowed_format = <sch:value-of select="$allowed_format"/>"</sch:report>
            <sch:report test="$debug=1">allowed formats: <sch:value-of select="$file_formats"/>"</sch:report>
            <sch:report test="$debug=1">file name: <sch:value-of select="value/reference/@value"/>"</sch:report>
            <sch:report test="$debug=1">file name lower: <sch:value-of select="lower-case(value/reference/@value)"/>"</sch:report>
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
            
        </sch:rule>
    </sch:pattern>
    
    
    <sch:pattern>
        <sch:title>Doctype and Template Specific Validation</sch:title>
        <sch:p>This section will encode all the rules related to the a specific doctype or tempalte</sch:p>
        <!-- All Doctype and Template specific rule checking is grouped together in one area rather than including it with the approproate -->
        <!-- sections, to facilitate maintaining the rule file. -->
        
        <!-- pbx: need to figure out a solution for DT rule checking list of applicable templateID's per rule -->
        <sch:title>Doctype Prolog Information Validation</sch:title>
        <sch:p>This section will encode all the Doctype rules related to the Prolog Information</sch:p>
        <sch:rule context="/">
            <sch:let name="stylesheet-info" value="processing-instruction('xml-stylesheet')"/>
            <sch:let name="stylesheet1" value="'type=&#34;text/xsl&#34; href=&#34;https://github.com/HealthCanada/HPFB/raw/master/Structured-Product-Labeling-(SPL)/Style-Sheets/SPM/current/spl-hpfb.xsl&#34;'"/>
            <sch:let name="stylesheet2" value="'type=&#34;text/css&#34; href=&#34;https://github.com/HealthCanada/HPFB/raw/master/Structured-Product-Labeling-(SPL)/Style-Sheets/SPM/current/spl-hpfb.css&#34;'"/>
                        
            <sch:assert test="$stylesheet-info=$stylesheet1">DT Rule 50</sch:assert>
            <sch:assert test="$stylesheet-info=$stylesheet2">Details: The Processing instructions did not contain the string: <sch:value-of select="$stylesheet1"/> </sch:assert>
            <sch:assert test="$stylesheet-info=$stylesheet2">DT Rule 50</sch:assert>
            <sch:assert test="$stylesheet-info=$stylesheet2">Details: The Processing instructions did not contain the string: <sch:value-of select="$stylesheet2"/> </sch:assert>
            
            <!-- pbx: Try to figure out how to test if there is more to the string? tried string replace but not sure how to get it to work -->
            
            <!-- debuging -->
            <sch:report test="$debug=1">********************* Doctype Processing Instruction Debuging ************************* </sch:report>
            <sch:report test="$debug=1">TemplateID: <sch:value-of select="$doc-templateID"/>"</sch:report>
            <sch:report test="$debug=1">Valid Template: <sch:value-of select="$doc-templateID='1', '2', '3'"/>"</sch:report>
            
            <sch:report test="$debug=1">Processing Information: <sch:value-of select="processing-instruction('xml-stylesheet')"/>"</sch:report>
            <sch:report test="$debug=1">PI: <sch:value-of select="$stylesheet-info"/>"</sch:report>         
            <sch:report test="$debug=1">Stylesheet1: <sch:value-of select="$stylesheet1"/>"</sch:report>         
            <sch:report test="$debug=1">Stylesheet2: <sch:value-of select="$stylesheet2"/>"</sch:report>         
            <sch:report test="$debug=1">********************* end debuging info ************************* </sch:report>
        </sch:rule>
        
        
 
        <sch:title>Document Type Validation</sch:title>
        <sch:p>This section will encode all the rules related Document Type Validation</sch:p>
        <!-- pbx: currently not checking the doctype and template, that will be checked by CTS/dB, however must be documented -->
        <sch:rule context="document">
           
             
            <sch:assert test="title">DT Rule 2</sch:assert>
        </sch:rule>
        
        
        <sch:rule context="structuredBody/component">
            <!-- Check that the sequence of the next section greater than the current section, this does not handle permited out of sequence sections -->
            <!-- pbx: may have to revisit as this likely does not handle nesting properly -->
            <sch:let name="section_counter" value="position()"/>
            <sch:let name="current-section" value="//structuredBody/component[$section_counter]/section/code/@code"/>
            <sch:let name="section-sequence" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=(concat($doc-templateID,'-sequence'))]/SimpleValue"/>
            <sch:let name="next_section_code" value="//structuredBody/component[$section_counter+1]/section/code/@code"/>
            <sch:let name="next_section-sequence" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$next_section_code]/Value[@ColumnRef=(concat($doc-templateID,'-sequence'))]/SimpleValue"/>
            <sch:let name="derived_section" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=(concat($doc-templateID,'-derived'))]/SimpleValue"/>
            
            <sch:report test="(((number($next_section-sequence)&lt;number($section-sequence)) and ($current-section!=$next_section_code)) and $derived_section='F')">DT Rule 40</sch:report>
            <sch:report test="(((number($next_section-sequence)&lt;number($section-sequence)) and ($current-section!=$next_section_code)) and $derived_section='F')">Details: Section: <sch:value-of select="$next_section_code"/> may not follow section: <sch:value-of select="$current-section"/> </sch:report>
            
            <!-- debuging -->
            <sch:report test="$debug=1">********************* debuging info for sequence aspect: <sch:value-of select="$current-section"/> ************************* </sch:report>
            <sch:report test="$debug=1">The location of the oid file: <sch:value-of select="concat($oid_loc,$structure-aspects-oid,$file-suffix)"/></sch:report>
            <sch:report test="$next_section-sequence&lt;$section-sequence">True</sch:report>
            <sch:report test="$current-section!=$next_section_code">True</sch:report>
            <sch:report test="$derived_section='F'">True</sch:report>
            <sch:report test="$debug=1">section: <sch:value-of select="$current-section"/> </sch:report>
            <sch:report test="$debug=1">section_counter: <sch:value-of select="$section_counter"/> </sch:report>
            <sch:report test="$debug=1">current-section: <sch:value-of select="$current-section"/> </sch:report>
            <sch:report test="$debug=1">section-sequence <sch:value-of select="number($section-sequence)"/> </sch:report>
            <sch:report test="$debug=1">next_section_code: <sch:value-of select="$next_section_code"/> </sch:report>
            <sch:report test="$debug=1">next_section-sequence": <sch:value-of select="number($next_section-sequence)"/> </sch:report>
            <sch:report test="$debug=1">derived_section: <sch:value-of select="$derived_section"/> </sch:report>
            <sch:report test="$debug=1">value of part 1:<sch:value-of select="( number($section-sequence) >  number($next_section-sequence))"/></sch:report>
            <sch:report test="$debug=1">value of part 2:<sch:value-of select="($current-section!=$next_section_code)"/></sch:report>
            <sch:report test="$debug=1">value of part 3:<sch:value-of select="($derived_section='F')"/></sch:report>
            <sch:report test="$debug=1">value of part 1 and 2:<sch:value-of select="(($next_section-sequence&lt;$section-sequence) or ($current-section=$next_section_code))"/></sch:report>
            <sch:report test="$debug=1">********************* end debuging info for section: <sch:value-of select="$current-section"/> ************************* </sch:report>
        </sch:rule>
        
        
        <sch:rule context="representedOrganization">
            <sch:let name="company_id" value="id[@root = $company-id-oid]/@extension"/>
            
            <sch:report test="($doc-doctype='1') and $company_id='999999999'">DT Rule 6</sch:report>
            <sch:report test="($doc-doctype='1') and $company_id='999999999'">Details: Doctype: <sch:value-of select="$doc-doctype"/> does not allow undefined company's</sch:report>
        </sch:rule>
        <sch:rule context="assignedOrganization/assignedEntity/assignedOrganization">
            <sch:let name="company_id" value="id[@root = $company-id-oid]/@extension"/>
            
            <sch:report test="($doc-doctype='1') and $company_id='999999999'">DT Rule 6</sch:report>
            <sch:report test="($doc-doctype='1') and $company_id='999999999'">Details: Doctype: <sch:value-of select="$doc-doctype"/> does not allow undefined company's</sch:report>
        </sch:rule>
        <sch:rule context="manufacturedProduct/manufacturedProduct">
            <!-- not sure about these rules -->
            <sch:assert test="count(name) = count(asEntityWithGeneric/genericMedicine/name)">DT Rule 33</sch:assert>
            <sch:assert test="count(name) = count(formCode)">DT Rule 34</sch:assert>
            <sch:assert test="count(name) = count(ancestor-or-self::*/consumedIn/substanceAdministration/routeCode)">DT Rule 35</sch:assert>
            
        </sch:rule>
        <sch:title>Labeling Section Specific Validation</sch:title>
        <sch:p>This section will encode all the rules related Labeling Sections</sch:p>
        <sch:rule context="component/section">
            <!-- used in the section checking -->
            <sch:let name="exception_sections" value="'60','110','120','48780-1'"/>
            <sch:let name="current-section" value="code/@code"/>
            <sch:let name="current-section_codesystem" value="code/@codeSystem"/>
            <sch:let name="parent_section" value="../../../section/code/@code"/> 
            <sch:let name="derived_section" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=(concat($doc-templateID,'-derived'))]/SimpleValue"/>
            <sch:let name="oid_sections" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef=(concat($doc-templateID,'-included'))]/SimpleValue='T']/Value[@ColumnRef='code']/SimpleValue"/>
            
            <sch:let name="included-section" value="'TBD'"/>
            <sch:let name="included-section" value="boolean($current-section=$oid_sections)"/>
            <sch:let name="nesting_exception" value="$parent_section=$exception_sections"/>
            <sch:let name="section_cardinality" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=(concat($doc-templateID,'-cardinality'))]/SimpleValue"/>
            <sch:let name="number_of_sections" value="count(//code[@code=$current-section])"/>
            <sch:let name="number_of_sections2" value="count(parent::code[@code=$current-section])"/>
            <sch:let name="number_of_sections3" value="count(./code[@code=$current-section])"/>
            <sch:let name="number_of_sections4" value="count(self::code[@code=$current-section])"/>
            <!-- known part 3 issue, need to count each part 3 independantly  -->
            
            <sch:let name="correct_number_of_sections" value="false()"/>
            <sch:let name="correct_number_of_sections" value="($section_cardinality='0:n' and $included-section)"/>
            <sch:let name="correct_number_of_sections" value="($section_cardinality='0:1'and $number_of_sections&lt;2 and $included-section) or ($correct_number_of_sections)"/>
            <sch:let name="correct_number_of_sections" value="($section_cardinality='1:1' and $number_of_sections=1 and $included-section) or ($correct_number_of_sections)"/>
            <sch:let name="correct_number_of_sections" value="($section_cardinality='1:n' and $number_of_sections&gt;0 and $included-section) or ($correct_number_of_sections)"/>
            <sch:let name="doc_display-name" value="code/@displayName"/>
            <sch:let name="doc_title" value="title"/>
            <sch:let name="display-name" value="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=$display-language]/SimpleValue)"/>  
            <sch:let name="fixed_display-name" value="(document(concat($oid_loc,$structure-aspects-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$current-section]/Value[@ColumnRef=(concat($doc-templateID,'-title'))]/SimpleValue='F'"/>
            
            
            <!-- Check if the section should be included -->
            <sch:report test="$derived_section='F' and (not($current-section=$oid_sections))">DT Rule 36</sch:report>
            <sch:report test="$derived_section='F' and (not($current-section=$oid_sections))">Details: The section labeled with code: <sch:value-of select="$current-section"/> is not permitted for this doctype</sch:report>
            
            <!-- Check if the right number of sections are included -->
            <!-- the strange negated report allows us to omit the error if the section should not be included -->
            <!-- 
            pbx: commented out as it's not working due to multiple part 3's
            <sch:report test="(not($correct_number_of_sections)) and $included-section and $derived_section='F' and (not($current-section=$exception_sections))">DT Rule 37</sch:report>
            <sch:report test="(not($correct_number_of_sections)) and $included-section and $derived_section='F' and (not($current-section=$exception_sections))">Details: The number of occurances of section <sch:value-of select="$current-section"/>: is <sch:value-of select="$number_of_sections"/>:, however the cardinality is: <sch:value-of select="$section_cardinality"/> (note if no value provided then the section is not permited)</sch:report>
             -->
            
            
            <!-- Check that the display name and title match the oid unless free form -->
            <!-- the strange negated report allows us to omit the error if the section should not be included -->
            <sch:report test="(not($doc_title=$display-name))and $fixed_display-name and $derived_section='F' and (not($current-section=$exception_sections))">DT Rule 39</sch:report>
            <sch:report test="(not($doc_title=$display-name))and $fixed_display-name and $derived_section='F' and (not($current-section=$exception_sections))">Details: The title in the document: <sch:value-of select="$doc_title"/> does not match the requirements for the <sch:value-of select="$current-section"/> section.</sch:report>
            
        </sch:rule>
        
        <!-- Section exception block -->  
        <sch:rule context="structuredBody/component/section/code[@code = '20' and @codeSystem = $section-id-oid]">
            <sch:let name="code" value="attribute::code"/>
            <sch:report test="parent::section/text">DT Rule 43</sch:report>
            <sch:report test="parent::section/text">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the text element</sch:report>
            <sch:report test="parent::section/subject">DT Rule 44</sch:report>
            <sch:report test="parent::section/subject">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the subject element</sch:report>
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '30' and @codeSystem = $section-id-oid]">
            <sch:let name="code" value="attribute::code"/>
            <sch:report test="parent::section/text">DT Rule 43</sch:report>
            <sch:report test="parent::section/text">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the text element</sch:report>
            <sch:report test="parent::section/subject">DT Rule 44</sch:report>
            <sch:report test="parent::section/subject">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the subject element</sch:report>
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '40' and @codeSystem = $section-id-oid]">
            <sch:let name="code" value="attribute::code"/>
            <sch:report test="parent::section/text">DT Rule 43</sch:report>
            <sch:report test="parent::section/text">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the text element</sch:report>
            <sch:report test="parent::section/subject">DT Rule 44</sch:report>
            <sch:report test="parent::section/subject">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the subject element</sch:report>
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '60' and @codeSystem = $section-id-oid]">
            <sch:let name="code" value="attribute::code"/>
            <sch:report test="($doc-doctype='1') and parent::section/text">DT Rule 43</sch:report>
            <sch:report test="($doc-doctype='1') and parent::section/text">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the text element</sch:report>
            <sch:report test="parent::section/subject">DT Rule 44</sch:report>
            <sch:report test="parent::section/subject">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the subject element</sch:report>
            <sch:report test="parent::section/component">DT Rule 45</sch:report>
            <sch:report test="parent::section/component">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the component element</sch:report>
        </sch:rule>
        
        <!-- where only applicable to a template add and $doc-templateID='1' as approriate -->
        
        <sch:rule context="structuredBody/component/section/code[@code = '110' and @codeSystem = $section-id-oid]">
            
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '120' and @codeSystem = $section-id-oid]">
            
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '150' and @codeSystem = $section-id-oid]">
            
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '160' and @codeSystem = $section-id-oid]">
            
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '170' and @codeSystem = $section-id-oid]">
            
        </sch:rule>
   
        <sch:rule context="structuredBody/component/section/code[@code = '360' and @codeSystem = $section-id-oid]">
            <!-- figure out how to concat string and compare to title, this way we can look at brand name -->
            
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '450' and @codeSystem = $section-id-oid]">
            <sch:let name="code" value="attribute::code"/>
            <sch:report test="parent::section/title">DT Rule 42</sch:report>
            <sch:report test="parent::section/title">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the title element</sch:report>
            <sch:report test="parent::section/text">DT Rule 43</sch:report>
            <sch:report test="parent::section/text">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the text element</sch:report>
            <sch:report test="parent::section/subject">DT Rule 44</sch:report>
            <sch:report test="parent::section/subject">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the subject element</sch:report>
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '460' and @codeSystem = $section-id-oid]">
            <sch:let name="code" value="attribute::code"/>
            <sch:report test="parent::section/title">DT Rule 42</sch:report>
            <sch:report test="parent::section/title">Details: <sch:value-of select="((document(concat($oid_loc,$section-id-oid,$file-suffix)))/gc:CodeList/SimpleCodeList/Row[./Value[@ColumnRef='code']/SimpleValue=$code]/Value[@ColumnRef=$display-language]/SimpleValue)"/> section has content in the title element</sch:report>
        </sch:rule>
        <sch:rule context="structuredBody/component/section/code[@code = '470' and @codeSystem = $section-id-oid]">
            
        </sch:rule>
        

        
    </sch:pattern>
</sch:schema>
