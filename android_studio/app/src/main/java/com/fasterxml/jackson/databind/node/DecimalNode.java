package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class DecimalNode extends NumericNode {
    public static final DecimalNode ZERO = new DecimalNode(BigDecimal.ZERO);

    /* renamed from: e  reason: collision with root package name */
    private static final BigDecimal f15541e = BigDecimal.valueOf(-2147483648L);

    /* renamed from: f  reason: collision with root package name */
    private static final BigDecimal f15542f = BigDecimal.valueOf(2147483647L);

    /* renamed from: g  reason: collision with root package name */
    private static final BigDecimal f15543g = BigDecimal.valueOf(Long.MIN_VALUE);

    /* renamed from: h  reason: collision with root package name */
    private static final BigDecimal f15544h = BigDecimal.valueOf(Long.MAX_VALUE);

    /* renamed from: d  reason: collision with root package name */
    protected final BigDecimal f15545d;

    public DecimalNode(BigDecimal bigDecimal) {
        this.f15545d = bigDecimal;
    }

    public static DecimalNode valueOf(BigDecimal bigDecimal) {
        return new DecimalNode(bigDecimal);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public String asText() {
        return this.f15545d.toString();
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigInteger bigIntegerValue() {
        return this.f15545d.toBigInteger();
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean canConvertToExactIntegral() {
        return this.f15545d.signum() == 0 || this.f15545d.scale() <= 0 || this.f15545d.stripTrailingZeros().scale() <= 0;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToInt() {
        return this.f15545d.compareTo(f15541e) >= 0 && this.f15545d.compareTo(f15542f) <= 0;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToLong() {
        return this.f15545d.compareTo(f15543g) >= 0 && this.f15545d.compareTo(f15544h) <= 0;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigDecimal decimalValue() {
        return this.f15545d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public double doubleValue() {
        return this.f15545d.doubleValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && (obj instanceof DecimalNode) && ((DecimalNode) obj).f15545d.compareTo(this.f15545d) == 0;
    }

    @Override // com.fasterxml.jackson.databind.e
    public float floatValue() {
        return this.f15545d.floatValue();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return Double.valueOf(doubleValue()).hashCode();
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public int intValue() {
        return this.f15545d.intValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isBigDecimal() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isFloatingPointNumber() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public long longValue() {
        return this.f15545d.longValue();
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonParser.NumberType numberType() {
        return JsonParser.NumberType.BIG_DECIMAL;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public Number numberValue() {
        return this.f15545d;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.d1(this.f15545d);
    }

    @Override // com.fasterxml.jackson.databind.e
    public short shortValue() {
        return this.f15545d.shortValue();
    }
}
