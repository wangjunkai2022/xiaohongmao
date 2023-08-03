package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ValueNode extends BaseJsonNode {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15570b = 1;

    @Override // com.fasterxml.jackson.databind.e
    protected com.fasterxml.jackson.databind.e a(com.fasterxml.jackson.core.e eVar) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public abstract JsonToken asToken();

    @Override // com.fasterxml.jackson.databind.e
    public <T extends com.fasterxml.jackson.databind.e> T deepCopy() {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.e
    public final ObjectNode findParent(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public final List<com.fasterxml.jackson.databind.e> findParents(String str, List<com.fasterxml.jackson.databind.e> list) {
        return list;
    }

    @Override // com.fasterxml.jackson.databind.e
    public final com.fasterxml.jackson.databind.e findValue(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public final List<com.fasterxml.jackson.databind.e> findValues(String str, List<com.fasterxml.jackson.databind.e> list) {
        return list;
    }

    @Override // com.fasterxml.jackson.databind.e
    public final List<String> findValuesAsText(String str, List<String> list) {
        return list;
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public final com.fasterxml.jackson.databind.e get(int i4) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public final com.fasterxml.jackson.databind.e get(String str) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public final boolean has(int i4) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public final boolean has(String str) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public final boolean hasNonNull(int i4) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public final boolean hasNonNull(String str) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean isEmpty() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public void serializeWithType(JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(this, asToken()));
        serialize(jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public final com.fasterxml.jackson.databind.e path(int i4) {
        return MissingNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public final com.fasterxml.jackson.databind.e path(String str) {
        return MissingNode.getInstance();
    }
}
