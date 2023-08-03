package com.google.android.exoplayer2.video.spherical;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.f2;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;
import java.nio.ByteBuffer;

/* compiled from: CameraMotionRenderer.java */
/* loaded from: classes2.dex */
public final class b extends com.google.android.exoplayer2.f {

    /* renamed from: r  reason: collision with root package name */
    private static final String f28023r = "CameraMotionRenderer";

    /* renamed from: s  reason: collision with root package name */
    private static final int f28024s = 100000;

    /* renamed from: m  reason: collision with root package name */
    private final DecoderInputBuffer f28025m;

    /* renamed from: n  reason: collision with root package name */
    private final h0 f28026n;

    /* renamed from: o  reason: collision with root package name */
    private long f28027o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private a f28028p;

    /* renamed from: q  reason: collision with root package name */
    private long f28029q;

    public b() {
        super(6);
        this.f28025m = new DecoderInputBuffer(1);
        this.f28026n = new h0();
    }

    @Nullable
    private float[] O(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f28026n.Q(byteBuffer.array(), byteBuffer.limit());
        this.f28026n.S(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i4 = 0; i4 < 3; i4++) {
            fArr[i4] = Float.intBitsToFloat(this.f28026n.r());
        }
        return fArr;
    }

    private void P() {
        a aVar = this.f28028p;
        if (aVar != null) {
            aVar.g();
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void F() {
        P();
    }

    @Override // com.google.android.exoplayer2.f
    protected void H(long j4, boolean z9) {
        this.f28029q = Long.MIN_VALUE;
        P();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void L(Format[] formatArr, long j4, long j10) {
        this.f28027o = j10;
    }

    @Override // com.google.android.exoplayer2.g2
    public int a(Format format) {
        if (a0.f27480y0.equals(format.sampleMimeType)) {
            return f2.a(4);
        }
        return f2.a(0);
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean b() {
        return i();
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.z1.b
    public void d(int i4, @Nullable Object obj) throws ExoPlaybackException {
        if (i4 == 7) {
            this.f28028p = (a) obj;
        } else {
            super.d(i4, obj);
        }
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean f() {
        return true;
    }

    @Override // com.google.android.exoplayer2.e2, com.google.android.exoplayer2.g2
    public String getName() {
        return f28023r;
    }

    @Override // com.google.android.exoplayer2.e2
    public void s(long j4, long j10) {
        while (!i() && this.f28029q < 100000 + j4) {
            this.f28025m.f();
            if (M(A(), this.f28025m, 0) != -4 || this.f28025m.l()) {
                return;
            }
            DecoderInputBuffer decoderInputBuffer = this.f28025m;
            this.f28029q = decoderInputBuffer.f21574e;
            if (this.f28028p != null && !decoderInputBuffer.k()) {
                this.f28025m.q();
                float[] O = O((ByteBuffer) z0.k(this.f28025m.f21572c));
                if (O != null) {
                    ((a) z0.k(this.f28028p)).e(this.f28029q - this.f28027o, O);
                }
            }
        }
    }
}
