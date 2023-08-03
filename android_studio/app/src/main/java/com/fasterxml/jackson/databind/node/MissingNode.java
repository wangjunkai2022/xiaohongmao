package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

/* loaded from: classes.dex */
public final class MissingNode extends ValueNode {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15558c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final MissingNode f15559d = new MissingNode();

    protected MissingNode() {
    }

    public static MissingNode getInstance() {
        return f15559d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText(String str) {
        return str;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.NOT_AVAILABLE;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.e
    public <T extends com.fasterxml.jackson.databind.e> T deepCopy() {
        return this;
    }

    protected Object e() {
        return f15559d;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.fasterxml.jackson.databind.e
    public JsonNodeType getNodeType() {
        return JsonNodeType.MISSING;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return JsonNodeType.MISSING.ordinal();
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public boolean isMissingNode() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.e
    public com.fasterxml.jackson.databind.e require() {
        return (com.fasterxml.jackson.databind.e) b("require() called on `MissingNode`", new Object[0]);
    }

    @Override // com.fasterxml.jackson.databind.e
    public com.fasterxml.jackson.databind.e requireNonNull() {
        return (com.fasterxml.jackson.databind.e) b("requireNonNull() called on `MissingNode`", new Object[0]);
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.W0();
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public void serializeWithType(JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        jsonGenerator.W0();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.e
    public String toPrettyString() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.e
    public String toString() {
        return "";
    }
}
