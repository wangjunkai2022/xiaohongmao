package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.source.w0;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: SampleDataQueue.java */
/* loaded from: classes2.dex */
class u0 {

    /* renamed from: h  reason: collision with root package name */
    private static final int f25179h = 32;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f25180a;

    /* renamed from: b  reason: collision with root package name */
    private final int f25181b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f25182c;

    /* renamed from: d  reason: collision with root package name */
    private a f25183d;

    /* renamed from: e  reason: collision with root package name */
    private a f25184e;

    /* renamed from: f  reason: collision with root package name */
    private a f25185f;

    /* renamed from: g  reason: collision with root package name */
    private long f25186g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SampleDataQueue.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f25187a;

        /* renamed from: b  reason: collision with root package name */
        public final long f25188b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f25189c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public com.google.android.exoplayer2.upstream.a f25190d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public a f25191e;

        public a(long j4, int i4) {
            this.f25187a = j4;
            this.f25188b = j4 + i4;
        }

        public a a() {
            this.f25190d = null;
            a aVar = this.f25191e;
            this.f25191e = null;
            return aVar;
        }

        public void b(com.google.android.exoplayer2.upstream.a aVar, a aVar2) {
            this.f25190d = aVar;
            this.f25191e = aVar2;
            this.f25189c = true;
        }

        public int c(long j4) {
            return ((int) (j4 - this.f25187a)) + this.f25190d.f27023b;
        }
    }

    public u0(com.google.android.exoplayer2.upstream.b bVar) {
        this.f25180a = bVar;
        int f10 = bVar.f();
        this.f25181b = f10;
        this.f25182c = new com.google.android.exoplayer2.util.h0(32);
        a aVar = new a(0L, f10);
        this.f25183d = aVar;
        this.f25184e = aVar;
        this.f25185f = aVar;
    }

    private void a(a aVar) {
        if (aVar.f25189c) {
            a aVar2 = this.f25185f;
            int i4 = (aVar2.f25189c ? 1 : 0) + (((int) (aVar2.f25187a - aVar.f25187a)) / this.f25181b);
            com.google.android.exoplayer2.upstream.a[] aVarArr = new com.google.android.exoplayer2.upstream.a[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                aVarArr[i10] = aVar.f25190d;
                aVar = aVar.a();
            }
            this.f25180a.c(aVarArr);
        }
    }

    private static a d(a aVar, long j4) {
        while (j4 >= aVar.f25188b) {
            aVar = aVar.f25191e;
        }
        return aVar;
    }

    private void g(int i4) {
        long j4 = this.f25186g + i4;
        this.f25186g = j4;
        a aVar = this.f25185f;
        if (j4 == aVar.f25188b) {
            this.f25185f = aVar.f25191e;
        }
    }

    private int h(int i4) {
        a aVar = this.f25185f;
        if (!aVar.f25189c) {
            aVar.b(this.f25180a.a(), new a(this.f25185f.f25188b, this.f25181b));
        }
        return Math.min(i4, (int) (this.f25185f.f25188b - this.f25186g));
    }

    private static a i(a aVar, long j4, ByteBuffer byteBuffer, int i4) {
        a d4 = d(aVar, j4);
        while (i4 > 0) {
            int min = Math.min(i4, (int) (d4.f25188b - j4));
            byteBuffer.put(d4.f25190d.f27022a, d4.c(j4), min);
            i4 -= min;
            j4 += min;
            if (j4 == d4.f25188b) {
                d4 = d4.f25191e;
            }
        }
        return d4;
    }

    private static a j(a aVar, long j4, byte[] bArr, int i4) {
        a d4 = d(aVar, j4);
        int i10 = i4;
        while (i10 > 0) {
            int min = Math.min(i10, (int) (d4.f25188b - j4));
            System.arraycopy(d4.f25190d.f27022a, d4.c(j4), bArr, i4 - i10, min);
            i10 -= min;
            j4 += min;
            if (j4 == d4.f25188b) {
                d4 = d4.f25191e;
            }
        }
        return d4;
    }

    private static a k(a aVar, DecoderInputBuffer decoderInputBuffer, w0.b bVar, com.google.android.exoplayer2.util.h0 h0Var) {
        int i4;
        long j4 = bVar.f25217b;
        h0Var.O(1);
        a j10 = j(aVar, j4, h0Var.d(), 1);
        long j11 = j4 + 1;
        byte b10 = h0Var.d()[0];
        boolean z9 = (b10 & 128) != 0;
        int i10 = b10 & Byte.MAX_VALUE;
        com.google.android.exoplayer2.decoder.b bVar2 = decoderInputBuffer.f21571b;
        byte[] bArr = bVar2.f21579a;
        if (bArr == null) {
            bVar2.f21579a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a j12 = j(j10, j11, bVar2.f21579a, i10);
        long j13 = j11 + i10;
        if (z9) {
            h0Var.O(2);
            j12 = j(j12, j13, h0Var.d(), 2);
            j13 += 2;
            i4 = h0Var.M();
        } else {
            i4 = 1;
        }
        int[] iArr = bVar2.f21582d;
        if (iArr == null || iArr.length < i4) {
            iArr = new int[i4];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = bVar2.f21583e;
        if (iArr3 == null || iArr3.length < i4) {
            iArr3 = new int[i4];
        }
        int[] iArr4 = iArr3;
        if (z9) {
            int i11 = i4 * 6;
            h0Var.O(i11);
            j12 = j(j12, j13, h0Var.d(), i11);
            j13 += i11;
            h0Var.S(0);
            for (int i12 = 0; i12 < i4; i12++) {
                iArr2[i12] = h0Var.M();
                iArr4[i12] = h0Var.K();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.f25216a - ((int) (j13 - bVar.f25217b));
        }
        e0.a aVar2 = (e0.a) com.google.android.exoplayer2.util.z0.k(bVar.f25218c);
        bVar2.c(i4, iArr2, iArr4, aVar2.f22143b, bVar2.f21579a, aVar2.f22142a, aVar2.f22144c, aVar2.f22145d);
        long j14 = bVar.f25217b;
        int i13 = (int) (j13 - j14);
        bVar.f25217b = j14 + i13;
        bVar.f25216a -= i13;
        return j12;
    }

    private static a l(a aVar, DecoderInputBuffer decoderInputBuffer, w0.b bVar, com.google.android.exoplayer2.util.h0 h0Var) {
        if (decoderInputBuffer.r()) {
            aVar = k(aVar, decoderInputBuffer, bVar, h0Var);
        }
        if (decoderInputBuffer.i()) {
            h0Var.O(4);
            a j4 = j(aVar, bVar.f25217b, h0Var.d(), 4);
            int K = h0Var.K();
            bVar.f25217b += 4;
            bVar.f25216a -= 4;
            decoderInputBuffer.p(K);
            a i4 = i(j4, bVar.f25217b, decoderInputBuffer.f21572c, K);
            bVar.f25217b += K;
            int i10 = bVar.f25216a - K;
            bVar.f25216a = i10;
            decoderInputBuffer.t(i10);
            return i(i4, bVar.f25217b, decoderInputBuffer.f21575f, bVar.f25216a);
        }
        decoderInputBuffer.p(bVar.f25216a);
        return i(aVar, bVar.f25217b, decoderInputBuffer.f21572c, bVar.f25216a);
    }

    public void b(long j4) {
        a aVar;
        if (j4 == -1) {
            return;
        }
        while (true) {
            aVar = this.f25183d;
            if (j4 < aVar.f25188b) {
                break;
            }
            this.f25180a.d(aVar.f25190d);
            this.f25183d = this.f25183d.a();
        }
        if (this.f25184e.f25187a < aVar.f25187a) {
            this.f25184e = aVar;
        }
    }

    public void c(long j4) {
        this.f25186g = j4;
        if (j4 != 0) {
            a aVar = this.f25183d;
            if (j4 != aVar.f25187a) {
                while (this.f25186g > aVar.f25188b) {
                    aVar = aVar.f25191e;
                }
                a aVar2 = aVar.f25191e;
                a(aVar2);
                a aVar3 = new a(aVar.f25188b, this.f25181b);
                aVar.f25191e = aVar3;
                if (this.f25186g == aVar.f25188b) {
                    aVar = aVar3;
                }
                this.f25185f = aVar;
                if (this.f25184e == aVar2) {
                    this.f25184e = aVar3;
                    return;
                }
                return;
            }
        }
        a(this.f25183d);
        a aVar4 = new a(this.f25186g, this.f25181b);
        this.f25183d = aVar4;
        this.f25184e = aVar4;
        this.f25185f = aVar4;
    }

    public long e() {
        return this.f25186g;
    }

    public void f(DecoderInputBuffer decoderInputBuffer, w0.b bVar) {
        l(this.f25184e, decoderInputBuffer, bVar, this.f25182c);
    }

    public void m(DecoderInputBuffer decoderInputBuffer, w0.b bVar) {
        this.f25184e = l(this.f25184e, decoderInputBuffer, bVar, this.f25182c);
    }

    public void n() {
        a(this.f25183d);
        a aVar = new a(0L, this.f25181b);
        this.f25183d = aVar;
        this.f25184e = aVar;
        this.f25185f = aVar;
        this.f25186g = 0L;
        this.f25180a.e();
    }

    public void o() {
        this.f25184e = this.f25183d;
    }

    public int p(com.google.android.exoplayer2.upstream.i iVar, int i4, boolean z9) throws IOException {
        int h4 = h(i4);
        a aVar = this.f25185f;
        int read = iVar.read(aVar.f25190d.f27022a, aVar.c(this.f25186g), h4);
        if (read != -1) {
            g(read);
            return read;
        } else if (z9) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    public void q(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        while (i4 > 0) {
            int h4 = h(i4);
            a aVar = this.f25185f;
            h0Var.k(aVar.f25190d.f27022a, aVar.c(this.f25186g), h4);
            i4 -= h4;
            g(h4);
        }
    }
}
