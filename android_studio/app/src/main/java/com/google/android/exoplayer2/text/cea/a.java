package com.google.android.exoplayer2.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import com.google.mlkit.common.MlKitException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.math.Primes;

/* compiled from: Cea608Decoder.java */
/* loaded from: classes2.dex */
public final class a extends e {
    public static final long A = 16000;
    private static final String B = "Cea608Decoder";
    private static final int C = 4;
    private static final int D = 2;
    private static final int E = 1;
    private static final int F = 0;
    private static final int G = 1;
    private static final int H = 0;
    private static final int I = 1;
    private static final int J = 0;
    private static final int K = 1;
    private static final int L = 2;
    private static final int M = 3;
    private static final int Q = 7;
    private static final int R = 8;
    private static final int S = 4;
    private static final byte T = -4;
    private static final byte U = 32;
    private static final byte V = 33;
    private static final byte W = 36;
    private static final byte X = 37;
    private static final byte Y = 38;
    private static final byte Z = 39;

    /* renamed from: a0  reason: collision with root package name */
    private static final byte f25349a0 = 41;

    /* renamed from: b0  reason: collision with root package name */
    private static final byte f25350b0 = 42;

    /* renamed from: c0  reason: collision with root package name */
    private static final byte f25351c0 = 43;

    /* renamed from: d0  reason: collision with root package name */
    private static final byte f25352d0 = 44;

    /* renamed from: e0  reason: collision with root package name */
    private static final byte f25353e0 = 45;

    /* renamed from: f0  reason: collision with root package name */
    private static final byte f25354f0 = 46;

    /* renamed from: g0  reason: collision with root package name */
    private static final byte f25355g0 = 47;

    /* renamed from: j  reason: collision with root package name */
    private final int f25362j;

    /* renamed from: k  reason: collision with root package name */
    private final int f25363k;

    /* renamed from: l  reason: collision with root package name */
    private final int f25364l;

    /* renamed from: m  reason: collision with root package name */
    private final long f25365m;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private List<com.google.android.exoplayer2.text.a> f25368p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private List<com.google.android.exoplayer2.text.a> f25369q;

    /* renamed from: r  reason: collision with root package name */
    private int f25370r;

    /* renamed from: s  reason: collision with root package name */
    private int f25371s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f25372t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f25373u;

    /* renamed from: v  reason: collision with root package name */
    private byte f25374v;

    /* renamed from: w  reason: collision with root package name */
    private byte f25375w;

    /* renamed from: y  reason: collision with root package name */
    private boolean f25377y;

    /* renamed from: z  reason: collision with root package name */
    private long f25378z;
    private static final int[] N = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] O = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] P = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};

    /* renamed from: h0  reason: collision with root package name */
    private static final int[] f25356h0 = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, com.facebook.imageutils.c.f13392g, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};

    /* renamed from: i0  reason: collision with root package name */
    private static final int[] f25357i0 = {174, 176, a0.f22979w, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: j0  reason: collision with root package name */
    private static final int[] f25358j0 = {193, 201, Primes.SMALL_FACTOR_LIMIT, com.facebook.imageutils.c.f13391f, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, 203, 235, MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, 239, 212, com.facebook.imageutils.c.f13390e, 249, 219, 171, 187};

    /* renamed from: k0  reason: collision with root package name */
    private static final int[] f25359k0 = {195, 227, MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, com.facebook.imageutils.c.f13388c, 248, 9484, 9488, 9492, 9496};

    /* renamed from: l0  reason: collision with root package name */
    private static final boolean[] f25360l0 = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: i  reason: collision with root package name */
    private final h0 f25361i = new h0();

    /* renamed from: n  reason: collision with root package name */
    private final ArrayList<C0178a> f25366n = new ArrayList<>();

    /* renamed from: o  reason: collision with root package name */
    private C0178a f25367o = new C0178a(0, 4);

    /* renamed from: x  reason: collision with root package name */
    private int f25376x = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea608Decoder.java */
    /* renamed from: com.google.android.exoplayer2.text.cea.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0178a {

        /* renamed from: i  reason: collision with root package name */
        private static final int f25379i = 32;

        /* renamed from: j  reason: collision with root package name */
        private static final int f25380j = 15;

        /* renamed from: a  reason: collision with root package name */
        private final List<C0179a> f25381a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<SpannableString> f25382b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final StringBuilder f25383c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        private int f25384d;

        /* renamed from: e  reason: collision with root package name */
        private int f25385e;

        /* renamed from: f  reason: collision with root package name */
        private int f25386f;

        /* renamed from: g  reason: collision with root package name */
        private int f25387g;

        /* renamed from: h  reason: collision with root package name */
        private int f25388h;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: Cea608Decoder.java */
        /* renamed from: com.google.android.exoplayer2.text.cea.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0179a {

            /* renamed from: a  reason: collision with root package name */
            public final int f25389a;

            /* renamed from: b  reason: collision with root package name */
            public final boolean f25390b;

            /* renamed from: c  reason: collision with root package name */
            public int f25391c;

            public C0179a(int i4, boolean z9, int i10) {
                this.f25389a = i4;
                this.f25390b = z9;
                this.f25391c = i10;
            }
        }

        public C0178a(int i4, int i10) {
            j(i4);
            this.f25388h = i10;
        }

        private SpannableString h() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f25383c);
            int length = spannableStringBuilder.length();
            int i4 = 0;
            int i10 = -1;
            int i11 = -1;
            int i12 = 0;
            int i13 = -1;
            int i14 = -1;
            boolean z9 = false;
            while (i4 < this.f25381a.size()) {
                C0179a c0179a = this.f25381a.get(i4);
                boolean z10 = c0179a.f25390b;
                int i15 = c0179a.f25389a;
                if (i15 != 8) {
                    boolean z11 = i15 == 7;
                    if (i15 != 7) {
                        i14 = a.P[i15];
                    }
                    z9 = z11;
                }
                int i16 = c0179a.f25391c;
                i4++;
                if (i16 != (i4 < this.f25381a.size() ? this.f25381a.get(i4).f25391c : length)) {
                    if (i10 != -1 && !z10) {
                        q(spannableStringBuilder, i10, i16);
                        i10 = -1;
                    } else if (i10 == -1 && z10) {
                        i10 = i16;
                    }
                    if (i11 != -1 && !z9) {
                        o(spannableStringBuilder, i11, i16);
                        i11 = -1;
                    } else if (i11 == -1 && z9) {
                        i11 = i16;
                    }
                    if (i14 != i13) {
                        n(spannableStringBuilder, i12, i16, i13);
                        i13 = i14;
                        i12 = i16;
                    }
                }
            }
            if (i10 != -1 && i10 != length) {
                q(spannableStringBuilder, i10, length);
            }
            if (i11 != -1 && i11 != length) {
                o(spannableStringBuilder, i11, length);
            }
            if (i12 != length) {
                n(spannableStringBuilder, i12, length, i13);
            }
            return new SpannableString(spannableStringBuilder);
        }

        private static void n(SpannableStringBuilder spannableStringBuilder, int i4, int i10, int i11) {
            if (i11 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i11), i4, i10, 33);
        }

        private static void o(SpannableStringBuilder spannableStringBuilder, int i4, int i10) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i4, i10, 33);
        }

        private static void q(SpannableStringBuilder spannableStringBuilder, int i4, int i10) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i4, i10, 33);
        }

        public void e(char c10) {
            if (this.f25383c.length() < 32) {
                this.f25383c.append(c10);
            }
        }

        public void f() {
            int length = this.f25383c.length();
            if (length > 0) {
                this.f25383c.delete(length - 1, length);
                for (int size = this.f25381a.size() - 1; size >= 0; size--) {
                    C0179a c0179a = this.f25381a.get(size);
                    int i4 = c0179a.f25391c;
                    if (i4 != length) {
                        return;
                    }
                    c0179a.f25391c = i4 - 1;
                }
            }
        }

        @Nullable
        public com.google.android.exoplayer2.text.a g(int i4) {
            float f10;
            int i10 = this.f25385e + this.f25386f;
            int i11 = 32 - i10;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i12 = 0; i12 < this.f25382b.size(); i12++) {
                spannableStringBuilder.append(z0.v1(this.f25382b.get(i12), i11));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(z0.v1(h(), i11));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i11 - spannableStringBuilder.length();
            int i13 = i10 - length;
            if (i4 == Integer.MIN_VALUE) {
                if (this.f25387g != 2 || (Math.abs(i13) >= 3 && length >= 0)) {
                    i4 = (this.f25387g != 2 || i13 <= 0) ? 0 : 2;
                } else {
                    i4 = 1;
                }
            }
            if (i4 != 1) {
                if (i4 == 2) {
                    i10 = 32 - length;
                }
                f10 = ((i10 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f10 = 0.5f;
            }
            int i14 = this.f25384d;
            if (i14 > 7) {
                i14 = (i14 - 15) - 2;
            } else if (this.f25387g == 1) {
                i14 -= this.f25388h - 1;
            }
            return new a.c().A(spannableStringBuilder).B(Layout.Alignment.ALIGN_NORMAL).t(i14, 1).w(f10).x(i4).a();
        }

        public boolean i() {
            return this.f25381a.isEmpty() && this.f25382b.isEmpty() && this.f25383c.length() == 0;
        }

        public void j(int i4) {
            this.f25387g = i4;
            this.f25381a.clear();
            this.f25382b.clear();
            this.f25383c.setLength(0);
            this.f25384d = 15;
            this.f25385e = 0;
            this.f25386f = 0;
        }

        public void k() {
            this.f25382b.add(h());
            this.f25383c.setLength(0);
            this.f25381a.clear();
            int min = Math.min(this.f25388h, this.f25384d);
            while (this.f25382b.size() >= min) {
                this.f25382b.remove(0);
            }
        }

        public void l(int i4) {
            this.f25387g = i4;
        }

        public void m(int i4) {
            this.f25388h = i4;
        }

        public void p(int i4, boolean z9) {
            this.f25381a.add(new C0179a(i4, z9, this.f25383c.length()));
        }
    }

    public a(String str, int i4, long j4) {
        this.f25365m = j4 > 0 ? j4 * 1000 : -9223372036854775807L;
        this.f25362j = com.google.android.exoplayer2.util.a0.f27470t0.equals(str) ? 2 : 3;
        if (i4 == 1) {
            this.f25364l = 0;
            this.f25363k = 0;
        } else if (i4 == 2) {
            this.f25364l = 1;
            this.f25363k = 0;
        } else if (i4 == 3) {
            this.f25364l = 0;
            this.f25363k = 1;
        } else if (i4 != 4) {
            w.n(B, "Invalid channel. Defaulting to CC1.");
            this.f25364l = 0;
            this.f25363k = 0;
        } else {
            this.f25364l = 1;
            this.f25363k = 1;
        }
        M(0);
        L();
        this.f25377y = true;
        this.f25378z = i.f23649b;
    }

    private static boolean A(byte b10, byte b11) {
        return (b10 & 246) == 18 && (b11 & 224) == 32;
    }

    private static boolean B(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 32;
    }

    private static boolean C(byte b10, byte b11) {
        return (b10 & 246) == 20 && (b11 & 240) == 32;
    }

    private static boolean D(byte b10, byte b11) {
        return (b10 & 240) == 16 && (b11 & 192) == 64;
    }

    private static boolean E(byte b10) {
        return (b10 & 240) == 16;
    }

    private boolean F(boolean z9, byte b10, byte b11) {
        if (z9 && E(b10)) {
            if (this.f25373u && this.f25374v == b10 && this.f25375w == b11) {
                this.f25373u = false;
                return true;
            }
            this.f25373u = true;
            this.f25374v = b10;
            this.f25375w = b11;
        } else {
            this.f25373u = false;
        }
        return false;
    }

    private static boolean G(byte b10) {
        return (b10 & 247) == 20;
    }

    private static boolean H(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 48;
    }

    private static boolean I(byte b10, byte b11) {
        return (b10 & 247) == 23 && b11 >= 33 && b11 <= 35;
    }

    private static boolean J(byte b10) {
        return 1 <= b10 && b10 <= 15;
    }

    private void K(byte b10, byte b11) {
        if (J(b10)) {
            this.f25377y = false;
        } else if (G(b10)) {
            if (b11 != 32 && b11 != 47) {
                switch (b11) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b11) {
                            case 41:
                                break;
                            case 42:
                            case 43:
                                this.f25377y = false;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.f25377y = true;
        }
    }

    private void L() {
        this.f25367o.j(this.f25370r);
        this.f25366n.clear();
        this.f25366n.add(this.f25367o);
    }

    private void M(int i4) {
        int i10 = this.f25370r;
        if (i10 == i4) {
            return;
        }
        this.f25370r = i4;
        if (i4 == 3) {
            for (int i11 = 0; i11 < this.f25366n.size(); i11++) {
                this.f25366n.get(i11).l(i4);
            }
            return;
        }
        L();
        if (i10 == 3 || i4 == 1 || i4 == 0) {
            this.f25368p = Collections.emptyList();
        }
    }

    private void N(int i4) {
        this.f25371s = i4;
        this.f25367o.m(i4);
    }

    private boolean O() {
        return (this.f25365m == i.f23649b || this.f25378z == i.f23649b || j() - this.f25378z < this.f25365m) ? false : true;
    }

    private boolean P(byte b10) {
        if (z(b10)) {
            this.f25376x = q(b10);
        }
        return this.f25376x == this.f25364l;
    }

    private static char p(byte b10) {
        return (char) f25356h0[(b10 & Byte.MAX_VALUE) - 32];
    }

    private static int q(byte b10) {
        return (b10 >> 3) & 1;
    }

    private List<com.google.android.exoplayer2.text.a> r() {
        int size = this.f25366n.size();
        ArrayList arrayList = new ArrayList(size);
        int i4 = 2;
        for (int i10 = 0; i10 < size; i10++) {
            com.google.android.exoplayer2.text.a g4 = this.f25366n.get(i10).g(Integer.MIN_VALUE);
            arrayList.add(g4);
            if (g4 != null) {
                i4 = Math.min(i4, g4.f25321i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            com.google.android.exoplayer2.text.a aVar = (com.google.android.exoplayer2.text.a) arrayList.get(i11);
            if (aVar != null) {
                if (aVar.f25321i != i4) {
                    aVar = (com.google.android.exoplayer2.text.a) com.google.android.exoplayer2.util.a.g(this.f25366n.get(i11).g(i4));
                }
                arrayList2.add(aVar);
            }
        }
        return arrayList2;
    }

    private static char s(byte b10) {
        return (char) f25358j0[b10 & com.google.common.base.c.I];
    }

    private static char t(byte b10) {
        return (char) f25359k0[b10 & com.google.common.base.c.I];
    }

    private static char u(byte b10, byte b11) {
        if ((b10 & 1) == 0) {
            return s(b11);
        }
        return t(b11);
    }

    private static char v(byte b10) {
        return (char) f25357i0[b10 & com.google.common.base.c.f32110q];
    }

    private void w(byte b10) {
        this.f25367o.e(' ');
        this.f25367o.p((b10 >> 1) & 7, (b10 & 1) == 1);
    }

    private void x(byte b10) {
        if (b10 == 32) {
            M(2);
        } else if (b10 != 41) {
            switch (b10) {
                case 37:
                    M(1);
                    N(2);
                    return;
                case 38:
                    M(1);
                    N(3);
                    return;
                case 39:
                    M(1);
                    N(4);
                    return;
                default:
                    int i4 = this.f25370r;
                    if (i4 == 0) {
                        return;
                    }
                    if (b10 != 33) {
                        switch (b10) {
                            case 44:
                                this.f25368p = Collections.emptyList();
                                int i10 = this.f25370r;
                                if (i10 == 1 || i10 == 3) {
                                    L();
                                    return;
                                }
                                return;
                            case 45:
                                if (i4 != 1 || this.f25367o.i()) {
                                    return;
                                }
                                this.f25367o.k();
                                return;
                            case 46:
                                L();
                                return;
                            case 47:
                                this.f25368p = r();
                                L();
                                return;
                            default:
                                return;
                        }
                    }
                    this.f25367o.f();
                    return;
            }
        } else {
            M(3);
        }
    }

    private void y(byte b10, byte b11) {
        int i4 = N[b10 & 7];
        if ((b11 & 32) != 0) {
            i4++;
        }
        if (i4 != this.f25367o.f25384d) {
            if (this.f25370r != 1 && !this.f25367o.i()) {
                C0178a c0178a = new C0178a(this.f25370r, this.f25371s);
                this.f25367o = c0178a;
                this.f25366n.add(c0178a);
            }
            this.f25367o.f25384d = i4;
        }
        boolean z9 = (b11 & 16) == 16;
        boolean z10 = (b11 & 1) == 1;
        int i10 = (b11 >> 1) & 7;
        this.f25367o.p(z9 ? 8 : i10, z10);
        if (z9) {
            this.f25367o.f25385e = O[i10];
        }
    }

    private static boolean z(byte b10) {
        return (b10 & 224) == 0;
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.text.f
    public /* bridge */ /* synthetic */ void a(long j4) {
        super.a(j4);
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    protected com.google.android.exoplayer2.text.e e() {
        List<com.google.android.exoplayer2.text.a> list = this.f25368p;
        this.f25369q = list;
        return new f((List) com.google.android.exoplayer2.util.a.g(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x006e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0018 A[SYNTHETIC] */
    @Override // com.google.android.exoplayer2.text.cea.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void f(com.google.android.exoplayer2.text.h r10) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.a.f(com.google.android.exoplayer2.text.h):void");
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.decoder.c
    public void flush() {
        super.flush();
        this.f25368p = null;
        this.f25369q = null;
        M(0);
        N(4);
        L();
        this.f25372t = false;
        this.f25373u = false;
        this.f25374v = (byte) 0;
        this.f25375w = (byte) 0;
        this.f25376x = 0;
        this.f25377y = true;
        this.f25378z = i.f23649b;
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    @Nullable
    public /* bridge */ /* synthetic */ h g() throws SubtitleDecoderException {
        return super.d();
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.decoder.c
    public String getName() {
        return B;
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.decoder.c
    @Nullable
    /* renamed from: h */
    public com.google.android.exoplayer2.text.i b() throws SubtitleDecoderException {
        com.google.android.exoplayer2.text.i i4;
        com.google.android.exoplayer2.text.i b10 = super.b();
        if (b10 != null) {
            return b10;
        }
        if (!O() || (i4 = i()) == null) {
            return null;
        }
        this.f25368p = Collections.emptyList();
        this.f25378z = i.f23649b;
        i4.p(j(), e(), Long.MAX_VALUE);
        return i4;
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    protected boolean k() {
        return this.f25368p != this.f25369q;
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    public /* bridge */ /* synthetic */ void l(h hVar) throws SubtitleDecoderException {
        super.c(hVar);
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.decoder.c
    public void release() {
    }
}
