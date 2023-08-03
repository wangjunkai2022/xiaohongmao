package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonParser;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public abstract class NumericNode extends ValueNode {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15561c = 1;

    @Override // com.fasterxml.jackson.databind.e
    public final double asDouble() {
        return doubleValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public final int asInt() {
        return intValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public final long asLong() {
        return longValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public abstract String asText();

    @Override // com.fasterxml.jackson.databind.e
    public abstract BigInteger bigIntegerValue();

    @Override // com.fasterxml.jackson.databind.e
    public abstract boolean canConvertToInt();

    @Override // com.fasterxml.jackson.databind.e
    public abstract boolean canConvertToLong();

    @Override // com.fasterxml.jackson.databind.e
    public abstract BigDecimal decimalValue();

    @Override // com.fasterxml.jackson.databind.e
    public abstract double doubleValue();

    @Override // com.fasterxml.jackson.databind.e
    public final JsonNodeType getNodeType() {
        return JsonNodeType.NUMBER;
    }

    @Override // com.fasterxml.jackson.databind.e
    public abstract int intValue();

    public boolean isNaN() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public abstract long longValue();

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public abstract JsonParser.NumberType numberType();

    @Override // com.fasterxml.jackson.databind.e
    public abstract Number numberValue();

    @Override // com.fasterxml.jackson.databind.e
    public final double asDouble(double d4) {
        return doubleValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public final int asInt(int i4) {
        return intValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public final long asLong(long j4) {
        return longValue();
    }
}
