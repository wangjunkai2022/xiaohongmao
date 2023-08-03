package com.airbnb.lottie;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: LottieResult.java */
/* loaded from: classes.dex */
public final class n<V> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final V f4604a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f4605b;

    public n(V v9) {
        this.f4604a = v9;
        this.f4605b = null;
    }

    @Nullable
    public Throwable a() {
        return this.f4605b;
    }

    @Nullable
    public V b() {
        return this.f4604a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (b() == null || !b().equals(nVar.b())) {
                if (a() == null || nVar.a() == null) {
                    return false;
                }
                return a().toString().equals(a().toString());
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }

    public n(Throwable th) {
        this.f4605b = th;
        this.f4604a = null;
    }
}
