<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:74bfd413-8b64-4223-893e-f8a87bb1cf7a(com.mbeddr.doc.aspect.exampleLanguage.documentation)">
  <persistence version="9" />
  <languages>
    <use id="38a074ed-e5ad-4b2d-be31-ca436911b8aa" name="com.mbeddr.doc.aspect" version="0" />
    <use id="92d2ea16-5a42-4fdf-a676-c7604efe3504" name="de.slisson.mps.richtext" version="0" />
    <use id="2374bc90-7e37-41f1-a9c4-c2e35194c36a" name="com.mbeddr.doc" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="hauh" ref="r:489c719c-7616-403c-a112-c95a57d1fcd3(com.mbeddr.doc.aspect.exampleLanguage.structure)" />
  </imports>
  <registry>
    <language id="38a074ed-e5ad-4b2d-be31-ca436911b8aa" name="com.mbeddr.doc.aspect">
      <concept id="1058510331725720478" name="com.mbeddr.doc.aspect.structure.DocumentedConceptAnnotation" flags="ng" index="3n9NSn">
        <reference id="1058510331725761196" name="concept" index="3nadW_" />
      </concept>
      <concept id="8077410651477969217" name="com.mbeddr.doc.aspect.structure.ConceptDocumentation" flags="ng" index="1UlrdK">
        <reference id="8077410651477974993" name="concept" index="1Ulqnw" />
        <child id="8077410651477975083" name="text" index="1UlpCq" />
      </concept>
    </language>
    <language id="92d2ea16-5a42-4fdf-a676-c7604efe3504" name="de.slisson.mps.richtext">
      <concept id="2557074442922380897" name="de.slisson.mps.richtext.structure.Text" flags="ng" index="19SGf9">
        <child id="2557074442922392302" name="words" index="19SJt6" />
      </concept>
      <concept id="2557074442922438156" name="de.slisson.mps.richtext.structure.Word" flags="ng" index="19SUe$">
        <property id="2557074442922438158" name="escapedValue" index="19SUeA" />
      </concept>
    </language>
    <language id="2374bc90-7e37-41f1-a9c4-c2e35194c36a" name="com.mbeddr.doc">
      <concept id="6165313375055797476" name="com.mbeddr.doc.structure.FormattedText" flags="ng" index="$DsGX">
        <child id="6165313375055797477" name="text" index="$DsGW" />
      </concept>
      <concept id="6657644269295214799" name="com.mbeddr.doc.structure.IDocumentLike" flags="ng" index="G9hjZ">
        <reference id="6657644269295214800" name="config" index="G9hjw" />
      </concept>
      <concept id="6386504476136472795" name="com.mbeddr.doc.structure.PathDefinition" flags="ng" index="2SbYGw">
        <child id="2642765975824057986" name="pathPicker" index="9PVG_" />
      </concept>
      <concept id="6386504476136472782" name="com.mbeddr.doc.structure.DocumentConfig" flags="ng" index="2SbYGP">
        <child id="5785245534401182264" name="defaultTempPath" index="Cbewh" />
      </concept>
      <concept id="4208238404723595132" name="com.mbeddr.doc.structure.UrlFormattedText" flags="ng" index="1hOBRO" />
      <concept id="4208238404730191274" name="com.mbeddr.doc.structure.Chapter" flags="ng" index="1mvXsy" />
      <concept id="3350625596580108709" name="com.mbeddr.doc.structure.SectRefWord" flags="ng" index="1_0GAv">
        <reference id="3350625596580108719" name="target" index="1_0GAl" />
      </concept>
      <concept id="3350625596580089586" name="com.mbeddr.doc.structure.TextParagraph" flags="ng" index="1_0LV8">
        <child id="3350625596580089613" name="text" index="1_0LWR" />
      </concept>
      <concept id="3350625596580064249" name="com.mbeddr.doc.structure.IDocContentContainer" flags="ng" index="1_0VJ3">
        <child id="3350625596580064250" name="contents" index="1_0VJ0" />
      </concept>
      <concept id="3350625596580064222" name="com.mbeddr.doc.structure.AbstractSection" flags="ng" index="1_0VJ$">
        <property id="3350625596580064225" name="text" index="1_0VJr" />
      </concept>
      <concept id="3350625596580064455" name="com.mbeddr.doc.structure.Section" flags="ng" index="1_0VNX" />
      <concept id="3350625596579911728" name="com.mbeddr.doc.structure.Document" flags="ng" index="1_1swa">
        <property id="5572730672710143343" name="chapterStartIndex" index="yApLE" />
      </concept>
      <concept id="3350625596579911760" name="com.mbeddr.doc.structure.EmptyDocContent" flags="ng" index="1_1sxE" />
    </language>
    <language id="d4280a54-f6df-4383-aa41-d1b2bffa7eb1" name="com.mbeddr.core.base">
      <concept id="2642765975824060179" name="com.mbeddr.core.base.structure.SolutionRelativeDirPicker" flags="ng" index="9PVaO" />
      <concept id="6156524541422549000" name="com.mbeddr.core.base.structure.AbstractPicker" flags="ng" index="3N1QpV">
        <property id="9294901202237533" name="mayBeEmpty" index="3kgbRO" />
        <property id="2711621784026951428" name="pointOnlyToExistingFile" index="1RwFax" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1UlrdK" id="tBHOvWffvU">
    <ref role="1Ulqnw" to="hauh:tBHOvWfftF" resolve="SampleDocumentedConcept" />
    <node concept="19SGf9" id="tBHOvWffvV" role="1UlpCq">
      <node concept="19SUe$" id="tBHOvWffvW" role="19SJt6">
        <property role="19SUeA" value="Documentation Text for SampleDocumentedConcept  " />
      </node>
    </node>
  </node>
  <node concept="1UlrdK" id="6TuvEpVGx1f">
    <ref role="1Ulqnw" to="hauh:6TuvEpVGx1e" resolve="DocumentedChild1" />
    <node concept="19SGf9" id="6TuvEpVGx1g" role="1UlpCq">
      <node concept="19SUe$" id="6TuvEpVGx1h" role="19SJt6">
        <property role="19SUeA" value="Documented Child 1 documentation:&#10;- properties:&#10;- children:" />
      </node>
    </node>
  </node>
  <node concept="1UlrdK" id="6TuvEpVGx7s">
    <ref role="1Ulqnw" to="hauh:6TuvEpVGx7v" resolve="DocumentedChild2" />
    <node concept="19SGf9" id="6TuvEpVGx7t" role="1UlpCq">
      <node concept="19SUe$" id="6TuvEpVGx7u" role="19SJt6">
        <property role="19SUeA" value="Documentation for DocumentedChild2" />
      </node>
    </node>
  </node>
  <node concept="1_1swa" id="UK_oBpA4NZ">
    <property role="yApLE" value="1" />
    <property role="TrG5h" value="SampleDocument" />
    <property role="3GE5qa" value="document" />
    <ref role="G9hjw" node="UK_oBpA4O0" resolve="DocumentConfig" />
    <node concept="1mvXsy" id="UK_oBpA4O3" role="1_0VJ0">
      <property role="TrG5h" value="ConceptDocChapter" />
      <property role="1_0VJr" value="Concept documentation" />
      <node concept="1_0VNX" id="UK_oBpA4O5" role="1_0VJ0">
        <property role="TrG5h" value="ConceptDoc1" />
        <property role="1_0VJr" value="DocumentedChild1" />
        <node concept="3n9NSn" id="UK_oBpAt3z" role="lGtFl">
          <ref role="3nadW_" to="hauh:6TuvEpVGx1e" resolve="DocumentedChild1" />
        </node>
        <node concept="1_0LV8" id="UK_oBpAttY" role="1_0VJ0">
          <node concept="19SGf9" id="UK_oBpAttZ" role="1_0LWR">
            <node concept="19SUe$" id="UK_oBpAtu0" role="19SJt6">
              <property role="19SUeA" value="document line" />
            </node>
          </node>
        </node>
        <node concept="1_0LV8" id="UK_oBpAtui" role="1_0VJ0">
          <node concept="19SGf9" id="UK_oBpAtuj" role="1_0LWR">
            <node concept="19SUe$" id="UK_oBpAtuk" role="19SJt6">
              <property role="19SUeA" value="sdfsdf" />
            </node>
          </node>
        </node>
        <node concept="1_0LV8" id="UK_oBpAtuC" role="1_0VJ0">
          <node concept="19SGf9" id="UK_oBpAtuD" role="1_0LWR">
            <node concept="19SUe$" id="UK_oBpAtuE" role="19SJt6">
              <property role="19SUeA" value="asfdss" />
            </node>
          </node>
        </node>
        <node concept="1_0LV8" id="UK_oBpAtt0" role="1_0VJ0">
          <node concept="19SGf9" id="UK_oBpAtt1" role="1_0LWR">
            <node concept="19SUe$" id="UK_oBpAtt2" role="19SJt6">
              <property role="19SUeA" value="fdfsdf" />
            </node>
          </node>
        </node>
        <node concept="1_0LV8" id="UK_oBpAtt8" role="1_0VJ0">
          <node concept="19SGf9" id="UK_oBpAtt9" role="1_0LWR">
            <node concept="19SUe$" id="UK_oBpAtta" role="19SJt6">
              <property role="19SUeA" value="sdfsdf" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1_1sxE" id="UK_oBpCxhd" role="1_0VJ0">
        <property role="TrG5h" value="empty_-1" />
      </node>
      <node concept="1_0VNX" id="UK_oBpCt_h" role="1_0VJ0">
        <property role="TrG5h" value="ConceptDoc2" />
        <property role="1_0VJr" value="DocumentedChild2" />
        <node concept="1_0LV8" id="UK_oBpCt_C" role="1_0VJ0">
          <node concept="19SGf9" id="UK_oBpCt_D" role="1_0LWR">
            <node concept="19SUe$" id="UK_oBpCt_E" role="19SJt6">
              <property role="19SUeA" value="Documentation for the documented child 2" />
            </node>
          </node>
        </node>
        <node concept="1_0LV8" id="UK_oBpCt_J" role="1_0VJ0">
          <node concept="19SGf9" id="UK_oBpCt_K" role="1_0LWR">
            <node concept="19SUe$" id="UK_oBpCt_V" role="19SJt6" />
            <node concept="1hOBRO" id="UK_oBpCt_S" role="19SJt6">
              <node concept="19SGf9" id="UK_oBpCt_T" role="$DsGW">
                <node concept="19SUe$" id="UK_oBpCt_U" role="19SJt6">
                  <property role="19SUeA" value="www.someurl.de" />
                </node>
              </node>
            </node>
            <node concept="19SUe$" id="UK_oBpCt_W" role="19SJt6" />
          </node>
        </node>
        <node concept="3n9NSn" id="UK_oBpCxhG" role="lGtFl">
          <ref role="3nadW_" to="hauh:6TuvEpVGx7v" resolve="DocumentedChild2" />
        </node>
        <node concept="1_0LV8" id="agjuZp0uec" role="1_0VJ0">
          <node concept="19SGf9" id="agjuZp0ued" role="1_0LWR">
            <node concept="19SUe$" id="agjuZp0ueu" role="19SJt6">
              <property role="19SUeA" value="Reference to another section " />
            </node>
            <node concept="1_0GAv" id="agjuZp0uet" role="19SJt6">
              <ref role="1_0GAl" node="UK_oBpA4O5" resolve="ConceptDoc1" />
            </node>
            <node concept="19SUe$" id="agjuZp0uev" role="19SJt6" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2SbYGP" id="UK_oBpA4O0">
    <property role="TrG5h" value="DocumentConfig" />
    <property role="3GE5qa" value="document" />
    <node concept="2SbYGw" id="UK_oBpA4O1" role="Cbewh">
      <property role="TrG5h" value="tmp" />
      <node concept="9PVaO" id="UK_oBpA4O2" role="9PVG_">
        <property role="1RwFax" value="true" />
        <property role="3kgbRO" value="false" />
      </node>
    </node>
  </node>
</model>

