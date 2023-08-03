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
public class FloatNode extends NumericNode {

    /* renamed from: d  reason: collision with root package name */
    protected final float f15547d;

    public FloatNode(float f10) {
        this.f15547d = f10;
    }

    public static FloatNode valueOf(float f10) {
        return new FloatNode(f10);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public String asText() {
        return h.v(this.f15547d);
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigInteger bigIntegerValue() {
        return decimalValue().toBigInteger();
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean canConvertToExactIntegral() {
        if (!Float.isNaN(this.f15547d) && !Float.isInfinite(this.f15547d)) {
            float f10 = this.f15547d;
            if (f10 == Math.round(f10)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToInt() {
        float f10 = this.f15547d;
        return f10 >= -2.14748365E9f && f10 <= 2.14748365E9f;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToLong() {
        float f10 = this.f15547d;
        return f10 >= -9.223372E18f && f10 <= 9.223372E18f;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigDecimal decimalValue() {
        return BigDecimal.valueOf(this.f15547d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public double doubleValue() {
        return this.f15547d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof FloatNode)) {
            return Float.compare(this.f15547d, ((FloatNode) obj).f15547d) == 0;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public float floatValue() {
        return this.f15547d;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return Float.floatToIntBits(this.f15547d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public int intValue() {
        return (int) this.f15547d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isFloat() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isFloatingPointNumber() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode
    public boolean isNaN() {
        return Float.isNaN(this.f15547d) || Float.isInfinite(this.f15547d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public long longValue() {
        return this.f15547d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonParser.NumberType numberType() {
        return JsonParser.NumberType.FLOAT;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public Number numberValue() {
        return Float.valueOf(this.f15547d);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.Z0(this.f15547d);
    }

    @Override // com.fasterxml.jackson.databind.e
    public short shortValue() {
        return (short) this.f15547d;
    }
}
