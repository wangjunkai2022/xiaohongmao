package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.HashSet;

/* compiled from: ArrayBuilders.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private C0124b f15995a = null;

    /* renamed from: b  reason: collision with root package name */
    private c f15996b = null;

    /* renamed from: c  reason: collision with root package name */
    private h f15997c = null;

    /* renamed from: d  reason: collision with root package name */
    private f f15998d = null;

    /* renamed from: e  reason: collision with root package name */
    private g f15999e = null;

    /* renamed from: f  reason: collision with root package name */
    private e f16000f = null;

    /* renamed from: g  reason: collision with root package name */
    private d f16001g = null;

    /* compiled from: ArrayBuilders.java */
    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f16002a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f16003b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f16004c;

        a(Class cls, int i4, Object obj) {
            this.f16002a = cls;
            this.f16003b = i4;
            this.f16004c = obj;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (com.fasterxml.jackson.databind.util.g.Q(obj, this.f16002a) && Array.getLength(obj) == this.f16003b) {
                for (int i4 = 0; i4 < this.f16003b; i4++) {
                    Object obj2 = Array.get(this.f16004c, i4);
                    Object obj3 = Array.get(obj, i4);
                    if (obj2 != obj3 && obj2 != null && !obj2.equals(obj3)) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
    }

    /* compiled from: ArrayBuilders.java */
    /* renamed from: com.fasterxml.jackson.databind.util.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0124b extends p<boolean[]> {
        @Override // com.fasterxml.jackson.databind.util.p
        /* renamed from: g */
        public final boolean[] a(int i4) {
            return new boolean[i4];
        }
    }

    /* compiled from: ArrayBuilders.java */
    /* loaded from: classes2.dex */
    public static final class c extends p<byte[]> {
        @Override // com.fasterxml.jackson.databind.util.p
        /* renamed from: g */
        public final byte[] a(int i4) {
            return new byte[i4];
        }
    }

    /* compiled from: ArrayBuilders.java */
    /* loaded from: classes2.dex */
    public static final class d extends p<double[]> {
        @Override // com.fasterxml.jackson.databind.util.p
        /* renamed from: g */
        public final double[] a(int i4) {
            return new double[i4];
        }
    }

    /* compiled from: ArrayBuilders.java */
    /* loaded from: classes2.dex */
    public static final class e extends p<float[]> {
        @Override // com.fasterxml.jackson.databind.util.p
        /* renamed from: g */
        public final float[] a(int i4) {
            return new float[i4];
        }
    }

    /* compiled from: ArrayBuilders.java */
    /* loaded from: classes2.dex */
    public static final class f extends p<int[]> {
        @Override // com.fasterxml.jackson.databind.util.p
        /* renamed from: g */
        public final int[] a(int i4) {
            return new int[i4];
        }
    }

    /* compiled from: ArrayBuilders.java */
    /* loaded from: classes2.dex */
    public static final class g extends p<long[]> {
        @Override // com.fasterxml.jackson.databind.util.p
        /* renamed from: g */
        public final long[] a(int i4) {
            return new long[i4];
        }
    }

    /* compiled from: ArrayBuilders.java */
    /* loaded from: classes2.dex */
    public static final class h extends p<short[]> {
        @Override // com.fasterxml.jackson.databind.util.p
        /* renamed from: g */
        public final short[] a(int i4) {
            return new short[i4];
        }
    }

    public static <T> HashSet<T> a(T[] tArr) {
        if (tArr != null) {
            HashSet<T> hashSet = new HashSet<>(tArr.length);
            for (T t9 : tArr) {
                hashSet.add(t9);
            }
            return hashSet;
        }
        return new HashSet<>();
    }

    public static Object b(Object obj) {
        return new a(obj.getClass(), Array.getLength(obj), obj);
    }

    public static <T> T[] j(T[] tArr, T t9) {
        int length = tArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (tArr[i4] == t9) {
                if (i4 == 0) {
                    return tArr;
                }
                T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), length));
                System.arraycopy(tArr, 0, tArr2, 1, i4);
                tArr2[0] = t9;
                int i10 = i4 + 1;
                int i11 = length - i10;
                if (i11 > 0) {
                    System.arraycopy(tArr, i10, tArr2, i10, i11);
                }
                return tArr2;
            }
        }
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + 1));
        if (length > 0) {
            System.arraycopy(tArr, 0, tArr3, 1, length);
        }
        tArr3[0] = t9;
        return tArr3;
    }

    public C0124b c() {
        if (this.f15995a == null) {
            this.f15995a = new C0124b();
        }
        return this.f15995a;
    }

    public c d() {
        if (this.f15996b == null) {
            this.f15996b = new c();
        }
        return this.f15996b;
    }

    public d e() {
        if (this.f16001g == null) {
            this.f16001g = new d();
        }
        return this.f16001g;
    }

    public e f() {
        if (this.f16000f == null) {
            this.f16000f = new e();
        }
        return this.f16000f;
    }

    public f g() {
        if (this.f15998d == null) {
            this.f15998d = new f();
        }
        return this.f15998d;
    }

    public g h() {
        if (this.f15999e == null) {
            this.f15999e = new g();
        }
        return this.f15999e;
    }

    public h i() {
        if (this.f15997c == null) {
            this.f15997c = new h();
        }
        return this.f15997c;
    }
}
