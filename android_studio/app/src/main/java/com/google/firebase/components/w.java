package com.google.firebase.components;

import androidx.annotation.VisibleForTesting;

/* compiled from: Lazy.java */
/* loaded from: classes2.dex */
public class w<T> implements o3.b<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f35477c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f35478a;

    /* renamed from: b  reason: collision with root package name */
    private volatile o3.b<T> f35479b;

    w(T t9) {
        this.f35478a = f35477c;
        this.f35478a = t9;
    }

    @VisibleForTesting
    boolean a() {
        return this.f35478a != f35477c;
    }

    @Override // o3.b
    public T get() {
        T t9 = (T) this.f35478a;
        Object obj = f35477c;
        if (t9 == obj) {
            synchronized (this) {
                t9 = this.f35478a;
                if (t9 == obj) {
                    t9 = this.f35479b.get();
                    this.f35478a = t9;
                    this.f35479b = null;
                }
            }
        }
        return t9;
    }

    public w(o3.b<T> bVar) {
        this.f35478a = f35477c;
        this.f35479b = bVar;
    }
}
