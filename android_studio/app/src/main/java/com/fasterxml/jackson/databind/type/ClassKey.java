package com.fasterxml.jackson.databind.type;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class ClassKey implements Comparable<ClassKey>, Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15856d = 1;

    /* renamed from: a  reason: collision with root package name */
    private String f15857a;

    /* renamed from: b  reason: collision with root package name */
    private Class<?> f15858b;

    /* renamed from: c  reason: collision with root package name */
    private int f15859c;

    public ClassKey() {
        this.f15858b = null;
        this.f15857a = null;
        this.f15859c = 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass() == ClassKey.class && ((ClassKey) obj).f15858b == this.f15858b;
    }

    public int hashCode() {
        return this.f15859c;
    }

    public void reset(Class<?> cls) {
        this.f15858b = cls;
        String name = cls.getName();
        this.f15857a = name;
        this.f15859c = name.hashCode();
    }

    public String toString() {
        return this.f15857a;
    }

    @Override // java.lang.Comparable
    public int compareTo(ClassKey classKey) {
        return this.f15857a.compareTo(classKey.f15857a);
    }

    public ClassKey(Class<?> cls) {
        this.f15858b = cls;
        String name = cls.getName();
        this.f15857a = name;
        this.f15859c = name.hashCode();
    }
}
