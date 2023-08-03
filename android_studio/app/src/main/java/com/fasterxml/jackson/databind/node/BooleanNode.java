package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

/* loaded from: classes.dex */
public class BooleanNode extends ValueNode {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15537d = 2;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f15538c;
    public static final BooleanNode TRUE = new BooleanNode(true);
    public static final BooleanNode FALSE = new BooleanNode(false);

    protected BooleanNode(boolean z9) {
        this.f15538c = z9;
    }

    public static BooleanNode getFalse() {
        return FALSE;
    }

    public static BooleanNode getTrue() {
        return TRUE;
    }

    public static BooleanNode valueOf(boolean z9) {
        return z9 ? TRUE : FALSE;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean asBoolean() {
        return this.f15538c;
    }

    @Override // com.fasterxml.jackson.databind.e
    public double asDouble(double d4) {
        return this.f15538c ? 1.0d : 0.0d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public int asInt(int i4) {
        return this.f15538c ? 1 : 0;
    }

    @Override // com.fasterxml.jackson.databind.e
    public long asLong(long j4) {
        return this.f15538c ? 1L : 0L;
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText() {
        return this.f15538c ? "true" : "false";
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return this.f15538c ? JsonToken.VALUE_TRUE : JsonToken.VALUE_FALSE;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean booleanValue() {
        return this.f15538c;
    }

    protected Object e() {
        return this.f15538c ? TRUE : FALSE;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && (obj instanceof BooleanNode) && this.f15538c == ((BooleanNode) obj).f15538c;
    }

    @Override // com.fasterxml.jackson.databind.e
    public JsonNodeType getNodeType() {
        return JsonNodeType.BOOLEAN;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this.f15538c ? 3 : 1;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.O0(this.f15538c);
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean asBoolean(boolean z9) {
        return this.f15538c;
    }
}
