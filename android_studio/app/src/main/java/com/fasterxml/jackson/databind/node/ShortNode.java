package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.h;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class ShortNode extends NumericNode {

    /* renamed from: d  reason: collision with root package name */
    protected final short f15566d;

    public ShortNode(short s9) {
        this.f15566d = s9;
    }

    public static ShortNode valueOf(short s9) {
        return new ShortNode(s9);
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean asBoolean(boolean z9) {
        return this.f15566d != 0;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public String asText() {
        return h.w(this.f15566d);
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_INT;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigInteger bigIntegerValue() {
        return BigInteger.valueOf(this.f15566d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToInt() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToLong() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigDecimal decimalValue() {
        return BigDecimal.valueOf(this.f15566d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public double doubleValue() {
        return this.f15566d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && (obj instanceof ShortNode) && ((ShortNode) obj).f15566d == this.f15566d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public float floatValue() {
        return this.f15566d;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this.f15566d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public int intValue() {
        return this.f15566d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isIntegralNumber() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isShort() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public long longValue() {
        return this.f15566d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonParser.NumberType numberType() {
        return JsonParser.NumberType.INT;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public Number numberValue() {
        return Short.valueOf(this.f15566d);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.f1(this.f15566d);
    }

    @Override // com.fasterxml.jackson.databind.e
    public short shortValue() {
        return this.f15566d;
    }
}
