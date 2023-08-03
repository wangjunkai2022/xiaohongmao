package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: TimedValueQueue.java */
/* loaded from: classes2.dex */
public final class t0<V> {

    /* renamed from: e  reason: collision with root package name */
    private static final int f27697e = 10;

    /* renamed from: a  reason: collision with root package name */
    private long[] f27698a;

    /* renamed from: b  reason: collision with root package name */
    private V[] f27699b;

    /* renamed from: c  reason: collision with root package name */
    private int f27700c;

    /* renamed from: d  reason: collision with root package name */
    private int f27701d;

    public t0() {
        this(10);
    }

    private void b(long j4, V v9) {
        int i4 = this.f27700c;
        int i10 = this.f27701d;
        V[] vArr = this.f27699b;
        int length = (i4 + i10) % vArr.length;
        this.f27698a[length] = j4;
        vArr[length] = v9;
        this.f27701d = i10 + 1;
    }

    private void d(long j4) {
        int i4 = this.f27701d;
        if (i4 > 0) {
            if (j4 <= this.f27698a[((this.f27700c + i4) - 1) % this.f27699b.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.f27699b.length;
        if (this.f27701d < length) {
            return;
        }
        int i4 = length * 2;
        long[] jArr = new long[i4];
        V[] vArr = (V[]) f(i4);
        int i10 = this.f27700c;
        int i11 = length - i10;
        System.arraycopy(this.f27698a, i10, jArr, 0, i11);
        System.arraycopy(this.f27699b, this.f27700c, vArr, 0, i11);
        int i12 = this.f27700c;
        if (i12 > 0) {
            System.arraycopy(this.f27698a, 0, jArr, i11, i12);
            System.arraycopy(this.f27699b, 0, vArr, i11, this.f27700c);
        }
        this.f27698a = jArr;
        this.f27699b = vArr;
        this.f27700c = 0;
    }

    private static <V> V[] f(int i4) {
        return (V[]) new Object[i4];
    }

    @Nullable
    private V h(long j4, boolean z9) {
        V v9 = null;
        long j10 = Long.MAX_VALUE;
        while (this.f27701d > 0) {
            long j11 = j4 - this.f27698a[this.f27700c];
            if (j11 < 0 && (z9 || (-j11) >= j10)) {
                break;
            }
            v9 = k();
            j10 = j11;
        }
        return v9;
    }

    @Nullable
    private V k() {
        a.i(this.f27701d > 0);
        V[] vArr = this.f27699b;
        int i4 = this.f27700c;
        V v9 = vArr[i4];
        vArr[i4] = null;
        this.f27700c = (i4 + 1) % vArr.length;
        this.f27701d--;
        return v9;
    }

    public synchronized void a(long j4, V v9) {
        d(j4);
        e();
        b(j4, v9);
    }

    public synchronized void c() {
        this.f27700c = 0;
        this.f27701d = 0;
        Arrays.fill(this.f27699b, (Object) null);
    }

    @Nullable
    public synchronized V g(long j4) {
        return h(j4, false);
    }

    @Nullable
    public synchronized V i() {
        return this.f27701d == 0 ? null : k();
    }

    @Nullable
    public synchronized V j(long j4) {
        return h(j4, true);
    }

    public synchronized int l() {
        return this.f27701d;
    }

    public t0(int i4) {
        this.f27698a = new long[i4];
        this.f27699b = (V[]) f(i4);
    }
}
