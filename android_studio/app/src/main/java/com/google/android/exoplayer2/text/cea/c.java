package com.google.android.exoplayer2.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.g0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.text.Typography;
import okio.Utf8;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: Cea708Decoder.java */
/* loaded from: classes2.dex */
public final class c extends e {
    private static final int A = 159;
    private static final int A0 = 49;
    private static final int B = 255;
    private static final int B0 = 50;
    private static final int C = 31;
    private static final int C0 = 51;
    private static final int D = 127;
    private static final int D0 = 52;
    private static final int E = 159;
    private static final int E0 = 53;
    private static final int F = 255;
    private static final int F0 = 57;
    private static final int G = 0;
    private static final int G0 = 58;
    private static final int H = 3;
    private static final int H0 = 60;
    private static final int I = 8;
    private static final int I0 = 61;
    private static final int J = 12;
    private static final int J0 = 63;
    private static final int K = 13;
    private static final int K0 = 118;
    private static final int L = 14;
    private static final int L0 = 119;
    private static final int M = 16;
    private static final int M0 = 120;
    private static final int N = 17;
    private static final int N0 = 121;
    private static final int O = 23;
    private static final int O0 = 122;
    private static final int P = 24;
    private static final int P0 = 123;
    private static final int Q = 31;
    private static final int Q0 = 124;
    private static final int R = 128;
    private static final int R0 = 125;
    private static final int S = 129;
    private static final int S0 = 126;
    private static final int T = 130;
    private static final int T0 = 127;
    private static final int U = 131;
    private static final int V = 132;
    private static final int W = 133;
    private static final int X = 134;
    private static final int Y = 135;
    private static final int Z = 136;

    /* renamed from: a0  reason: collision with root package name */
    private static final int f25393a0 = 137;

    /* renamed from: b0  reason: collision with root package name */
    private static final int f25394b0 = 138;

    /* renamed from: c0  reason: collision with root package name */
    private static final int f25395c0 = 139;

    /* renamed from: d0  reason: collision with root package name */
    private static final int f25396d0 = 140;

    /* renamed from: e0  reason: collision with root package name */
    private static final int f25397e0 = 141;

    /* renamed from: f0  reason: collision with root package name */
    private static final int f25398f0 = 142;

    /* renamed from: g0  reason: collision with root package name */
    private static final int f25399g0 = 143;

    /* renamed from: h0  reason: collision with root package name */
    private static final int f25400h0 = 144;

    /* renamed from: i0  reason: collision with root package name */
    private static final int f25401i0 = 145;

    /* renamed from: j0  reason: collision with root package name */
    private static final int f25402j0 = 146;

    /* renamed from: k0  reason: collision with root package name */
    private static final int f25403k0 = 151;

    /* renamed from: l0  reason: collision with root package name */
    private static final int f25404l0 = 152;

    /* renamed from: m0  reason: collision with root package name */
    private static final int f25405m0 = 153;

    /* renamed from: n0  reason: collision with root package name */
    private static final int f25406n0 = 154;

    /* renamed from: o0  reason: collision with root package name */
    private static final int f25407o0 = 155;

    /* renamed from: p0  reason: collision with root package name */
    private static final int f25408p0 = 156;

    /* renamed from: q0  reason: collision with root package name */
    private static final int f25409q0 = 157;

    /* renamed from: r0  reason: collision with root package name */
    private static final int f25410r0 = 158;

    /* renamed from: s0  reason: collision with root package name */
    private static final int f25411s0 = 159;

    /* renamed from: t  reason: collision with root package name */
    private static final String f25412t = "Cea708Decoder";

    /* renamed from: t0  reason: collision with root package name */
    private static final int f25413t0 = 127;

    /* renamed from: u  reason: collision with root package name */
    private static final int f25414u = 8;

    /* renamed from: u0  reason: collision with root package name */
    private static final int f25415u0 = 32;

    /* renamed from: v  reason: collision with root package name */
    private static final int f25416v = 2;

    /* renamed from: v0  reason: collision with root package name */
    private static final int f25417v0 = 33;

    /* renamed from: w  reason: collision with root package name */
    private static final int f25418w = 3;

    /* renamed from: w0  reason: collision with root package name */
    private static final int f25419w0 = 37;

    /* renamed from: x  reason: collision with root package name */
    private static final int f25420x = 4;

    /* renamed from: x0  reason: collision with root package name */
    private static final int f25421x0 = 42;

    /* renamed from: y  reason: collision with root package name */
    private static final int f25422y = 31;

    /* renamed from: y0  reason: collision with root package name */
    private static final int f25423y0 = 44;

    /* renamed from: z  reason: collision with root package name */
    private static final int f25424z = 127;

    /* renamed from: z0  reason: collision with root package name */
    private static final int f25425z0 = 48;

    /* renamed from: i  reason: collision with root package name */
    private final h0 f25426i = new h0();

    /* renamed from: j  reason: collision with root package name */
    private final g0 f25427j = new g0();

    /* renamed from: k  reason: collision with root package name */
    private int f25428k = -1;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f25429l;

    /* renamed from: m  reason: collision with root package name */
    private final int f25430m;

    /* renamed from: n  reason: collision with root package name */
    private final b[] f25431n;

    /* renamed from: o  reason: collision with root package name */
    private b f25432o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private List<com.google.android.exoplayer2.text.a> f25433p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private List<com.google.android.exoplayer2.text.a> f25434q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private C0180c f25435r;

    /* renamed from: s  reason: collision with root package name */
    private int f25436s;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator<a> f25437c = com.google.android.exoplayer2.text.cea.b.f25392a;

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.text.a f25438a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25439b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f10, int i4, int i10, float f11, int i11, float f12, boolean z9, int i12, int i13) {
            a.c z10 = new a.c().A(charSequence).B(alignment).t(f10, i4).u(i10).w(f11).x(i11).z(f12);
            if (z9) {
                z10.E(i12);
            }
            this.f25438a = z10.a();
            this.f25439b = i13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.f25439b, aVar.f25439b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes2.dex */
    public static final class b {
        private static final int A = 15;
        private static final int B = 0;
        private static final int C = 1;
        private static final int D = 2;
        private static final int E = 3;
        private static final int F = 0;
        private static final int G = 1;
        private static final int H = 2;
        private static final int I = 3;
        private static final int J = 0;
        private static final int K = 3;
        public static final int L = h(2, 2, 2, 0);
        public static final int M;
        public static final int N;
        private static final int O = 1;
        private static final int P = 0;
        private static final int Q = 1;
        private static final int R = 2;
        private static final int S = 3;
        private static final int T = 4;
        private static final int U = 1;
        private static final int[] V;
        private static final int[] W;
        private static final int[] X;
        private static final boolean[] Y;
        private static final int[] Z;

        /* renamed from: a0  reason: collision with root package name */
        private static final int[] f25440a0;

        /* renamed from: b0  reason: collision with root package name */
        private static final int[] f25441b0;

        /* renamed from: c0  reason: collision with root package name */
        private static final int[] f25442c0;

        /* renamed from: w  reason: collision with root package name */
        private static final int f25443w = 99;

        /* renamed from: x  reason: collision with root package name */
        private static final int f25444x = 74;

        /* renamed from: y  reason: collision with root package name */
        private static final int f25445y = 209;

        /* renamed from: z  reason: collision with root package name */
        private static final int f25446z = 4;

        /* renamed from: a  reason: collision with root package name */
        private final List<SpannableString> f25447a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final SpannableStringBuilder f25448b = new SpannableStringBuilder();

        /* renamed from: c  reason: collision with root package name */
        private boolean f25449c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f25450d;

        /* renamed from: e  reason: collision with root package name */
        private int f25451e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f25452f;

        /* renamed from: g  reason: collision with root package name */
        private int f25453g;

        /* renamed from: h  reason: collision with root package name */
        private int f25454h;

        /* renamed from: i  reason: collision with root package name */
        private int f25455i;

        /* renamed from: j  reason: collision with root package name */
        private int f25456j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f25457k;

        /* renamed from: l  reason: collision with root package name */
        private int f25458l;

        /* renamed from: m  reason: collision with root package name */
        private int f25459m;

        /* renamed from: n  reason: collision with root package name */
        private int f25460n;

        /* renamed from: o  reason: collision with root package name */
        private int f25461o;

        /* renamed from: p  reason: collision with root package name */
        private int f25462p;

        /* renamed from: q  reason: collision with root package name */
        private int f25463q;

        /* renamed from: r  reason: collision with root package name */
        private int f25464r;

        /* renamed from: s  reason: collision with root package name */
        private int f25465s;

        /* renamed from: t  reason: collision with root package name */
        private int f25466t;

        /* renamed from: u  reason: collision with root package name */
        private int f25467u;

        /* renamed from: v  reason: collision with root package name */
        private int f25468v;

        static {
            int h4 = h(0, 0, 0, 0);
            M = h4;
            int h10 = h(0, 0, 0, 3);
            N = h10;
            V = new int[]{0, 0, 0, 0, 0, 2, 0};
            W = new int[]{0, 0, 0, 0, 0, 0, 2};
            X = new int[]{3, 3, 3, 3, 3, 3, 1};
            Y = new boolean[]{false, false, false, true, true, true, false};
            Z = new int[]{h4, h10, h4, h4, h10, h4, h4};
            f25440a0 = new int[]{0, 1, 2, 3, 4, 3, 4};
            f25441b0 = new int[]{0, 0, 0, 0, 0, 3, 3};
            f25442c0 = new int[]{h4, h4, h4, h4, h4, h10, h10};
        }

        public b() {
            l();
        }

        public static int g(int i4, int i10, int i11) {
            return h(i4, i10, i11, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static int h(int r4, int r5, int r6, int r7) {
            /*
                r0 = 0
                r1 = 4
                com.google.android.exoplayer2.util.a.c(r4, r0, r1)
                com.google.android.exoplayer2.util.a.c(r5, r0, r1)
                com.google.android.exoplayer2.util.a.c(r6, r0, r1)
                com.google.android.exoplayer2.util.a.c(r7, r0, r1)
                r1 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L21
                if (r7 == r1) goto L21
                r3 = 2
                if (r7 == r3) goto L1e
                r3 = 3
                if (r7 == r3) goto L1c
                goto L21
            L1c:
                r7 = 0
                goto L23
            L1e:
                r7 = 127(0x7f, float:1.78E-43)
                goto L23
            L21:
                r7 = 255(0xff, float:3.57E-43)
            L23:
                if (r4 <= r1) goto L28
                r4 = 255(0xff, float:3.57E-43)
                goto L29
            L28:
                r4 = 0
            L29:
                if (r5 <= r1) goto L2e
                r5 = 255(0xff, float:3.57E-43)
                goto L2f
            L2e:
                r5 = 0
            L2f:
                if (r6 <= r1) goto L33
                r0 = 255(0xff, float:3.57E-43)
            L33:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.c.b.h(int, int, int, int):int");
        }

        public void a(char c10) {
            if (c10 == '\n') {
                this.f25447a.add(d());
                this.f25448b.clear();
                if (this.f25462p != -1) {
                    this.f25462p = 0;
                }
                if (this.f25463q != -1) {
                    this.f25463q = 0;
                }
                if (this.f25464r != -1) {
                    this.f25464r = 0;
                }
                if (this.f25466t != -1) {
                    this.f25466t = 0;
                }
                while (true) {
                    if ((!this.f25457k || this.f25447a.size() < this.f25456j) && this.f25447a.size() < 15) {
                        return;
                    }
                    this.f25447a.remove(0);
                }
            } else {
                this.f25448b.append(c10);
            }
        }

        public void b() {
            int length = this.f25448b.length();
            if (length > 0) {
                this.f25448b.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
        @androidx.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public com.google.android.exoplayer2.text.cea.c.a c() {
            /*
                Method dump skipped, instructions count: 199
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.c.b.c():com.google.android.exoplayer2.text.cea.c$a");
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f25448b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f25462p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f25462p, length, 33);
                }
                if (this.f25463q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f25463q, length, 33);
                }
                if (this.f25464r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f25465s), this.f25464r, length, 33);
                }
                if (this.f25466t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f25467u), this.f25466t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.f25447a.clear();
            this.f25448b.clear();
            this.f25462p = -1;
            this.f25463q = -1;
            this.f25464r = -1;
            this.f25466t = -1;
            this.f25468v = 0;
        }

        public void f(boolean z9, boolean z10, boolean z11, int i4, boolean z12, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f25449c = true;
            this.f25450d = z9;
            this.f25457k = z10;
            this.f25451e = i4;
            this.f25452f = z12;
            this.f25453g = i10;
            this.f25454h = i11;
            this.f25455i = i14;
            int i17 = i12 + 1;
            if (this.f25456j != i17) {
                this.f25456j = i17;
                while (true) {
                    if ((!z10 || this.f25447a.size() < this.f25456j) && this.f25447a.size() < 15) {
                        break;
                    }
                    this.f25447a.remove(0);
                }
            }
            if (i15 != 0 && this.f25459m != i15) {
                this.f25459m = i15;
                int i18 = i15 - 1;
                q(Z[i18], N, Y[i18], 0, W[i18], X[i18], V[i18]);
            }
            if (i16 == 0 || this.f25460n == i16) {
                return;
            }
            this.f25460n = i16;
            int i19 = i16 - 1;
            m(0, 1, 1, false, false, f25441b0[i19], f25440a0[i19]);
            n(L, f25442c0[i19], M);
        }

        public boolean i() {
            return this.f25449c;
        }

        public boolean j() {
            return !i() || (this.f25447a.isEmpty() && this.f25448b.length() == 0);
        }

        public boolean k() {
            return this.f25450d;
        }

        public void l() {
            e();
            this.f25449c = false;
            this.f25450d = false;
            this.f25451e = 4;
            this.f25452f = false;
            this.f25453g = 0;
            this.f25454h = 0;
            this.f25455i = 0;
            this.f25456j = 15;
            this.f25457k = true;
            this.f25458l = 0;
            this.f25459m = 0;
            this.f25460n = 0;
            int i4 = M;
            this.f25461o = i4;
            this.f25465s = L;
            this.f25467u = i4;
        }

        public void m(int i4, int i10, int i11, boolean z9, boolean z10, int i12, int i13) {
            if (this.f25462p != -1) {
                if (!z9) {
                    this.f25448b.setSpan(new StyleSpan(2), this.f25462p, this.f25448b.length(), 33);
                    this.f25462p = -1;
                }
            } else if (z9) {
                this.f25462p = this.f25448b.length();
            }
            if (this.f25463q == -1) {
                if (z10) {
                    this.f25463q = this.f25448b.length();
                }
            } else if (z10) {
            } else {
                this.f25448b.setSpan(new UnderlineSpan(), this.f25463q, this.f25448b.length(), 33);
                this.f25463q = -1;
            }
        }

        public void n(int i4, int i10, int i11) {
            if (this.f25464r != -1 && this.f25465s != i4) {
                this.f25448b.setSpan(new ForegroundColorSpan(this.f25465s), this.f25464r, this.f25448b.length(), 33);
            }
            if (i4 != L) {
                this.f25464r = this.f25448b.length();
                this.f25465s = i4;
            }
            if (this.f25466t != -1 && this.f25467u != i10) {
                this.f25448b.setSpan(new BackgroundColorSpan(this.f25467u), this.f25466t, this.f25448b.length(), 33);
            }
            if (i10 != M) {
                this.f25466t = this.f25448b.length();
                this.f25467u = i10;
            }
        }

        public void o(int i4, int i10) {
            if (this.f25468v != i4) {
                a('\n');
            }
            this.f25468v = i4;
        }

        public void p(boolean z9) {
            this.f25450d = z9;
        }

        public void q(int i4, int i10, boolean z9, int i11, int i12, int i13, int i14) {
            this.f25461o = i4;
            this.f25458l = i14;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* renamed from: com.google.android.exoplayer2.text.cea.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0180c {

        /* renamed from: a  reason: collision with root package name */
        public final int f25469a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25470b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f25471c;

        /* renamed from: d  reason: collision with root package name */
        int f25472d = 0;

        public C0180c(int i4, int i10) {
            this.f25469a = i4;
            this.f25470b = i10;
            this.f25471c = new byte[(i10 * 2) - 1];
        }
    }

    public c(int i4, @Nullable List<byte[]> list) {
        boolean z9 = true;
        this.f25430m = i4 == -1 ? 1 : i4;
        this.f25429l = (list == null || !com.google.android.exoplayer2.util.e.h(list)) ? false : false;
        this.f25431n = new b[8];
        for (int i10 = 0; i10 < 8; i10++) {
            this.f25431n[i10] = new b();
        }
        this.f25432o = this.f25431n[0];
    }

    private void A() {
        int h4 = b.h(this.f25427j.h(2), this.f25427j.h(2), this.f25427j.h(2), this.f25427j.h(2));
        int h10 = b.h(this.f25427j.h(2), this.f25427j.h(2), this.f25427j.h(2), this.f25427j.h(2));
        this.f25427j.s(2);
        this.f25432o.n(h4, h10, b.g(this.f25427j.h(2), this.f25427j.h(2), this.f25427j.h(2)));
    }

    private void B() {
        this.f25427j.s(4);
        int h4 = this.f25427j.h(4);
        this.f25427j.s(2);
        this.f25432o.o(h4, this.f25427j.h(6));
    }

    private void C() {
        int h4 = b.h(this.f25427j.h(2), this.f25427j.h(2), this.f25427j.h(2), this.f25427j.h(2));
        int h10 = this.f25427j.h(2);
        int g4 = b.g(this.f25427j.h(2), this.f25427j.h(2), this.f25427j.h(2));
        if (this.f25427j.g()) {
            h10 |= 4;
        }
        boolean g10 = this.f25427j.g();
        int h11 = this.f25427j.h(2);
        int h12 = this.f25427j.h(2);
        int h13 = this.f25427j.h(2);
        this.f25427j.s(8);
        this.f25432o.q(h4, g4, g10, h10, h11, h12, h13);
    }

    @RequiresNonNull({"currentDtvCcPacket"})
    private void D() {
        C0180c c0180c = this.f25435r;
        int i4 = c0180c.f25472d;
        int i10 = c0180c.f25470b;
        if (i4 != (i10 * 2) - 1) {
            int i11 = c0180c.f25469a;
            StringBuilder sb = new StringBuilder(115);
            sb.append("DtvCcPacket ended prematurely; size is ");
            sb.append((i10 * 2) - 1);
            sb.append(", but current index is ");
            sb.append(i4);
            sb.append(" (sequence number ");
            sb.append(i11);
            sb.append(");");
            w.b(f25412t, sb.toString());
        }
        g0 g0Var = this.f25427j;
        C0180c c0180c2 = this.f25435r;
        g0Var.p(c0180c2.f25471c, c0180c2.f25472d);
        int h4 = this.f25427j.h(3);
        int h10 = this.f25427j.h(5);
        if (h4 == 7) {
            this.f25427j.s(2);
            h4 = this.f25427j.h(6);
            if (h4 < 7) {
                StringBuilder sb2 = new StringBuilder(44);
                sb2.append("Invalid extended service number: ");
                sb2.append(h4);
                w.n(f25412t, sb2.toString());
            }
        }
        if (h10 == 0) {
            if (h4 != 0) {
                StringBuilder sb3 = new StringBuilder(59);
                sb3.append("serviceNumber is non-zero (");
                sb3.append(h4);
                sb3.append(") when blockSize is 0");
                w.n(f25412t, sb3.toString());
            }
        } else if (h4 != this.f25430m) {
        } else {
            boolean z9 = false;
            while (this.f25427j.b() > 0) {
                int h11 = this.f25427j.h(8);
                if (h11 == 16) {
                    int h12 = this.f25427j.h(8);
                    if (h12 <= 31) {
                        s(h12);
                    } else {
                        if (h12 <= 127) {
                            x(h12);
                        } else if (h12 <= 159) {
                            t(h12);
                        } else if (h12 <= 255) {
                            y(h12);
                        } else {
                            StringBuilder sb4 = new StringBuilder(37);
                            sb4.append("Invalid extended command: ");
                            sb4.append(h12);
                            w.n(f25412t, sb4.toString());
                        }
                        z9 = true;
                    }
                } else if (h11 <= 31) {
                    q(h11);
                } else {
                    if (h11 <= 127) {
                        v(h11);
                    } else if (h11 <= 159) {
                        r(h11);
                    } else if (h11 <= 255) {
                        w(h11);
                    } else {
                        StringBuilder sb5 = new StringBuilder(33);
                        sb5.append("Invalid base command: ");
                        sb5.append(h11);
                        w.n(f25412t, sb5.toString());
                    }
                    z9 = true;
                }
            }
            if (z9) {
                this.f25433p = p();
            }
        }
    }

    private void E() {
        for (int i4 = 0; i4 < 8; i4++) {
            this.f25431n[i4].l();
        }
    }

    private void o() {
        if (this.f25435r == null) {
            return;
        }
        D();
        this.f25435r = null;
    }

    private List<com.google.android.exoplayer2.text.a> p() {
        a c10;
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < 8; i4++) {
            if (!this.f25431n[i4].j() && this.f25431n[i4].k() && (c10 = this.f25431n[i4].c()) != null) {
                arrayList.add(c10);
            }
        }
        Collections.sort(arrayList, a.f25437c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList2.add(((a) arrayList.get(i10)).f25438a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void q(int i4) {
        if (i4 != 0) {
            if (i4 == 3) {
                this.f25433p = p();
            } else if (i4 != 8) {
                switch (i4) {
                    case 12:
                        E();
                        return;
                    case 13:
                        this.f25432o.a('\n');
                        return;
                    case 14:
                        return;
                    default:
                        if (i4 >= 17 && i4 <= 23) {
                            StringBuilder sb = new StringBuilder(55);
                            sb.append("Currently unsupported COMMAND_EXT1 Command: ");
                            sb.append(i4);
                            w.n(f25412t, sb.toString());
                            this.f25427j.s(8);
                            return;
                        } else if (i4 >= 24 && i4 <= 31) {
                            StringBuilder sb2 = new StringBuilder(54);
                            sb2.append("Currently unsupported COMMAND_P16 Command: ");
                            sb2.append(i4);
                            w.n(f25412t, sb2.toString());
                            this.f25427j.s(16);
                            return;
                        } else {
                            StringBuilder sb3 = new StringBuilder(31);
                            sb3.append("Invalid C0 command: ");
                            sb3.append(i4);
                            w.n(f25412t, sb3.toString());
                            return;
                        }
                }
            } else {
                this.f25432o.b();
            }
        }
    }

    private void r(int i4) {
        b bVar;
        int i10 = 1;
        switch (i4) {
            case 128:
            case 129:
            case 130:
            case U /* 131 */:
            case V /* 132 */:
            case W /* 133 */:
            case 134:
            case 135:
                int i11 = i4 - 128;
                if (this.f25436s != i11) {
                    this.f25436s = i11;
                    this.f25432o = this.f25431n[i11];
                    return;
                }
                return;
            case Z /* 136 */:
                while (i10 <= 8) {
                    if (this.f25427j.g()) {
                        this.f25431n[8 - i10].e();
                    }
                    i10++;
                }
                return;
            case f25393a0 /* 137 */:
                for (int i12 = 1; i12 <= 8; i12++) {
                    if (this.f25427j.g()) {
                        this.f25431n[8 - i12].p(true);
                    }
                }
                return;
            case 138:
                while (i10 <= 8) {
                    if (this.f25427j.g()) {
                        this.f25431n[8 - i10].p(false);
                    }
                    i10++;
                }
                return;
            case f25395c0 /* 139 */:
                for (int i13 = 1; i13 <= 8; i13++) {
                    if (this.f25427j.g()) {
                        this.f25431n[8 - i13].p(!bVar.k());
                    }
                }
                return;
            case f25396d0 /* 140 */:
                while (i10 <= 8) {
                    if (this.f25427j.g()) {
                        this.f25431n[8 - i10].l();
                    }
                    i10++;
                }
                return;
            case f25397e0 /* 141 */:
                this.f25427j.s(8);
                return;
            case f25398f0 /* 142 */:
                return;
            case f25399g0 /* 143 */:
                E();
                return;
            case f25400h0 /* 144 */:
                if (!this.f25432o.i()) {
                    this.f25427j.s(16);
                    return;
                } else {
                    z();
                    return;
                }
            case f25401i0 /* 145 */:
                if (!this.f25432o.i()) {
                    this.f25427j.s(24);
                    return;
                } else {
                    A();
                    return;
                }
            case f25402j0 /* 146 */:
                if (!this.f25432o.i()) {
                    this.f25427j.s(16);
                    return;
                } else {
                    B();
                    return;
                }
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid C1 command: ");
                sb.append(i4);
                w.n(f25412t, sb.toString());
                return;
            case f25403k0 /* 151 */:
                if (!this.f25432o.i()) {
                    this.f25427j.s(32);
                    return;
                } else {
                    C();
                    return;
                }
            case f25404l0 /* 152 */:
            case f25405m0 /* 153 */:
            case f25406n0 /* 154 */:
            case f25407o0 /* 155 */:
            case f25408p0 /* 156 */:
            case f25409q0 /* 157 */:
            case f25410r0 /* 158 */:
            case 159:
                int i14 = i4 - 152;
                u(i14);
                if (this.f25436s != i14) {
                    this.f25436s = i14;
                    this.f25432o = this.f25431n[i14];
                    return;
                }
                return;
        }
    }

    private void s(int i4) {
        if (i4 <= 7) {
            return;
        }
        if (i4 <= 15) {
            this.f25427j.s(8);
        } else if (i4 <= 23) {
            this.f25427j.s(16);
        } else if (i4 <= 31) {
            this.f25427j.s(24);
        }
    }

    private void t(int i4) {
        if (i4 <= 135) {
            this.f25427j.s(32);
        } else if (i4 <= f25399g0) {
            this.f25427j.s(40);
        } else if (i4 <= 159) {
            this.f25427j.s(2);
            this.f25427j.s(this.f25427j.h(6) * 8);
        }
    }

    private void u(int i4) {
        b bVar = this.f25431n[i4];
        this.f25427j.s(2);
        boolean g4 = this.f25427j.g();
        boolean g10 = this.f25427j.g();
        boolean g11 = this.f25427j.g();
        int h4 = this.f25427j.h(3);
        boolean g12 = this.f25427j.g();
        int h10 = this.f25427j.h(7);
        int h11 = this.f25427j.h(8);
        int h12 = this.f25427j.h(4);
        int h13 = this.f25427j.h(4);
        this.f25427j.s(2);
        int h14 = this.f25427j.h(6);
        this.f25427j.s(2);
        bVar.f(g4, g10, g11, h4, g12, h10, h11, h13, h14, h12, this.f25427j.h(3), this.f25427j.h(3));
    }

    private void v(int i4) {
        if (i4 == 127) {
            this.f25432o.a((char) 9835);
        } else {
            this.f25432o.a((char) (i4 & 255));
        }
    }

    private void w(int i4) {
        this.f25432o.a((char) (i4 & 255));
    }

    private void x(int i4) {
        if (i4 == 32) {
            this.f25432o.a(' ');
        } else if (i4 == 33) {
            this.f25432o.a(Typography.nbsp);
        } else if (i4 == 37) {
            this.f25432o.a(Typography.ellipsis);
        } else if (i4 == 42) {
            this.f25432o.a((char) 352);
        } else if (i4 == 44) {
            this.f25432o.a((char) 338);
        } else if (i4 == 63) {
            this.f25432o.a((char) 376);
        } else if (i4 == 57) {
            this.f25432o.a(Typography.tm);
        } else if (i4 == 58) {
            this.f25432o.a((char) 353);
        } else if (i4 == 60) {
            this.f25432o.a((char) 339);
        } else if (i4 != 61) {
            switch (i4) {
                case 48:
                    this.f25432o.a((char) 9608);
                    return;
                case 49:
                    this.f25432o.a(Typography.leftSingleQuote);
                    return;
                case 50:
                    this.f25432o.a(Typography.rightSingleQuote);
                    return;
                case 51:
                    this.f25432o.a(Typography.leftDoubleQuote);
                    return;
                case 52:
                    this.f25432o.a(Typography.rightDoubleQuote);
                    return;
                case 53:
                    this.f25432o.a(Typography.bullet);
                    return;
                default:
                    switch (i4) {
                        case 118:
                            this.f25432o.a((char) 8539);
                            return;
                        case 119:
                            this.f25432o.a((char) 8540);
                            return;
                        case 120:
                            this.f25432o.a((char) 8541);
                            return;
                        case 121:
                            this.f25432o.a((char) 8542);
                            return;
                        case 122:
                            this.f25432o.a((char) 9474);
                            return;
                        case 123:
                            this.f25432o.a((char) 9488);
                            return;
                        case 124:
                            this.f25432o.a((char) 9492);
                            return;
                        case 125:
                            this.f25432o.a((char) 9472);
                            return;
                        case 126:
                            this.f25432o.a((char) 9496);
                            return;
                        case 127:
                            this.f25432o.a((char) 9484);
                            return;
                        default:
                            StringBuilder sb = new StringBuilder(33);
                            sb.append("Invalid G2 character: ");
                            sb.append(i4);
                            w.n(f25412t, sb.toString());
                            return;
                    }
            }
        } else {
            this.f25432o.a((char) 8480);
        }
    }

    private void y(int i4) {
        if (i4 == 160) {
            this.f25432o.a((char) 13252);
            return;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Invalid G3 character: ");
        sb.append(i4);
        w.n(f25412t, sb.toString());
        this.f25432o.a('_');
    }

    private void z() {
        this.f25432o.m(this.f25427j.h(4), this.f25427j.h(2), this.f25427j.h(2), this.f25427j.g(), this.f25427j.g(), this.f25427j.h(3), this.f25427j.h(3));
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.text.f
    public /* bridge */ /* synthetic */ void a(long j4) {
        super.a(j4);
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    protected com.google.android.exoplayer2.text.e e() {
        List<com.google.android.exoplayer2.text.a> list = this.f25433p;
        this.f25434q = list;
        return new f((List) com.google.android.exoplayer2.util.a.g(list));
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    protected void f(h hVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.g(hVar.f21572c);
        this.f25426i.Q(byteBuffer.array(), byteBuffer.limit());
        while (this.f25426i.a() >= 3) {
            int G2 = this.f25426i.G() & 7;
            int i4 = G2 & 3;
            boolean z9 = (G2 & 4) == 4;
            byte G3 = (byte) this.f25426i.G();
            byte G4 = (byte) this.f25426i.G();
            if (i4 == 2 || i4 == 3) {
                if (z9) {
                    if (i4 == 3) {
                        o();
                        int i10 = (G3 & 192) >> 6;
                        int i11 = this.f25428k;
                        if (i11 != -1 && i10 != (i11 + 1) % 4) {
                            E();
                            int i12 = this.f25428k;
                            StringBuilder sb = new StringBuilder(71);
                            sb.append("Sequence number discontinuity. previous=");
                            sb.append(i12);
                            sb.append(" current=");
                            sb.append(i10);
                            w.n(f25412t, sb.toString());
                        }
                        this.f25428k = i10;
                        int i13 = G3 & Utf8.REPLACEMENT_BYTE;
                        if (i13 == 0) {
                            i13 = 64;
                        }
                        C0180c c0180c = new C0180c(i10, i13);
                        this.f25435r = c0180c;
                        byte[] bArr = c0180c.f25471c;
                        int i14 = c0180c.f25472d;
                        c0180c.f25472d = i14 + 1;
                        bArr[i14] = G4;
                    } else {
                        com.google.android.exoplayer2.util.a.a(i4 == 2);
                        C0180c c0180c2 = this.f25435r;
                        if (c0180c2 == null) {
                            w.d(f25412t, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0180c2.f25471c;
                            int i15 = c0180c2.f25472d;
                            int i16 = i15 + 1;
                            c0180c2.f25472d = i16;
                            bArr2[i15] = G3;
                            c0180c2.f25472d = i16 + 1;
                            bArr2[i16] = G4;
                        }
                    }
                    C0180c c0180c3 = this.f25435r;
                    if (c0180c3.f25472d == (c0180c3.f25470b * 2) - 1) {
                        o();
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.decoder.c
    public void flush() {
        super.flush();
        this.f25433p = null;
        this.f25434q = null;
        this.f25436s = 0;
        this.f25432o = this.f25431n[0];
        E();
        this.f25435r = null;
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    @Nullable
    public /* bridge */ /* synthetic */ h g() throws SubtitleDecoderException {
        return super.d();
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.decoder.c
    public String getName() {
        return f25412t;
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    @Nullable
    public /* bridge */ /* synthetic */ i h() throws SubtitleDecoderException {
        return super.b();
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    protected boolean k() {
        return this.f25433p != this.f25434q;
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    public /* bridge */ /* synthetic */ void l(h hVar) throws SubtitleDecoderException {
        super.c(hVar);
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.decoder.c
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }
}
