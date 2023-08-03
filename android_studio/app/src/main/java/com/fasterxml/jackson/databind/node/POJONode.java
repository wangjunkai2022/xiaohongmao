package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

/* loaded from: classes.dex */
public class POJONode extends ValueNode {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15564d = 2;

    /* renamed from: c  reason: collision with root package name */
    protected final Object f15565c;

    public POJONode(Object obj) {
        this.f15565c = obj;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean asBoolean(boolean z9) {
        Object obj = this.f15565c;
        return (obj == null || !(obj instanceof Boolean)) ? z9 : ((Boolean) obj).booleanValue();
    }

    @Override // com.fasterxml.jackson.databind.e
    public double asDouble(double d4) {
        Object obj = this.f15565c;
        return obj instanceof Number ? ((Number) obj).doubleValue() : d4;
    }

    @Override // com.fasterxml.jackson.databind.e
    public int asInt(int i4) {
        Object obj = this.f15565c;
        return obj instanceof Number ? ((Number) obj).intValue() : i4;
    }

    @Override // com.fasterxml.jackson.databind.e
    public long asLong(long j4) {
        Object obj = this.f15565c;
        return obj instanceof Number ? ((Number) obj).longValue() : j4;
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText() {
        Object obj = this.f15565c;
        return obj == null ? "null" : obj.toString();
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.VALUE_EMBEDDED_OBJECT;
    }

    @Override // com.fasterxml.jackson.databind.e
    public byte[] binaryValue() throws IOException {
        Object obj = this.f15565c;
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        return super.binaryValue();
    }

    protected boolean e(POJONode pOJONode) {
        Object obj = this.f15565c;
        if (obj == null) {
            return pOJONode.f15565c == null;
        }
        return obj.equals(pOJONode.f15565c);
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof POJONode)) {
            return e((POJONode) obj);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public JsonNodeType getNodeType() {
        return JsonNodeType.POJO;
    }

    public Object getPojo() {
        return this.f15565c;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this.f15565c.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        Object obj = this.f15565c;
        if (obj == null) {
            lVar.defaultSerializeNull(jsonGenerator);
        } else if (obj instanceof f) {
            ((f) obj).serialize(jsonGenerator, lVar);
        } else {
            lVar.defaultSerializeValue(obj, jsonGenerator);
        }
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText(String str) {
        Object obj = this.f15565c;
        return obj == null ? str : obj.toString();
    }
}
