package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.u;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.e2;
import com.google.android.exoplayer2.f2;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.k;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.v0;
import io.sentry.protocol.t;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: MediaCodecAudioRenderer.java */
/* loaded from: classes2.dex */
public class f0 extends MediaCodecRenderer implements com.google.android.exoplayer2.util.y {
    private static final String I3 = "MediaCodecAudioRenderer";
    private static final String J3 = "v-bits-per-sample";
    private boolean A3;
    @Nullable
    private Format B3;
    private long C3;
    private boolean D3;
    private boolean E3;
    private boolean F3;
    private boolean G3;
    @Nullable
    private e2.c H3;

    /* renamed from: w3  reason: collision with root package name */
    private final Context f21209w3;

    /* renamed from: x3  reason: collision with root package name */
    private final u.a f21210x3;

    /* renamed from: y3  reason: collision with root package name */
    private final AudioSink f21211y3;

    /* renamed from: z3  reason: collision with root package name */
    private int f21212z3;

    /* compiled from: MediaCodecAudioRenderer.java */
    /* loaded from: classes2.dex */
    private final class b implements AudioSink.a {
        private b() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void a(boolean z9) {
            f0.this.f21210x3.C(z9);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void b(long j4) {
            f0.this.f21210x3.B(j4);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void c(long j4) {
            if (f0.this.H3 != null) {
                f0.this.H3.b(j4);
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void d(Exception exc) {
            com.google.android.exoplayer2.util.w.e(f0.I3, "Audio sink error", exc);
            f0.this.f21210x3.l(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void e(int i4, long j4, long j10) {
            f0.this.f21210x3.D(i4, j4, j10);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void f() {
            f0.this.C1();
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void g() {
            if (f0.this.H3 != null) {
                f0.this.H3.a();
            }
        }
    }

    public f0(Context context, com.google.android.exoplayer2.mediacodec.n nVar) {
        this(context, nVar, null, null);
    }

    private void D1() {
        long p9 = this.f21211y3.p(b());
        if (p9 != Long.MIN_VALUE) {
            if (!this.E3) {
                p9 = Math.max(this.C3, p9);
            }
            this.C3 = p9;
            this.E3 = false;
        }
    }

    private static boolean w1(String str) {
        if (z0.f27743a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(z0.f27745c)) {
            String str2 = z0.f27744b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    private static boolean x1() {
        if (z0.f27743a == 23) {
            String str = z0.f27746d;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int z1(com.google.android.exoplayer2.mediacodec.l lVar, Format format) {
        int i4;
        if (!"OMX.google.raw.decoder".equals(lVar.f24078a) || (i4 = z0.f27743a) >= 24 || (i4 == 23 && z0.G0(this.f21209w3))) {
            return format.maxInputSize;
        }
        return -1;
    }

    protected int A1(com.google.android.exoplayer2.mediacodec.l lVar, Format format, Format[] formatArr) {
        int z12 = z1(lVar, format);
        if (formatArr.length == 1) {
            return z12;
        }
        for (Format format2 : formatArr) {
            if (lVar.e(format, format2).f21624d != 0) {
                z12 = Math.max(z12, z1(lVar, format2));
            }
        }
        return z12;
    }

    @SuppressLint({"InlinedApi"})
    protected MediaFormat B1(Format format, String str, int i4, float f10) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(com.ksyun.media.player.misc.c.f45557a, str);
        mediaFormat.setInteger("channel-count", format.channelCount);
        mediaFormat.setInteger("sample-rate", format.sampleRate);
        com.google.android.exoplayer2.util.z.j(mediaFormat, format.initializationData);
        com.google.android.exoplayer2.util.z.e(mediaFormat, "max-input-size", i4);
        int i10 = z0.f27743a;
        if (i10 >= 23) {
            mediaFormat.setInteger(t.b.f83857b, 0);
            if (f10 != -1.0f && !x1()) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (i10 <= 28 && com.google.android.exoplayer2.util.a0.O.equals(format.sampleMimeType)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i10 >= 24 && this.f21211y3.m(z0.j0(4, format.channelCount, format.sampleRate)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        return mediaFormat;
    }

    @CallSuper
    protected void C1() {
        this.E3 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void F() {
        this.F3 = true;
        try {
            this.f21211y3.flush();
            try {
                super.F();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.F();
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void G(boolean z9, boolean z10) throws ExoPlaybackException {
        super.G(z9, z10);
        this.f21210x3.p(this.Z2);
        if (z().f23644a) {
            this.f21211y3.r();
        } else {
            this.f21211y3.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void H(long j4, boolean z9) throws ExoPlaybackException {
        super.H(j4, z9);
        if (this.G3) {
            this.f21211y3.n();
        } else {
            this.f21211y3.flush();
        }
        this.C3 = j4;
        this.D3 = true;
        this.E3 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void I() {
        try {
            super.I();
        } finally {
            if (this.F3) {
                this.F3 = false;
                this.f21211y3.reset();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void J() {
        super.J();
        this.f21211y3.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void K() {
        D1();
        this.f21211y3.pause();
        super.K();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void N0(Exception exc) {
        com.google.android.exoplayer2.util.w.e(I3, "Audio codec error", exc);
        this.f21210x3.k(exc);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void O0(String str, long j4, long j10) {
        this.f21210x3.m(str, j4, j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void P0(String str) {
        this.f21210x3.n(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected com.google.android.exoplayer2.decoder.e Q(com.google.android.exoplayer2.mediacodec.l lVar, Format format, Format format2) {
        com.google.android.exoplayer2.decoder.e e4 = lVar.e(format, format2);
        int i4 = e4.f21625e;
        if (z1(lVar, format2) > this.f21212z3) {
            i4 |= 64;
        }
        int i10 = i4;
        return new com.google.android.exoplayer2.decoder.e(lVar.f24078a, format, format2, i10 != 0 ? 0 : e4.f21624d, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @Nullable
    public com.google.android.exoplayer2.decoder.e Q0(v0 v0Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.e Q0 = super.Q0(v0Var);
        this.f21210x3.q(v0Var.f27763b, Q0);
        return Q0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void R0(Format format, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException {
        int i4;
        int i10;
        Format format2 = this.B3;
        int[] iArr = null;
        if (format2 != null) {
            format = format2;
        } else if (q0() != null) {
            if (com.google.android.exoplayer2.util.a0.I.equals(format.sampleMimeType)) {
                i4 = format.pcmEncoding;
            } else if (z0.f27743a >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                i4 = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey(J3)) {
                i4 = z0.i0(mediaFormat.getInteger(J3));
            } else {
                i4 = com.google.android.exoplayer2.util.a0.I.equals(format.sampleMimeType) ? format.pcmEncoding : 2;
            }
            Format E = new Format.b().e0(com.google.android.exoplayer2.util.a0.I).Y(i4).M(format.encoderDelay).N(format.encoderPadding).H(mediaFormat.getInteger("channel-count")).f0(mediaFormat.getInteger("sample-rate")).E();
            if (this.A3 && E.channelCount == 6 && (i10 = format.channelCount) < 6) {
                iArr = new int[i10];
                for (int i11 = 0; i11 < format.channelCount; i11++) {
                    iArr[i11] = i11;
                }
            }
            format = E;
        }
        try {
            this.f21211y3.s(format, 0, iArr);
        } catch (AudioSink.ConfigurationException e4) {
            throw x(e4, e4.format);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void T0() {
        super.T0();
        this.f21211y3.q();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void U0(DecoderInputBuffer decoderInputBuffer) {
        if (!this.D3 || decoderInputBuffer.k()) {
            return;
        }
        if (Math.abs(decoderInputBuffer.f21574e - this.C3) > 500000) {
            this.C3 = decoderInputBuffer.f21574e;
        }
        this.D3 = false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean W0(long j4, long j10, @Nullable com.google.android.exoplayer2.mediacodec.k kVar, @Nullable ByteBuffer byteBuffer, int i4, int i10, int i11, long j11, boolean z9, boolean z10, Format format) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.g(byteBuffer);
        if (this.B3 != null && (i10 & 2) != 0) {
            ((com.google.android.exoplayer2.mediacodec.k) com.google.android.exoplayer2.util.a.g(kVar)).k(i4, false);
            return true;
        } else if (z9) {
            if (kVar != null) {
                kVar.k(i4, false);
            }
            this.Z2.f21596f += i11;
            this.f21211y3.q();
            return true;
        } else {
            try {
                if (this.f21211y3.j(byteBuffer, j11, i11)) {
                    if (kVar != null) {
                        kVar.k(i4, false);
                    }
                    this.Z2.f21595e += i11;
                    return true;
                }
                return false;
            } catch (AudioSink.InitializationException e4) {
                throw y(e4, e4.format, e4.isRecoverable);
            } catch (AudioSink.WriteException e10) {
                throw y(e10, format, e10.isRecoverable);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e2
    public boolean b() {
        return super.b() && this.f21211y3.b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void b1() throws ExoPlaybackException {
        try {
            this.f21211y3.o();
        } catch (AudioSink.WriteException e4) {
            throw y(e4, e4.format, e4.isRecoverable);
        }
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.z1.b
    public void d(int i4, @Nullable Object obj) throws ExoPlaybackException {
        if (i4 == 2) {
            this.f21211y3.f(((Float) obj).floatValue());
        } else if (i4 == 3) {
            this.f21211y3.i((e) obj);
        } else if (i4 != 5) {
            switch (i4) {
                case 101:
                    this.f21211y3.J(((Boolean) obj).booleanValue());
                    return;
                case 102:
                    this.f21211y3.l(((Integer) obj).intValue());
                    return;
                case 103:
                    this.H3 = (e2.c) obj;
                    return;
                default:
                    super.d(i4, obj);
                    return;
            }
        } else {
            this.f21211y3.u((y) obj);
        }
    }

    @Override // com.google.android.exoplayer2.util.y
    public t1 e() {
        return this.f21211y3.e();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e2
    public boolean f() {
        return this.f21211y3.c() || super.f();
    }

    @Override // com.google.android.exoplayer2.util.y
    public void g(t1 t1Var) {
        this.f21211y3.g(t1Var);
    }

    @Override // com.google.android.exoplayer2.e2, com.google.android.exoplayer2.g2
    public String getName() {
        return I3;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean n1(Format format) {
        return this.f21211y3.a(format);
    }

    @Override // com.google.android.exoplayer2.util.y
    public long o() {
        if (getState() == 2) {
            D1();
        }
        return this.C3;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int o1(com.google.android.exoplayer2.mediacodec.n nVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        if (!com.google.android.exoplayer2.util.a0.p(format.sampleMimeType)) {
            return f2.a(0);
        }
        int i4 = z0.f27743a >= 21 ? 32 : 0;
        boolean z9 = format.exoMediaCryptoType != null;
        boolean p12 = MediaCodecRenderer.p1(format);
        int i10 = 8;
        if (p12 && this.f21211y3.a(format) && (!z9 || MediaCodecUtil.v() != null)) {
            return f2.b(4, 8, i4);
        }
        if (com.google.android.exoplayer2.util.a0.I.equals(format.sampleMimeType) && !this.f21211y3.a(format)) {
            return f2.a(1);
        }
        if (!this.f21211y3.a(z0.j0(2, format.channelCount, format.sampleRate))) {
            return f2.a(1);
        }
        List<com.google.android.exoplayer2.mediacodec.l> w02 = w0(nVar, format, false);
        if (w02.isEmpty()) {
            return f2.a(1);
        }
        if (!p12) {
            return f2.a(2);
        }
        com.google.android.exoplayer2.mediacodec.l lVar = w02.get(0);
        boolean o9 = lVar.o(format);
        if (o9 && lVar.q(format)) {
            i10 = 16;
        }
        return f2.b(o9 ? 4 : 3, i10, i4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected float u0(float f10, Format format, Format[] formatArr) {
        int i4 = -1;
        for (Format format2 : formatArr) {
            int i10 = format2.sampleRate;
            if (i10 != -1) {
                i4 = Math.max(i4, i10);
            }
        }
        if (i4 == -1) {
            return -1.0f;
        }
        return f10 * i4;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.e2
    @Nullable
    public com.google.android.exoplayer2.util.y w() {
        return this;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected List<com.google.android.exoplayer2.mediacodec.l> w0(com.google.android.exoplayer2.mediacodec.n nVar, Format format, boolean z9) throws MediaCodecUtil.DecoderQueryException {
        com.google.android.exoplayer2.mediacodec.l v9;
        String str = format.sampleMimeType;
        if (str == null) {
            return Collections.emptyList();
        }
        if (this.f21211y3.a(format) && (v9 = MediaCodecUtil.v()) != null) {
            return Collections.singletonList(v9);
        }
        List<com.google.android.exoplayer2.mediacodec.l> u9 = MediaCodecUtil.u(nVar.a(str, z9, false), format);
        if (com.google.android.exoplayer2.util.a0.N.equals(str)) {
            ArrayList arrayList = new ArrayList(u9);
            arrayList.addAll(nVar.a(com.google.android.exoplayer2.util.a0.M, z9, false));
            u9 = arrayList;
        }
        return Collections.unmodifiableList(u9);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected k.a y0(com.google.android.exoplayer2.mediacodec.l lVar, Format format, @Nullable MediaCrypto mediaCrypto, float f10) {
        this.f21212z3 = A1(lVar, format, D());
        this.A3 = w1(lVar.f24078a);
        MediaFormat B1 = B1(format, lVar.f24080c, this.f21212z3, f10);
        this.B3 = com.google.android.exoplayer2.util.a0.I.equals(lVar.f24079b) && !com.google.android.exoplayer2.util.a0.I.equals(format.sampleMimeType) ? format : null;
        return new k.a(lVar, B1, format, null, mediaCrypto, 0);
    }

    public void y1(boolean z9) {
        this.G3 = z9;
    }

    public f0(Context context, com.google.android.exoplayer2.mediacodec.n nVar, @Nullable Handler handler, @Nullable u uVar) {
        this(context, nVar, handler, uVar, (f) null, new AudioProcessor[0]);
    }

    public f0(Context context, com.google.android.exoplayer2.mediacodec.n nVar, @Nullable Handler handler, @Nullable u uVar, @Nullable f fVar, AudioProcessor... audioProcessorArr) {
        this(context, nVar, handler, uVar, new DefaultAudioSink(fVar, audioProcessorArr));
    }

    public f0(Context context, com.google.android.exoplayer2.mediacodec.n nVar, @Nullable Handler handler, @Nullable u uVar, AudioSink audioSink) {
        this(context, k.b.f24075a, nVar, false, handler, uVar, audioSink);
    }

    public f0(Context context, com.google.android.exoplayer2.mediacodec.n nVar, boolean z9, @Nullable Handler handler, @Nullable u uVar, AudioSink audioSink) {
        this(context, k.b.f24075a, nVar, z9, handler, uVar, audioSink);
    }

    public f0(Context context, k.b bVar, com.google.android.exoplayer2.mediacodec.n nVar, boolean z9, @Nullable Handler handler, @Nullable u uVar, AudioSink audioSink) {
        super(1, bVar, nVar, z9, 44100.0f);
        this.f21209w3 = context.getApplicationContext();
        this.f21211y3 = audioSink;
        this.f21210x3 = new u.a(handler, uVar);
        audioSink.k(new b());
    }
}
