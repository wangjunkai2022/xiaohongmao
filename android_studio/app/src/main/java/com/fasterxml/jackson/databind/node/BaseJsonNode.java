package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.h;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class BaseJsonNode extends com.fasterxml.jackson.databind.e implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final long f15528a = 1;

    public abstract JsonToken asToken();

    Object d() {
        return d.b(this);
    }

    @Override // com.fasterxml.jackson.databind.e
    public final com.fasterxml.jackson.databind.e findPath(String str) {
        com.fasterxml.jackson.databind.e findValue = findValue(str);
        return findValue == null ? MissingNode.getInstance() : findValue;
    }

    public abstract int hashCode();

    @Override // com.fasterxml.jackson.core.m
    public JsonParser.NumberType numberType() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.e
    public com.fasterxml.jackson.databind.e required(String str) {
        return (com.fasterxml.jackson.databind.e) b("Node of type `%s` has no fields", getClass().getSimpleName());
    }

    @Override // com.fasterxml.jackson.databind.f
    public abstract void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException;

    @Override // com.fasterxml.jackson.databind.f
    public abstract void serializeWithType(JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException;

    @Override // com.fasterxml.jackson.databind.e
    public String toPrettyString() {
        return a.b(this);
    }

    @Override // com.fasterxml.jackson.databind.e
    public String toString() {
        return a.c(this);
    }

    @Override // com.fasterxml.jackson.core.m
    public JsonParser traverse() {
        return new e(this);
    }

    @Override // com.fasterxml.jackson.core.m
    public JsonParser traverse(h hVar) {
        return new e(this, hVar);
    }

    @Override // com.fasterxml.jackson.databind.e
    public com.fasterxml.jackson.databind.e required(int i4) {
        return (com.fasterxml.jackson.databind.e) b("Node of type `%s` has no indexed values", getClass().getSimpleName());
    }
}
