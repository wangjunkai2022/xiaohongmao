package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.util.Collections;

/* compiled from: AudioTagPayloadReader.java */
/* loaded from: classes2.dex */
final class a extends TagPayloadReader {

    /* renamed from: e  reason: collision with root package name */
    private static final int f22185e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static final int f22186f = 7;

    /* renamed from: g  reason: collision with root package name */
    private static final int f22187g = 8;

    /* renamed from: h  reason: collision with root package name */
    private static final int f22188h = 10;

    /* renamed from: i  reason: collision with root package name */
    private static final int f22189i = 0;

    /* renamed from: j  reason: collision with root package name */
    private static final int f22190j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f22191k = {5512, 11025, 22050, StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE};

    /* renamed from: b  reason: collision with root package name */
    private boolean f22192b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22193c;

    /* renamed from: d  reason: collision with root package name */
    private int f22194d;

    public a(e0 e0Var) {
        super(e0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(h0 h0Var) throws TagPayloadReader.UnsupportedFormatException {
        if (!this.f22192b) {
            int G = h0Var.G();
            int i4 = (G >> 4) & 15;
            this.f22194d = i4;
            if (i4 == 2) {
                this.f22184a.d(new Format.b().e0(a0.D).H(1).f0(f22191k[(G >> 2) & 3]).E());
                this.f22193c = true;
            } else if (i4 == 7 || i4 == 8) {
                this.f22184a.d(new Format.b().e0(i4 == 7 ? a0.J : a0.K).H(1).f0(8000).E());
                this.f22193c = true;
            } else if (i4 != 10) {
                int i10 = this.f22194d;
                StringBuilder sb = new StringBuilder(39);
                sb.append("Audio format not supported: ");
                sb.append(i10);
                throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
            }
            this.f22192b = true;
        } else {
            h0Var.T(1);
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(h0 h0Var, long j4) throws ParserException {
        if (this.f22194d == 2) {
            int a10 = h0Var.a();
            this.f22184a.c(h0Var, a10);
            this.f22184a.e(j4, 1, a10, 0, null);
            return true;
        }
        int G = h0Var.G();
        if (G == 0 && !this.f22193c) {
            int a11 = h0Var.a();
            byte[] bArr = new byte[a11];
            h0Var.k(bArr, 0, a11);
            a.c g4 = com.google.android.exoplayer2.audio.a.g(bArr);
            this.f22184a.d(new Format.b().e0("audio/mp4a-latm").I(g4.f21115c).H(g4.f21114b).f0(g4.f21113a).T(Collections.singletonList(bArr)).E());
            this.f22193c = true;
            return false;
        } else if (this.f22194d != 10 || G == 1) {
            int a12 = h0Var.a();
            this.f22184a.c(h0Var, a12);
            this.f22184a.e(j4, 1, a12, 0, null);
            return true;
        } else {
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public void d() {
    }
}
