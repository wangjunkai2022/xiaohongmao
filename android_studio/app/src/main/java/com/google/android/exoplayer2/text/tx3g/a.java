package com.google.android.exoplayer2.text.tx3g;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import com.google.common.base.e;
import java.util.List;

/* compiled from: Tx3gDecoder.java */
/* loaded from: classes2.dex */
public final class a extends com.google.android.exoplayer2.text.c {
    private static final String A = "Serif";
    private static final int B = 8;
    private static final int C = 2;
    private static final int D = 2;
    private static final int E = 12;
    private static final int F = 1;
    private static final int G = 2;
    private static final int H = 4;
    private static final int I = 16711680;
    private static final int J = 0;
    private static final int K = 0;
    private static final int L = -1;
    private static final String M = "sans-serif";
    private static final float N = 0.85f;

    /* renamed from: v  reason: collision with root package name */
    private static final String f25803v = "Tx3gDecoder";

    /* renamed from: w  reason: collision with root package name */
    private static final char f25804w = 65279;

    /* renamed from: x  reason: collision with root package name */
    private static final char f25805x = 65534;

    /* renamed from: y  reason: collision with root package name */
    private static final int f25806y = 1937013100;

    /* renamed from: z  reason: collision with root package name */
    private static final int f25807z = 1952608120;

    /* renamed from: o  reason: collision with root package name */
    private final h0 f25808o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f25809p;

    /* renamed from: q  reason: collision with root package name */
    private final int f25810q;

    /* renamed from: r  reason: collision with root package name */
    private final int f25811r;

    /* renamed from: s  reason: collision with root package name */
    private final String f25812s;

    /* renamed from: t  reason: collision with root package name */
    private final float f25813t;

    /* renamed from: u  reason: collision with root package name */
    private final int f25814u;

    public a(List<byte[]> list) {
        super(f25803v);
        this.f25808o = new h0();
        if (list.size() == 1 && (list.get(0).length == 48 || list.get(0).length == 53)) {
            byte[] bArr = list.get(0);
            this.f25810q = bArr[24];
            this.f25811r = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
            this.f25812s = A.equals(z0.K(bArr, 43, bArr.length - 43)) ? i.f23713r : "sans-serif";
            int i4 = bArr[25] * com.google.common.base.c.f32117x;
            this.f25814u = i4;
            boolean z9 = (bArr[0] & 32) != 0;
            this.f25809p = z9;
            if (z9) {
                this.f25813t = z0.s(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i4, 0.0f, 0.95f);
                return;
            } else {
                this.f25813t = N;
                return;
            }
        }
        this.f25810q = 0;
        this.f25811r = -1;
        this.f25812s = "sans-serif";
        this.f25809p = false;
        this.f25813t = N;
        this.f25814u = -1;
    }

    private void B(h0 h0Var, SpannableStringBuilder spannableStringBuilder) throws SubtitleDecoderException {
        int i4;
        C(h0Var.a() >= 12);
        int M2 = h0Var.M();
        int M3 = h0Var.M();
        h0Var.T(2);
        int G2 = h0Var.G();
        h0Var.T(1);
        int o9 = h0Var.o();
        if (M3 > spannableStringBuilder.length()) {
            int length = spannableStringBuilder.length();
            StringBuilder sb = new StringBuilder(68);
            sb.append("Truncating styl end (");
            sb.append(M3);
            sb.append(") to cueText.length() (");
            sb.append(length);
            sb.append(").");
            w.n(f25803v, sb.toString());
            i4 = spannableStringBuilder.length();
        } else {
            i4 = M3;
        }
        if (M2 >= i4) {
            StringBuilder sb2 = new StringBuilder(60);
            sb2.append("Ignoring styl with start (");
            sb2.append(M2);
            sb2.append(") >= end (");
            sb2.append(i4);
            sb2.append(").");
            w.n(f25803v, sb2.toString());
            return;
        }
        int i10 = i4;
        E(spannableStringBuilder, G2, this.f25810q, M2, i10, 0);
        D(spannableStringBuilder, o9, this.f25811r, M2, i10, 0);
    }

    private static void C(boolean z9) throws SubtitleDecoderException {
        if (!z9) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }

    private static void D(SpannableStringBuilder spannableStringBuilder, int i4, int i10, int i11, int i12, int i13) {
        if (i4 != i10) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i4 >>> 8) | ((i4 & 255) << 24)), i11, i12, i13 | 33);
        }
    }

    private static void E(SpannableStringBuilder spannableStringBuilder, int i4, int i10, int i11, int i12, int i13) {
        if (i4 != i10) {
            int i14 = i13 | 33;
            boolean z9 = (i4 & 1) != 0;
            boolean z10 = (i4 & 2) != 0;
            if (z9) {
                if (z10) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i11, i12, i14);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i11, i12, i14);
                }
            } else if (z10) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i11, i12, i14);
            }
            boolean z11 = (i4 & 4) != 0;
            if (z11) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i11, i12, i14);
            }
            if (z11 || z9 || z10) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i11, i12, i14);
        }
    }

    private static void F(SpannableStringBuilder spannableStringBuilder, String str, int i4, int i10) {
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i4, i10, 16711713);
        }
    }

    private static String G(h0 h0Var) throws SubtitleDecoderException {
        char g4;
        C(h0Var.a() >= 2);
        int M2 = h0Var.M();
        if (M2 == 0) {
            return "";
        }
        if (h0Var.a() >= 2 && ((g4 = h0Var.g()) == 65279 || g4 == 65534)) {
            return h0Var.E(M2, e.f32193f);
        }
        return h0Var.E(M2, e.f32190c);
    }

    @Override // com.google.android.exoplayer2.text.c
    protected com.google.android.exoplayer2.text.e z(byte[] bArr, int i4, boolean z9) throws SubtitleDecoderException {
        this.f25808o.Q(bArr, i4);
        String G2 = G(this.f25808o);
        if (G2.isEmpty()) {
            return b.f25815b;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(G2);
        E(spannableStringBuilder, this.f25810q, 0, 0, spannableStringBuilder.length(), I);
        D(spannableStringBuilder, this.f25811r, -1, 0, spannableStringBuilder.length(), I);
        F(spannableStringBuilder, this.f25812s, 0, spannableStringBuilder.length());
        float f10 = this.f25813t;
        while (this.f25808o.a() >= 8) {
            int e4 = this.f25808o.e();
            int o9 = this.f25808o.o();
            int o10 = this.f25808o.o();
            if (o10 == f25806y) {
                C(this.f25808o.a() >= 2);
                int M2 = this.f25808o.M();
                for (int i10 = 0; i10 < M2; i10++) {
                    B(this.f25808o, spannableStringBuilder);
                }
            } else if (o10 == f25807z && this.f25809p) {
                C(this.f25808o.a() >= 2);
                f10 = z0.s(this.f25808o.M() / this.f25814u, 0.0f, 0.95f);
            }
            this.f25808o.S(e4 + o9);
        }
        return new b(new a.c().A(spannableStringBuilder).t(f10, 0).u(0).a());
    }
}
