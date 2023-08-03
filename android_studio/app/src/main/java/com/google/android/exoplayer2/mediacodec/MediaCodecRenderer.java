package com.google.android.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c0;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.c;
import com.google.android.exoplayer2.mediacodec.k;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.t0;
import com.google.android.exoplayer2.util.v0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public abstract class MediaCodecRenderer extends com.google.android.exoplayer2.f {

    /* renamed from: d3  reason: collision with root package name */
    protected static final float f23941d3 = -1.0f;

    /* renamed from: e3  reason: collision with root package name */
    private static final String f23942e3 = "MediaCodecRenderer";

    /* renamed from: f3  reason: collision with root package name */
    private static final long f23943f3 = 1000;

    /* renamed from: g3  reason: collision with root package name */
    private static final int f23944g3 = 10;

    /* renamed from: h3  reason: collision with root package name */
    private static final int f23945h3 = 0;

    /* renamed from: i3  reason: collision with root package name */
    private static final int f23946i3 = 1;

    /* renamed from: j3  reason: collision with root package name */
    private static final int f23947j3 = 2;

    /* renamed from: k3  reason: collision with root package name */
    private static final int f23948k3 = 0;

    /* renamed from: l3  reason: collision with root package name */
    private static final int f23949l3 = 1;

    /* renamed from: m3  reason: collision with root package name */
    private static final int f23950m3 = 2;

    /* renamed from: n3  reason: collision with root package name */
    private static final int f23951n3 = 0;

    /* renamed from: o3  reason: collision with root package name */
    private static final int f23952o3 = 1;

    /* renamed from: p3  reason: collision with root package name */
    private static final int f23953p3 = 2;

    /* renamed from: q3  reason: collision with root package name */
    private static final int f23954q3 = 3;

    /* renamed from: r3  reason: collision with root package name */
    private static final int f23955r3 = 0;

    /* renamed from: s3  reason: collision with root package name */
    private static final int f23956s3 = 1;

    /* renamed from: t3  reason: collision with root package name */
    private static final int f23957t3 = 2;

    /* renamed from: u3  reason: collision with root package name */
    private static final byte[] f23958u3 = {0, 0, 1, 103, 66, -64, com.google.common.base.c.f32106m, -38, 37, -112, 0, 0, 1, 104, -50, com.google.common.base.c.f32110q, 19, 32, 0, 0, 1, 101, -120, -124, com.google.common.base.c.f32108o, -50, 113, com.google.common.base.c.B, -96, 0, 47, com.fasterxml.jackson.core.json.a.f14000k, com.google.common.base.c.F, 49, -61, 39, 93, 120};

    /* renamed from: v3  reason: collision with root package name */
    private static final int f23959v3 = 32;
    @Nullable
    private Format A;
    @Nullable
    private Format B;
    @Nullable
    private DrmSession C;
    @Nullable
    private DrmSession D;
    @Nullable
    private MediaCrypto E;
    private boolean E2;
    private boolean F;
    private boolean F2;
    private long G;
    private boolean G2;
    private float H;
    private boolean H2;
    private float I;
    private int I2;
    @Nullable
    private k J;
    private int J2;
    @Nullable
    private Format K;
    private int K2;
    @Nullable
    private MediaFormat L;
    private boolean L2;
    private boolean M;
    private boolean M2;
    private float N;
    private boolean N2;
    @Nullable
    private ArrayDeque<l> O;
    private long O2;
    @Nullable
    private DecoderInitializationException P;
    private long P2;
    @Nullable
    private l Q;
    private boolean Q2;
    private int R;
    private boolean R2;
    private boolean S;
    private boolean S2;
    private boolean T;
    @Nullable
    private j T1;
    private boolean T2;
    private boolean U;
    private boolean U2;
    private boolean V;
    private long V1;
    private boolean V2;
    private boolean W;
    private boolean W2;
    private boolean X2;
    @Nullable
    private ExoPlaybackException Y2;
    protected com.google.android.exoplayer2.decoder.d Z2;

    /* renamed from: a3  reason: collision with root package name */
    private long f23960a3;

    /* renamed from: b1  reason: collision with root package name */
    private boolean f23961b1;

    /* renamed from: b2  reason: collision with root package name */
    private int f23962b2;

    /* renamed from: b3  reason: collision with root package name */
    private long f23963b3;

    /* renamed from: c3  reason: collision with root package name */
    private int f23964c3;

    /* renamed from: g1  reason: collision with root package name */
    private boolean f23965g1;

    /* renamed from: g2  reason: collision with root package name */
    private int f23966g2;

    /* renamed from: m  reason: collision with root package name */
    private final k.b f23967m;

    /* renamed from: n  reason: collision with root package name */
    private final n f23968n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f23969o;

    /* renamed from: p  reason: collision with root package name */
    private final float f23970p;

    /* renamed from: p1  reason: collision with root package name */
    private boolean f23971p1;
    @Nullable

    /* renamed from: p2  reason: collision with root package name */
    private ByteBuffer f23972p2;

    /* renamed from: q  reason: collision with root package name */
    private final DecoderInputBuffer f23973q;

    /* renamed from: r  reason: collision with root package name */
    private final DecoderInputBuffer f23974r;

    /* renamed from: s  reason: collision with root package name */
    private final DecoderInputBuffer f23975s;

    /* renamed from: t  reason: collision with root package name */
    private final i f23976t;

    /* renamed from: u  reason: collision with root package name */
    private final t0<Format> f23977u;

    /* renamed from: v  reason: collision with root package name */
    private final ArrayList<Long> f23978v;

    /* renamed from: w  reason: collision with root package name */
    private final MediaCodec.BufferInfo f23979w;

    /* renamed from: x  reason: collision with root package name */
    private final long[] f23980x;

    /* renamed from: x1  reason: collision with root package name */
    private boolean f23981x1;

    /* renamed from: x2  reason: collision with root package name */
    private boolean f23982x2;

    /* renamed from: y  reason: collision with root package name */
    private final long[] f23983y;

    /* renamed from: y1  reason: collision with root package name */
    private boolean f23984y1;

    /* renamed from: y2  reason: collision with root package name */
    private boolean f23985y2;

    /* renamed from: z  reason: collision with root package name */
    private final long[] f23986z;

    public MediaCodecRenderer(int i4, k.b bVar, n nVar, boolean z9, float f10) {
        super(i4);
        this.f23967m = bVar;
        this.f23968n = (n) com.google.android.exoplayer2.util.a.g(nVar);
        this.f23969o = z9;
        this.f23970p = f10;
        this.f23973q = DecoderInputBuffer.s();
        this.f23974r = new DecoderInputBuffer(0);
        this.f23975s = new DecoderInputBuffer(2);
        i iVar = new i();
        this.f23976t = iVar;
        this.f23977u = new t0<>();
        this.f23978v = new ArrayList<>();
        this.f23979w = new MediaCodec.BufferInfo();
        this.H = 1.0f;
        this.I = 1.0f;
        this.G = com.google.android.exoplayer2.i.f23649b;
        this.f23980x = new long[10];
        this.f23983y = new long[10];
        this.f23986z = new long[10];
        this.f23960a3 = com.google.android.exoplayer2.i.f23649b;
        this.f23963b3 = com.google.android.exoplayer2.i.f23649b;
        iVar.p(0);
        iVar.f21572c.order(ByteOrder.nativeOrder());
        this.N = -1.0f;
        this.R = 0;
        this.I2 = 0;
        this.f23962b2 = -1;
        this.f23966g2 = -1;
        this.V1 = com.google.android.exoplayer2.i.f23649b;
        this.O2 = com.google.android.exoplayer2.i.f23649b;
        this.P2 = com.google.android.exoplayer2.i.f23649b;
        this.J2 = 0;
        this.K2 = 0;
    }

    private boolean C0() {
        return this.f23966g2 >= 0;
    }

    private void D0(Format format) {
        b0();
        String str = format.sampleMimeType;
        if (!"audio/mp4a-latm".equals(str) && !a0.D.equals(str) && !a0.U.equals(str)) {
            this.f23976t.A(1);
        } else {
            this.f23976t.A(32);
        }
        this.E2 = true;
    }

    private void E0(l lVar, MediaCrypto mediaCrypto) throws Exception {
        k a10;
        String str = lVar.f24078a;
        int i4 = z0.f27743a;
        float u02 = i4 < 23 ? -1.0f : u0(this.I, this.A, D());
        float f10 = u02 > this.f23970p ? u02 : -1.0f;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        String valueOf = String.valueOf(str);
        v0.a(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
        k.a y02 = y0(lVar, this.A, mediaCrypto, f10);
        if (this.U2 && i4 >= 23) {
            a10 = new c.b(getTrackType(), this.V2, this.W2).a(y02);
        } else {
            a10 = this.f23967m.a(y02);
        }
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        this.J = a10;
        this.Q = lVar;
        this.N = f10;
        this.K = this.A;
        this.R = R(str);
        this.S = S(str, this.K);
        this.T = X(str);
        this.U = Z(str);
        this.V = U(str);
        this.W = V(str);
        this.f23961b1 = T(str);
        this.f23965g1 = Y(str, this.K);
        this.f23984y1 = W(lVar) || s0();
        if ("c2.android.mp3.decoder".equals(lVar.f24078a)) {
            this.T1 = new j();
        }
        if (getState() == 2) {
            this.V1 = SystemClock.elapsedRealtime() + 1000;
        }
        this.Z2.f21591a++;
        O0(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
    }

    private boolean F0(long j4) {
        int size = this.f23978v.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (this.f23978v.get(i4).longValue() == j4) {
                this.f23978v.remove(i4);
                return true;
            }
        }
        return false;
    }

    private static boolean G0(IllegalStateException illegalStateException) {
        if (z0.f27743a < 21 || !H0(illegalStateException)) {
            StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
            return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
        }
        return true;
    }

    @RequiresApi(21)
    private static boolean H0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    @RequiresApi(21)
    private static boolean I0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    private void L0(MediaCrypto mediaCrypto, boolean z9) throws DecoderInitializationException {
        if (this.O == null) {
            try {
                List<l> p02 = p0(z9);
                ArrayDeque<l> arrayDeque = new ArrayDeque<>();
                this.O = arrayDeque;
                if (this.f23969o) {
                    arrayDeque.addAll(p02);
                } else if (!p02.isEmpty()) {
                    this.O.add(p02.get(0));
                }
                this.P = null;
            } catch (MediaCodecUtil.DecoderQueryException e4) {
                throw new DecoderInitializationException(this.A, e4, z9, -49998);
            }
        }
        if (!this.O.isEmpty()) {
            while (this.J == null) {
                l peekFirst = this.O.peekFirst();
                if (!m1(peekFirst)) {
                    return;
                }
                try {
                    E0(peekFirst, mediaCrypto);
                } catch (Exception e10) {
                    String valueOf = String.valueOf(peekFirst);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 30);
                    sb.append("Failed to initialize decoder: ");
                    sb.append(valueOf);
                    w.o(f23942e3, sb.toString(), e10);
                    this.O.removeFirst();
                    DecoderInitializationException decoderInitializationException = new DecoderInitializationException(this.A, e10, z9, peekFirst);
                    if (this.P == null) {
                        this.P = decoderInitializationException;
                    } else {
                        this.P = this.P.c(decoderInitializationException);
                    }
                    if (this.O.isEmpty()) {
                        throw this.P;
                    }
                }
            }
            this.O = null;
            return;
        }
        throw new DecoderInitializationException(this.A, (Throwable) null, z9, -49999);
    }

    private boolean M0(c0 c0Var, Format format) {
        if (c0Var.f21756c) {
            return false;
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(c0Var.f21754a, c0Var.f21755b);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(format.sampleMimeType);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    private void O() throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.i(!this.Q2);
        com.google.android.exoplayer2.v0 A = A();
        this.f23975s.f();
        do {
            this.f23975s.f();
            int M = M(A, this.f23975s, 0);
            if (M == -5) {
                Q0(A);
                return;
            } else if (M != -4) {
                if (M != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else if (this.f23975s.l()) {
                this.Q2 = true;
                return;
            } else {
                if (this.S2) {
                    Format format = (Format) com.google.android.exoplayer2.util.a.g(this.A);
                    this.B = format;
                    R0(format, null);
                    this.S2 = false;
                }
                this.f23975s.q();
            }
        } while (this.f23976t.u(this.f23975s));
        this.F2 = true;
    }

    private boolean P(long j4, long j10) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.i(!this.R2);
        if (this.f23976t.z()) {
            i iVar = this.f23976t;
            if (!W0(j4, j10, null, iVar.f21572c, this.f23966g2, 0, iVar.y(), this.f23976t.w(), this.f23976t.k(), this.f23976t.l(), this.B)) {
                return false;
            }
            S0(this.f23976t.x());
            this.f23976t.f();
        }
        if (this.Q2) {
            this.R2 = true;
            return false;
        }
        if (this.F2) {
            com.google.android.exoplayer2.util.a.i(this.f23976t.u(this.f23975s));
            this.F2 = false;
        }
        if (this.G2) {
            if (this.f23976t.z()) {
                return true;
            }
            b0();
            this.G2 = false;
            K0();
            if (!this.E2) {
                return false;
            }
        }
        O();
        if (this.f23976t.z()) {
            this.f23976t.q();
        }
        return this.f23976t.z() || this.Q2 || this.G2;
    }

    private int R(String str) {
        int i4 = z0.f27743a;
        if (i4 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = z0.f27746d;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i4 < 24) {
            if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
                String str3 = z0.f27744b;
                return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
            }
            return 0;
        }
        return 0;
    }

    private static boolean S(String str, Format format) {
        return z0.f27743a < 21 && format.initializationData.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private static boolean T(String str) {
        if (z0.f27743a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(z0.f27745c)) {
            String str2 = z0.f27744b;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private static boolean U(String str) {
        int i4 = z0.f27743a;
        if (i4 > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i4 <= 19) {
                String str2 = z0.f27744b;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    private static boolean V(String str) {
        return z0.f27743a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    @TargetApi(23)
    private void V0() throws ExoPlaybackException {
        int i4 = this.K2;
        if (i4 == 1) {
            m0();
        } else if (i4 == 2) {
            m0();
            s1();
        } else if (i4 != 3) {
            this.R2 = true;
            b1();
        } else {
            Z0();
        }
    }

    private static boolean W(l lVar) {
        String str = lVar.f24078a;
        int i4 = z0.f27743a;
        return (i4 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i4 <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i4 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(z0.f27745c) && "AFTS".equals(z0.f27746d) && lVar.f24084g));
    }

    private static boolean X(String str) {
        int i4 = z0.f27743a;
        return i4 < 18 || (i4 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i4 == 19 && z0.f27746d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private void X0() {
        this.N2 = true;
        MediaFormat b10 = this.J.b();
        if (this.R != 0 && b10.getInteger("width") == 32 && b10.getInteger("height") == 32) {
            this.f23981x1 = true;
            return;
        }
        if (this.f23965g1) {
            b10.setInteger("channel-count", 1);
        }
        this.L = b10;
        this.M = true;
    }

    private static boolean Y(String str, Format format) {
        return z0.f27743a <= 18 && format.channelCount == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private boolean Y0(int i4) throws ExoPlaybackException {
        com.google.android.exoplayer2.v0 A = A();
        this.f23973q.f();
        int M = M(A, this.f23973q, i4 | 4);
        if (M == -5) {
            Q0(A);
            return true;
        } else if (M == -4 && this.f23973q.l()) {
            this.Q2 = true;
            V0();
            return false;
        } else {
            return false;
        }
    }

    private static boolean Z(String str) {
        return z0.f27743a == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void Z0() throws ExoPlaybackException {
        a1();
        K0();
    }

    private void b0() {
        this.G2 = false;
        this.f23976t.f();
        this.f23975s.f();
        this.F2 = false;
        this.E2 = false;
    }

    private boolean c0() {
        if (this.L2) {
            this.J2 = 1;
            if (!this.T && !this.V) {
                this.K2 = 1;
            } else {
                this.K2 = 3;
                return false;
            }
        }
        return true;
    }

    private void d0() throws ExoPlaybackException {
        if (this.L2) {
            this.J2 = 1;
            this.K2 = 3;
            return;
        }
        Z0();
    }

    @TargetApi(23)
    private boolean e0() throws ExoPlaybackException {
        if (this.L2) {
            this.J2 = 1;
            if (!this.T && !this.V) {
                this.K2 = 2;
            } else {
                this.K2 = 3;
                return false;
            }
        } else {
            s1();
        }
        return true;
    }

    private void e1() {
        this.f23962b2 = -1;
        this.f23974r.f21572c = null;
    }

    private boolean f0(long j4, long j10) throws ExoPlaybackException {
        boolean z9;
        boolean W0;
        k kVar;
        ByteBuffer byteBuffer;
        int i4;
        MediaCodec.BufferInfo bufferInfo;
        int j11;
        if (!C0()) {
            if (this.W && this.M2) {
                try {
                    j11 = this.J.j(this.f23979w);
                } catch (IllegalStateException unused) {
                    V0();
                    if (this.R2) {
                        a1();
                    }
                    return false;
                }
            } else {
                j11 = this.J.j(this.f23979w);
            }
            if (j11 < 0) {
                if (j11 == -2) {
                    X0();
                    return true;
                }
                if (this.f23984y1 && (this.Q2 || this.J2 == 2)) {
                    V0();
                }
                return false;
            } else if (this.f23981x1) {
                this.f23981x1 = false;
                this.J.k(j11, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo2 = this.f23979w;
                if (bufferInfo2.size == 0 && (bufferInfo2.flags & 4) != 0) {
                    V0();
                    return false;
                }
                this.f23966g2 = j11;
                ByteBuffer l10 = this.J.l(j11);
                this.f23972p2 = l10;
                if (l10 != null) {
                    l10.position(this.f23979w.offset);
                    ByteBuffer byteBuffer2 = this.f23972p2;
                    MediaCodec.BufferInfo bufferInfo3 = this.f23979w;
                    byteBuffer2.limit(bufferInfo3.offset + bufferInfo3.size);
                }
                if (this.f23961b1) {
                    MediaCodec.BufferInfo bufferInfo4 = this.f23979w;
                    if (bufferInfo4.presentationTimeUs == 0 && (bufferInfo4.flags & 4) != 0) {
                        long j12 = this.O2;
                        if (j12 != com.google.android.exoplayer2.i.f23649b) {
                            bufferInfo4.presentationTimeUs = j12;
                        }
                    }
                }
                this.f23982x2 = F0(this.f23979w.presentationTimeUs);
                long j13 = this.P2;
                long j14 = this.f23979w.presentationTimeUs;
                this.f23985y2 = j13 == j14;
                t1(j14);
            }
        }
        if (this.W && this.M2) {
            try {
                kVar = this.J;
                byteBuffer = this.f23972p2;
                i4 = this.f23966g2;
                bufferInfo = this.f23979w;
                z9 = false;
            } catch (IllegalStateException unused2) {
                z9 = false;
            }
            try {
                W0 = W0(j4, j10, kVar, byteBuffer, i4, bufferInfo.flags, 1, bufferInfo.presentationTimeUs, this.f23982x2, this.f23985y2, this.B);
            } catch (IllegalStateException unused3) {
                V0();
                if (this.R2) {
                    a1();
                }
                return z9;
            }
        } else {
            z9 = false;
            k kVar2 = this.J;
            ByteBuffer byteBuffer3 = this.f23972p2;
            int i10 = this.f23966g2;
            MediaCodec.BufferInfo bufferInfo5 = this.f23979w;
            W0 = W0(j4, j10, kVar2, byteBuffer3, i10, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.f23982x2, this.f23985y2, this.B);
        }
        if (W0) {
            S0(this.f23979w.presentationTimeUs);
            boolean z10 = (this.f23979w.flags & 4) != 0;
            f1();
            if (!z10) {
                return true;
            }
            V0();
        }
        return z9;
    }

    private void f1() {
        this.f23966g2 = -1;
        this.f23972p2 = null;
    }

    private boolean g0(l lVar, Format format, @Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) throws ExoPlaybackException {
        c0 x02;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 == null || drmSession == null || z0.f27743a < 23) {
            return true;
        }
        UUID uuid = com.google.android.exoplayer2.i.M1;
        if (uuid.equals(drmSession.h()) || uuid.equals(drmSession2.h()) || (x02 = x0(drmSession2)) == null) {
            return true;
        }
        return !lVar.f24084g && M0(x02, format);
    }

    private void g1(@Nullable DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.b(this.C, drmSession);
        this.C = drmSession;
    }

    private void k1(@Nullable DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.b(this.D, drmSession);
        this.D = drmSession;
    }

    private boolean l0() throws ExoPlaybackException {
        k kVar = this.J;
        if (kVar == null || this.J2 == 2 || this.Q2) {
            return false;
        }
        if (this.f23962b2 < 0) {
            int i4 = kVar.i();
            this.f23962b2 = i4;
            if (i4 < 0) {
                return false;
            }
            this.f23974r.f21572c = this.J.d(i4);
            this.f23974r.f();
        }
        if (this.J2 == 1) {
            if (!this.f23984y1) {
                this.M2 = true;
                this.J.f(this.f23962b2, 0, 0, 0L, 4);
                e1();
            }
            this.J2 = 2;
            return false;
        } else if (this.f23971p1) {
            this.f23971p1 = false;
            ByteBuffer byteBuffer = this.f23974r.f21572c;
            byte[] bArr = f23958u3;
            byteBuffer.put(bArr);
            this.J.f(this.f23962b2, 0, bArr.length, 0L, 0);
            e1();
            this.L2 = true;
            return true;
        } else {
            if (this.I2 == 1) {
                for (int i10 = 0; i10 < this.K.initializationData.size(); i10++) {
                    this.f23974r.f21572c.put(this.K.initializationData.get(i10));
                }
                this.I2 = 2;
            }
            int position = this.f23974r.f21572c.position();
            com.google.android.exoplayer2.v0 A = A();
            try {
                int M = M(A, this.f23974r, 0);
                if (i()) {
                    this.P2 = this.O2;
                }
                if (M == -3) {
                    return false;
                }
                if (M == -5) {
                    if (this.I2 == 2) {
                        this.f23974r.f();
                        this.I2 = 1;
                    }
                    Q0(A);
                    return true;
                } else if (this.f23974r.l()) {
                    if (this.I2 == 2) {
                        this.f23974r.f();
                        this.I2 = 1;
                    }
                    this.Q2 = true;
                    if (!this.L2) {
                        V0();
                        return false;
                    }
                    try {
                        if (!this.f23984y1) {
                            this.M2 = true;
                            this.J.f(this.f23962b2, 0, 0, 0L, 4);
                            e1();
                        }
                        return false;
                    } catch (MediaCodec.CryptoException e4) {
                        throw x(e4, this.A);
                    }
                } else if (!this.L2 && !this.f23974r.m()) {
                    this.f23974r.f();
                    if (this.I2 == 2) {
                        this.I2 = 1;
                    }
                    return true;
                } else {
                    boolean r9 = this.f23974r.r();
                    if (r9) {
                        this.f23974r.f21571b.b(position);
                    }
                    if (this.S && !r9) {
                        b0.b(this.f23974r.f21572c);
                        if (this.f23974r.f21572c.position() == 0) {
                            return true;
                        }
                        this.S = false;
                    }
                    DecoderInputBuffer decoderInputBuffer = this.f23974r;
                    long j4 = decoderInputBuffer.f21574e;
                    j jVar = this.T1;
                    if (jVar != null) {
                        j4 = jVar.c(this.A, decoderInputBuffer);
                    }
                    long j10 = j4;
                    if (this.f23974r.k()) {
                        this.f23978v.add(Long.valueOf(j10));
                    }
                    if (this.S2) {
                        this.f23977u.a(j10, this.A);
                        this.S2 = false;
                    }
                    if (this.T1 != null) {
                        this.O2 = Math.max(this.O2, this.f23974r.f21574e);
                    } else {
                        this.O2 = Math.max(this.O2, j10);
                    }
                    this.f23974r.q();
                    if (this.f23974r.i()) {
                        B0(this.f23974r);
                    }
                    U0(this.f23974r);
                    try {
                        if (r9) {
                            this.J.a(this.f23962b2, 0, this.f23974r.f21571b, j10, 0);
                        } else {
                            this.J.f(this.f23962b2, 0, this.f23974r.f21572c.limit(), j10, 0);
                        }
                        e1();
                        this.L2 = true;
                        this.I2 = 0;
                        this.Z2.f21593c++;
                        return true;
                    } catch (MediaCodec.CryptoException e10) {
                        throw x(e10, this.A);
                    }
                }
            } catch (DecoderInputBuffer.InsufficientCapacityException e11) {
                N0(e11);
                if (this.X2) {
                    Y0(0);
                    m0();
                    return true;
                }
                throw y(a0(e11, r0()), this.A, false);
            }
        }
    }

    private boolean l1(long j4) {
        return this.G == com.google.android.exoplayer2.i.f23649b || SystemClock.elapsedRealtime() - j4 < this.G;
    }

    private void m0() {
        try {
            this.J.flush();
        } finally {
            c1();
        }
    }

    private List<l> p0(boolean z9) throws MediaCodecUtil.DecoderQueryException {
        List<l> w02 = w0(this.f23968n, this.A, z9);
        if (w02.isEmpty() && z9) {
            w02 = w0(this.f23968n, this.A, false);
            if (!w02.isEmpty()) {
                String str = this.A.sampleMimeType;
                String valueOf = String.valueOf(w02);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 99 + valueOf.length());
                sb.append("Drm session requires secure decoder for ");
                sb.append(str);
                sb.append(", but no secure decoder available. Trying to proceed with ");
                sb.append(valueOf);
                sb.append(".");
                w.n(f23942e3, sb.toString());
            }
        }
        return w02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean p1(Format format) {
        Class<? extends com.google.android.exoplayer2.drm.a0> cls = format.exoMediaCryptoType;
        return cls == null || c0.class.equals(cls);
    }

    private boolean r1(Format format) throws ExoPlaybackException {
        if (z0.f27743a >= 23 && this.J != null && this.K2 != 3 && getState() != 0) {
            float u02 = u0(this.I, format, D());
            float f10 = this.N;
            if (f10 == u02) {
                return true;
            }
            if (u02 == -1.0f) {
                d0();
                return false;
            } else if (f10 == -1.0f && u02 <= this.f23970p) {
                return true;
            } else {
                Bundle bundle = new Bundle();
                bundle.putFloat("operating-rate", u02);
                this.J.g(bundle);
                this.N = u02;
            }
        }
        return true;
    }

    @RequiresApi(23)
    private void s1() throws ExoPlaybackException {
        try {
            this.E.setMediaDrmSession(x0(this.D).f21755b);
            g1(this.D);
            this.J2 = 0;
            this.K2 = 0;
        } catch (MediaCryptoException e4) {
            throw x(e4, this.A);
        }
    }

    @Nullable
    private c0 x0(DrmSession drmSession) throws ExoPlaybackException {
        com.google.android.exoplayer2.drm.a0 j4 = drmSession.j();
        if (j4 != null && !(j4 instanceof c0)) {
            String valueOf = String.valueOf(j4);
            StringBuilder sb = new StringBuilder(valueOf.length() + 42);
            sb.append("Expecting FrameworkMediaCrypto but found: ");
            sb.append(valueOf);
            throw x(new IllegalArgumentException(sb.toString()), this.A);
        }
        return (c0) j4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float A0() {
        return this.H;
    }

    protected void B0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void F() {
        this.A = null;
        this.f23960a3 = com.google.android.exoplayer2.i.f23649b;
        this.f23963b3 = com.google.android.exoplayer2.i.f23649b;
        this.f23964c3 = 0;
        o0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void G(boolean z9, boolean z10) throws ExoPlaybackException {
        this.Z2 = new com.google.android.exoplayer2.decoder.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void H(long j4, boolean z9) throws ExoPlaybackException {
        this.Q2 = false;
        this.R2 = false;
        this.T2 = false;
        if (this.E2) {
            this.f23976t.f();
            this.f23975s.f();
            this.F2 = false;
        } else {
            n0();
        }
        if (this.f23977u.l() > 0) {
            this.S2 = true;
        }
        this.f23977u.c();
        int i4 = this.f23964c3;
        if (i4 != 0) {
            this.f23963b3 = this.f23983y[i4 - 1];
            this.f23960a3 = this.f23980x[i4 - 1];
            this.f23964c3 = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void I() {
        try {
            b0();
            a1();
        } finally {
            k1(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void J() {
    }

    protected boolean J0() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void K() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void K0() throws ExoPlaybackException {
        Format format;
        if (this.J != null || this.E2 || (format = this.A) == null) {
            return;
        }
        if (this.D == null && n1(format)) {
            D0(this.A);
            return;
        }
        g1(this.D);
        String str = this.A.sampleMimeType;
        DrmSession drmSession = this.C;
        if (drmSession != null) {
            if (this.E == null) {
                c0 x02 = x0(drmSession);
                if (x02 == null) {
                    if (this.C.e() == null) {
                        return;
                    }
                } else {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(x02.f21754a, x02.f21755b);
                        this.E = mediaCrypto;
                        this.F = !x02.f21756c && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e4) {
                        throw x(e4, this.A);
                    }
                }
            }
            if (c0.f21753d) {
                int state = this.C.getState();
                if (state == 1) {
                    throw x(this.C.e(), this.A);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            L0(this.E, this.F);
        } catch (DecoderInitializationException e10) {
            throw x(e10, this.A);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void L(Format[] formatArr, long j4, long j10) throws ExoPlaybackException {
        if (this.f23963b3 == com.google.android.exoplayer2.i.f23649b) {
            com.google.android.exoplayer2.util.a.i(this.f23960a3 == com.google.android.exoplayer2.i.f23649b);
            this.f23960a3 = j4;
            this.f23963b3 = j10;
            return;
        }
        int i4 = this.f23964c3;
        long[] jArr = this.f23983y;
        if (i4 == jArr.length) {
            long j11 = jArr[i4 - 1];
            StringBuilder sb = new StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j11);
            w.n(f23942e3, sb.toString());
        } else {
            this.f23964c3 = i4 + 1;
        }
        long[] jArr2 = this.f23980x;
        int i10 = this.f23964c3;
        jArr2[i10 - 1] = j4;
        this.f23983y[i10 - 1] = j10;
        this.f23986z[i10 - 1] = this.O2;
    }

    protected void N0(Exception exc) {
    }

    protected void O0(String str, long j4, long j10) {
    }

    protected void P0(String str) {
    }

    protected com.google.android.exoplayer2.decoder.e Q(l lVar, Format format, Format format2) {
        return new com.google.android.exoplayer2.decoder.e(lVar.f24078a, format, format2, 0, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0086, code lost:
        if (e0() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b8, code lost:
        if (e0() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00d5, code lost:
        r7 = 2;
     */
    @androidx.annotation.Nullable
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.exoplayer2.decoder.e Q0(com.google.android.exoplayer2.v0 r12) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.Q0(com.google.android.exoplayer2.v0):com.google.android.exoplayer2.decoder.e");
    }

    protected void R0(Format format, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void S0(long j4) {
        while (true) {
            int i4 = this.f23964c3;
            if (i4 == 0 || j4 < this.f23986z[0]) {
                return;
            }
            long[] jArr = this.f23980x;
            this.f23960a3 = jArr[0];
            this.f23963b3 = this.f23983y[0];
            int i10 = i4 - 1;
            this.f23964c3 = i10;
            System.arraycopy(jArr, 1, jArr, 0, i10);
            long[] jArr2 = this.f23983y;
            System.arraycopy(jArr2, 1, jArr2, 0, this.f23964c3);
            long[] jArr3 = this.f23986z;
            System.arraycopy(jArr3, 1, jArr3, 0, this.f23964c3);
            T0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void T0() {
    }

    protected void U0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    protected abstract boolean W0(long j4, long j10, @Nullable k kVar, @Nullable ByteBuffer byteBuffer, int i4, int i10, int i11, long j11, boolean z9, boolean z10, Format format) throws ExoPlaybackException;

    @Override // com.google.android.exoplayer2.g2
    public final int a(Format format) throws ExoPlaybackException {
        try {
            return o1(this.f23968n, format);
        } catch (MediaCodecUtil.DecoderQueryException e4) {
            throw x(e4, format);
        }
    }

    protected MediaCodecDecoderException a0(Throwable th, @Nullable l lVar) {
        return new MediaCodecDecoderException(th, lVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.exoplayer2.drm.DrmSession, android.media.MediaCrypto] */
    public void a1() {
        try {
            k kVar = this.J;
            if (kVar != null) {
                kVar.release();
                this.Z2.f21592b++;
                P0(this.Q.f24078a);
            }
            this.J = null;
            try {
                MediaCrypto mediaCrypto = this.E;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.J = null;
            try {
                MediaCrypto mediaCrypto2 = this.E;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean b() {
        return this.R2;
    }

    protected void b1() throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void c1() {
        e1();
        f1();
        this.V1 = com.google.android.exoplayer2.i.f23649b;
        this.M2 = false;
        this.L2 = false;
        this.f23971p1 = false;
        this.f23981x1 = false;
        this.f23982x2 = false;
        this.f23985y2 = false;
        this.f23978v.clear();
        this.O2 = com.google.android.exoplayer2.i.f23649b;
        this.P2 = com.google.android.exoplayer2.i.f23649b;
        j jVar = this.T1;
        if (jVar != null) {
            jVar.b();
        }
        this.J2 = 0;
        this.K2 = 0;
        this.I2 = this.H2 ? 1 : 0;
    }

    @CallSuper
    protected void d1() {
        c1();
        this.Y2 = null;
        this.T1 = null;
        this.O = null;
        this.Q = null;
        this.K = null;
        this.L = null;
        this.M = false;
        this.N2 = false;
        this.N = -1.0f;
        this.R = 0;
        this.S = false;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f23961b1 = false;
        this.f23965g1 = false;
        this.f23984y1 = false;
        this.H2 = false;
        this.I2 = 0;
        this.F = false;
    }

    @Override // com.google.android.exoplayer2.e2
    public boolean f() {
        return this.A != null && (E() || C0() || (this.V1 != com.google.android.exoplayer2.i.f23649b && SystemClock.elapsedRealtime() < this.V1));
    }

    public void h0(boolean z9) {
        this.U2 = z9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h1() {
        this.T2 = true;
    }

    public void i0(boolean z9) {
        this.V2 = z9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i1(ExoPlaybackException exoPlaybackException) {
        this.Y2 = exoPlaybackException;
    }

    public void j0(boolean z9) {
        this.X2 = z9;
    }

    public void j1(long j4) {
        this.G = j4;
    }

    public void k0(boolean z9) {
        this.W2 = z9;
    }

    protected boolean m1(l lVar) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean n0() throws ExoPlaybackException {
        boolean o02 = o0();
        if (o02) {
            K0();
        }
        return o02;
    }

    protected boolean n1(Format format) {
        return false;
    }

    protected boolean o0() {
        if (this.J == null) {
            return false;
        }
        if (this.K2 != 3 && !this.T && ((!this.U || this.N2) && (!this.V || !this.M2))) {
            m0();
            return false;
        }
        a1();
        return true;
    }

    protected abstract int o1(n nVar, Format format) throws MediaCodecUtil.DecoderQueryException;

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.e2
    public void p(float f10, float f11) throws ExoPlaybackException {
        this.H = f10;
        this.I = f11;
        r1(this.K);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final k q0() {
        return this.J;
    }

    protected final boolean q1() throws ExoPlaybackException {
        return r1(this.K);
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.g2
    public final int r() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final l r0() {
        return this.Q;
    }

    @Override // com.google.android.exoplayer2.e2
    public void s(long j4, long j10) throws ExoPlaybackException {
        boolean z9 = false;
        if (this.T2) {
            this.T2 = false;
            V0();
        }
        ExoPlaybackException exoPlaybackException = this.Y2;
        if (exoPlaybackException == null) {
            try {
                if (this.R2) {
                    b1();
                    return;
                } else if (this.A != null || Y0(2)) {
                    K0();
                    if (this.E2) {
                        v0.a("bypassRender");
                        while (P(j4, j10)) {
                        }
                        v0.c();
                    } else if (this.J != null) {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        v0.a("drainAndFeed");
                        while (f0(j4, j10) && l1(elapsedRealtime)) {
                        }
                        while (l0() && l1(elapsedRealtime)) {
                        }
                        v0.c();
                    } else {
                        this.Z2.f21594d += N(j4);
                        Y0(1);
                    }
                    this.Z2.c();
                    return;
                } else {
                    return;
                }
            } catch (IllegalStateException e4) {
                if (G0(e4)) {
                    N0(e4);
                    if (z0.f27743a >= 21 && I0(e4)) {
                        z9 = true;
                    }
                    if (z9) {
                        a1();
                    }
                    throw y(a0(e4, r0()), this.A, z9);
                }
                throw e4;
            }
        }
        this.Y2 = null;
        throw exoPlaybackException;
    }

    protected boolean s0() {
        return false;
    }

    protected float t0() {
        return this.N;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void t1(long j4) throws ExoPlaybackException {
        boolean z9;
        Format j10 = this.f23977u.j(j4);
        if (j10 == null && this.M) {
            j10 = this.f23977u.i();
        }
        if (j10 != null) {
            this.B = j10;
            z9 = true;
        } else {
            z9 = false;
        }
        if (z9 || (this.M && this.B != null)) {
            R0(this.B, this.L);
            this.M = false;
        }
    }

    protected float u0(float f10, Format format, Format[] formatArr) {
        return -1.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final MediaFormat v0() {
        return this.L;
    }

    protected abstract List<l> w0(n nVar, Format format, boolean z9) throws MediaCodecUtil.DecoderQueryException;

    @Nullable
    protected abstract k.a y0(l lVar, Format format, @Nullable MediaCrypto mediaCrypto, float f10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final long z0() {
        return this.f23963b3;
    }

    /* loaded from: classes2.dex */
    public static class DecoderInitializationException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        private static final int f23987a = -50000;

        /* renamed from: b  reason: collision with root package name */
        private static final int f23988b = -49999;

        /* renamed from: c  reason: collision with root package name */
        private static final int f23989c = -49998;
        @Nullable
        public final l codecInfo;
        @Nullable
        public final String diagnosticInfo;
        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public DecoderInitializationException(com.google.android.exoplayer2.Format r12, @androidx.annotation.Nullable java.lang.Throwable r13, boolean r14, int r15) {
            /*
                r11 = this;
                java.lang.String r0 = java.lang.String.valueOf(r12)
                int r1 = r0.length()
                int r1 = r1 + 36
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>(r1)
                java.lang.String r1 = "Decoder init failed: ["
                r2.append(r1)
                r2.append(r15)
                java.lang.String r1 = "], "
                r2.append(r1)
                r2.append(r0)
                java.lang.String r4 = r2.toString()
                java.lang.String r6 = r12.sampleMimeType
                java.lang.String r9 = b(r15)
                r8 = 0
                r10 = 0
                r3 = r11
                r5 = r13
                r7 = r14
                r3.<init>(r4, r5, r6, r7, r8, r9, r10)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(com.google.android.exoplayer2.Format, java.lang.Throwable, boolean, int):void");
        }

        private static String b(int i4) {
            String str = i4 < 0 ? "neg_" : "";
            int abs = Math.abs(i4);
            StringBuilder sb = new StringBuilder(str.length() + 71);
            sb.append("com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_");
            sb.append(str);
            sb.append(abs);
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public DecoderInitializationException c(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        @Nullable
        @RequiresApi(21)
        private static String d(@Nullable Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public DecoderInitializationException(com.google.android.exoplayer2.Format r9, @androidx.annotation.Nullable java.lang.Throwable r10, boolean r11, com.google.android.exoplayer2.mediacodec.l r12) {
            /*
                r8 = this;
                java.lang.String r0 = r12.f24078a
                java.lang.String r1 = java.lang.String.valueOf(r9)
                java.lang.String r2 = java.lang.String.valueOf(r0)
                int r2 = r2.length()
                int r2 = r2 + 23
                int r3 = r1.length()
                int r2 = r2 + r3
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>(r2)
                java.lang.String r2 = "Decoder init failed: "
                r3.append(r2)
                r3.append(r0)
                java.lang.String r0 = ", "
                r3.append(r0)
                r3.append(r1)
                java.lang.String r1 = r3.toString()
                java.lang.String r3 = r9.sampleMimeType
                int r0 = com.google.android.exoplayer2.util.z0.f27743a
                r2 = 21
                if (r0 < r2) goto L3b
                java.lang.String r0 = d(r10)
                goto L3c
            L3b:
                r0 = 0
            L3c:
                r6 = r0
                r7 = 0
                r0 = r8
                r2 = r10
                r4 = r11
                r5 = r12
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(com.google.android.exoplayer2.Format, java.lang.Throwable, boolean, com.google.android.exoplayer2.mediacodec.l):void");
        }

        private DecoderInitializationException(String str, @Nullable Throwable th, String str2, boolean z9, @Nullable l lVar, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z9;
            this.codecInfo = lVar;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }
    }
}
