package com.fasterxml.jackson.databind.introspect;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.util.Collections;

/* loaded from: classes.dex */
public abstract class AnnotatedMember extends a implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15157c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final transient t f15158a;

    /* renamed from: b  reason: collision with root package name */
    protected final transient i f15159b;

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedMember(t tVar, i iVar) {
        this.f15158a = tVar;
        this.f15159b = iVar;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    @Deprecated
    public Iterable<Annotation> annotations() {
        i iVar = this.f15159b;
        if (iVar == null) {
            return Collections.emptyList();
        }
        return iVar.d();
    }

    public final void fixAccess(boolean z9) {
        Member member = getMember();
        if (member != null) {
            com.fasterxml.jackson.databind.util.g.i(member, z9);
        }
    }

    public i getAllAnnotations() {
        return this.f15159b;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        i iVar = this.f15159b;
        if (iVar == null) {
            return null;
        }
        return (A) iVar.get(cls);
    }

    public abstract Class<?> getDeclaringClass();

    public String getFullName() {
        return getDeclaringClass().getName() + "#" + getName();
    }

    public abstract Member getMember();

    @Deprecated
    public t getTypeContext() {
        return this.f15158a;
    }

    public abstract Object getValue(Object obj) throws UnsupportedOperationException, IllegalArgumentException;

    @Override // com.fasterxml.jackson.databind.introspect.a
    public final boolean hasAnnotation(Class<?> cls) {
        i iVar = this.f15159b;
        if (iVar == null) {
            return false;
        }
        return iVar.has(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        i iVar = this.f15159b;
        if (iVar == null) {
            return false;
        }
        return iVar.hasOneOf(clsArr);
    }

    public abstract void setValue(Object obj, Object obj2) throws UnsupportedOperationException, IllegalArgumentException;

    public abstract a withAnnotations(i iVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedMember(AnnotatedMember annotatedMember) {
        this.f15158a = annotatedMember.f15158a;
        this.f15159b = annotatedMember.f15159b;
    }
}
