package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;

/* loaded from: classes.dex */
public class VirtualAnnotatedMember extends AnnotatedMember implements Serializable {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15232g = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final Class<?> f15233d;

    /* renamed from: e  reason: collision with root package name */
    protected final JavaType f15234e;

    /* renamed from: f  reason: collision with root package name */
    protected final String f15235f;

    public VirtualAnnotatedMember(t tVar, Class<?> cls, String str, JavaType javaType) {
        super(tVar, null);
        this.f15233d = cls;
        this.f15234e = javaType;
        this.f15235f = str;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (com.fasterxml.jackson.databind.util.g.Q(obj, getClass())) {
            VirtualAnnotatedMember virtualAnnotatedMember = (VirtualAnnotatedMember) obj;
            return virtualAnnotatedMember.f15233d == this.f15233d && virtualAnnotatedMember.f15235f.equals(this.f15235f);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Field getAnnotated() {
        return null;
    }

    public int getAnnotationCount() {
        return 0;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Class<?> getDeclaringClass() {
        return this.f15233d;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Member getMember() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int getModifiers() {
        return 0;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String getName() {
        return this.f15235f;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Class<?> getRawType() {
        return this.f15234e.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public JavaType getType() {
        return this.f15234e;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Object getValue(Object obj) throws IllegalArgumentException {
        throw new IllegalArgumentException("Cannot get virtual property '" + this.f15235f + "'");
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int hashCode() {
        return this.f15235f.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public void setValue(Object obj, Object obj2) throws IllegalArgumentException {
        throw new IllegalArgumentException("Cannot set virtual property '" + this.f15235f + "'");
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String toString() {
        return "[virtual " + getFullName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public a withAnnotations(i iVar) {
        return this;
    }
}
