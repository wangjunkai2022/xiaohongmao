package com.facebook.common.references;

import com.facebook.infer.annotation.Nullsafe;
import java.lang.ref.SoftReference;

/* compiled from: OOMSoftReference.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class f<T> {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    SoftReference<T> f11021a = null;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    SoftReference<T> f11022b = null;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    SoftReference<T> f11023c = null;

    public void a() {
        SoftReference<T> softReference = this.f11021a;
        if (softReference != null) {
            softReference.clear();
            this.f11021a = null;
        }
        SoftReference<T> softReference2 = this.f11022b;
        if (softReference2 != null) {
            softReference2.clear();
            this.f11022b = null;
        }
        SoftReference<T> softReference3 = this.f11023c;
        if (softReference3 != null) {
            softReference3.clear();
            this.f11023c = null;
        }
    }

    @r7.h
    public T b() {
        SoftReference<T> softReference = this.f11021a;
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    public void c(T hardReference) {
        this.f11021a = new SoftReference<>(hardReference);
        this.f11022b = new SoftReference<>(hardReference);
        this.f11023c = new SoftReference<>(hardReference);
    }
}
