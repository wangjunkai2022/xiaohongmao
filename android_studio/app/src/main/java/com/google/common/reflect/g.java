package com.google.common.reflect;

import com.google.common.base.a0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.c1;
import com.google.common.collect.k5;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Parameter.java */
@h3.a
/* loaded from: classes2.dex */
public final class g implements AnnotatedElement {

    /* renamed from: a  reason: collision with root package name */
    private final e<?, ?> f34952a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34953b;

    /* renamed from: c  reason: collision with root package name */
    private final TypeToken<?> f34954c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableList<Annotation> f34955d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(e<?, ?> eVar, int i4, TypeToken<?> typeToken, Annotation[] annotationArr) {
        this.f34952a = eVar;
        this.f34953b = i4;
        this.f34954c = typeToken;
        this.f34955d = ImmutableList.copyOf(annotationArr);
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            return this.f34953b == gVar.f34953b && this.f34952a.equals(gVar.f34952a);
        }
        return false;
    }

    public e<?, ?> f() {
        return this.f34952a;
    }

    public TypeToken<?> g() {
        return this.f34954c;
    }

    @Override // java.lang.reflect.AnnotatedElement
    @NullableDecl
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        a0.E(cls);
        k5<Annotation> it = this.f34955d.iterator();
        while (it.hasNext()) {
            Annotation next = it.next();
            if (cls.isInstance(next)) {
                return cls.cast(next);
            }
        }
        return null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getAnnotations() {
        return getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        return (A[]) getDeclaredAnnotationsByType(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    @NullableDecl
    public <A extends Annotation> A getDeclaredAnnotation(Class<A> cls) {
        a0.E(cls);
        return (A) c1.s(this.f34955d).o(cls).p().orNull();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getDeclaredAnnotations() {
        ImmutableList<Annotation> immutableList = this.f34955d;
        return (Annotation[]) immutableList.toArray(new Annotation[immutableList.size()]);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getDeclaredAnnotationsByType(Class<A> cls) {
        return (A[]) ((Annotation[]) c1.s(this.f34955d).o(cls).F(cls));
    }

    public int hashCode() {
        return this.f34953b;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return getAnnotation(cls) != null;
    }

    public String toString() {
        return this.f34954c + " arg" + this.f34953b;
    }
}
