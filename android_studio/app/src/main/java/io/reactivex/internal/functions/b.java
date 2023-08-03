package io.reactivex.internal.functions;

import java.util.Objects;
import n7.d;

/* compiled from: ObjectHelper.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final d<Object, Object> f71172a = new a();

    /* compiled from: ObjectHelper.java */
    /* loaded from: classes3.dex */
    static final class a implements d<Object, Object> {
        a() {
        }

        @Override // n7.d
        public boolean a(Object obj, Object obj2) {
            return b.c(obj, obj2);
        }
    }

    private b() {
        throw new IllegalStateException("No instances!");
    }

    public static int a(int i4, int i10) {
        if (i4 < i10) {
            return -1;
        }
        return i4 > i10 ? 1 : 0;
    }

    public static int b(long j4, long j10) {
        int i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
        if (i4 < 0) {
            return -1;
        }
        return i4 > 0 ? 1 : 0;
    }

    public static boolean c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <T> d<T, T> d() {
        return (d<T, T>) f71172a;
    }

    public static int e(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    @Deprecated
    public static long f(long j4, String str) {
        throw new InternalError("Null check on a primitive: " + str);
    }

    public static <T> T g(T t9, String str) {
        Objects.requireNonNull(t9, str);
        return t9;
    }

    public static int h(int i4, String str) {
        if (i4 > 0) {
            return i4;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i4);
    }

    public static long i(long j4, String str) {
        if (j4 > 0) {
            return j4;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j4);
    }
}
