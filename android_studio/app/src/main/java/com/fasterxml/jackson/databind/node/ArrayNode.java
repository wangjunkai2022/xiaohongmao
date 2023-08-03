package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.util.q;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ArrayNode extends ContainerNode<ArrayNode> implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private static final long f15526e = 1;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.fasterxml.jackson.databind.e> f15527d;

    public ArrayNode(JsonNodeFactory jsonNodeFactory) {
        super(jsonNodeFactory);
        this.f15527d = new ArrayList();
    }

    @Override // com.fasterxml.jackson.databind.e
    protected com.fasterxml.jackson.databind.e a(com.fasterxml.jackson.core.e eVar) {
        return get(eVar.m());
    }

    public ArrayNode add(com.fasterxml.jackson.databind.e eVar) {
        if (eVar == null) {
            eVar = nullNode();
        }
        e(eVar);
        return this;
    }

    public ArrayNode addAll(ArrayNode arrayNode) {
        this.f15527d.addAll(arrayNode.f15527d);
        return this;
    }

    public ArrayNode addArray() {
        ArrayNode arrayNode = arrayNode();
        e(arrayNode);
        return arrayNode;
    }

    public ArrayNode addNull() {
        return e(nullNode());
    }

    public ObjectNode addObject() {
        ObjectNode objectNode = objectNode();
        e(objectNode);
        return objectNode;
    }

    public ArrayNode addPOJO(Object obj) {
        return e(obj == null ? nullNode() : pojoNode(obj));
    }

    public ArrayNode addRawValue(q qVar) {
        return e(qVar == null ? nullNode() : rawValueNode(qVar));
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.START_ARRAY;
    }

    protected ArrayNode e(com.fasterxml.jackson.databind.e eVar) {
        this.f15527d.add(eVar);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.e
    public Iterator<com.fasterxml.jackson.databind.e> elements() {
        return this.f15527d.iterator();
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Comparator<com.fasterxml.jackson.databind.e> comparator, com.fasterxml.jackson.databind.e eVar) {
        if (eVar instanceof ArrayNode) {
            ArrayNode arrayNode = (ArrayNode) eVar;
            int size = this.f15527d.size();
            if (arrayNode.size() != size) {
                return false;
            }
            List<com.fasterxml.jackson.databind.e> list = this.f15527d;
            List<com.fasterxml.jackson.databind.e> list2 = arrayNode.f15527d;
            for (int i4 = 0; i4 < size; i4++) {
                if (!list.get(i4).equals(comparator, list2.get(i4))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public List<com.fasterxml.jackson.databind.e> findParents(String str, List<com.fasterxml.jackson.databind.e> list) {
        for (com.fasterxml.jackson.databind.e eVar : this.f15527d) {
            list = eVar.findParents(str, list);
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.e
    public com.fasterxml.jackson.databind.e findValue(String str) {
        for (com.fasterxml.jackson.databind.e eVar : this.f15527d) {
            com.fasterxml.jackson.databind.e findValue = eVar.findValue(str);
            if (findValue != null) {
                return findValue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public List<com.fasterxml.jackson.databind.e> findValues(String str, List<com.fasterxml.jackson.databind.e> list) {
        for (com.fasterxml.jackson.databind.e eVar : this.f15527d) {
            list = eVar.findValues(str, list);
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.e
    public List<String> findValuesAsText(String str, List<String> list) {
        for (com.fasterxml.jackson.databind.e eVar : this.f15527d) {
            list = eVar.findValuesAsText(str, list);
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public com.fasterxml.jackson.databind.e get(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public JsonNodeType getNodeType() {
        return JsonNodeType.ARRAY;
    }

    protected boolean h(ArrayNode arrayNode) {
        return this.f15527d.equals(arrayNode.f15527d);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this.f15527d.hashCode();
    }

    public ArrayNode insert(int i4, com.fasterxml.jackson.databind.e eVar) {
        if (eVar == null) {
            eVar = nullNode();
        }
        j(i4, eVar);
        return this;
    }

    public ArrayNode insertArray(int i4) {
        ArrayNode arrayNode = arrayNode();
        j(i4, arrayNode);
        return arrayNode;
    }

    public ArrayNode insertNull(int i4) {
        return j(i4, nullNode());
    }

    public ObjectNode insertObject(int i4) {
        ObjectNode objectNode = objectNode();
        j(i4, objectNode);
        return objectNode;
    }

    public ArrayNode insertPOJO(int i4, Object obj) {
        return j(i4, obj == null ? nullNode() : pojoNode(obj));
    }

    public ArrayNode insertRawValue(int i4, q qVar) {
        return j(i4, qVar == null ? nullNode() : rawValueNode(qVar));
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public boolean isArray() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.f.a
    public boolean isEmpty(l lVar) {
        return this.f15527d.isEmpty();
    }

    protected ArrayNode j(int i4, com.fasterxml.jackson.databind.e eVar) {
        if (i4 < 0) {
            this.f15527d.add(0, eVar);
        } else if (i4 >= this.f15527d.size()) {
            this.f15527d.add(eVar);
        } else {
            this.f15527d.add(i4, eVar);
        }
        return this;
    }

    protected ArrayNode k(int i4, com.fasterxml.jackson.databind.e eVar) {
        if (i4 >= 0 && i4 < this.f15527d.size()) {
            this.f15527d.set(i4, eVar);
            return this;
        }
        throw new IndexOutOfBoundsException("Illegal index " + i4 + ", array size " + size());
    }

    public com.fasterxml.jackson.databind.e remove(int i4) {
        if (i4 < 0 || i4 >= this.f15527d.size()) {
            return null;
        }
        return this.f15527d.remove(i4);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.e
    public com.fasterxml.jackson.databind.e required(int i4) {
        if (i4 >= 0 && i4 < this.f15527d.size()) {
            return this.f15527d.get(i4);
        }
        return (com.fasterxml.jackson.databind.e) b("No value at index #%d [0, %d) of `ArrayNode`", Integer.valueOf(i4), Integer.valueOf(this.f15527d.size()));
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        List<com.fasterxml.jackson.databind.e> list = this.f15527d;
        int size = list.size();
        jsonGenerator.J1(this, size);
        for (int i4 = 0; i4 < size; i4++) {
            ((BaseJsonNode) list.get(i4)).serialize(jsonGenerator, lVar);
        }
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public void serializeWithType(JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(this, JsonToken.START_ARRAY));
        Iterator<com.fasterxml.jackson.databind.e> it = this.f15527d.iterator();
        while (it.hasNext()) {
            ((BaseJsonNode) it.next()).serialize(jsonGenerator, lVar);
        }
        fVar.v(jsonGenerator, o9);
    }

    public com.fasterxml.jackson.databind.e set(int i4, com.fasterxml.jackson.databind.e eVar) {
        if (eVar == null) {
            eVar = nullNode();
        }
        if (i4 >= 0 && i4 < this.f15527d.size()) {
            return this.f15527d.set(i4, eVar);
        }
        throw new IndexOutOfBoundsException("Illegal index " + i4 + ", array size " + size());
    }

    public ArrayNode setNull(int i4) {
        return k(i4, nullNode());
    }

    public ArrayNode setPOJO(int i4, Object obj) {
        return k(i4, obj == null ? nullNode() : pojoNode(obj));
    }

    public ArrayNode setRawValue(int i4, q qVar) {
        return k(i4, qVar == null ? nullNode() : rawValueNode(qVar));
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public int size() {
        return this.f15527d.size();
    }

    public ArrayNode addAll(Collection<? extends com.fasterxml.jackson.databind.e> collection) {
        for (com.fasterxml.jackson.databind.e eVar : collection) {
            add(eVar);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.e
    public ArrayNode deepCopy() {
        ArrayNode arrayNode = new ArrayNode(this.f15540b);
        for (com.fasterxml.jackson.databind.e eVar : this.f15527d) {
            arrayNode.f15527d.add(eVar.deepCopy());
        }
        return arrayNode;
    }

    @Override // com.fasterxml.jackson.databind.e
    public ObjectNode findParent(String str) {
        for (com.fasterxml.jackson.databind.e eVar : this.f15527d) {
            com.fasterxml.jackson.databind.e findParent = eVar.findParent(str);
            if (findParent != null) {
                return (ObjectNode) findParent;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isEmpty() {
        return this.f15527d.isEmpty();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.node.ContainerNode
    public ArrayNode removeAll() {
        this.f15527d.clear();
        return this;
    }

    public ArrayNode(JsonNodeFactory jsonNodeFactory, int i4) {
        super(jsonNodeFactory);
        this.f15527d = new ArrayList(i4);
    }

    public ArrayNode add(short s9) {
        return e(numberNode(s9));
    }

    @Override // com.fasterxml.jackson.databind.node.ContainerNode, com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public com.fasterxml.jackson.databind.e get(int i4) {
        if (i4 < 0 || i4 >= this.f15527d.size()) {
            return null;
        }
        return this.f15527d.get(i4);
    }

    public ArrayNode insert(int i4, short s9) {
        return j(i4, numberNode(s9));
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public com.fasterxml.jackson.databind.e path(String str) {
        return MissingNode.getInstance();
    }

    public ArrayNode add(Short sh) {
        return e(sh == null ? nullNode() : numberNode(sh.shortValue()));
    }

    public ArrayNode insert(int i4, Short sh) {
        return j(i4, sh == null ? nullNode() : numberNode(sh.shortValue()));
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public com.fasterxml.jackson.databind.e path(int i4) {
        if (i4 >= 0 && i4 < this.f15527d.size()) {
            return this.f15527d.get(i4);
        }
        return MissingNode.getInstance();
    }

    public ArrayNode(JsonNodeFactory jsonNodeFactory, List<com.fasterxml.jackson.databind.e> list) {
        super(jsonNodeFactory);
        this.f15527d = list;
    }

    public ArrayNode add(int i4) {
        return e(numberNode(i4));
    }

    public ArrayNode insert(int i4, int i10) {
        return j(i4, numberNode(i10));
    }

    public ArrayNode set(int i4, short s9) {
        return k(i4, numberNode(s9));
    }

    public ArrayNode add(Integer num) {
        return e(num == null ? nullNode() : numberNode(num.intValue()));
    }

    public ArrayNode insert(int i4, Integer num) {
        return j(i4, num == null ? nullNode() : numberNode(num.intValue()));
    }

    public ArrayNode set(int i4, Short sh) {
        return k(i4, sh == null ? nullNode() : numberNode(sh.shortValue()));
    }

    public ArrayNode add(long j4) {
        return e(numberNode(j4));
    }

    public ArrayNode insert(int i4, long j4) {
        return j(i4, numberNode(j4));
    }

    public ArrayNode set(int i4, int i10) {
        return k(i4, numberNode(i10));
    }

    public ArrayNode add(Long l10) {
        return e(l10 == null ? nullNode() : numberNode(l10.longValue()));
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ArrayNode)) {
            return this.f15527d.equals(((ArrayNode) obj).f15527d);
        }
        return false;
    }

    public ArrayNode insert(int i4, Long l10) {
        return j(i4, l10 == null ? nullNode() : numberNode(l10.longValue()));
    }

    public ArrayNode set(int i4, Integer num) {
        return k(i4, num == null ? nullNode() : numberNode(num.intValue()));
    }

    public ArrayNode add(float f10) {
        return e(numberNode(f10));
    }

    public ArrayNode insert(int i4, float f10) {
        return j(i4, numberNode(f10));
    }

    public ArrayNode set(int i4, long j4) {
        return k(i4, numberNode(j4));
    }

    public ArrayNode add(Float f10) {
        return e(f10 == null ? nullNode() : numberNode(f10.floatValue()));
    }

    public ArrayNode insert(int i4, Float f10) {
        return j(i4, f10 == null ? nullNode() : numberNode(f10.floatValue()));
    }

    public ArrayNode set(int i4, Long l10) {
        return k(i4, l10 == null ? nullNode() : numberNode(l10.longValue()));
    }

    public ArrayNode add(double d4) {
        return e(numberNode(d4));
    }

    public ArrayNode insert(int i4, double d4) {
        return j(i4, numberNode(d4));
    }

    public ArrayNode set(int i4, float f10) {
        return k(i4, numberNode(f10));
    }

    public ArrayNode add(Double d4) {
        return e(d4 == null ? nullNode() : numberNode(d4.doubleValue()));
    }

    public ArrayNode insert(int i4, Double d4) {
        return j(i4, d4 == null ? nullNode() : numberNode(d4.doubleValue()));
    }

    public ArrayNode set(int i4, Float f10) {
        return k(i4, f10 == null ? nullNode() : numberNode(f10.floatValue()));
    }

    public ArrayNode add(BigDecimal bigDecimal) {
        return e(bigDecimal == null ? nullNode() : numberNode(bigDecimal));
    }

    public ArrayNode insert(int i4, BigDecimal bigDecimal) {
        return j(i4, bigDecimal == null ? nullNode() : numberNode(bigDecimal));
    }

    public ArrayNode set(int i4, double d4) {
        return k(i4, numberNode(d4));
    }

    public ArrayNode add(BigInteger bigInteger) {
        return e(bigInteger == null ? nullNode() : numberNode(bigInteger));
    }

    public ArrayNode insert(int i4, BigInteger bigInteger) {
        return j(i4, bigInteger == null ? nullNode() : numberNode(bigInteger));
    }

    public ArrayNode set(int i4, Double d4) {
        return k(i4, d4 == null ? nullNode() : numberNode(d4.doubleValue()));
    }

    public ArrayNode add(String str) {
        return e(str == null ? nullNode() : textNode(str));
    }

    public ArrayNode insert(int i4, String str) {
        return j(i4, str == null ? nullNode() : textNode(str));
    }

    public ArrayNode set(int i4, BigDecimal bigDecimal) {
        return k(i4, bigDecimal == null ? nullNode() : numberNode(bigDecimal));
    }

    public ArrayNode add(boolean z9) {
        return e(booleanNode(z9));
    }

    public ArrayNode insert(int i4, boolean z9) {
        return j(i4, booleanNode(z9));
    }

    public ArrayNode set(int i4, BigInteger bigInteger) {
        return k(i4, bigInteger == null ? nullNode() : numberNode(bigInteger));
    }

    public ArrayNode add(Boolean bool) {
        return e(bool == null ? nullNode() : booleanNode(bool.booleanValue()));
    }

    public ArrayNode insert(int i4, Boolean bool) {
        if (bool == null) {
            return insertNull(i4);
        }
        return j(i4, booleanNode(bool.booleanValue()));
    }

    public ArrayNode set(int i4, String str) {
        return k(i4, str == null ? nullNode() : textNode(str));
    }

    public ArrayNode add(byte[] bArr) {
        return e(bArr == null ? nullNode() : binaryNode(bArr));
    }

    public ArrayNode set(int i4, boolean z9) {
        return k(i4, booleanNode(z9));
    }

    public ArrayNode insert(int i4, byte[] bArr) {
        if (bArr == null) {
            return insertNull(i4);
        }
        return j(i4, binaryNode(bArr));
    }

    public ArrayNode set(int i4, Boolean bool) {
        return k(i4, bool == null ? nullNode() : booleanNode(bool.booleanValue()));
    }

    public ArrayNode set(int i4, byte[] bArr) {
        return k(i4, bArr == null ? nullNode() : binaryNode(bArr));
    }
}
