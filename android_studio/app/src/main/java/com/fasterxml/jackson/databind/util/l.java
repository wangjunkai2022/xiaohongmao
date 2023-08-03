package com.fasterxml.jackson.databind.util;

/* compiled from: LinkedNode.java */
/* loaded from: classes2.dex */
public final class l<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f16031a;

    /* renamed from: b  reason: collision with root package name */
    private l<T> f16032b;

    public l(T t9, l<T> lVar) {
        this.f16031a = t9;
        this.f16032b = lVar;
    }

    public static <ST> boolean a(l<ST> lVar, ST st) {
        while (lVar != null) {
            if (lVar.d() == st) {
                return true;
            }
            lVar = lVar.c();
        }
        return false;
    }

    public void b(l<T> lVar) {
        if (this.f16032b == null) {
            this.f16032b = lVar;
            return;
        }
        throw new IllegalStateException();
    }

    public l<T> c() {
        return this.f16032b;
    }

    public T d() {
        return this.f16031a;
    }
}
