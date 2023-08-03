package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;

/* compiled from: TypeIdResolverBase.java */
/* loaded from: classes.dex */
public abstract class j implements com.fasterxml.jackson.databind.jsontype.c {

    /* renamed from: a  reason: collision with root package name */
    protected final TypeFactory f15464a;

    /* renamed from: b  reason: collision with root package name */
    protected final JavaType f15465b;

    protected j() {
        this(null, null);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public String b() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public void c(JavaType javaType) {
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public JavaType d(com.fasterxml.jackson.databind.c cVar, String str) throws IOException {
        throw new IllegalStateException("Sub-class " + getClass().getName() + " MUST implement `typeFromId(DatabindContext,String)");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public String f() {
        return e(null, this.f15465b.getRawClass());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(JavaType javaType, TypeFactory typeFactory) {
        this.f15465b = javaType;
        this.f15464a = typeFactory;
    }
}
