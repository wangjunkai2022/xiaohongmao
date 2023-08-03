package com.google.common.reflect;

import com.google.common.base.a0;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Element.java */
/* loaded from: classes2.dex */
public class c extends AccessibleObject implements Member {

    /* renamed from: a  reason: collision with root package name */
    private final AccessibleObject f34943a;

    /* renamed from: b  reason: collision with root package name */
    private final Member f34944b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public <M extends AccessibleObject & Member> c(M m9) {
        a0.E(m9);
        this.f34943a = m9;
        this.f34944b = m9;
    }

    public final boolean c0() {
        return Modifier.isFinal(getModifiers());
    }

    public final boolean d0() {
        return Modifier.isNative(getModifiers());
    }

    public final boolean e0() {
        return (f0() || h0() || g0()) ? false : true;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            return f().equals(cVar.f()) && this.f34944b.equals(cVar.f34944b);
        }
        return false;
    }

    public TypeToken<?> f() {
        return TypeToken.of((Class) getDeclaringClass());
    }

    public final boolean f0() {
        return Modifier.isPrivate(getModifiers());
    }

    public final boolean g() {
        return Modifier.isAbstract(getModifiers());
    }

    public final boolean g0() {
        return Modifier.isProtected(getModifiers());
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f34943a.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotations() {
        return this.f34943a.getAnnotations();
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotations() {
        return this.f34943a.getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.Member
    public Class<?> getDeclaringClass() {
        return this.f34944b.getDeclaringClass();
    }

    @Override // java.lang.reflect.Member
    public final int getModifiers() {
        return this.f34944b.getModifiers();
    }

    @Override // java.lang.reflect.Member
    public final String getName() {
        return this.f34944b.getName();
    }

    public final boolean h0() {
        return Modifier.isPublic(getModifiers());
    }

    public int hashCode() {
        return this.f34944b.hashCode();
    }

    public final boolean i0() {
        return Modifier.isStatic(getModifiers());
    }

    @Override // java.lang.reflect.AccessibleObject
    public final boolean isAccessible() {
        return this.f34943a.isAccessible();
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.f34943a.isAnnotationPresent(cls);
    }

    @Override // java.lang.reflect.Member
    public final boolean isSynthetic() {
        return this.f34944b.isSynthetic();
    }

    public final boolean j0() {
        return Modifier.isSynchronized(getModifiers());
    }

    final boolean k0() {
        return Modifier.isTransient(getModifiers());
    }

    final boolean l0() {
        return Modifier.isVolatile(getModifiers());
    }

    @Override // java.lang.reflect.AccessibleObject
    public final void setAccessible(boolean z9) throws SecurityException {
        this.f34943a.setAccessible(z9);
    }

    public String toString() {
        return this.f34944b.toString();
    }
}
