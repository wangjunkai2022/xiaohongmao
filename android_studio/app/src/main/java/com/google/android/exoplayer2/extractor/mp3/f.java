package com.google.android.exoplayer2.extractor.mp3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.g0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.mp3.g;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.w;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.id3.b;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: Mp3Extractor.java */
/* loaded from: classes2.dex */
public final class f implements k {
    public static final int A = 4;
    private static final int C = 131072;
    private static final int D = 32768;
    private static final int E = 10;
    private static final int F = -128000;
    private static final int G = 1483304551;
    private static final int H = 1231971951;
    private static final int I = 1447187017;
    private static final int J = 0;

    /* renamed from: y  reason: collision with root package name */
    public static final int f22526y = 1;

    /* renamed from: z  reason: collision with root package name */
    public static final int f22527z = 2;

    /* renamed from: d  reason: collision with root package name */
    private final int f22528d;

    /* renamed from: e  reason: collision with root package name */
    private final long f22529e;

    /* renamed from: f  reason: collision with root package name */
    private final h0 f22530f;

    /* renamed from: g  reason: collision with root package name */
    private final g0.a f22531g;

    /* renamed from: h  reason: collision with root package name */
    private final w f22532h;

    /* renamed from: i  reason: collision with root package name */
    private final x f22533i;

    /* renamed from: j  reason: collision with root package name */
    private final e0 f22534j;

    /* renamed from: k  reason: collision with root package name */
    private m f22535k;

    /* renamed from: l  reason: collision with root package name */
    private e0 f22536l;

    /* renamed from: m  reason: collision with root package name */
    private e0 f22537m;

    /* renamed from: n  reason: collision with root package name */
    private int f22538n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Metadata f22539o;

    /* renamed from: p  reason: collision with root package name */
    private long f22540p;

    /* renamed from: q  reason: collision with root package name */
    private long f22541q;

    /* renamed from: r  reason: collision with root package name */
    private long f22542r;

    /* renamed from: s  reason: collision with root package name */
    private int f22543s;

    /* renamed from: t  reason: collision with root package name */
    private g f22544t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f22545u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f22546v;

    /* renamed from: w  reason: collision with root package name */
    private long f22547w;

    /* renamed from: x  reason: collision with root package name */
    public static final q f22525x = d.f22523b;
    private static final b.a B = e.f22524a;

    /* compiled from: Mp3Extractor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public f() {
        this(0);
    }

    @EnsuresNonNull({"extractorOutput", "realTrackOutput"})
    private void g() {
        com.google.android.exoplayer2.util.a.k(this.f22536l);
        z0.k(this.f22535k);
    }

    private g h(l lVar) throws IOException {
        long l10;
        long j4;
        long i4;
        long f10;
        g r9 = r(lVar);
        c q9 = q(this.f22539o, lVar.getPosition());
        if (this.f22545u) {
            return new g.a();
        }
        if ((this.f22528d & 2) != 0) {
            if (q9 != null) {
                i4 = q9.i();
                f10 = q9.f();
            } else if (r9 != null) {
                i4 = r9.i();
                f10 = r9.f();
            } else {
                l10 = l(this.f22539o);
                j4 = -1;
                r9 = new b(l10, lVar.getPosition(), j4);
            }
            j4 = f10;
            l10 = i4;
            r9 = new b(l10, lVar.getPosition(), j4);
        } else if (q9 != null) {
            r9 = q9;
        } else if (r9 == null) {
            r9 = null;
        }
        return (r9 == null || !(r9.g() || (this.f22528d & 1) == 0)) ? k(lVar) : r9;
    }

    private long i(long j4) {
        return this.f22540p + ((j4 * 1000000) / this.f22531g.f21241d);
    }

    private g k(l lVar) throws IOException {
        lVar.s(this.f22530f.d(), 0, 4);
        this.f22530f.S(0);
        this.f22531g.a(this.f22530f.o());
        return new com.google.android.exoplayer2.extractor.mp3.a(lVar.getLength(), lVar.getPosition(), this.f22531g);
    }

    private static long l(@Nullable Metadata metadata) {
        if (metadata != null) {
            int length = metadata.length();
            for (int i4 = 0; i4 < length; i4++) {
                Metadata.Entry entry = metadata.get(i4);
                if (entry instanceof TextInformationFrame) {
                    TextInformationFrame textInformationFrame = (TextInformationFrame) entry;
                    if (textInformationFrame.id.equals("TLEN")) {
                        return com.google.android.exoplayer2.i.c(Long.parseLong(textInformationFrame.value));
                    }
                }
            }
            return com.google.android.exoplayer2.i.f23649b;
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    private static int m(h0 h0Var, int i4) {
        if (h0Var.f() >= i4 + 4) {
            h0Var.S(i4);
            int o9 = h0Var.o();
            if (o9 == G || o9 == H) {
                return o9;
            }
        }
        if (h0Var.f() >= 40) {
            h0Var.S(36);
            if (h0Var.o() == I) {
                return I;
            }
            return 0;
        }
        return 0;
    }

    private static boolean n(int i4, long j4) {
        return ((long) (i4 & F)) == (j4 & (-128000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] o() {
        return new k[]{new f()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean p(int i4, int i10, int i11, int i12, int i13) {
        return (i10 == 67 && i11 == 79 && i12 == 77 && (i13 == 77 || i4 == 2)) || (i10 == 77 && i11 == 76 && i12 == 76 && (i13 == 84 || i4 == 2));
    }

    @Nullable
    private static c q(@Nullable Metadata metadata, long j4) {
        if (metadata != null) {
            int length = metadata.length();
            for (int i4 = 0; i4 < length; i4++) {
                Metadata.Entry entry = metadata.get(i4);
                if (entry instanceof MlltFrame) {
                    return c.a(j4, (MlltFrame) entry, l(metadata));
                }
            }
            return null;
        }
        return null;
    }

    @Nullable
    private g r(l lVar) throws IOException {
        int i4;
        h0 h0Var = new h0(this.f22531g.f21240c);
        lVar.s(h0Var.d(), 0, this.f22531g.f21240c);
        g0.a aVar = this.f22531g;
        if ((aVar.f21238a & 1) != 0) {
            if (aVar.f21242e != 1) {
                i4 = 36;
            }
            i4 = 21;
        } else {
            if (aVar.f21242e == 1) {
                i4 = 13;
            }
            i4 = 21;
        }
        int m9 = m(h0Var, i4);
        if (m9 != G && m9 != H) {
            if (m9 == I) {
                h a10 = h.a(lVar.getLength(), lVar.getPosition(), this.f22531g, h0Var);
                lVar.o(this.f22531g.f21240c);
                return a10;
            }
            lVar.h();
            return null;
        }
        i a11 = i.a(lVar.getLength(), lVar.getPosition(), this.f22531g, h0Var);
        if (a11 != null && !this.f22532h.a()) {
            lVar.h();
            lVar.k(i4 + 141);
            lVar.s(this.f22530f.d(), 0, 3);
            this.f22530f.S(0);
            this.f22532h.d(this.f22530f.J());
        }
        lVar.o(this.f22531g.f21240c);
        return (a11 == null || a11.g() || m9 != H) ? a11 : k(lVar);
    }

    private boolean s(l lVar) throws IOException {
        g gVar = this.f22544t;
        if (gVar != null) {
            long f10 = gVar.f();
            if (f10 != -1 && lVar.j() > f10 - 4) {
                return true;
            }
        }
        try {
            return !lVar.g(this.f22530f.d(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    @RequiresNonNull({"extractorOutput", "realTrackOutput"})
    private int t(l lVar) throws IOException {
        if (this.f22538n == 0) {
            try {
                v(lVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f22544t == null) {
            g h4 = h(lVar);
            this.f22544t = h4;
            this.f22535k.q(h4);
            this.f22537m.d(new Format.b().e0(this.f22531g.f21239b).W(4096).H(this.f22531g.f21242e).f0(this.f22531g.f21241d).M(this.f22532h.f23491a).N(this.f22532h.f23492b).X((this.f22528d & 4) != 0 ? null : this.f22539o).E());
            this.f22542r = lVar.getPosition();
        } else if (this.f22542r != 0) {
            long position = lVar.getPosition();
            long j4 = this.f22542r;
            if (position < j4) {
                lVar.o((int) (j4 - position));
            }
        }
        return u(lVar);
    }

    @RequiresNonNull({"realTrackOutput", "seeker"})
    private int u(l lVar) throws IOException {
        g0.a aVar;
        if (this.f22543s == 0) {
            lVar.h();
            if (s(lVar)) {
                return -1;
            }
            this.f22530f.S(0);
            int o9 = this.f22530f.o();
            if (n(o9, this.f22538n) && g0.j(o9) != -1) {
                this.f22531g.a(o9);
                if (this.f22540p == com.google.android.exoplayer2.i.f23649b) {
                    this.f22540p = this.f22544t.h(lVar.getPosition());
                    if (this.f22529e != com.google.android.exoplayer2.i.f23649b) {
                        this.f22540p += this.f22529e - this.f22544t.h(0L);
                    }
                }
                this.f22543s = this.f22531g.f21240c;
                g gVar = this.f22544t;
                if (gVar instanceof b) {
                    b bVar = (b) gVar;
                    bVar.b(i(this.f22541q + aVar.f21244g), lVar.getPosition() + this.f22531g.f21240c);
                    if (this.f22546v && bVar.a(this.f22547w)) {
                        this.f22546v = false;
                        this.f22537m = this.f22536l;
                    }
                }
            } else {
                lVar.o(1);
                this.f22538n = 0;
                return 0;
            }
        }
        int b10 = this.f22537m.b(lVar, this.f22543s, true);
        if (b10 == -1) {
            return -1;
        }
        int i4 = this.f22543s - b10;
        this.f22543s = i4;
        if (i4 > 0) {
            return 0;
        }
        this.f22537m.e(i(this.f22541q), 1, this.f22531g.f21240c, 0, null);
        this.f22541q += this.f22531g.f21244g;
        this.f22543s = 0;
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x009d, code lost:
        if (r13 == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x009f, code lost:
        r12.o(r2 + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a4, code lost:
        r12.h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a7, code lost:
        r11.f22538n = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a9, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean v(com.google.android.exoplayer2.extractor.l r12, boolean r13) throws java.io.IOException {
        /*
            r11 = this;
            if (r13 == 0) goto L6
            r0 = 32768(0x8000, float:4.5918E-41)
            goto L8
        L6:
            r0 = 131072(0x20000, float:1.83671E-40)
        L8:
            r12.h()
            long r1 = r12.getPosition()
            r3 = 0
            r5 = 4
            r6 = 1
            r7 = 0
            int r8 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r8 != 0) goto L41
            int r1 = r11.f22528d
            r1 = r1 & r5
            if (r1 != 0) goto L1f
            r1 = 1
            goto L20
        L1f:
            r1 = 0
        L20:
            if (r1 == 0) goto L24
            r1 = 0
            goto L26
        L24:
            com.google.android.exoplayer2.metadata.id3.b$a r1 = com.google.android.exoplayer2.extractor.mp3.f.B
        L26:
            com.google.android.exoplayer2.extractor.x r2 = r11.f22533i
            com.google.android.exoplayer2.metadata.Metadata r1 = r2.a(r12, r1)
            r11.f22539o = r1
            if (r1 == 0) goto L35
            com.google.android.exoplayer2.extractor.w r2 = r11.f22532h
            r2.c(r1)
        L35:
            long r1 = r12.j()
            int r2 = (int) r1
            if (r13 != 0) goto L3f
            r12.o(r2)
        L3f:
            r1 = 0
            goto L43
        L41:
            r1 = 0
            r2 = 0
        L43:
            r3 = 0
            r4 = 0
        L45:
            boolean r8 = r11.s(r12)
            if (r8 == 0) goto L54
            if (r3 <= 0) goto L4e
            goto L9d
        L4e:
            java.io.EOFException r12 = new java.io.EOFException
            r12.<init>()
            throw r12
        L54:
            com.google.android.exoplayer2.util.h0 r8 = r11.f22530f
            r8.S(r7)
            com.google.android.exoplayer2.util.h0 r8 = r11.f22530f
            int r8 = r8.o()
            if (r1 == 0) goto L68
            long r9 = (long) r1
            boolean r9 = n(r8, r9)
            if (r9 == 0) goto L6f
        L68:
            int r9 = com.google.android.exoplayer2.audio.g0.j(r8)
            r10 = -1
            if (r9 != r10) goto L90
        L6f:
            int r1 = r4 + 1
            if (r4 != r0) goto L7e
            if (r13 == 0) goto L76
            return r7
        L76:
            com.google.android.exoplayer2.ParserException r12 = new com.google.android.exoplayer2.ParserException
            java.lang.String r13 = "Searched too many bytes."
            r12.<init>(r13)
            throw r12
        L7e:
            if (r13 == 0) goto L89
            r12.h()
            int r3 = r2 + r1
            r12.k(r3)
            goto L8c
        L89:
            r12.o(r6)
        L8c:
            r4 = r1
            r1 = 0
            r3 = 0
            goto L45
        L90:
            int r3 = r3 + 1
            if (r3 != r6) goto L9b
            com.google.android.exoplayer2.audio.g0$a r1 = r11.f22531g
            r1.a(r8)
            r1 = r8
            goto Laa
        L9b:
            if (r3 != r5) goto Laa
        L9d:
            if (r13 == 0) goto La4
            int r2 = r2 + r4
            r12.o(r2)
            goto La7
        La4:
            r12.h()
        La7:
            r11.f22538n = r1
            return r6
        Laa:
            int r9 = r9 + (-4)
            r12.k(r9)
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp3.f.v(com.google.android.exoplayer2.extractor.l, boolean):boolean");
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void a(long j4, long j10) {
        this.f22538n = 0;
        this.f22540p = com.google.android.exoplayer2.i.f23649b;
        this.f22541q = 0L;
        this.f22543s = 0;
        this.f22547w = j10;
        g gVar = this.f22544t;
        if (!(gVar instanceof b) || ((b) gVar).a(j10)) {
            return;
        }
        this.f22546v = true;
        this.f22537m = this.f22534j;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public boolean b(l lVar) throws IOException {
        return v(lVar, true);
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public int c(l lVar, z zVar) throws IOException {
        g();
        int t9 = t(lVar);
        if (t9 == -1 && (this.f22544t instanceof b)) {
            long i4 = i(this.f22541q);
            if (this.f22544t.i() != i4) {
                ((b) this.f22544t).c(i4);
                this.f22535k.q(this.f22544t);
            }
        }
        return t9;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void d(m mVar) {
        this.f22535k = mVar;
        e0 f10 = mVar.f(0, 1);
        this.f22536l = f10;
        this.f22537m = f10;
        this.f22535k.t();
    }

    public void j() {
        this.f22545u = true;
    }

    @Override // com.google.android.exoplayer2.extractor.k
    public void release() {
    }

    public f(int i4) {
        this(i4, com.google.android.exoplayer2.i.f23649b);
    }

    public f(int i4, long j4) {
        this.f22528d = i4;
        this.f22529e = j4;
        this.f22530f = new h0(10);
        this.f22531g = new g0.a();
        this.f22532h = new w();
        this.f22540p = com.google.android.exoplayer2.i.f23649b;
        this.f22533i = new x();
        com.google.android.exoplayer2.extractor.j jVar = new com.google.android.exoplayer2.extractor.j();
        this.f22534j = jVar;
        this.f22537m = jVar;
    }
}
