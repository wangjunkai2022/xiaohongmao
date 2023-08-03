package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ogg.i;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import java.util.Arrays;
import okio.Utf8;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* compiled from: OpusReader.java */
/* loaded from: classes2.dex */
final class h extends i {

    /* renamed from: s  reason: collision with root package name */
    private static final int f22914s = 1332770163;

    /* renamed from: t  reason: collision with root package name */
    private static final byte[] f22915t = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: r  reason: collision with root package name */
    private boolean f22916r;

    private long n(byte[] bArr) {
        int i4 = bArr[0] & 255;
        int i10 = i4 & 3;
        int i11 = 2;
        if (i10 == 0) {
            i11 = 1;
        } else if (i10 != 1 && i10 != 2) {
            i11 = bArr[1] & Utf8.REPLACEMENT_BYTE;
        }
        int i12 = i4 >> 3;
        int i13 = i12 & 3;
        return i11 * (i12 >= 16 ? 2500 << i13 : i12 >= 12 ? 10000 << (i13 & 1) : i13 == 3 ? com.im.freechat.utils.e.f43748a : 10000 << i13);
    }

    public static boolean o(h0 h0Var) {
        int a10 = h0Var.a();
        byte[] bArr = f22915t;
        if (a10 < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        h0Var.k(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected long f(h0 h0Var) {
        return c(n(h0Var.d()));
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected boolean i(h0 h0Var, long j4, i.b bVar) {
        if (!this.f22916r) {
            byte[] copyOf = Arrays.copyOf(h0Var.d(), h0Var.f());
            bVar.f22934a = new Format.b().e0(a0.U).H(com.google.android.exoplayer2.audio.h0.c(copyOf)).f0(48000).T(com.google.android.exoplayer2.audio.h0.a(copyOf)).E();
            this.f22916r = true;
            return true;
        }
        com.google.android.exoplayer2.util.a.g(bVar.f22934a);
        boolean z9 = h0Var.o() == 1332770163;
        h0Var.S(0);
        return z9;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected void l(boolean z9) {
        super.l(z9);
        if (z9) {
            this.f22916r = false;
        }
    }
}
