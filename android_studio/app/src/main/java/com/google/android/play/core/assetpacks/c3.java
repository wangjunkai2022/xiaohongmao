package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class c3 {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f31260a = new byte[4096];

    /* renamed from: b  reason: collision with root package name */
    private int f31261b;

    /* renamed from: c  reason: collision with root package name */
    private long f31262c;

    /* renamed from: d  reason: collision with root package name */
    private long f31263d;

    /* renamed from: e  reason: collision with root package name */
    private int f31264e;

    /* renamed from: f  reason: collision with root package name */
    private int f31265f;

    /* renamed from: g  reason: collision with root package name */
    private int f31266g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f31267h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f31268i;

    public c3() {
        d();
    }

    private final int e(int i4, byte[] bArr, int i10, int i11) {
        int i12 = this.f31261b;
        if (i12 < i4) {
            int min = Math.min(i11, i4 - i12);
            System.arraycopy(bArr, i10, this.f31260a, this.f31261b, min);
            int i13 = this.f31261b + min;
            this.f31261b = i13;
            if (i13 < i4) {
                return -1;
            }
            return min;
        }
        return 0;
    }

    public final int a() {
        return this.f31265f;
    }

    public final int b(byte[] bArr, int i4, int i10) {
        int e4 = e(30, bArr, i4, i10);
        if (e4 != -1) {
            if (this.f31262c == -1) {
                long c10 = z0.c(this.f31260a, 0);
                this.f31262c = c10;
                if (c10 == 67324752) {
                    this.f31267h = false;
                    this.f31263d = z0.c(this.f31260a, 18);
                    this.f31266g = z0.a(this.f31260a, 8);
                    this.f31264e = z0.a(this.f31260a, 26);
                    int a10 = this.f31264e + 30 + z0.a(this.f31260a, 28);
                    this.f31265f = a10;
                    int length = this.f31260a.length;
                    if (length < a10) {
                        do {
                            length += length;
                        } while (length < a10);
                        this.f31260a = Arrays.copyOf(this.f31260a, length);
                    }
                } else {
                    this.f31267h = true;
                }
            }
            int e10 = e(this.f31265f, bArr, i4 + e4, i10 - e4);
            if (e10 == -1) {
                return -1;
            }
            int i11 = e4 + e10;
            if (!this.f31267h && this.f31268i == null) {
                this.f31268i = new String(this.f31260a, 30, this.f31264e);
            }
            return i11;
        }
        return -1;
    }

    public final e4 c() {
        int i4 = this.f31261b;
        int i10 = this.f31265f;
        if (i4 < i10) {
            return new y0(this.f31268i, this.f31263d, this.f31266g, true, this.f31267h, Arrays.copyOf(this.f31260a, i4));
        }
        y0 y0Var = new y0(this.f31268i, this.f31263d, this.f31266g, false, this.f31267h, Arrays.copyOf(this.f31260a, i10));
        d();
        return y0Var;
    }

    public final void d() {
        this.f31261b = 0;
        this.f31264e = -1;
        this.f31262c = -1L;
        this.f31267h = false;
        this.f31265f = 30;
        this.f31263d = -1L;
        this.f31266g = -1;
        this.f31268i = null;
    }
}
