package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: MultiClassKey.java */
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private Class<?> f9724a;

    /* renamed from: b  reason: collision with root package name */
    private Class<?> f9725b;

    /* renamed from: c  reason: collision with root package name */
    private Class<?> f9726c;

    public l() {
    }

    public void a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        b(cls, cls2, null);
    }

    public void b(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.f9724a = cls;
        this.f9725b = cls2;
        this.f9726c = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f9724a.equals(lVar.f9724a) && this.f9725b.equals(lVar.f9725b) && o.d(this.f9726c, lVar.f9726c);
    }

    public int hashCode() {
        int hashCode = ((this.f9724a.hashCode() * 31) + this.f9725b.hashCode()) * 31;
        Class<?> cls = this.f9726c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f9724a + ", second=" + this.f9725b + '}';
    }

    public l(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        a(cls, cls2);
    }

    public l(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        b(cls, cls2, cls3);
    }
}
