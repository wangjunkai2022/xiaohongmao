package io.reactivex.internal.util;

/* compiled from: OpenHashSet.java */
/* loaded from: classes4.dex */
public final class l<T> {

    /* renamed from: f  reason: collision with root package name */
    private static final int f75924f = -1640531527;

    /* renamed from: a  reason: collision with root package name */
    final float f75925a;

    /* renamed from: b  reason: collision with root package name */
    int f75926b;

    /* renamed from: c  reason: collision with root package name */
    int f75927c;

    /* renamed from: d  reason: collision with root package name */
    int f75928d;

    /* renamed from: e  reason: collision with root package name */
    T[] f75929e;

    public l() {
        this(16, 0.75f);
    }

    static int c(int i4) {
        int i10 = i4 * f75924f;
        return i10 ^ (i10 >>> 16);
    }

    public boolean a(T t9) {
        T t10;
        T[] tArr = this.f75929e;
        int i4 = this.f75926b;
        int c10 = c(t9.hashCode()) & i4;
        T t11 = tArr[c10];
        if (t11 != null) {
            if (t11.equals(t9)) {
                return false;
            }
            do {
                c10 = (c10 + 1) & i4;
                t10 = tArr[c10];
                if (t10 == null) {
                }
            } while (!t10.equals(t9));
            return false;
        }
        tArr[c10] = t9;
        int i10 = this.f75927c + 1;
        this.f75927c = i10;
        if (i10 >= this.f75928d) {
            d();
        }
        return true;
    }

    public Object[] b() {
        return this.f75929e;
    }

    void d() {
        T[] tArr = this.f75929e;
        int length = tArr.length;
        int i4 = length << 1;
        int i10 = i4 - 1;
        T[] tArr2 = (T[]) new Object[i4];
        int i11 = this.f75927c;
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
                this.f75926b = i10;
                this.f75928d = (int) (i4 * this.f75925a);
                this.f75929e = tArr2;
                return;
            }
        }
    }

    public boolean e(T t9) {
        T t10;
        T[] tArr = this.f75929e;
        int i4 = this.f75926b;
        int c10 = c(t9.hashCode()) & i4;
        T t11 = tArr[c10];
        if (t11 == null) {
            return false;
        }
        if (t11.equals(t9)) {
            return f(c10, tArr, i4);
        }
        do {
            c10 = (c10 + 1) & i4;
            t10 = tArr[c10];
            if (t10 == null) {
                return false;
            }
        } while (!t10.equals(t9));
        return f(c10, tArr, i4);
    }

    boolean f(int i4, T[] tArr, int i10) {
        int i11;
        T t9;
        this.f75927c--;
        while (true) {
            int i12 = i4 + 1;
            while (true) {
                i11 = i12 & i10;
                t9 = tArr[i11];
                if (t9 == null) {
                    tArr[i4] = null;
                    return true;
                }
                int c10 = c(t9.hashCode()) & i10;
                if (i4 > i11) {
                    if (i4 >= c10 && c10 > i11) {
                        break;
                    }
                    i12 = i11 + 1;
                } else if (i4 < c10 && c10 <= i11) {
                    i12 = i11 + 1;
                }
            }
            tArr[i4] = t9;
            i4 = i11;
        }
    }

    public int g() {
        return this.f75927c;
    }

    public l(int i4) {
        this(i4, 0.75f);
    }

    public l(int i4, float f10) {
        this.f75925a = f10;
        int b10 = m.b(i4);
        this.f75926b = b10 - 1;
        this.f75928d = (int) (f10 * b10);
        this.f75929e = (T[]) new Object[b10];
    }
}
