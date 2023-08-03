package com.google.common.collect;

import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TopKSelector.java */
@h3.b
/* loaded from: classes2.dex */
public final class f5<T> {

    /* renamed from: a  reason: collision with root package name */
    private final int f33493a;

    /* renamed from: b  reason: collision with root package name */
    private final Comparator<? super T> f33494b;

    /* renamed from: c  reason: collision with root package name */
    private final T[] f33495c;

    /* renamed from: d  reason: collision with root package name */
    private int f33496d;
    @NullableDecl

    /* renamed from: e  reason: collision with root package name */
    private T f33497e;

    private f5(Comparator<? super T> comparator, int i4) {
        this.f33494b = (Comparator) com.google.common.base.a0.F(comparator, "comparator");
        this.f33493a = i4;
        com.google.common.base.a0.k(i4 >= 0, "k must be nonnegative, was %s", i4);
        this.f33495c = (T[]) new Object[i4 * 2];
        this.f33496d = 0;
        this.f33497e = null;
    }

    public static <T extends Comparable<? super T>> f5<T> a(int i4) {
        return b(i4, s3.B());
    }

    public static <T> f5<T> b(int i4, Comparator<? super T> comparator) {
        return new f5<>(s3.k(comparator).G(), i4);
    }

    public static <T extends Comparable<? super T>> f5<T> c(int i4) {
        return d(i4, s3.B());
    }

    public static <T> f5<T> d(int i4, Comparator<? super T> comparator) {
        return new f5<>(comparator, i4);
    }

    private int h(int i4, int i10, int i11) {
        T[] tArr = this.f33495c;
        T t9 = tArr[i11];
        tArr[i11] = tArr[i10];
        int i12 = i4;
        while (i4 < i10) {
            if (this.f33494b.compare((Object) this.f33495c[i4], t9) < 0) {
                i(i12, i4);
                i12++;
            }
            i4++;
        }
        T[] tArr2 = this.f33495c;
        tArr2[i10] = tArr2[i12];
        tArr2[i12] = t9;
        return i12;
    }

    private void i(int i4, int i10) {
        T[] tArr = this.f33495c;
        T t9 = tArr[i4];
        tArr[i4] = tArr[i10];
        tArr[i10] = t9;
    }

    private void k() {
        int i4 = (this.f33493a * 2) - 1;
        int p9 = com.google.common.math.d.p(i4 + 0, RoundingMode.CEILING) * 3;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i10 < i4) {
                int h4 = h(i10, i4, ((i10 + i4) + 1) >>> 1);
                int i13 = this.f33493a;
                if (h4 <= i13) {
                    if (h4 >= i13) {
                        break;
                    }
                    i10 = Math.max(h4, i10 + 1);
                    i12 = h4;
                } else {
                    i4 = h4 - 1;
                }
                i11++;
                if (i11 >= p9) {
                    Arrays.sort(this.f33495c, i10, i4, this.f33494b);
                    break;
                }
            } else {
                break;
            }
        }
        this.f33496d = this.f33493a;
        this.f33497e = this.f33495c[i12];
        while (true) {
            i12++;
            if (i12 >= this.f33493a) {
                return;
            }
            if (this.f33494b.compare((Object) this.f33495c[i12], (T) this.f33497e) > 0) {
                this.f33497e = this.f33495c[i12];
            }
        }
    }

    public void e(@NullableDecl T t9) {
        int i4 = this.f33493a;
        if (i4 == 0) {
            return;
        }
        int i10 = this.f33496d;
        if (i10 == 0) {
            this.f33495c[0] = t9;
            this.f33497e = t9;
            this.f33496d = 1;
        } else if (i10 < i4) {
            T[] tArr = this.f33495c;
            this.f33496d = i10 + 1;
            tArr[i10] = t9;
            if (this.f33494b.compare(t9, (T) this.f33497e) > 0) {
                this.f33497e = t9;
            }
        } else if (this.f33494b.compare(t9, (T) this.f33497e) < 0) {
            T[] tArr2 = this.f33495c;
            int i11 = this.f33496d;
            int i12 = i11 + 1;
            this.f33496d = i12;
            tArr2[i11] = t9;
            if (i12 == this.f33493a * 2) {
                k();
            }
        }
    }

    public void f(Iterable<? extends T> iterable) {
        g(iterable.iterator());
    }

    public void g(Iterator<? extends T> it) {
        while (it.hasNext()) {
            e(it.next());
        }
    }

    public List<T> j() {
        Arrays.sort(this.f33495c, 0, this.f33496d, this.f33494b);
        int i4 = this.f33496d;
        int i10 = this.f33493a;
        if (i4 > i10) {
            T[] tArr = this.f33495c;
            Arrays.fill(tArr, i10, tArr.length, (Object) null);
            int i11 = this.f33493a;
            this.f33496d = i11;
            this.f33497e = this.f33495c[i11 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(this.f33495c, this.f33496d)));
    }
}
