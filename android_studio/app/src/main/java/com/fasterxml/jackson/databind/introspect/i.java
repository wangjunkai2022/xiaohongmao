package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;

/* compiled from: AnnotationMap.java */
/* loaded from: classes.dex */
public final class i implements com.fasterxml.jackson.databind.util.a {

    /* renamed from: a  reason: collision with root package name */
    protected HashMap<Class<?>, Annotation> f15293a;

    public i() {
    }

    public static i e(i iVar, i iVar2) {
        HashMap<Class<?>, Annotation> hashMap;
        HashMap<Class<?>, Annotation> hashMap2;
        if (iVar == null || (hashMap = iVar.f15293a) == null || hashMap.isEmpty()) {
            return iVar2;
        }
        if (iVar2 == null || (hashMap2 = iVar2.f15293a) == null || hashMap2.isEmpty()) {
            return iVar;
        }
        HashMap hashMap3 = new HashMap();
        for (Annotation annotation : iVar2.f15293a.values()) {
            hashMap3.put(annotation.annotationType(), annotation);
        }
        for (Annotation annotation2 : iVar.f15293a.values()) {
            hashMap3.put(annotation2.annotationType(), annotation2);
        }
        return new i(hashMap3);
    }

    public static i f(Class<?> cls, Annotation annotation) {
        HashMap hashMap = new HashMap(4);
        hashMap.put(cls, annotation);
        return new i(hashMap);
    }

    protected final boolean a(Annotation annotation) {
        if (this.f15293a == null) {
            this.f15293a = new HashMap<>();
        }
        Annotation put = this.f15293a.put(annotation.annotationType(), annotation);
        return put == null || !put.equals(annotation);
    }

    public boolean b(Annotation annotation) {
        return a(annotation);
    }

    public boolean c(Annotation annotation) {
        HashMap<Class<?>, Annotation> hashMap = this.f15293a;
        if (hashMap == null || !hashMap.containsKey(annotation.annotationType())) {
            a(annotation);
            return true;
        }
        return false;
    }

    public Iterable<Annotation> d() {
        HashMap<Class<?>, Annotation> hashMap = this.f15293a;
        if (hashMap != null && hashMap.size() != 0) {
            return this.f15293a.values();
        }
        return Collections.emptyList();
    }

    @Override // com.fasterxml.jackson.databind.util.a
    public <A extends Annotation> A get(Class<A> cls) {
        HashMap<Class<?>, Annotation> hashMap = this.f15293a;
        if (hashMap == null) {
            return null;
        }
        return (A) hashMap.get(cls);
    }

    @Override // com.fasterxml.jackson.databind.util.a
    public boolean has(Class<?> cls) {
        HashMap<Class<?>, Annotation> hashMap = this.f15293a;
        if (hashMap == null) {
            return false;
        }
        return hashMap.containsKey(cls);
    }

    @Override // com.fasterxml.jackson.databind.util.a
    public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        if (this.f15293a != null) {
            for (Class<? extends Annotation> cls : clsArr) {
                if (this.f15293a.containsKey(cls)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.util.a
    public int size() {
        HashMap<Class<?>, Annotation> hashMap = this.f15293a;
        if (hashMap == null) {
            return 0;
        }
        return hashMap.size();
    }

    public String toString() {
        HashMap<Class<?>, Annotation> hashMap = this.f15293a;
        return hashMap == null ? "[null]" : hashMap.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(HashMap<Class<?>, Annotation> hashMap) {
        this.f15293a = hashMap;
    }
}
