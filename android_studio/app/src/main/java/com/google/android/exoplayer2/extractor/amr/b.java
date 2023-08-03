package com.google.android.exoplayer2.extractor.amr;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.j0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.f;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.z0;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: AmrExtractor.java */
/* loaded from: classes2.dex */
public final class b implements k {
    private static final int A = 16000;
    private static final int B = 8000;
    private static final int C = 20000;

    /* renamed from: t  reason: collision with root package name */
    public static final int f22092t = 1;

    /* renamed from: v  reason: collision with root package name */
    private static final int[] f22094v;

    /* renamed from: y  reason: collision with root package name */
    private static final int f22097y;

    /* renamed from: z  reason: collision with root package name */
    private static final int f22098z = 20;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f22099d;

    /* renamed from: e  reason: collision with root package name */
    private final int f22100e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22101f;

    /* renamed from: g  reason: collision with root package name */
    private long f22102g;

    /* renamed from: h  reason: collision with root package name */
    private int f22103h;

    /* renamed from: i  reason: collision with root package name */
    private int f22104i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22105j;

    /* renamed from: k  reason: collision with root package name */
    private long f22106k;

    /* renamed from: l  reason: collision with root package name */
    private int f22107l;

    /* renamed from: m  reason: collision with root package name */
    private int f22108m;

    /* renamed from: n  reason: collision with root package name */
    private long f22109n;

    /* renamed from: o  reason: collision with root package name */
    private m f22110o;

    /* renamed from: p  reason: collision with root package name */
    private e0 f22111p;

    /* renamed from: q  reason: collision with root package name */
    private b0 f22112q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f22113r;

    /* renamed from: s  reason: collision with root package name */
    public static final q f22091s = com.google.android.exoplayer2.extractor.amr.a.f22090b;

    /* renamed from: u  reason: collision with root package name */
    private static final int[] f22093u = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: w  reason: collision with root package name */
    private static final byte[] f22095w = z0.u0("#!AMR\n");

    /* renamed from: x  reason: collision with root package name */
    private static final byte[] f22096x = z0.u0("#!AMR-WB\n");

    /* compiled from: AmrExtractor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f22094v = iArr;
        f22097y = iArr[8];
    }

    public b() {
        this(0);
    }

    static byte[] f() {
        byte[] bArr = f22095w;
        return Arrays.copyOf(bArr, bArr.length);
    }

    static byte[] g() {
        byte[] bArr = f22096x;
        return Arrays.copyOf(bArr, bArr.length);
    }

    @EnsuresNonNull({"extractorOutput", "trackOutput"})
    private void h() {
        com.google.android.exoplayer2.util.a.k(this.f22111p);
        z0.k(this.f22110o);
    }

    static int i(int i4) {
        return f22093u[i4];
    }

    static int j(int i4) {
        return f22094v[i4];
    }

    private static int k(int i4, long j4) {
        return (int) (((i4 * 8) * 1000000) / j4);
    }

    private b0 l(long j4) {
        return new f(j4, this.f22106k, k(this.f22107l, j0.f21249v), this.f22107l);
    }

    private int m(int i4) throws ParserException {
        if (o(i4)) {
            return this.f22101f ? f22094v[i4] : f22093u[i4];
        }
        String str = this.f22101f ? "WB" : "NB";
        StringBuilder sb = new StringBuilder(str.length() + 35);
        sb.append("Illegal AMR ");
        sb.append(str);
        sb.append(" frame type ");
        sb.append(i4);
        throw new ParserException(sb.toString());
    }

    private boolean n(int i4) {
        return !this.f22101f && (i4 < 12 || i4 > 14);
    }

    private boolean o(int i4) {
        return i4 >= 0 && i4 <= 15 && (p(i4) || n(i4));
    }

    private boolean p(int i4) {
        return this.f22101f && (i4 < 10 || i4 > 13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] q() {
        return new k[]{new b()};
    }

    @RequiresNonNull({"trackOutput"})
    private void r() {
        if (this.f22113r) {
            return;
        }
        this.f22113r = true;
        boolean z9 = this.f22101f;
        this.f22111p.d(new Format.b().e0(z9 ? a0.X : a0.W).W(f22097y).H(1).f0(z9 ? 16000 : 8000).E());
    }

    @RequiresNonNull({"extractorOutput"})
    private void s(long j4, int i4) {
        int i10;
        if (this.f22105j) {
            return;
        }
        if ((this.f22100e & 1) != 0 && j4 != -1 && ((i10 = this.f22107l) == -1 || i10 == this.f22103h)) {
            if (this.f22108m >= 20 || i4 == -1) {
                b0 l10 = l(j4);
                this.f22112q = l10;
                this.f22110o.q(l10);
                this.f22105j = true;
                return;
            }
            return;
        }
        b0.b bVar = new b0.b(i.f23649b);
        this.f22112q = bVar;
        this.f22110o.q(bVar);
        this.f22105j = true;
    }

    private static boolean t(l lVar, byte[] bArr) throws IOException {
        lVar.h();
        byte[] bArr2 = new byte[bArr.length];
        lVar.s(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int u(l lVar) throws IOException {
        lVar.h();
        lVar.s(this.f22099d, 0, 1);
        byte b10 = this.f22099d[0];
        if ((b10 & 131) <= 0) {
            return m((b10 >> 3) & 15);
        }
        StringBuilder sb = new StringBuilder(42);
        sb.append("Invalid padding bits for frame header ");
        sb.append((int) b10);
        throw new ParserException(sb.toString());
    }

    private boolean v(l lVar) throws IOException {
        byte[] bArr = f22095w;
        if (t(lVar, bArr)) {
            this.f22101f = false;
            lVar.o(bArr.length);
            return true;
        }
        byte[] bArr2 = f22096x;
        if (t(lVar, bArr2)) {
            this.f22101f = true;
            lVar.o(bArr2.length);
            return true;
        }
        return false;
    }

    @RequiresNonNull({"trackOutput"})
    private int w(l lVar) throws IOException {
        if (this.f22104i == 0) {
            try {
                int u9 = u(lVar);
                this.f22103h = u9;
                this.f22104i = u9;
                if (this.f22107l == -1) {
                    this.f22106k = lVar.getPosition();
                    this.f22107l = this.f22103h;
                }
                if (this.f22107l == this.f22103h) {
                    this.f22108m++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int b10 = this.f22111p.b(lVar, this.f22104i, true);
        if (b10 == -1) {
            return -1;
        }
        int i4 = this.f22104i - b10;
        this.f22104i = i4;
        if (i4 > 0) {
            return 0;
        }
        this.f22111p.e(this.f22109n + this.f22102g, 1, this.f22103h, 0, null);
        this.f22102g += j0.f21249v;
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        this.f22102g = 0L;
        this.f22103h = 0;
        this.f22104i = 0;
        if (j4 != 0) {
            b0 b0Var = this.f22112q;
            if (b0Var instanceof f) {
                this.f22109n = ((f) b0Var).b(j4);
                return;
            }
        }
        this.f22109n = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(l lVar) throws IOException {
        return v(lVar);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(l lVar, z zVar) throws IOException {
        h();
        if (lVar.getPosition() == 0 && !v(lVar)) {
            throw new ParserException("Could not find AMR header.");
        }
        r();
        int w9 = w(lVar);
        s(lVar.getLength(), w9);
        return w9;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(m mVar) {
        this.f22110o = mVar;
        this.f22111p = mVar.f(0, 1);
        mVar.t();
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }

    public b(int i4) {
        this.f22100e = i4;
        this.f22099d = new byte[1];
        this.f22107l = -1;
    }
}
