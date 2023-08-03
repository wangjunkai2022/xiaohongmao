package io.reactivex.rxjava3.internal.util;

/* compiled from: OpenHashSet.java */
/* loaded from: classes4.dex */
public final class l<T> {

    /* renamed from: f  reason: collision with root package name */
    private static final int f81339f = -1640531527;

    /* renamed from: a  reason: collision with root package name */
    final float f81340a;

    /* renamed from: b  reason: collision with root package name */
    int f81341b;

    /* renamed from: c  reason: collision with root package name */
    int f81342c;

    /* renamed from: d  reason: collision with root package name */
    int f81343d;

    /* renamed from: e  reason: collision with root package name */
    T[] f81344e;

    public l() {
        this(16, 0.75f);
    }

    static int c(int x9) {
        int i4 = x9 * f81339f;
        return i4 ^ (i4 >>> 16);
    }

    public boolean a(T value) {
        T t9;
        T[] tArr = this.f81344e;
        int i4 = this.f81341b;
        int c10 = c(value.hashCode()) & i4;
        T t10 = tArr[c10];
        if (t10 != null) {
            if (t10.equals(value)) {
                return false;
            }
            do {
                c10 = (c10 + 1) & i4;
                t9 = tArr[c10];
                if (t9 == null) {
                }
            } while (!t9.equals(value));
            return false;
        }
        tArr[c10] = value;
        int i10 = this.f81342c + 1;
        this.f81342c = i10;
        if (i10 >= this.f81343d) {
            d();
        }
        return true;
    }

    public Object[] b() {
        return this.f81344e;
    }

    void d() {
        T[] tArr = this.f81344e;
        int length = tArr.length;
        int i4 = length << 1;
        int i10 = i4 - 1;
        T[] tArr2 = (T[]) new Object[i4];
        int i11 = this.f81342c;
        while (true) {
            int i12 = i11 - 1;
            if (i11 != 0) {
                do {
                    length--;
                } while (tArr[length] == null);
                int c10 = c(tArr[length].hashCode()) & i10;
                if (tArr2[c10] != null) {
                    do {
                        c10 = (c10 + 1) & i10;
                    } while (tArr2[c10] != null);
                }
                tArr2[c10] = tArr[length];
                i11 = i12;
            } else {
                this.f81341b = i10;
                this.f81343d = (int) (i4 * this.f81340a);
                this.f81344e = tArr2;
                return;
            }
        }
    }

    public boolean e(T value) {
        T t9;
        T[] tArr = this.f81344e;
        int i4 = this.f81341b;
        int c10 = c(value.hashCode()) & i4;
        T t10 = tArr[c10];
        if (t10 == null) {
            return false;
        }
        if (t10.equals(value)) {
            return f(c10, tArr, i4);
        }
        do {
            c10 = (c10 + 1) & i4;
            t9 = tArr[c10];
            if (t9 == null) {
                return false;
            }
        } while (!t9.equals(value));
        return f(c10, tArr, i4);
    }

    boolean f(int pos, T[] a10, int m9) {
        int i4;
        T t9;
        this.f81342c--;
        while (true) {
            int i10 = pos + 1;
            while (true) {
                i4 = i10 & m9;
                t9 = a10[i4];
                if (t9 == null) {
                    a10[pos] = null;
                    return true;
                }
                int c10 = c(t9.hashCode()) & m9;
                if (pos > i4) {
                    if (pos >= c10 && c10 > i4) {
                        break;
                    }
                    i10 = i4 + 1;
                } else if (pos < c10 && c10 <= i4) {
                    i10 = i4 + 1;
                }
            }
            a10[pos] = t9;
            pos = i4;
        }
    }

    public int g() {
        return this.f81342c;
    }

    public l(int capacity) {
        this(capacity, 0.75f);
    }

    public l(int capacity, float loadFactor) {
        this.f81340a = loadFactor;
        int b10 = m.b(capacity);
        this.f81341b = b10 - 1;
        this.f81343d = (int) (loadFactor * b10);
        this.f81344e = (T[]) new Object[b10];
    }
}
