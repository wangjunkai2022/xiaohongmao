package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.util.q;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ObjectNode extends ContainerNode<ObjectNode> implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private static final long f15562e = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final Map<String, com.fasterxml.jackson.databind.e> f15563d;

    public ObjectNode(JsonNodeFactory jsonNodeFactory) {
        super(jsonNodeFactory);
        this.f15563d = new LinkedHashMap();
    }

    @Override // com.fasterxml.jackson.databind.e
    protected com.fasterxml.jackson.databind.e a(com.fasterxml.jackson.core.e eVar) {
        return get(eVar.n());
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.START_OBJECT;
    }

    protected boolean e(ObjectNode objectNode) {
        return this.f15563d.equals(objectNode.f15563d);
    }

    @Override // com.fasterxml.jackson.databind.e
    public Iterator<com.fasterxml.jackson.databind.e> elements() {
        return this.f15563d.values().iterator();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    @Override // com.fasterxml.jackson.databind.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(java.util.Comparator<com.fasterxml.jackson.databind.e> r5, com.fasterxml.jackson.databind.e r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.fasterxml.jackson.databind.node.ObjectNode
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            com.fasterxml.jackson.databind.node.ObjectNode r6 = (com.fasterxml.jackson.databind.node.ObjectNode) r6
            java.util.Map<java.lang.String, com.fasterxml.jackson.databind.e> r0 = r4.f15563d
            java.util.Map<java.lang.String, com.fasterxml.jackson.databind.e> r6 = r6.f15563d
            int r2 = r0.size()
            int r3 = r6.size()
            if (r3 == r2) goto L17
            return r1
        L17:
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L1f:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L44
            java.lang.Object r2 = r0.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            java.lang.Object r3 = r6.get(r3)
            com.fasterxml.jackson.databind.e r3 = (com.fasterxml.jackson.databind.e) r3
            if (r3 == 0) goto L43
            java.lang.Object r2 = r2.getValue()
            com.fasterxml.jackson.databind.e r2 = (com.fasterxml.jackson.databind.e) r2
            boolean r2 = r2.equals(r5, r3)
            if (r2 != 0) goto L1f
        L43:
            return r1
        L44:
            r5 = 1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.node.ObjectNode.equals(java.util.Comparator, com.fasterxml.jackson.databind.e):boolean");
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public Iterator<String> fieldNames() {
        return this.f15563d.keySet().iterator();
    }

    @Override // com.fasterxml.jackson.databind.e
    public Iterator<Map.Entry<String, com.fasterxml.jackson.databind.e>> fields() {
        return this.f15563d.entrySet().iterator();
    }

    @Override // com.fasterxml.jackson.databind.e
    public List<com.fasterxml.jackson.databind.e> findParents(String str, List<com.fasterxml.jackson.databind.e> list) {
        for (Map.Entry<String, com.fasterxml.jackson.databind.e> entry : this.f15563d.entrySet()) {
            if (str.equals(entry.getKey())) {
                if (list == null) {
                    list = new ArrayList<>();
                }
                list.add(this);
            } else {
                list = entry.getValue().findParents(str, list);
            }
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.e
    public com.fasterxml.jackson.databind.e findValue(String str) {
        for (Map.Entry<String, com.fasterxml.jackson.databind.e> entry : this.f15563d.entrySet()) {
            if (str.equals(entry.getKey())) {
                return entry.getValue();
            }
            com.fasterxml.jackson.databind.e findValue = entry.getValue().findValue(str);
            if (findValue != null) {
                return findValue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public List<com.fasterxml.jackson.databind.e> findValues(String str, List<com.fasterxml.jackson.databind.e> list) {
        for (Map.Entry<String, com.fasterxml.jackson.databind.e> entry : this.f15563d.entrySet()) {
            if (str.equals(entry.getKey())) {
                if (list == null) {
                    list = new ArrayList<>();
                }
                list.add(entry.getValue());
            } else {
                list = entry.getValue().findValues(str, list);
            }
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.e
    public List<String> findValuesAsText(String str, List<String> list) {
        for (Map.Entry<String, com.fasterxml.jackson.databind.e> entry : this.f15563d.entrySet()) {
            if (str.equals(entry.getKey())) {
                if (list == null) {
                    list = new ArrayList<>();
                }
                list.add(entry.getValue().asText());
            } else {
                list = entry.getValue().findValuesAsText(str, list);
            }
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public com.fasterxml.jackson.databind.e get(int i4) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public JsonNodeType getNodeType() {
        return JsonNodeType.OBJECT;
    }

    protected ObjectNode h(String str, com.fasterxml.jackson.databind.e eVar) {
        this.f15563d.put(str, eVar);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this.f15563d.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.f.a
    public boolean isEmpty(l lVar) {
        return this.f15563d.isEmpty();
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public final boolean isObject() {
        return true;
    }

    @Deprecated
    public com.fasterxml.jackson.databind.e put(String str, com.fasterxml.jackson.databind.e eVar) {
        if (eVar == null) {
            eVar = nullNode();
        }
        return this.f15563d.put(str, eVar);
    }

    @Deprecated
    public com.fasterxml.jackson.databind.e putAll(Map<String, ? extends com.fasterxml.jackson.databind.e> map) {
        return setAll(map);
    }

    public ArrayNode putArray(String str) {
        ArrayNode arrayNode = arrayNode();
        h(str, arrayNode);
        return arrayNode;
    }

    public com.fasterxml.jackson.databind.e putIfAbsent(String str, com.fasterxml.jackson.databind.e eVar) {
        if (eVar == null) {
            eVar = nullNode();
        }
        return this.f15563d.putIfAbsent(str, eVar);
    }

    public ObjectNode putNull(String str) {
        this.f15563d.put(str, nullNode());
        return this;
    }

    public ObjectNode putObject(String str) {
        ObjectNode objectNode = objectNode();
        h(str, objectNode);
        return objectNode;
    }

    public ObjectNode putPOJO(String str, Object obj) {
        return h(str, pojoNode(obj));
    }

    public ObjectNode putRawValue(String str, q qVar) {
        return h(str, rawValueNode(qVar));
    }

    public com.fasterxml.jackson.databind.e remove(String str) {
        return this.f15563d.remove(str);
    }

    public com.fasterxml.jackson.databind.e replace(String str, com.fasterxml.jackson.databind.e eVar) {
        if (eVar == null) {
            eVar = nullNode();
        }
        return this.f15563d.put(str, eVar);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.e
    public com.fasterxml.jackson.databind.e required(String str) {
        com.fasterxml.jackson.databind.e eVar = this.f15563d.get(str);
        return eVar != null ? eVar : (com.fasterxml.jackson.databind.e) b("No value for property '%s' of `ObjectNode`", str);
    }

    public ObjectNode retain(Collection<String> collection) {
        this.f15563d.keySet().retainAll(collection);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        boolean z9 = (lVar == null || lVar.isEnabled(SerializationFeature.WRITE_EMPTY_JSON_ARRAYS)) ? false : true;
        jsonGenerator.L1(this);
        for (Map.Entry<String, com.fasterxml.jackson.databind.e> entry : this.f15563d.entrySet()) {
            BaseJsonNode baseJsonNode = (BaseJsonNode) entry.getValue();
            if (!z9 || !baseJsonNode.isArray() || !baseJsonNode.isEmpty(lVar)) {
                jsonGenerator.V0(entry.getKey());
                baseJsonNode.serialize(jsonGenerator, lVar);
            }
        }
        jsonGenerator.S0();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public void serializeWithType(JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        boolean z9 = (lVar == null || lVar.isEnabled(SerializationFeature.WRITE_EMPTY_JSON_ARRAYS)) ? false : true;
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(this, JsonToken.START_OBJECT));
        for (Map.Entry<String, com.fasterxml.jackson.databind.e> entry : this.f15563d.entrySet()) {
            BaseJsonNode baseJsonNode = (BaseJsonNode) entry.getValue();
            if (!z9 || !baseJsonNode.isArray() || !baseJsonNode.isEmpty(lVar)) {
                jsonGenerator.V0(entry.getKey());
                baseJsonNode.serialize(jsonGenerator, lVar);
            }
        }
        fVar.v(jsonGenerator, o9);
    }

    public <T extends com.fasterxml.jackson.databind.e> T set(String str, com.fasterxml.jackson.databind.e eVar) {
        if (eVar == null) {
            eVar = nullNode();
        }
        this.f15563d.put(str, eVar);
        return this;
    }

    public <T extends com.fasterxml.jackson.databind.e> T setAll(Map<String, ? extends com.fasterxml.jackson.databind.e> map) {
        for (Map.Entry<String, ? extends com.fasterxml.jackson.databind.e> entry : map.entrySet()) {
            com.fasterxml.jackson.databind.e value = entry.getValue();
            if (value == null) {
                value = nullNode();
            }
            this.f15563d.put(entry.getKey(), value);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public int size() {
        return this.f15563d.size();
    }

    public <T extends com.fasterxml.jackson.databind.e> T without(String str) {
        this.f15563d.remove(str);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.e
    public ObjectNode deepCopy() {
        ObjectNode objectNode = new ObjectNode(this.f15540b);
        for (Map.Entry<String, com.fasterxml.jackson.databind.e> entry : this.f15563d.entrySet()) {
            objectNode.f15563d.put(entry.getKey(), entry.getValue().deepCopy());
        }
        return objectNode;
    }

    @Override // com.fasterxml.jackson.databind.e
    public ObjectNode findParent(String str) {
        for (Map.Entry<String, com.fasterxml.jackson.databind.e> entry : this.f15563d.entrySet()) {
            if (str.equals(entry.getKey())) {
                return this;
            }
            com.fasterxml.jackson.databind.e findParent = entry.getValue().findParent(str);
            if (findParent != null) {
                return (ObjectNode) findParent;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isEmpty() {
        return this.f15563d.isEmpty();
    }

    @Deprecated
    public com.fasterxml.jackson.databind.e putAll(ObjectNode objectNode) {
        return setAll(objectNode);
    }

    public ObjectNode remove(Collection<String> collection) {
        this.f15563d.keySet().removeAll(collection);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode
    public ObjectNode removeAll() {
        this.f15563d.clear();
        return this;
    }

    public ObjectNode retain(String... strArr) {
        return retain(Arrays.asList(strArr));
    }

    @Override // com.fasterxml.jackson.databind.e
    public ObjectNode with(String str) {
        com.fasterxml.jackson.databind.e eVar = this.f15563d.get(str);
        if (eVar != null) {
            if (eVar instanceof ObjectNode) {
                return (ObjectNode) eVar;
            }
            throw new UnsupportedOperationException("Property '" + str + "' has value that is not of type ObjectNode (but " + eVar.getClass().getName() + ")");
        }
        ObjectNode objectNode = objectNode();
        this.f15563d.put(str, objectNode);
        return objectNode;
    }

    @Override // com.fasterxml.jackson.databind.e
    public ArrayNode withArray(String str) {
        com.fasterxml.jackson.databind.e eVar = this.f15563d.get(str);
        if (eVar != null) {
            if (eVar instanceof ArrayNode) {
                return (ArrayNode) eVar;
            }
            throw new UnsupportedOperationException("Property '" + str + "' has value that is not of type ArrayNode (but " + eVar.getClass().getName() + ")");
        }
        ArrayNode arrayNode = arrayNode();
        this.f15563d.put(str, arrayNode);
        return arrayNode;
    }

    public <T extends com.fasterxml.jackson.databind.e> T without(Collection<String> collection) {
        this.f15563d.keySet().removeAll(collection);
        return this;
    }

    public ObjectNode(JsonNodeFactory jsonNodeFactory, Map<String, com.fasterxml.jackson.databind.e> map) {
        super(jsonNodeFactory);
        this.f15563d = map;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public com.fasterxml.jackson.databind.e get(String str) {
        return this.f15563d.get(str);
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public com.fasterxml.jackson.databind.e path(int i4) {
        return MissingNode.getInstance();
    }

    public ObjectNode put(String str, short s9) {
        return h(str, numberNode(s9));
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public com.fasterxml.jackson.databind.e path(String str) {
        com.fasterxml.jackson.databind.e eVar = this.f15563d.get(str);
        return eVar != null ? eVar : MissingNode.getInstance();
    }

    public ObjectNode put(String str, Short sh) {
        com.fasterxml.jackson.databind.e numberNode;
        if (sh == null) {
            numberNode = nullNode();
        } else {
            numberNode = numberNode(sh.shortValue());
        }
        return h(str, numberNode);
    }

    public <T extends com.fasterxml.jackson.databind.e> T setAll(ObjectNode objectNode) {
        this.f15563d.putAll(objectNode.f15563d);
        return this;
    }

    public ObjectNode put(String str, int i4) {
        return h(str, numberNode(i4));
    }

    public ObjectNode put(String str, Integer num) {
        com.fasterxml.jackson.databind.e numberNode;
        if (num == null) {
            numberNode = nullNode();
        } else {
            numberNode = numberNode(num.intValue());
        }
        return h(str, numberNode);
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ObjectNode)) {
            return e((ObjectNode) obj);
        }
        return false;
    }

    public ObjectNode put(String str, long j4) {
        return h(str, numberNode(j4));
    }

    public ObjectNode put(String str, Long l10) {
        com.fasterxml.jackson.databind.e numberNode;
        if (l10 == null) {
            numberNode = nullNode();
        } else {
            numberNode = numberNode(l10.longValue());
        }
        return h(str, numberNode);
    }

    public ObjectNode put(String str, float f10) {
        return h(str, numberNode(f10));
    }

    public ObjectNode put(String str, Float f10) {
        com.fasterxml.jackson.databind.e numberNode;
        if (f10 == null) {
            numberNode = nullNode();
        } else {
            numberNode = numberNode(f10.floatValue());
        }
        return h(str, numberNode);
    }

    public ObjectNode put(String str, double d4) {
        return h(str, numberNode(d4));
    }

    public ObjectNode put(String str, Double d4) {
        com.fasterxml.jackson.databind.e numberNode;
        if (d4 == null) {
            numberNode = nullNode();
        } else {
            numberNode = numberNode(d4.doubleValue());
        }
        return h(str, numberNode);
    }

    public ObjectNode put(String str, BigDecimal bigDecimal) {
        ValueNode numberNode;
        if (bigDecimal == null) {
            numberNode = nullNode();
        } else {
            numberNode = numberNode(bigDecimal);
        }
        return h(str, numberNode);
    }

    public ObjectNode put(String str, BigInteger bigInteger) {
        ValueNode numberNode;
        if (bigInteger == null) {
            numberNode = nullNode();
        } else {
            numberNode = numberNode(bigInteger);
        }
        return h(str, numberNode);
    }

    public ObjectNode put(String str, String str2) {
        com.fasterxml.jackson.databind.e textNode;
        if (str2 == null) {
            textNode = nullNode();
        } else {
            textNode = textNode(str2);
        }
        return h(str, textNode);
    }

    public ObjectNode put(String str, boolean z9) {
        return h(str, booleanNode(z9));
    }

    public ObjectNode put(String str, Boolean bool) {
        com.fasterxml.jackson.databind.e booleanNode;
        if (bool == null) {
            booleanNode = nullNode();
        } else {
            booleanNode = booleanNode(bool.booleanValue());
        }
        return h(str, booleanNode);
    }

    public ObjectNode put(String str, byte[] bArr) {
        com.fasterxml.jackson.databind.e binaryNode;
        if (bArr == null) {
            binaryNode = nullNode();
        } else {
            binaryNode = binaryNode(bArr);
        }
        return h(str, binaryNode);
    }
}
