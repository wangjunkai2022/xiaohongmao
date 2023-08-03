package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class BigIntegerNode extends NumericNode {

    /* renamed from: e  reason: collision with root package name */
    private static final BigInteger f15529e = BigInteger.valueOf(-2147483648L);

    /* renamed from: f  reason: collision with root package name */
    private static final BigInteger f15530f = BigInteger.valueOf(2147483647L);

    /* renamed from: g  reason: collision with root package name */
    private static final BigInteger f15531g = BigInteger.valueOf(Long.MIN_VALUE);

    /* renamed from: h  reason: collision with root package name */
    private static final BigInteger f15532h = BigInteger.valueOf(Long.MAX_VALUE);

    /* renamed from: d  reason: collision with root package name */
    protected final BigInteger f15533d;

    public BigIntegerNode(BigInteger bigInteger) {
        this.f15533d = bigInteger;
    }

    public static BigIntegerNode valueOf(BigInteger bigInteger) {
        return new BigIntegerNode(bigInteger);
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean asBoolean(boolean z9) {
        return !BigInteger.ZERO.equals(this.f15533d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public String asText() {
        return this.f15533d.toString();
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_INT;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigInteger bigIntegerValue() {
        return this.f15533d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToInt() {
        return this.f15533d.compareTo(f15529e) >= 0 && this.f15533d.compareTo(f15530f) <= 0;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToLong() {
        return this.f15533d.compareTo(f15531g) >= 0 && this.f15533d.compareTo(f15532h) <= 0;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigDecimal decimalValue() {
        return new BigDecimal(this.f15533d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public double doubleValue() {
        return this.f15533d.doubleValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof BigIntegerNode)) {
            return ((BigIntegerNode) obj).f15533d.equals(this.f15533d);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public float floatValue() {
        return this.f15533d.floatValue();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this.f15533d.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public int intValue() {
        return this.f15533d.intValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isBigInteger() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isIntegralNumber() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public long longValue() {
        return this.f15533d.longValue();
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonParser.NumberType numberType() {
        return JsonParser.NumberType.BIG_INTEGER;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public Number numberValue() {
        return this.f15533d;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.e1(this.f15533d);
    }

    @Override // com.fasterxml.jackson.databind.e
    public short shortValue() {
        return this.f15533d.shortValue();
    }
}
