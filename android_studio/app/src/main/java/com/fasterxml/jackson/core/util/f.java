package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.util.e;

/* compiled from: JacksonFeatureSet.java */
/* loaded from: classes.dex */
public final class f<F extends e> {

    /* renamed from: a  reason: collision with root package name */
    protected int f14283a;

    protected f(int i4) {
        this.f14283a = i4;
    }

    public static <F extends e> f<F> b(int i4) {
        return new f<>(i4);
    }

    public static <F extends e> f<F> c(F[] fArr) {
        if (fArr.length <= 31) {
            int i4 = 0;
            for (F f10 : fArr) {
                if (f10.enabledByDefault()) {
                    i4 |= f10.getMask();
                }
            }
            return new f<>(i4);
        }
        throw new IllegalArgumentException(String.format("Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)", fArr[0].getClass().getName(), Integer.valueOf(fArr.length)));
    }

    public int a() {
        return this.f14283a;
    }

    public boolean d(F f10) {
        return (f10.getMask() & this.f14283a) != 0;
    }

    public f<F> e(F f10) {
        int mask = f10.getMask() | this.f14283a;
        return mask == this.f14283a ? this : new f<>(mask);
    }

    public f<F> f(F f10) {
        int i4 = (~f10.getMask()) & this.f14283a;
        return i4 == this.f14283a ? this : new f<>(i4);
    }
}
