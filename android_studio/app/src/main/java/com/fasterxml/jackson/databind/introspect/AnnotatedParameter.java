package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class AnnotatedParameter extends AnnotatedMember {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15168g = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final AnnotatedWithParams f15169d;

    /* renamed from: e  reason: collision with root package name */
    protected final JavaType f15170e;

    /* renamed from: f  reason: collision with root package name */
    protected final int f15171f;

    public AnnotatedParameter(AnnotatedWithParams annotatedWithParams, JavaType javaType, t tVar, i iVar, int i4) {
        super(tVar, iVar);
        this.f15169d = annotatedWithParams;
        this.f15170e = javaType;
        this.f15171f = i4;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (com.fasterxml.jackson.databind.util.g.Q(obj, AnnotatedParameter.class)) {
            AnnotatedParameter annotatedParameter = (AnnotatedParameter) obj;
            return annotatedParameter.f15169d.equals(this.f15169d) && annotatedParameter.f15171f == this.f15171f;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public AnnotatedElement getAnnotated() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Class<?> getDeclaringClass() {
        return this.f15169d.getDeclaringClass();
    }

    public int getIndex() {
        return this.f15171f;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Member getMember() {
        return this.f15169d.getMember();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int getModifiers() {
        return this.f15169d.getModifiers();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String getName() {
        return "";
    }

    public AnnotatedWithParams getOwner() {
        return this.f15169d;
    }

    public Type getParameterType() {
        return this.f15170e;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Class<?> getRawType() {
        return this.f15170e.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public JavaType getType() {
        return this.f15170e;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Object getValue(Object obj) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Cannot call getValue() on constructor parameter of " + getDeclaringClass().getName());
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int hashCode() {
        return this.f15169d.hashCode() + this.f15171f;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public void setValue(Object obj, Object obj2) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Cannot call setValue() on constructor parameter of " + getDeclaringClass().getName());
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String toString() {
        return "[parameter #" + getIndex() + ", annotations: " + this.f15159b + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public AnnotatedParameter withAnnotations(i iVar) {
        return iVar == this.f15159b ? this : this.f15169d.b(this.f15171f, iVar);
    }
}
