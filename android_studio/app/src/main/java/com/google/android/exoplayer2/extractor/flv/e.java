package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.h0;

/* compiled from: VideoTagPayloadReader.java */
/* loaded from: classes2.dex */
final class e extends TagPayloadReader {

    /* renamed from: h  reason: collision with root package name */
    private static final int f22235h = 7;

    /* renamed from: i  reason: collision with root package name */
    private static final int f22236i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f22237j = 5;

    /* renamed from: k  reason: collision with root package name */
    private static final int f22238k = 0;

    /* renamed from: l  reason: collision with root package name */
    private static final int f22239l = 1;

    /* renamed from: b  reason: collision with root package name */
    private final h0 f22240b;

    /* renamed from: c  reason: collision with root package name */
    private final h0 f22241c;

    /* renamed from: d  reason: collision with root package name */
    private int f22242d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22243e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22244f;

    /* renamed from: g  reason: collision with root package name */
    private int f22245g;

    public e(e0 e0Var) {
        super(e0Var);
        this.f22240b = new h0(b0.f27494b);
        this.f22241c = new h0(4);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(h0 h0Var) throws TagPayloadReader.UnsupportedFormatException {
        int G = h0Var.G();
        int i4 = (G >> 4) & 15;
        int i10 = G & 15;
        if (i10 == 7) {
            this.f22245g = i4;
            return i4 != 5;
        }
        StringBuilder sb = new StringBuilder(39);
        sb.append("Video format not supported: ");
        sb.append(i10);
        throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(h0 h0Var, long j4) throws ParserException {
        int G = h0Var.G();
        long p9 = j4 + (h0Var.p() * 1000);
        if (G == 0 && !this.f22243e) {
            h0 h0Var2 = new h0(new byte[h0Var.a()]);
            h0Var.k(h0Var2.d(), 0, h0Var.a());
            com.google.android.exoplayer2.video.a b10 = com.google.android.exoplayer2.video.a.b(h0Var2);
            this.f22242d = b10.f27853b;
            this.f22184a.d(new Format.b().e0("video/avc").I(b10.f27857f).j0(b10.f27854c).Q(b10.f27855d).a0(b10.f27856e).T(b10.f27852a).E());
            this.f22243e = true;
            return false;
        } else if (G == 1 && this.f22243e) {
            int i4 = this.f22245g == 1 ? 1 : 0;
            if (this.f22244f || i4 != 0) {
                byte[] d4 = this.f22241c.d();
                d4[0] = 0;
                d4[1] = 0;
                d4[2] = 0;
                int i10 = 4 - this.f22242d;
                int i11 = 0;
                while (h0Var.a() > 0) {
                    h0Var.k(this.f22241c.d(), i10, this.f22242d);
                    this.f22241c.S(0);
                    int K = this.f22241c.K();
                    this.f22240b.S(0);
                    this.f22184a.c(this.f22240b, 4);
                    this.f22184a.c(h0Var, K);
                    i11 = i11 + 4 + K;
                }
                this.f22184a.e(p9, i4, i11, 0, null);
                this.f22244f = true;
                return true;
            }
            return false;
        } else {
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public void d() {
        this.f22244f = false;
    }
}
