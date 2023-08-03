package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

/* loaded from: classes.dex */
public class NullNode extends ValueNode {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15560c = 1;
    public static final NullNode instance = new NullNode();

    protected NullNode() {
    }

    public static NullNode getInstance() {
        return instance;
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText() {
        return "null";
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText(String str) {
        return str;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.VALUE_NULL;
    }

    protected Object e() {
        return instance;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        return obj == this || (obj instanceof NullNode);
    }

    @Override // com.fasterxml.jackson.databind.e
    public JsonNodeType getNodeType() {
        return JsonNodeType.NULL;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return JsonNodeType.NULL.ordinal();
    }

    @Override // com.fasterxml.jackson.databind.e
    public com.fasterxml.jackson.databind.e requireNonNull() {
        return (com.fasterxml.jackson.databind.e) b("requireNonNull() called on `NullNode`", new Object[0]);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        lVar.defaultSerializeNull(jsonGenerator);
    }
}
