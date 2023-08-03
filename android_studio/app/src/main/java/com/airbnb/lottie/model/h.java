package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.alipay.sdk.util.i;

/* compiled from: MutablePair.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class h<T> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    T f4544a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    T f4545b;

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void b(T t9, T t10) {
        this.f4544a = t9;
        this.f4545b = t10;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            return a(pair.first, this.f4544a) && a(pair.second, this.f4545b);
        }
        return false;
    }

    public int hashCode() {
        T t9 = this.f4544a;
        int hashCode = t9 == null ? 0 : t9.hashCode();
        T t10 = this.f4545b;
        return hashCode ^ (t10 != null ? t10.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f4544a) + " " + String.valueOf(this.f4545b) + i.f6967d;
    }
}
