<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c726a733-8038-42b5-adf4-0fce41e0214c(com.mbeddr.mpsutil.nodes_tracing.test.nodes_tracing_utils)">
  <persistence version="9" />
  <languages>
    <use id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1172058436953" name="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall" flags="nn" index="3$87h9" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil">
      <concept id="6451706574539345403" name="com.mbeddr.mpsutil.blutil.structure.MethodLineDoc" flags="ng" index="NWlO9">
        <property id="6451706574539345425" name="text" index="NWlVz" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
    </language>
  </registry>
  <node concept="312cEu" id="7HmzdkqVQbW">
    <property role="TrG5h" value="NodesTracingUtils" />
    <node concept="3Tm1VV" id="7HmzdkqVQbX" role="1B3o_S" />
    <node concept="2tJIrI" id="7HmzdkqVQcg" role="jymVt" />
    <node concept="2YIFZL" id="4a8JajkMaNY" role="jymVt">
      <property role="TrG5h" value="findOriginalNode" />
      <node concept="3Tm1VV" id="694Tbl9fyNh" role="1B3o_S" />
      <node concept="3Tqbb2" id="4a8JajkMaO0" role="3clF45" />
      <node concept="37vLTG" id="4a8JajkMaNJ" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="4a8JajkMaNK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4a8JajkMaNL" role="3clF46">
        <property role="TrG5h" value="line" />
        <node concept="10Oyi0" id="4a8JajkMaNM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4a8JajkMaLN" role="3clF47">
        <node concept="3cpWs6" id="3I3e3C4vxts" role="3cqZAp">
          <node concept="2OqwBi" id="3I3e3C4v_F2" role="3cqZAk">
            <node concept="1rXfSq" id="3I3e3C4vyGu" role="2Oq$k0">
              <ref role="37wK5l" node="4a8JajkM8D8" resolve="findAllPossibleOriginalNodes" />
              <node concept="37vLTw" id="3I3e3C4vztQ" role="37wK5m">
                <ref role="3cqZAo" node="4a8JajkMaNJ" resolve="fileName" />
              </node>
              <node concept="37vLTw" id="3I3e3C4v$f3" role="37wK5m">
                <ref role="3cqZAo" node="4a8JajkMaNL" resolve="line" />
              </node>
            </node>
            <node concept="1uHKPH" id="3I3e3C4vB7f" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4a8JajkMaO1" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
      </node>
      <node concept="NWlO9" id="4a8JajkMcub" role="lGtFl">
        <property role="NWlVz" value="Returns the first original node that is traced to a certain file and line." />
      </node>
    </node>
    <node concept="2tJIrI" id="7HmzdkqWn$I" role="jymVt" />
    <node concept="2YIFZL" id="4a8JajkM8D8" role="jymVt">
      <property role="TrG5h" value="findAllPossibleOriginalNodes" />
      <node concept="3Tm1VV" id="7Hmzdkr0aPr" role="1B3o_S" />
      <node concept="2I9FWS" id="4a8JajkM8Da" role="3clF45" />
      <node concept="37vLTG" id="4a8JajkM8CU" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="17QB3L" id="4a8JajkM8CV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4a8JajkM8CW" role="3clF46">
        <property role="TrG5h" value="line" />
        <node concept="10Oyi0" id="4a8JajkM8CX" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4a8JajkM8Bj" role="3clF47">
        <node concept="3cpWs8" id="4a8JajkM8BB" role="3cqZAp">
          <node concept="3cpWsn" id="4a8JajkM8BC" role="3cpWs9">
            <property role="TrG5h" value="originalNodes" />
            <node concept="2I9FWS" id="4a8JajkM8BD" role="1tU5fm" />
            <node concept="2ShNRf" id="4a8JajkM8BE" role="33vP2m">
              <node concept="2T8Vx0" id="4a8JajkM8BF" role="2ShVmc">
                <node concept="2I9FWS" id="4a8JajkM8BG" role="2T96Bj" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4a8JajkM8BA" role="3cqZAp" />
        <node concept="3cpWs8" id="4a8JajkM8BJ" role="3cqZAp">
          <node concept="3cpWsn" id="4a8JajkM8BK" role="3cpWs9">
            <property role="TrG5h" value="fileName" />
            <node concept="17QB3L" id="4a8JajkM8BL" role="1tU5fm" />
            <node concept="2YIFZM" id="7HmzdkqYkLY" role="33vP2m">
              <ref role="37wK5l" node="3ccRFHLe$g7" resolve="getFileName" />
              <ref role="1Pybhc" node="4jq$txdS$m7" resolve="NodeUtils" />
              <node concept="37vLTw" id="7HmzdkqYkLZ" role="37wK5m">
                <ref role="3cqZAo" node="4a8JajkM8CU" resolve="file" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4a8JajkM8BO" role="3cqZAp">
          <node concept="3cpWsn" id="4a8JajkM8BP" role="3cpWs9">
            <property role="TrG5h" value="unitName" />
            <node concept="17QB3L" id="4a8JajkM8BQ" role="1tU5fm" />
            <node concept="2YIFZM" id="4a8JajkM8BR" role="33vP2m">
              <ref role="1Pybhc" node="4jq$txdS$m7" resolve="NodeUtils" />
              <ref role="37wK5l" node="t7rMogLtIc" resolve="getUnitNameFromPath" />
              <node concept="37vLTw" id="4a8JajkM8CY" role="37wK5m">
                <ref role="3cqZAo" node="4a8JajkM8CU" resolve="file" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7HmzdkqYiJ1" role="3cqZAp">
          <node concept="3cpWsn" id="7HmzdkqYiJ2" role="3cpWs9">
            <property role="TrG5h" value="contextRepository" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7HmzdkqYiJ3" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2YIFZM" id="7HmzdkqYiJ4" role="33vP2m">
              <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
              <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HmzdkqYiJ5" role="3cqZAp">
          <node concept="2OqwBi" id="7HmzdkqYiJ6" role="3clFbG">
            <node concept="2OqwBi" id="7HmzdkqYiJ7" role="2Oq$k0">
              <node concept="2ShNRf" id="7HmzdkqYiJ8" role="2Oq$k0">
                <node concept="1pGfFk" id="7HmzdkqYiJ9" role="2ShVmc">
                  <ref role="37wK5l" to="fwk:~DefaultTraceInfoProvider.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="DefaultTraceInfoProvider" />
                  <node concept="37vLTw" id="7HmzdkqYiJa" role="37wK5m">
                    <ref role="3cqZAo" node="7HmzdkqYiJ2" resolve="contextRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7HmzdkqYiJb" role="2OqNvi">
                <ref role="37wK5l" to="fwk:~TraceInfoProvider.debugInfo(java.lang.String):java.util.stream.Stream" resolve="debugInfo" />
                <node concept="2OqwBi" id="3I3e3C4uxBC" role="37wK5m">
                  <node concept="37vLTw" id="3I3e3C4uxmU" role="2Oq$k0">
                    <ref role="3cqZAo" node="4a8JajkM8BP" resolve="unitName" />
                  </node>
                  <node concept="liA8E" id="3I3e3C4uydQ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int,int):java.lang.String" resolve="substring" />
                    <node concept="3cmrfG" id="3I3e3C4uyi8" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="3I3e3C4uzla" role="37wK5m">
                      <node concept="37vLTw" id="3I3e3C4uz0G" role="2Oq$k0">
                        <ref role="3cqZAo" node="4a8JajkM8BP" resolve="unitName" />
                      </node>
                      <node concept="liA8E" id="3I3e3C4u$0M" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.lastIndexOf(int):int" resolve="lastIndexOf" />
                        <node concept="1Xhbcc" id="3I3e3C4u$5r" role="37wK5m">
                          <property role="1XhdNS" value="." />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7HmzdkqYiJc" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.forEach(java.util.function.Consumer):void" resolve="forEach" />
              <node concept="1bVj0M" id="7HmzdkqYiJd" role="37wK5m">
                <node concept="3clFbS" id="7HmzdkqYiJe" role="1bW5cS">
                  <node concept="1DcWWT" id="7HmzdkqYiJf" role="3cqZAp">
                    <node concept="3clFbS" id="7HmzdkqYiJg" role="2LFqv$">
                      <node concept="3cpWs8" id="7HmzdkqYiJh" role="3cqZAp">
                        <node concept="3cpWsn" id="7HmzdkqYiJi" role="3cpWs9">
                          <property role="TrG5h" value="resolved" />
                          <node concept="3uibUv" id="7HmzdkqYiJj" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2OqwBi" id="7HmzdkqYiJk" role="33vP2m">
                            <node concept="37vLTw" id="7HmzdkqYiJl" role="2Oq$k0">
                              <ref role="3cqZAo" node="7HmzdkqYiJy" resolve="np" />
                            </node>
                            <node concept="liA8E" id="7HmzdkqYiJm" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                              <node concept="37vLTw" id="7HmzdkqYiJn" role="37wK5m">
                                <ref role="3cqZAo" node="7HmzdkqYiJ2" resolve="contextRepository" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7HmzdkqYiJo" role="3cqZAp">
                        <node concept="3clFbS" id="7HmzdkqYiJp" role="3clFbx">
                          <node concept="3clFbF" id="7HmzdkqYiJq" role="3cqZAp">
                            <node concept="2OqwBi" id="7HmzdkqYiJr" role="3clFbG">
                              <node concept="37vLTw" id="7HmzdkqYiJs" role="2Oq$k0">
                                <ref role="3cqZAo" node="4a8JajkM8BC" resolve="originalNodes" />
                              </node>
                              <node concept="TSZUe" id="7HmzdkqYiJt" role="2OqNvi">
                                <node concept="37vLTw" id="7HmzdkqYiJu" role="25WWJ7">
                                  <ref role="3cqZAo" node="7HmzdkqYiJi" resolve="resolved" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="7HmzdkqYiJv" role="3clFbw">
                          <node concept="10Nm6u" id="7HmzdkqYiJw" role="3uHU7w" />
                          <node concept="37vLTw" id="7HmzdkqYiJx" role="3uHU7B">
                            <ref role="3cqZAo" node="7HmzdkqYiJi" resolve="resolved" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="7HmzdkqYiJy" role="1Duv9x">
                      <property role="TrG5h" value="np" />
                      <node concept="3uibUv" id="7HmzdkqYiJz" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7HmzdkqYiJ$" role="1DdaDG">
                      <node concept="37vLTw" id="7HmzdkqYiJ_" role="2Oq$k0">
                        <ref role="3cqZAo" node="7HmzdkqYiJC" resolve="di" />
                      </node>
                      <node concept="liA8E" id="7HmzdkqYiJA" role="2OqNvi">
                        <ref role="37wK5l" to="fwk:~DebugInfo.getTracedNodesForPosition(java.lang.String,int):java.util.List" resolve="getTracedNodesForPosition" />
                        <node concept="37vLTw" id="723GTU77dU9" role="37wK5m">
                          <ref role="3cqZAo" node="4a8JajkM8BK" resolve="fileName" />
                        </node>
                        <node concept="37vLTw" id="7HmzdkqYiJB" role="37wK5m">
                          <ref role="3cqZAo" node="4a8JajkM8CW" resolve="line" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="7HmzdkqYiJC" role="1bW2Oz">
                  <property role="TrG5h" value="di" />
                  <node concept="3uibUv" id="7HmzdkqYiJD" role="1tU5fm">
                    <ref role="3uigEE" to="fwk:~DebugInfo" resolve="DebugInfo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4a8JajkM8CL" role="3cqZAp" />
        <node concept="3clFbF" id="4a8JajkM8CS" role="3cqZAp">
          <node concept="37vLTw" id="4a8JajkM8CT" role="3clFbG">
            <ref role="3cqZAo" node="4a8JajkM8BC" resolve="originalNodes" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4a8JajkM8Db" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
      </node>
      <node concept="NWlO9" id="4a8JajkMa7t" role="lGtFl">
        <property role="NWlVz" value="Returns all possible original nodes that can be traced to a certain file and line." />
      </node>
    </node>
    <node concept="2tJIrI" id="7HmzdkqVQcj" role="jymVt" />
  </node>
  <node concept="312cEu" id="4jq$txdS$m7">
    <property role="TrG5h" value="NodeUtils" />
    <node concept="3Tm1VV" id="4jq$txdS$m8" role="1B3o_S" />
    <node concept="2tJIrI" id="48FvRI$B4xN" role="jymVt" />
    <node concept="Wx3nA" id="48FvRI$AaqW" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="TrG5h" value="GENERATED_ARTEFACTS_FOLDER" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="48FvRI$A2sQ" role="1tU5fm" />
      <node concept="3Tm1VV" id="48FvRI$A6eb" role="1B3o_S" />
      <node concept="Xl_RD" id="48FvRI$A4nq" role="33vP2m">
        <property role="Xl_RC" value="generated_artefacts" />
      </node>
    </node>
    <node concept="2tJIrI" id="7U6Ee$b8z9i" role="jymVt" />
    <node concept="2YIFZL" id="3ccRFHLez5F" role="jymVt">
      <property role="TrG5h" value="extractUnitName" />
      <property role="DiZV1" value="false" />
      <node concept="17QB3L" id="18pUPeO7giN" role="3clF45" />
      <node concept="37vLTG" id="18pUPeO7giO" role="3clF46">
        <property role="TrG5h" value="fullQualifiedFileName" />
        <node concept="17QB3L" id="18pUPeO7giP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="18pUPeO7giS" role="3clF46">
        <property role="TrG5h" value="folderName" />
        <node concept="17QB3L" id="18pUPeO7giU" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="18pUPeO7giM" role="3clF47">
        <node concept="3cpWs8" id="18pUPeO7gki" role="3cqZAp">
          <node concept="3cpWsn" id="18pUPeO7gkj" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="18pUPeO7gkk" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="18pUPeO7giV" role="3cqZAp">
          <node concept="3cpWsn" id="18pUPeO7giW" role="3cpWs9">
            <property role="TrG5h" value="startPos" />
            <node concept="10Oyi0" id="18pUPeO7giX" role="1tU5fm" />
            <node concept="2OqwBi" id="18pUPeO7giY" role="33vP2m">
              <node concept="37vLTw" id="18pUPeO7giZ" role="2Oq$k0">
                <ref role="3cqZAo" node="18pUPeO7giO" resolve="fullQualifiedFileName" />
              </node>
              <node concept="liA8E" id="18pUPeO7gj0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String):int" resolve="lastIndexOf" />
                <node concept="37vLTw" id="18pUPeO7gkr" role="37wK5m">
                  <ref role="3cqZAo" node="18pUPeO7giS" resolve="folderName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="18pUPeO7gj9" role="3cqZAp">
          <node concept="3clFbS" id="18pUPeO7gja" role="3clFbx">
            <node concept="3cpWs8" id="1UfP5ow0FxA" role="3cqZAp">
              <node concept="3cpWsn" id="1UfP5ow0FxB" role="3cpWs9">
                <property role="TrG5h" value="tmp" />
                <node concept="17QB3L" id="1UfP5ow0Hcp" role="1tU5fm" />
                <node concept="2OqwBi" id="1UfP5ow0FxC" role="33vP2m">
                  <node concept="37vLTw" id="1UfP5ow0FxD" role="2Oq$k0">
                    <ref role="3cqZAo" node="18pUPeO7giO" resolve="fullQualifiedFileName" />
                  </node>
                  <node concept="liA8E" id="1UfP5ow0FxE" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int):java.lang.String" resolve="substring" />
                    <node concept="3cpWs3" id="1UfP5ow0FxF" role="37wK5m">
                      <node concept="37vLTw" id="1UfP5ow0FxG" role="3uHU7B">
                        <ref role="3cqZAo" node="18pUPeO7giW" resolve="startPos" />
                      </node>
                      <node concept="2OqwBi" id="1UfP5ow0FxH" role="3uHU7w">
                        <node concept="37vLTw" id="1UfP5ow0FxI" role="2Oq$k0">
                          <ref role="3cqZAo" node="18pUPeO7giS" resolve="folderName" />
                        </node>
                        <node concept="liA8E" id="1UfP5ow0FxJ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="55eOZdvWiQ2" role="3cqZAp">
              <node concept="3SKdUq" id="55eOZdvWjyg" role="3SKWNk">
                <property role="3SKdUp" value="under windows we have both slashes in path" />
              </node>
            </node>
            <node concept="3clFbF" id="1UfP5ow0Gnd" role="3cqZAp">
              <node concept="37vLTI" id="1UfP5ow0GHo" role="3clFbG">
                <node concept="37vLTw" id="1UfP5ow0Gnc" role="37vLTJ">
                  <ref role="3cqZAo" node="1UfP5ow0FxB" resolve="tmp" />
                </node>
                <node concept="2OqwBi" id="1UfP5ow0GIV" role="37vLTx">
                  <node concept="37vLTw" id="1UfP5ow0GIW" role="2Oq$k0">
                    <ref role="3cqZAo" node="1UfP5ow0FxB" resolve="tmp" />
                  </node>
                  <node concept="liA8E" id="1UfP5ow0GIX" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String):java.lang.String" resolve="replaceAll" />
                    <node concept="Xl_RD" id="1UfP5ow0GLq" role="37wK5m">
                      <property role="Xl_RC" value="\\\\" />
                    </node>
                    <node concept="Xl_RD" id="1UfP5ow0GIZ" role="37wK5m">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="18pUPeO7gjb" role="3cqZAp">
              <node concept="37vLTI" id="18pUPeO7gjc" role="3clFbG">
                <node concept="2OqwBi" id="18pUPeO7gjd" role="37vLTx">
                  <node concept="37vLTw" id="1UfP5ow0FxK" role="2Oq$k0">
                    <ref role="3cqZAo" node="1UfP5ow0FxB" resolve="tmp" />
                  </node>
                  <node concept="liA8E" id="18pUPeO7gjk" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String):java.lang.String" resolve="replaceAll" />
                    <node concept="Xl_RD" id="1UfP5ow0GP8" role="37wK5m">
                      <property role="Xl_RC" value="/" />
                    </node>
                    <node concept="Xl_RD" id="18pUPeO7gjm" role="37wK5m">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="18pUPeO7gjn" role="37vLTJ">
                  <ref role="3cqZAo" node="18pUPeO7giO" resolve="fullQualifiedFileName" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="18pUPeO7gjo" role="3cqZAp">
              <node concept="37vLTI" id="18pUPeO7gjp" role="3clFbG">
                <node concept="2OqwBi" id="18pUPeO7gjq" role="37vLTx">
                  <node concept="37vLTw" id="18pUPeO7gjr" role="2Oq$k0">
                    <ref role="3cqZAo" node="18pUPeO7giO" resolve="fullQualifiedFileName" />
                  </node>
                  <node concept="liA8E" id="18pUPeO7gjs" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int,int):java.lang.String" resolve="substring" />
                    <node concept="3cmrfG" id="18pUPeO7gjt" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cpWsd" id="18pUPeO7gju" role="37wK5m">
                      <node concept="3cmrfG" id="18pUPeO7gjv" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="2OqwBi" id="18pUPeO7gjw" role="3uHU7B">
                        <node concept="37vLTw" id="18pUPeO7gjx" role="2Oq$k0">
                          <ref role="3cqZAo" node="18pUPeO7giO" resolve="fullQualifiedFileName" />
                        </node>
                        <node concept="liA8E" id="18pUPeO7gjy" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="18pUPeO7gkG" role="37vLTJ">
                  <ref role="3cqZAo" node="18pUPeO7gkj" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="18pUPeO7gj$" role="3clFbw">
            <node concept="37vLTw" id="18pUPeO7gj_" role="3uHU7B">
              <ref role="3cqZAo" node="18pUPeO7giW" resolve="startPos" />
            </node>
            <node concept="3cmrfG" id="18pUPeO7gjA" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="9aQIb" id="18pUPeO7gk5" role="9aQIa">
            <node concept="3clFbS" id="18pUPeO7gk6" role="9aQI4">
              <node concept="3clFbF" id="18pUPeO7gk7" role="3cqZAp">
                <node concept="37vLTI" id="18pUPeO7gk8" role="3clFbG">
                  <node concept="37vLTw" id="18pUPeO7gk9" role="37vLTx">
                    <ref role="3cqZAo" node="18pUPeO7giO" resolve="fullQualifiedFileName" />
                  </node>
                  <node concept="37vLTw" id="18pUPeO7gkI" role="37vLTJ">
                    <ref role="3cqZAo" node="18pUPeO7gkj" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="18pUPeO7gkb" role="3cqZAp">
          <node concept="37vLTw" id="18pUPeO7gkJ" role="3cqZAk">
            <ref role="3cqZAo" node="18pUPeO7gkj" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="68pU13UVjBR" role="1B3o_S" />
      <node concept="NWlO9" id="68pU13UVm1b" role="lGtFl">
        <property role="NWlVz" value="Returns the full unit name from a full path -- e.g. a.b.file from /Users/.../source_gen/a/b/file.c" />
      </node>
    </node>
    <node concept="2tJIrI" id="7U6Ee$b8zRN" role="jymVt" />
    <node concept="2YIFZL" id="t7rMogLtIc" role="jymVt">
      <property role="TrG5h" value="getUnitNameFromPath" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="t7rMogLtIf" role="3clF47">
        <node concept="3clFbJ" id="t7rMogLEXj" role="3cqZAp">
          <node concept="3clFbS" id="t7rMogLEXk" role="3clFbx">
            <node concept="3cpWs6" id="t7rMogLF92" role="3cqZAp">
              <node concept="1rXfSq" id="t7rMogLFhI" role="3cqZAk">
                <ref role="37wK5l" node="3ccRFHLez5X" resolve="getUnitName" />
                <node concept="37vLTw" id="t7rMogLFrE" role="37wK5m">
                  <ref role="3cqZAo" node="t7rMogLtSD" resolve="path" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="t7rMogL$rN" role="3clFbw">
            <node concept="2ShNRf" id="t7rMogLtT_" role="2Oq$k0">
              <node concept="1pGfFk" id="t7rMogLzVN" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="t7rMogL$1G" role="37wK5m">
                  <ref role="3cqZAo" node="t7rMogLtSD" resolve="path" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="t7rMogLB3D" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.isAbsolute():boolean" resolve="isAbsolute" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="t7rMogLF$K" role="3cqZAp" />
        <node concept="3SKdUt" id="t7rMogLFNa" role="3cqZAp">
          <node concept="3SKdUq" id="t7rMogLFW2" role="3SKWNk">
            <property role="3SKdUp" value="the path is relative" />
          </node>
        </node>
        <node concept="3SKdUt" id="55eOZdvWrGE" role="3cqZAp">
          <node concept="3SKdUq" id="55eOZdvWrGF" role="3SKWNk">
            <property role="3SKdUp" value="under windows we have both slashes in path" />
          </node>
        </node>
        <node concept="3cpWs8" id="t7rMogLIXs" role="3cqZAp">
          <node concept="3cpWsn" id="t7rMogLIXv" role="3cpWs9">
            <property role="TrG5h" value="tmp" />
            <node concept="17QB3L" id="t7rMogLIXq" role="1tU5fm" />
            <node concept="2OqwBi" id="t7rMogLJ$Z" role="33vP2m">
              <node concept="liA8E" id="t7rMogLJ_0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String):java.lang.String" resolve="replaceAll" />
                <node concept="Xl_RD" id="1UfP5ow0CIt" role="37wK5m">
                  <property role="Xl_RC" value="\\\\" />
                </node>
                <node concept="Xl_RD" id="t7rMogLJ_2" role="37wK5m">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
              <node concept="37vLTw" id="t7rMogLJ_3" role="2Oq$k0">
                <ref role="3cqZAo" node="t7rMogLtSD" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1UfP5ow0DMq" role="3cqZAp">
          <node concept="37vLTI" id="1UfP5ow0E7r" role="3clFbG">
            <node concept="2OqwBi" id="1UfP5ow0EoI" role="37vLTx">
              <node concept="37vLTw" id="1UfP5ow0Eik" role="2Oq$k0">
                <ref role="3cqZAo" node="t7rMogLtSD" resolve="path" />
              </node>
              <node concept="liA8E" id="1UfP5ow0FeI" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String):java.lang.String" resolve="replaceAll" />
                <node concept="Xl_RD" id="1UfP5ow0FgE" role="37wK5m">
                  <property role="Xl_RC" value="/" />
                </node>
                <node concept="Xl_RD" id="1UfP5ow0Fmu" role="37wK5m">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1UfP5ow0DMp" role="37vLTJ">
              <ref role="3cqZAo" node="t7rMogLIXv" resolve="tmp" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="t7rMogLKcP" role="3cqZAp">
          <node concept="3cpWsn" id="t7rMogLKcS" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="17QB3L" id="t7rMogLKcN" role="1tU5fm" />
            <node concept="2OqwBi" id="t7rMogLKIN" role="33vP2m">
              <node concept="37vLTw" id="t7rMogLKxg" role="2Oq$k0">
                <ref role="3cqZAo" node="t7rMogLIXv" resolve="tmp" />
              </node>
              <node concept="liA8E" id="t7rMogLNfN" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int):java.lang.String" resolve="substring" />
                <node concept="3cmrfG" id="t7rMogLO7E" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cpWsd" id="t7rMogLNnR" role="37wK5m">
                  <node concept="3cmrfG" id="t7rMogLNnS" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="t7rMogLNnT" role="3uHU7B">
                    <node concept="37vLTw" id="t7rMogLNxz" role="2Oq$k0">
                      <ref role="3cqZAo" node="t7rMogLtSD" resolve="path" />
                    </node>
                    <node concept="liA8E" id="t7rMogLNnV" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="t7rMogLOzM" role="3cqZAp">
          <node concept="37vLTw" id="t7rMogLPat" role="3cqZAk">
            <ref role="3cqZAo" node="t7rMogLKcS" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="t7rMogLtCY" role="1B3o_S" />
      <node concept="17QB3L" id="t7rMogLtIa" role="3clF45" />
      <node concept="37vLTG" id="t7rMogLtSD" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="t7rMogLtSC" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="t7rMogLtNr" role="jymVt" />
    <node concept="2YIFZL" id="3ccRFHLez5X" role="jymVt">
      <property role="TrG5h" value="getUnitName" />
      <property role="DiZV1" value="false" />
      <node concept="17QB3L" id="6Zad41Tri8a" role="3clF45" />
      <node concept="37vLTG" id="6Zad41Tri9h" role="3clF46">
        <property role="TrG5h" value="fullQualifiedFileName" />
        <node concept="17QB3L" id="6Zad41Tri9i" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6Zad41Tri8c" role="3clF47">
        <node concept="3clFbJ" id="7kyw7pTATFL" role="3cqZAp">
          <node concept="3eNFk2" id="GSc6LT5M5D" role="3eNLev">
            <node concept="3clFbS" id="GSc6LT5M5F" role="3eOfB_">
              <node concept="YS8fn" id="GSc6LT5M6h" role="3cqZAp">
                <node concept="2ShNRf" id="GSc6LT5M6i" role="YScLw">
                  <node concept="1pGfFk" id="GSc6LT5M6j" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="GSc6LT5M6k" role="37wK5m">
                      <node concept="Xl_RD" id="GSc6LT5M6l" role="3uHU7w">
                        <property role="Xl_RC" value=" should reside in a source_gen or classes_gen folder" />
                      </node>
                      <node concept="37vLTw" id="GSc6LT5M6m" role="3uHU7B">
                        <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="48FvRI$Aj47" role="3eO9$A">
              <node concept="1Wc70l" id="GSc6LT5WsV" role="3uHU7B">
                <node concept="3fqX7Q" id="GSc6LT5WsX" role="3uHU7B">
                  <node concept="2OqwBi" id="GSc6LT5WsY" role="3fr31v">
                    <node concept="37vLTw" id="GSc6LT5WsZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                    </node>
                    <node concept="liA8E" id="GSc6LT5Wt0" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                      <node concept="Xl_RD" id="GSc6LT5Wt1" role="37wK5m">
                        <property role="Xl_RC" value="source_gen" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="GSc6LT5Wtd" role="3uHU7w">
                  <node concept="2OqwBi" id="GSc6LT5Wte" role="3fr31v">
                    <node concept="37vLTw" id="GSc6LT5Wtf" role="2Oq$k0">
                      <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                    </node>
                    <node concept="liA8E" id="GSc6LT5Wtg" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                      <node concept="Xl_RD" id="GSc6LT5Wth" role="37wK5m">
                        <property role="Xl_RC" value="classes_gen" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="48FvRI$Ajfe" role="3uHU7w">
                <node concept="2OqwBi" id="48FvRI$Ajff" role="3fr31v">
                  <node concept="37vLTw" id="48FvRI$Ajfg" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                  </node>
                  <node concept="liA8E" id="48FvRI$Ajfh" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                    <node concept="37vLTw" id="7HmzdkqYhEr" role="37wK5m">
                      <ref role="3cqZAo" node="48FvRI$AaqW" resolve="GENERATED_ARTEFACTS_FOLDER" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7kyw7pTATFM" role="3clFbx">
            <node concept="YS8fn" id="7kyw7pTATGD" role="3cqZAp">
              <node concept="2ShNRf" id="7kyw7pTATGE" role="YScLw">
                <node concept="1pGfFk" id="7kyw7pTATGF" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="3cpWs3" id="7kyw7pTATGG" role="37wK5m">
                    <node concept="Xl_RD" id="7kyw7pTATGH" role="3uHU7w">
                      <property role="Xl_RC" value=" should be a .c or .h file" />
                    </node>
                    <node concept="37vLTw" id="7kyw7pTATGI" role="3uHU7B">
                      <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7kyw7pTATG2" role="3clFbw">
            <node concept="1eOMI4" id="6Vl$BjAIu_M" role="3fr31v">
              <node concept="22lmx$" id="6Vl$BjAIu_N" role="1eOMHV">
                <node concept="2OqwBi" id="6Vl$BjAIu_O" role="3uHU7w">
                  <node concept="37vLTw" id="6Vl$BjAIu_P" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                  </node>
                  <node concept="liA8E" id="6Vl$BjAIu_Q" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                    <node concept="Xl_RD" id="6Vl$BjAIu_R" role="37wK5m">
                      <property role="Xl_RC" value=".h" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vl$BjAIu_S" role="3uHU7B">
                  <node concept="37vLTw" id="6Vl$BjAIu_T" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                  </node>
                  <node concept="liA8E" id="6Vl$BjAIu_U" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                    <node concept="Xl_RD" id="6Vl$BjAIu_V" role="37wK5m">
                      <property role="Xl_RC" value=".c" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6Zad41Tri8d" role="3cqZAp">
          <node concept="3cpWsn" id="6Zad41Tri8e" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="6Zad41Tri8f" role="1tU5fm" />
            <node concept="10Nm6u" id="6Zad41Tri8g" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="18pUPeO7f_X" role="3cqZAp">
          <node concept="3clFbS" id="18pUPeO7f_Y" role="3clFbx">
            <node concept="3clFbF" id="3ccRFHLez68" role="3cqZAp">
              <node concept="37vLTI" id="3ccRFHLez6s" role="3clFbG">
                <node concept="3$87h9" id="3ccRFHLez6v" role="37vLTx">
                  <ref role="37wK5l" node="3ccRFHLez5F" resolve="extractUnitName" />
                  <node concept="37vLTw" id="3ccRFHLez6w" role="37wK5m">
                    <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                  </node>
                  <node concept="Xl_RD" id="3ccRFHLez6y" role="37wK5m">
                    <property role="Xl_RC" value="source_gen" />
                  </node>
                </node>
                <node concept="37vLTw" id="3ccRFHLez69" role="37vLTJ">
                  <ref role="3cqZAo" node="6Zad41Tri8e" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="18pUPeO7fAo" role="3clFbw">
            <node concept="37vLTw" id="18pUPeO7fA3" role="2Oq$k0">
              <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
            </node>
            <node concept="liA8E" id="18pUPeO7fL6" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
              <node concept="Xl_RD" id="18pUPeO7ghE" role="37wK5m">
                <property role="Xl_RC" value="source_gen" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="18pUPeO7fL8" role="3eNLev">
            <node concept="3clFbS" id="18pUPeO7fLa" role="3eOfB_">
              <node concept="3clFbF" id="3ccRFHLez6$" role="3cqZAp">
                <node concept="37vLTI" id="3ccRFHLez6S" role="3clFbG">
                  <node concept="3$87h9" id="3ccRFHLez6V" role="37vLTx">
                    <ref role="37wK5l" node="3ccRFHLez5F" resolve="extractUnitName" />
                    <node concept="37vLTw" id="3ccRFHLez6W" role="37wK5m">
                      <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                    </node>
                    <node concept="Xl_RD" id="3ccRFHLez6Y" role="37wK5m">
                      <property role="Xl_RC" value="classes_gen" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3ccRFHLez6_" role="37vLTJ">
                    <ref role="3cqZAo" node="6Zad41Tri8e" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="18pUPeO7gi8" role="3eO9$A">
              <node concept="37vLTw" id="18pUPeO7gi9" role="2Oq$k0">
                <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
              </node>
              <node concept="liA8E" id="18pUPeO7gia" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                <node concept="Xl_RD" id="18pUPeO7gib" role="37wK5m">
                  <property role="Xl_RC" value="classes_gen" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="48FvRI$AqEB" role="3eNLev">
            <node concept="3clFbS" id="48FvRI$AqED" role="3eOfB_">
              <node concept="3clFbF" id="48FvRI$Ay1w" role="3cqZAp">
                <node concept="37vLTI" id="48FvRI$Ay1x" role="3clFbG">
                  <node concept="3$87h9" id="48FvRI$Ay1y" role="37vLTx">
                    <ref role="37wK5l" node="3ccRFHLez5F" resolve="extractUnitName" />
                    <node concept="37vLTw" id="48FvRI$Ay1z" role="37wK5m">
                      <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
                    </node>
                    <node concept="37vLTw" id="7HmzdkqYh4G" role="37wK5m">
                      <ref role="3cqZAo" node="48FvRI$AaqW" resolve="GENERATED_ARTEFACTS_FOLDER" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="48FvRI$Ay1_" role="37vLTJ">
                    <ref role="3cqZAo" node="6Zad41Tri8e" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="48FvRI$Ar1m" role="3eO9$A">
              <node concept="37vLTw" id="48FvRI$Ar1n" role="2Oq$k0">
                <ref role="3cqZAo" node="6Zad41Tri9h" resolve="fullQualifiedFileName" />
              </node>
              <node concept="liA8E" id="48FvRI$Ar1o" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
                <node concept="37vLTw" id="7HmzdkqYgV8" role="37wK5m">
                  <ref role="3cqZAo" node="48FvRI$AaqW" resolve="GENERATED_ARTEFACTS_FOLDER" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6Zad41Tri9f" role="3cqZAp">
          <node concept="37vLTw" id="6Zad41Tri9g" role="3cqZAk">
            <ref role="3cqZAo" node="6Zad41Tri8e" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7kyw7pTAAOO" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
      </node>
      <node concept="3Tm1VV" id="7kyw7pTAAPF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7U6Ee$b8$iq" role="jymVt" />
    <node concept="2YIFZL" id="3ccRFHLe$g7" role="jymVt">
      <property role="TrG5h" value="getFileName" />
      <property role="DiZV1" value="false" />
      <node concept="17QB3L" id="6Zad41Tri9$" role="3clF45" />
      <node concept="37vLTG" id="6Zad41Tria2" role="3clF46">
        <property role="TrG5h" value="fullQualifiedName" />
        <node concept="17QB3L" id="6Zad41Tria3" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6Zad41Tri9A" role="3clF47">
        <node concept="3clFbJ" id="7kyw7pTBiWR" role="3cqZAp">
          <node concept="3clFbS" id="7kyw7pTBiWS" role="3clFbx">
            <node concept="YS8fn" id="7kyw7pTBiXa" role="3cqZAp">
              <node concept="2ShNRf" id="7kyw7pTBiXc" role="YScLw">
                <node concept="1pGfFk" id="7kyw7pTBiXe" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="3cpWs3" id="7kyw7pTBiXk" role="37wK5m">
                    <node concept="Xl_RD" id="7kyw7pTBiXq" role="3uHU7w">
                      <property role="Xl_RC" value=" should end with .c or with .h" />
                    </node>
                    <node concept="37vLTw" id="7kyw7pTBiXf" role="3uHU7B">
                      <ref role="3cqZAo" node="6Zad41Tria2" resolve="fullQualifiedName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7kyw7pTBiX8" role="3clFbw">
            <node concept="1eOMI4" id="6Vl$BjAIu_Y" role="3fr31v">
              <node concept="22lmx$" id="6Vl$BjAIu_Z" role="1eOMHV">
                <node concept="2OqwBi" id="6Vl$BjAIuA0" role="3uHU7w">
                  <node concept="37vLTw" id="6Vl$BjAIuA1" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Zad41Tria2" resolve="fullQualifiedName" />
                  </node>
                  <node concept="liA8E" id="6Vl$BjAIuA2" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                    <node concept="Xl_RD" id="6Vl$BjAIuA3" role="37wK5m">
                      <property role="Xl_RC" value=".h" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vl$BjAIuA4" role="3uHU7B">
                  <node concept="37vLTw" id="6Vl$BjAIuA5" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Zad41Tria2" resolve="fullQualifiedName" />
                  </node>
                  <node concept="liA8E" id="6Vl$BjAIuA6" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                    <node concept="Xl_RD" id="6Vl$BjAIuA7" role="37wK5m">
                      <property role="Xl_RC" value=".c" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6Zad41Tri9B" role="3cqZAp">
          <node concept="3cpWsn" id="6Zad41Tri9C" role="3cpWs9">
            <property role="TrG5h" value="winStartPos" />
            <node concept="10Oyi0" id="6Zad41Tri9D" role="1tU5fm" />
            <node concept="2OqwBi" id="6Zad41Tri9E" role="33vP2m">
              <node concept="liA8E" id="6Zad41Tri9F" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.lastIndexOf(int):int" resolve="lastIndexOf" />
                <node concept="1Xhbcc" id="6Zad41Tri9G" role="37wK5m">
                  <property role="1XhdNS" value="\\" />
                </node>
              </node>
              <node concept="37vLTw" id="6Zad41Tri9H" role="2Oq$k0">
                <ref role="3cqZAo" node="6Zad41Tria2" resolve="fullQualifiedName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7kyw7pTAANN" role="3cqZAp">
          <node concept="3cpWsn" id="7kyw7pTAANO" role="3cpWs9">
            <property role="TrG5h" value="unixStartPos" />
            <node concept="10Oyi0" id="7kyw7pTAANP" role="1tU5fm" />
            <node concept="2OqwBi" id="7kyw7pTAANQ" role="33vP2m">
              <node concept="liA8E" id="7kyw7pTAANR" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.lastIndexOf(int):int" resolve="lastIndexOf" />
                <node concept="1Xhbcc" id="7kyw7pTAANS" role="37wK5m">
                  <property role="1XhdNS" value="/" />
                </node>
              </node>
              <node concept="37vLTw" id="7kyw7pTAANT" role="2Oq$k0">
                <ref role="3cqZAo" node="6Zad41Tria2" resolve="fullQualifiedName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6Zad41Tri9I" role="3cqZAp">
          <node concept="3clFbS" id="6Zad41Tri9J" role="3clFbx">
            <node concept="3cpWs6" id="2AZbPfOTTlM" role="3cqZAp">
              <node concept="2OqwBi" id="2AZbPfOTTlQ" role="3cqZAk">
                <node concept="37vLTw" id="2AZbPfOTTlR" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Zad41Tria2" resolve="fullQualifiedName" />
                </node>
                <node concept="liA8E" id="2AZbPfOTTlS" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.substring(int):java.lang.String" resolve="substring" />
                  <node concept="3cpWs3" id="2AZbPfOTTlT" role="37wK5m">
                    <node concept="3cmrfG" id="2AZbPfOTTlU" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="2AZbPfOTTlV" role="3uHU7B">
                      <ref role="3cqZAo" node="6Zad41Tri9C" resolve="winStartPos" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="7kyw7pTAAP8" role="3clFbw">
            <node concept="37vLTw" id="7kyw7pTAAP9" role="3uHU7B">
              <ref role="3cqZAo" node="6Zad41Tri9C" resolve="winStartPos" />
            </node>
            <node concept="3cmrfG" id="7kyw7pTAAPa" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eNFk2" id="7kyw7pTAANW" role="3eNLev">
            <node concept="2d3UOw" id="7kyw7pTAAPb" role="3eO9$A">
              <node concept="37vLTw" id="7kyw7pTAAPc" role="3uHU7B">
                <ref role="3cqZAo" node="7kyw7pTAANO" resolve="unixStartPos" />
              </node>
              <node concept="3cmrfG" id="7kyw7pTAAPd" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="7kyw7pTAANY" role="3eOfB_">
              <node concept="3cpWs6" id="2AZbPfOTY$7" role="3cqZAp">
                <node concept="2OqwBi" id="7kyw7pTAAOx" role="3cqZAk">
                  <node concept="37vLTw" id="7kyw7pTAAOy" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Zad41Tria2" resolve="fullQualifiedName" />
                  </node>
                  <node concept="liA8E" id="7kyw7pTAAOz" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int):java.lang.String" resolve="substring" />
                    <node concept="3cpWs3" id="7kyw7pTAAO$" role="37wK5m">
                      <node concept="3cmrfG" id="7kyw7pTAAO_" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="7kyw7pTAAOB" role="3uHU7B">
                        <ref role="3cqZAo" node="7kyw7pTAANO" resolve="unixStartPos" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7kyw7pTAAOC" role="9aQIa">
            <node concept="3clFbS" id="7kyw7pTAAOD" role="9aQI4">
              <node concept="3cpWs6" id="2AZbPfOU2kJ" role="3cqZAp">
                <node concept="37vLTw" id="2AZbPfOU4tp" role="3cqZAk">
                  <ref role="3cqZAo" node="6Zad41Tria2" resolve="fullQualifiedName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7kyw7pTAANG" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
      </node>
      <node concept="3Tm1VV" id="6Zad41Tri9_" role="1B3o_S" />
    </node>
    <node concept="NWlO9" id="55eOZdvWZ1R" role="lGtFl">
      <property role="NWlVz" value="General utility methods." />
    </node>
  </node>
</model>

