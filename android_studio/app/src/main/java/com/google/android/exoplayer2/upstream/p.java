package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;

/* compiled from: DefaultAllocator.java */
/* loaded from: classes2.dex */
public final class p implements b {

    /* renamed from: i  reason: collision with root package name */
    private static final int f27309i = 100;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f27310a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27311b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f27312c;

    /* renamed from: d  reason: collision with root package name */
    private final a[] f27313d;

    /* renamed from: e  reason: collision with root package name */
    private int f27314e;

    /* renamed from: f  reason: collision with root package name */
    private int f27315f;

    /* renamed from: g  reason: collision with root package name */
    private int f27316g;

    /* renamed from: h  reason: collision with root package name */
    private a[] f27317h;

    public p(boolean z9, int i4) {
        this(z9, i4, 0);
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized a a() {
        a aVar;
        this.f27315f++;
        int i4 = this.f27316g;
        if (i4 > 0) {
            a[] aVarArr = this.f27317h;
            int i10 = i4 - 1;
            this.f27316g = i10;
            aVar = (a) com.google.android.exoplayer2.util.a.g(aVarArr[i10]);
            this.f27317h[this.f27316g] = null;
        } else {
            aVar = new a(new byte[this.f27311b], 0);
        }
        return aVar;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized int b() {
        return this.f27315f * this.f27311b;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void c(a[] aVarArr) {
        int i4 = this.f27316g;
        int length = aVarArr.length + i4;
        a[] aVarArr2 = this.f27317h;
        if (length >= aVarArr2.length) {
            this.f27317h = (a[]) Arrays.copyOf(aVarArr2, Math.max(aVarArr2.length * 2, i4 + aVarArr.length));
        }
        for (a aVar : aVarArr) {
            a[] aVarArr3 = this.f27317h;
            int i10 = this.f27316g;
            this.f27316g = i10 + 1;
            aVarArr3[i10] = aVar;
        }
        this.f27315f -= aVarArr.length;
        notifyAll();
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void d(a aVar) {
        a[] aVarArr = this.f27313d;
        aVarArr[0] = aVar;
        c(aVarArr);
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public synchronized void e() {
        int i4 = 0;
        int max = Math.max(0, z0.m(this.f27314e, this.f27311b) - this.f27315f);
        int i10 = this.f27316g;
        if (max >= i10) {
            return;
        }
        if (this.f27312c != null) {
            int i11 = i10 - 1;
            while (i4 <= i11) {
                a aVar = (a) com.google.android.exoplayer2.util.a.g(this.f27317h[i4]);
                if (aVar.f27022a == this.f27312c) {
                    i4++;
                } else {
                    a aVar2 = (a) com.google.android.exoplayer2.util.a.g(this.f27317h[i11]);
                    if (aVar2.f27022a != this.f27312c) {
                        i11--;
                    } else {
                        a[] aVarArr = this.f27317h;
                        aVarArr[i4] = aVar2;
                        aVarArr[i11] = aVar;
                        i11--;
                        i4++;
                    }
                }
            }
            max = Math.max(max, i4);
            if (max >= this.f27316g) {
                return;
            }
        }
        Arrays.fill(this.f27317h, max, this.f27316g, (Object) null);
        this.f27316g = max;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public int f() {
        return this.f27311b;
    }

    public synchronized void g() {
        if (this.f27310a) {
            h(0);
        }
    }

    public synchronized void h(int i4) {
        boolean z9 = i4 < this.f27314e;
        this.f27314e = i4;
        if (z9) {
            e();
        }
    }

    public p(boolean z9, int i4, int i10) {
        com.google.android.exoplayer2.util.a.a(i4 > 0);
        com.google.android.exoplayer2.util.a.a(i10 >= 0);
        this.f27310a = z9;
        this.f27311b = i4;
        this.f27316g = i10;
        this.f27317h = new a[i10 + 100];
        if (i10 > 0) {
            this.f27312c = new byte[i10 * i4];
            for (int i11 = 0; i11 < i10; i11++) {
                this.f27317h[i11] = new a(this.f27312c, i11 * i4);
            }
        } else {
            this.f27312c = null;
        }
        this.f27313d = new a[1];
    }
}
