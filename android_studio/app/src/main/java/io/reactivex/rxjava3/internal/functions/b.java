package io.reactivex.rxjava3.internal.functions;

import java.util.Objects;
import q7.d;

/* compiled from: ObjectHelper.java */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final d<Object, Object> f76224a = new a();

    /* compiled from: ObjectHelper.java */
    /* loaded from: classes4.dex */
    static final class a implements d<Object, Object> {
        a() {
        }

        @Override // q7.d
        public boolean a(Object o12, Object o22) {
            return Objects.equals(o12, o22);
        }
    }

    private b() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> d<T, T> a() {
        return (d<T, T>) f76224a;
    }

    public static int b(int value, String paramName) {
        if (value > 0) {
            return value;
        }
        throw new IllegalArgumentException(paramName + " > 0 required but it was " + value);
    }

    public static long c(long value, String paramName) {
        if (value > 0) {
            return value;
        }
        throw new IllegalArgumentException(paramName + " > 0 required but it was " + value);
    }
}
