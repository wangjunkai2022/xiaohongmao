package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: Mp4WebvttDecoder.java */
/* loaded from: classes2.dex */
public final class b extends com.google.android.exoplayer2.text.c {

    /* renamed from: p  reason: collision with root package name */
    private static final int f25838p = 8;

    /* renamed from: q  reason: collision with root package name */
    private static final int f25839q = 1885436268;

    /* renamed from: r  reason: collision with root package name */
    private static final int f25840r = 1937011815;

    /* renamed from: s  reason: collision with root package name */
    private static final int f25841s = 1987343459;

    /* renamed from: o  reason: collision with root package name */
    private final h0 f25842o;

    public b() {
        super("Mp4WebvttDecoder");
        this.f25842o = new h0();
    }

    private static com.google.android.exoplayer2.text.a B(h0 h0Var, int i4) throws SubtitleDecoderException {
        CharSequence charSequence = null;
        a.c cVar = null;
        while (i4 > 0) {
            if (i4 >= 8) {
                int o9 = h0Var.o();
                int o10 = h0Var.o();
                int i10 = o9 - 8;
                String K = z0.K(h0Var.d(), h0Var.e(), i10);
                h0Var.T(i10);
                i4 = (i4 - 8) - i10;
                if (o10 == f25840r) {
                    cVar = f.o(K);
                } else if (o10 == f25839q) {
                    charSequence = f.q(null, K.trim(), Collections.emptyList());
                }
            } else {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
        }
        if (charSequence == null) {
            charSequence = "";
        }
        if (cVar != null) {
            return cVar.A(charSequence).a();
        }
        return f.l(charSequence);
    }

    @Override // com.google.android.exoplayer2.text.c
    protected com.google.android.exoplayer2.text.e z(byte[] bArr, int i4, boolean z9) throws SubtitleDecoderException {
        this.f25842o.Q(bArr, i4);
        ArrayList arrayList = new ArrayList();
        while (this.f25842o.a() > 0) {
            if (this.f25842o.a() >= 8) {
                int o9 = this.f25842o.o();
                if (this.f25842o.o() == f25841s) {
                    arrayList.add(B(this.f25842o, o9 - 8));
                } else {
                    this.f25842o.T(o9 - 8);
                }
            } else {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new c(arrayList);
    }
}
