package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* compiled from: RawValue.java */
/* loaded from: classes2.dex */
public class q implements com.fasterxml.jackson.databind.f {

    /* renamed from: a  reason: collision with root package name */
    protected Object f16049a;

    public q(String str) {
        this.f16049a = str;
    }

    protected void a(JsonGenerator jsonGenerator) throws IOException {
        Object obj = this.f16049a;
        if (obj instanceof com.fasterxml.jackson.core.j) {
            jsonGenerator.C1((com.fasterxml.jackson.core.j) obj);
        } else {
            jsonGenerator.D1(String.valueOf(obj));
        }
    }

    public Object b() {
        return this.f16049a;
    }

    public void c(JsonGenerator jsonGenerator) throws IOException {
        Object obj = this.f16049a;
        if (obj instanceof com.fasterxml.jackson.databind.f) {
            jsonGenerator.o1(obj);
        } else {
            a(jsonGenerator);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q) {
            Object obj2 = this.f16049a;
            Object obj3 = ((q) obj).f16049a;
            if (obj2 == obj3) {
                return true;
            }
            return obj2 != null && obj2.equals(obj3);
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f16049a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.f
    public void serialize(JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws IOException {
        Object obj = this.f16049a;
        if (obj instanceof com.fasterxml.jackson.databind.f) {
            ((com.fasterxml.jackson.databind.f) obj).serialize(jsonGenerator, lVar);
        } else {
            a(jsonGenerator);
        }
    }

    @Override // com.fasterxml.jackson.databind.f
    public void serializeWithType(JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        Object obj = this.f16049a;
        if (obj instanceof com.fasterxml.jackson.databind.f) {
            ((com.fasterxml.jackson.databind.f) obj).serializeWithType(jsonGenerator, lVar, fVar);
        } else if (obj instanceof com.fasterxml.jackson.core.j) {
            serialize(jsonGenerator, lVar);
        }
    }

    public String toString() {
        return String.format("[RawValue of type %s]", g.j(this.f16049a));
    }

    public q(com.fasterxml.jackson.core.j jVar) {
        this.f16049a = jVar;
    }

    public q(com.fasterxml.jackson.databind.f fVar) {
        this.f16049a = fVar;
    }

    protected q(Object obj, boolean z9) {
        this.f16049a = obj;
    }
}
