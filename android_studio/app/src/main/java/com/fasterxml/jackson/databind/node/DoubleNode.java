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
public class DoubleNode extends NumericNode {

    /* renamed from: d  reason: collision with root package name */
    protected final double f15546d;

    public DoubleNode(double d4) {
        this.f15546d = d4;
    }

    public static DoubleNode valueOf(double d4) {
        return new DoubleNode(d4);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public String asText() {
        return h.u(this.f15546d);
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
        if (!Double.isNaN(this.f15546d) && !Double.isInfinite(this.f15546d)) {
            double d4 = this.f15546d;
            if (d4 == Math.rint(d4)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToInt() {
        double d4 = this.f15546d;
        return d4 >= -2.147483648E9d && d4 <= 2.147483647E9d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public boolean canConvertToLong() {
        double d4 = this.f15546d;
        return d4 >= -9.223372036854776E18d && d4 <= 9.223372036854776E18d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigDecimal decimalValue() {
        return BigDecimal.valueOf(this.f15546d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public double doubleValue() {
        return this.f15546d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof DoubleNode)) {
            return Double.compare(this.f15546d, ((DoubleNode) obj).f15546d) == 0;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public float floatValue() {
        return (float) this.f15546d;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f15546d);
        return ((int) doubleToLongBits) ^ ((int) (doubleToLongBits >> 32));
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public int intValue() {
        return (int) this.f15546d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isDouble() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isFloatingPointNumber() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode
    public boolean isNaN() {
        return Double.isNaN(this.f15546d) || Double.isInfinite(this.f15546d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public long longValue() {
        return (long) this.f15546d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonParser.NumberType numberType() {
        return JsonParser.NumberType.DOUBLE;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public Number numberValue() {
        return Double.valueOf(this.f15546d);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.Y0(this.f15546d);
    }

    @Override // com.fasterxml.jackson.databind.e
    public short shortValue() {
        return (short) this.f15546d;
    }
}
