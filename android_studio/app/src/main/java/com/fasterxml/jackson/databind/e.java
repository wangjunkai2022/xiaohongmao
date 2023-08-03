package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.m;
import com.fasterxml.jackson.databind.f;
import com.fasterxml.jackson.databind.node.JsonNodeType;
import com.fasterxml.jackson.databind.node.MissingNode;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: JsonNode.java */
/* loaded from: classes.dex */
public abstract class e extends f.a implements m, Iterable<e> {

    /* compiled from: JsonNode.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15073a;

        static {
            int[] iArr = new int[JsonNodeType.values().length];
            f15073a = iArr;
            try {
                iArr[JsonNodeType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15073a[JsonNodeType.OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15073a[JsonNodeType.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected abstract e a(com.fasterxml.jackson.core.e eVar);

    public boolean asBoolean() {
        return asBoolean(false);
    }

    public boolean asBoolean(boolean z9) {
        return z9;
    }

    public double asDouble() {
        return asDouble(0.0d);
    }

    public double asDouble(double d4) {
        return d4;
    }

    public int asInt() {
        return asInt(0);
    }

    public int asInt(int i4) {
        return i4;
    }

    public long asLong() {
        return asLong(0L);
    }

    public long asLong(long j4) {
        return j4;
    }

    public abstract String asText();

    public String asText(String str) {
        String asText = asText();
        return asText == null ? str : asText;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> T b(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.ZERO;
    }

    public byte[] binaryValue() throws IOException {
        return null;
    }

    public boolean booleanValue() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <T extends e> T c() {
        return this;
    }

    public boolean canConvertToExactIntegral() {
        return isIntegralNumber();
    }

    public boolean canConvertToInt() {
        return false;
    }

    public boolean canConvertToLong() {
        return false;
    }

    public BigDecimal decimalValue() {
        return BigDecimal.ZERO;
    }

    public abstract <T extends e> T deepCopy();

    public double doubleValue() {
        return 0.0d;
    }

    public Iterator<e> elements() {
        return com.fasterxml.jackson.databind.util.g.p();
    }

    public abstract boolean equals(Object obj);

    public boolean equals(Comparator<e> comparator, e eVar) {
        return comparator.compare(this, eVar) == 0;
    }

    @Override // com.fasterxml.jackson.core.m
    public Iterator<String> fieldNames() {
        return com.fasterxml.jackson.databind.util.g.p();
    }

    public Iterator<Map.Entry<String, e>> fields() {
        return com.fasterxml.jackson.databind.util.g.p();
    }

    public abstract e findParent(String str);

    public final List<e> findParents(String str) {
        List<e> findParents = findParents(str, null);
        return findParents == null ? Collections.emptyList() : findParents;
    }

    public abstract List<e> findParents(String str, List<e> list);

    public abstract e findPath(String str);

    public abstract e findValue(String str);

    public final List<e> findValues(String str) {
        List<e> findValues = findValues(str, null);
        return findValues == null ? Collections.emptyList() : findValues;
    }

    public abstract List<e> findValues(String str, List<e> list);

    public final List<String> findValuesAsText(String str) {
        List<String> findValuesAsText = findValuesAsText(str, null);
        return findValuesAsText == null ? Collections.emptyList() : findValuesAsText;
    }

    public abstract List<String> findValuesAsText(String str, List<String> list);

    public float floatValue() {
        return 0.0f;
    }

    @Override // com.fasterxml.jackson.core.m
    public abstract e get(int i4);

    @Override // com.fasterxml.jackson.core.m
    public e get(String str) {
        return null;
    }

    public abstract JsonNodeType getNodeType();

    public boolean has(String str) {
        return get(str) != null;
    }

    public boolean hasNonNull(String str) {
        e eVar = get(str);
        return (eVar == null || eVar.isNull()) ? false : true;
    }

    public int intValue() {
        return 0;
    }

    @Override // com.fasterxml.jackson.core.m
    public boolean isArray() {
        return false;
    }

    public boolean isBigDecimal() {
        return false;
    }

    public boolean isBigInteger() {
        return false;
    }

    public final boolean isBinary() {
        return getNodeType() == JsonNodeType.BINARY;
    }

    public final boolean isBoolean() {
        return getNodeType() == JsonNodeType.BOOLEAN;
    }

    @Override // com.fasterxml.jackson.core.m
    public final boolean isContainerNode() {
        JsonNodeType nodeType = getNodeType();
        return nodeType == JsonNodeType.OBJECT || nodeType == JsonNodeType.ARRAY;
    }

    public boolean isDouble() {
        return false;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean isFloat() {
        return false;
    }

    public boolean isFloatingPointNumber() {
        return false;
    }

    public boolean isInt() {
        return false;
    }

    public boolean isIntegralNumber() {
        return false;
    }

    public boolean isLong() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.m
    public boolean isMissingNode() {
        return false;
    }

    public final boolean isNull() {
        return getNodeType() == JsonNodeType.NULL;
    }

    public final boolean isNumber() {
        return getNodeType() == JsonNodeType.NUMBER;
    }

    @Override // com.fasterxml.jackson.core.m
    public boolean isObject() {
        return false;
    }

    public final boolean isPojo() {
        return getNodeType() == JsonNodeType.POJO;
    }

    public boolean isShort() {
        return false;
    }

    public final boolean isTextual() {
        return getNodeType() == JsonNodeType.STRING;
    }

    @Override // com.fasterxml.jackson.core.m
    public final boolean isValueNode() {
        int i4 = a.f15073a[getNodeType().ordinal()];
        return (i4 == 1 || i4 == 2 || i4 == 3) ? false : true;
    }

    @Override // java.lang.Iterable
    public final Iterator<e> iterator() {
        return elements();
    }

    public long longValue() {
        return 0L;
    }

    public Number numberValue() {
        return null;
    }

    @Override // com.fasterxml.jackson.core.m
    public abstract e path(int i4);

    @Override // com.fasterxml.jackson.core.m
    public abstract e path(String str);

    public <T extends e> T require() throws IllegalArgumentException {
        return (T) c();
    }

    public <T extends e> T requireNonNull() throws IllegalArgumentException {
        return (T) c();
    }

    public e required(String str) throws IllegalArgumentException {
        return (e) b("Node of type `%s` has no fields", getClass().getName());
    }

    public e requiredAt(String str) throws IllegalArgumentException {
        return requiredAt(com.fasterxml.jackson.core.e.j(str));
    }

    public short shortValue() {
        return (short) 0;
    }

    @Override // com.fasterxml.jackson.core.m
    public int size() {
        return 0;
    }

    public String textValue() {
        return null;
    }

    public String toPrettyString() {
        return toString();
    }

    public abstract String toString();

    public <T extends e> T with(String str) {
        throw new UnsupportedOperationException("JsonNode not of type ObjectNode (but " + getClass().getName() + "), cannot call with() on it");
    }

    public <T extends e> T withArray(String str) {
        throw new UnsupportedOperationException("JsonNode not of type ObjectNode (but " + getClass().getName() + "), cannot call withArray() on it");
    }

    public boolean has(int i4) {
        return get(i4) != null;
    }

    public e required(int i4) throws IllegalArgumentException {
        return (e) b("Node of type `%s` has no indexed values", getClass().getName());
    }

    public final e requiredAt(com.fasterxml.jackson.core.e eVar) throws IllegalArgumentException {
        e eVar2 = this;
        for (com.fasterxml.jackson.core.e eVar3 = eVar; !eVar3.s(); eVar3 = eVar3.x()) {
            eVar2 = eVar2.a(eVar3);
            if (eVar2 == null) {
                b("No node at '%s' (unmatched part: '%s')", eVar, eVar3);
            }
        }
        return eVar2;
    }

    @Override // com.fasterxml.jackson.core.m
    public final e at(com.fasterxml.jackson.core.e eVar) {
        if (eVar.s()) {
            return this;
        }
        e a10 = a(eVar);
        if (a10 == null) {
            return MissingNode.getInstance();
        }
        return a10.at(eVar.x());
    }

    public boolean hasNonNull(int i4) {
        e eVar = get(i4);
        return (eVar == null || eVar.isNull()) ? false : true;
    }

    @Override // com.fasterxml.jackson.core.m
    public final e at(String str) {
        return at(com.fasterxml.jackson.core.e.j(str));
    }
}
