package com.google.android.exoplayer2.text.webvtt;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.h0;
import java.util.ArrayList;

/* compiled from: WebvttDecoder.java */
/* loaded from: classes2.dex */
public final class h extends com.google.android.exoplayer2.text.c {

    /* renamed from: q  reason: collision with root package name */
    private static final int f25920q = -1;

    /* renamed from: r  reason: collision with root package name */
    private static final int f25921r = 0;

    /* renamed from: s  reason: collision with root package name */
    private static final int f25922s = 1;

    /* renamed from: t  reason: collision with root package name */
    private static final int f25923t = 2;

    /* renamed from: u  reason: collision with root package name */
    private static final int f25924u = 3;

    /* renamed from: v  reason: collision with root package name */
    private static final String f25925v = "NOTE";

    /* renamed from: w  reason: collision with root package name */
    private static final String f25926w = "STYLE";

    /* renamed from: o  reason: collision with root package name */
    private final h0 f25927o;

    /* renamed from: p  reason: collision with root package name */
    private final a f25928p;

    public h() {
        super("WebvttDecoder");
        this.f25927o = new h0();
        this.f25928p = new a();
    }

    private static int B(h0 h0Var) {
        int i4 = -1;
        int i10 = 0;
        while (i4 == -1) {
            i10 = h0Var.e();
            String q9 = h0Var.q();
            if (q9 == null) {
                i4 = 0;
            } else if (f25926w.equals(q9)) {
                i4 = 2;
            } else {
                i4 = q9.startsWith(f25925v) ? 1 : 3;
            }
        }
        h0Var.S(i10);
        return i4;
    }

    private static void C(h0 h0Var) {
        do {
        } while (!TextUtils.isEmpty(h0Var.q()));
    }

    @Override // com.google.android.exoplayer2.text.c
    protected com.google.android.exoplayer2.text.e z(byte[] bArr, int i4, boolean z9) throws SubtitleDecoderException {
        e m9;
        this.f25927o.Q(bArr, i4);
        ArrayList arrayList = new ArrayList();
        try {
            i.e(this.f25927o);
            do {
            } while (!TextUtils.isEmpty(this.f25927o.q()));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int B = B(this.f25927o);
                if (B == 0) {
                    return new k(arrayList2);
                }
                if (B == 1) {
                    C(this.f25927o);
                } else if (B == 2) {
                    if (arrayList2.isEmpty()) {
                        this.f25927o.q();
                        arrayList.addAll(this.f25928p.d(this.f25927o));
                    } else {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                } else if (B == 3 && (m9 = f.m(this.f25927o, arrayList)) != null) {
                    arrayList2.add(m9);
                }
            }
        } catch (ParserException e4) {
            throw new SubtitleDecoderException(e4);
        }
    }
}
