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
public class IntNode extends NumericNode {

    /* renamed from: e  reason: collision with root package name */
    static final int f15548e = -1;

    /* renamed from: f  reason: collision with root package name */
    static final int f15549f = 10;

    /* renamed from: g  reason: collision with root package name */
    private static final IntNode[] f15550g = new IntNode[12];

    /* renamed from: d  reason: collision with root package name */
    protected final int f15551d;

    static {
        for (int i4 = 0; i4 < 12; i4++) {
            f15550g[i4] = new IntNode(i4 - 1);
        }
    }

    public IntNode(int i4) {
        this.f15551d = i4;
    }

    public static IntNode valueOf(int i4) {
        if (i4 <= 10 && i4 >= -1) {
            return f15550g[i4 - (-1)];
        }
        return new IntNode(i4);
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean asBoolean(boolean z9) {
        return this.f15551d != 0;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public String asText() {
        return h.w(this.f15551d);
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_INT;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public BigInteger bigIntegerValue() {
        return BigInteger.valueOf(this.f15551d);
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
        return BigDecimal.valueOf(this.f15551d);
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public double doubleValue() {
        return this.f15551d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && (obj instanceof IntNode) && ((IntNode) obj).f15551d == this.f15551d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public float floatValue() {
        return this.f15551d;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this.f15551d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public int intValue() {
        return this.f15551d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isInt() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isIntegralNumber() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public long longValue() {
        return this.f15551d;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonParser.NumberType numberType() {
        return JsonParser.NumberType.INT;
    }

    @Override // com.fasterxml.jackson.databind.node.NumericNode, com.fasterxml.jackson.databind.e
    public Number numberValue() {
        return Integer.valueOf(this.f15551d);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.a1(this.f15551d);
    }

    @Override // com.fasterxml.jackson.databind.e
    public short shortValue() {
        return (short) this.f15551d;
    }
}
