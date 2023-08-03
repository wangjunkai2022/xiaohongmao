package com.google.android.exoplayer2.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.f2;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.k;
import com.google.android.exoplayer2.util.v0;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.video.z;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* compiled from: MediaCodecVideoRenderer.java */
/* loaded from: classes2.dex */
public class f extends MediaCodecRenderer {

    /* renamed from: f4  reason: collision with root package name */
    private static final String f27912f4 = "MediaCodecVideoRenderer";
    private static final String g4 = "crop-left";
    private static final String h4 = "crop-right";
    private static final String i4 = "crop-bottom";
    private static final String j4 = "crop-top";

    /* renamed from: k4  reason: collision with root package name */
    private static final int[] f27913k4 = {1920, 1600, 1440, com.im.freechat.utils.h.f43782b, 960, 854, 640, 540, 480};

    /* renamed from: l4  reason: collision with root package name */
    private static final float f27914l4 = 1.5f;

    /* renamed from: m4  reason: collision with root package name */
    private static final long f27915m4 = Long.MAX_VALUE;

    /* renamed from: n4  reason: collision with root package name */
    private static boolean f27916n4;

    /* renamed from: o4  reason: collision with root package name */
    private static boolean f27917o4;
    private final int A3;
    private final boolean B3;
    private a C3;
    private boolean D3;
    private boolean E3;
    @Nullable
    private Surface F3;
    @Nullable
    private DummySurface G3;
    private boolean H3;
    private int I3;
    private boolean J3;
    private boolean K3;
    private boolean L3;
    private long M3;
    private long N3;
    private long O3;
    private int P3;
    private int Q3;
    private int R3;
    private long S3;
    private long T3;
    private long U3;
    private int V3;
    private int W3;
    private int X3;
    private int Y3;
    private float Z3;
    @Nullable

    /* renamed from: a4  reason: collision with root package name */
    private b0 f27918a4;

    /* renamed from: b4  reason: collision with root package name */
    private boolean f27919b4;

    /* renamed from: c4  reason: collision with root package name */
    private int f27920c4;
    @Nullable
    b d4;
    @Nullable
    private j e4;

    /* renamed from: w3  reason: collision with root package name */
    private final Context f27921w3;

    /* renamed from: x3  reason: collision with root package name */
    private final l f27922x3;

    /* renamed from: y3  reason: collision with root package name */
    private final z.a f27923y3;

    /* renamed from: z3  reason: collision with root package name */
    private final long f27924z3;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: MediaCodecVideoRenderer.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f27925a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27926b;

        /* renamed from: c  reason: collision with root package name */
        public final int f27927c;

        public a(int i4, int i10, int i11) {
            this.f27925a = i4;
            this.f27926b = i10;
            this.f27927c = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaCodecVideoRenderer.java */
    @RequiresApi(23)
    /* loaded from: classes2.dex */
    public final class b implements k.c, Handler.Callback {

        /* renamed from: c  reason: collision with root package name */
        private static final int f27928c = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Handler f27929a;

        public b(com.google.android.exoplayer2.mediacodec.k kVar) {
            Handler A = z0.A(this);
            this.f27929a = A;
            kVar.c(this, A);
        }

        private void b(long j4) {
            f fVar = f.this;
            if (this != fVar.d4) {
                return;
            }
            if (j4 == Long.MAX_VALUE) {
                fVar.V1();
                return;
            }
            try {
                fVar.U1(j4);
            } catch (ExoPlaybackException e4) {
                f.this.i1(e4);
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.k.c
        public void a(com.google.android.exoplayer2.mediacodec.k kVar, long j4, long j10) {
            if (z0.f27743a < 30) {
                this.f27929a.sendMessageAtFrontOfQueue(Message.obtain(this.f27929a, 0, (int) (j4 >> 32), (int) j4));
                return;
            }
            b(j4);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(z0.t1(message.arg1, message.arg2));
            return true;
        }
    }

    public f(Context context, com.google.android.exoplayer2.mediacodec.n nVar) {
        this(context, nVar, 0L);
    }

    private static boolean A1() {
        return "NVIDIA".equals(z0.f27745c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:581:0x07cf, code lost:
        if (r0.equals("NX573J") == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x0831, code lost:
        if (r0.equals("AFTN") == false) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean C1() {
        /*
            Method dump skipped, instructions count: 3046
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.f.C1():boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int D1(com.google.android.exoplayer2.mediacodec.l lVar, String str, int i10, int i11) {
        char c10;
        int m9;
        if (i10 != -1 && i11 != -1) {
            str.hashCode();
            int i12 = 4;
            switch (str.hashCode()) {
                case -1851077871:
                    if (str.equals(com.google.android.exoplayer2.util.a0.f27475w)) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1664118616:
                    if (str.equals(com.google.android.exoplayer2.util.a0.f27447i)) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1662541442:
                    if (str.equals(com.google.android.exoplayer2.util.a0.f27451k)) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1187890754:
                    if (str.equals(com.google.android.exoplayer2.util.a0.f27461p)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1331836730:
                    if (str.equals("video/avc")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1599127256:
                    if (str.equals(com.google.android.exoplayer2.util.a0.f27453l)) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1599127257:
                    if (str.equals(com.google.android.exoplayer2.util.a0.f27455m)) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                case 4:
                    String str2 = z0.f27746d;
                    if (!"BRAVIA 4K 2015".equals(str2) && (!"Amazon".equals(z0.f27745c) || (!"KFSOWI".equals(str2) && (!"AFTS".equals(str2) || !lVar.f24084g)))) {
                        m9 = z0.m(i10, 16) * z0.m(i11, 16) * 16 * 16;
                        i12 = 2;
                        break;
                    }
                    break;
                case 1:
                case 3:
                case 5:
                    m9 = i10 * i11;
                    i12 = 2;
                    break;
                case 2:
                case 6:
                    m9 = i10 * i11;
                    break;
                default:
                    return -1;
            }
            return (m9 * 3) / (i12 * 2);
        }
        return -1;
    }

    private static Point E1(com.google.android.exoplayer2.mediacodec.l lVar, Format format) {
        int[] iArr;
        int i10 = format.height;
        int i11 = format.width;
        boolean z9 = i10 > i11;
        int i12 = z9 ? i10 : i11;
        if (z9) {
            i10 = i11;
        }
        float f10 = i10 / i12;
        for (int i13 : f27913k4) {
            int i14 = (int) (i13 * f10);
            if (i13 <= i12 || i14 <= i10) {
                break;
            }
            if (z0.f27743a >= 21) {
                int i15 = z9 ? i14 : i13;
                if (!z9) {
                    i13 = i14;
                }
                Point b10 = lVar.b(i15, i13);
                if (lVar.w(b10.x, b10.y, format.frameRate)) {
                    return b10;
                }
            } else {
                try {
                    int m9 = z0.m(i13, 16) * 16;
                    int m10 = z0.m(i14, 16) * 16;
                    if (m9 * m10 <= MediaCodecUtil.N()) {
                        int i16 = z9 ? m10 : m9;
                        if (!z9) {
                            m9 = m10;
                        }
                        return new Point(i16, m9);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    private static List<com.google.android.exoplayer2.mediacodec.l> G1(com.google.android.exoplayer2.mediacodec.n nVar, Format format, boolean z9, boolean z10) throws MediaCodecUtil.DecoderQueryException {
        Pair<Integer, Integer> q9;
        String str = format.sampleMimeType;
        if (str == null) {
            return Collections.emptyList();
        }
        List<com.google.android.exoplayer2.mediacodec.l> u9 = MediaCodecUtil.u(nVar.a(str, z9, z10), format);
        if (com.google.android.exoplayer2.util.a0.f27475w.equals(str) && (q9 = MediaCodecUtil.q(format)) != null) {
            int intValue = ((Integer) q9.first).intValue();
            if (intValue == 16 || intValue == 256) {
                u9.addAll(nVar.a(com.google.android.exoplayer2.util.a0.f27451k, z9, z10));
            } else if (intValue == 512) {
                u9.addAll(nVar.a("video/avc", z9, z10));
            }
        }
        return Collections.unmodifiableList(u9);
    }

    protected static int H1(com.google.android.exoplayer2.mediacodec.l lVar, Format format) {
        if (format.maxInputSize != -1) {
            int size = format.initializationData.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                i10 += format.initializationData.get(i11).length;
            }
            return format.maxInputSize + i10;
        }
        return D1(lVar, format.sampleMimeType, format.width, format.height);
    }

    private static boolean K1(long j10) {
        return j10 < -30000;
    }

    private static boolean L1(long j10) {
        return j10 < -500000;
    }

    private void N1() {
        if (this.P3 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f27923y3.n(this.P3, elapsedRealtime - this.O3);
            this.P3 = 0;
            this.O3 = elapsedRealtime;
        }
    }

    private void P1() {
        int i10 = this.V3;
        if (i10 != 0) {
            this.f27923y3.B(this.U3, i10);
            this.U3 = 0L;
            this.V3 = 0;
        }
    }

    private void Q1() {
        int i10 = this.W3;
        if (i10 == -1 && this.X3 == -1) {
            return;
        }
        b0 b0Var = this.f27918a4;
        if (b0Var != null && b0Var.f27885a == i10 && b0Var.f27886b == this.X3 && b0Var.f27887c == this.Y3 && b0Var.f27888d == this.Z3) {
            return;
        }
        b0 b0Var2 = new b0(this.W3, this.X3, this.Y3, this.Z3);
        this.f27918a4 = b0Var2;
        this.f27923y3.D(b0Var2);
    }

    private void R1() {
        if (this.H3) {
            this.f27923y3.A(this.F3);
        }
    }

    private void S1() {
        b0 b0Var = this.f27918a4;
        if (b0Var != null) {
            this.f27923y3.D(b0Var);
        }
    }

    private void T1(long j10, long j11, Format format) {
        j jVar = this.e4;
        if (jVar != null) {
            jVar.a(j10, j11, format, v0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1() {
        h1();
    }

    @RequiresApi(29)
    private static void Y1(com.google.android.exoplayer2.mediacodec.k kVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        kVar.g(bundle);
    }

    private void Z1() {
        this.N3 = this.f27924z3 > 0 ? SystemClock.elapsedRealtime() + this.f27924z3 : com.google.android.exoplayer2.i.f23649b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f, com.google.android.exoplayer2.video.f] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.Surface] */
    private void a2(@Nullable Object obj) throws ExoPlaybackException {
        DummySurface dummySurface = obj instanceof Surface ? (Surface) obj : null;
        if (dummySurface == null) {
            DummySurface dummySurface2 = this.G3;
            if (dummySurface2 != null) {
                dummySurface = dummySurface2;
            } else {
                com.google.android.exoplayer2.mediacodec.l r02 = r0();
                if (r02 != null && f2(r02)) {
                    dummySurface = DummySurface.newInstanceV17(this.f27921w3, r02.f24084g);
                    this.G3 = dummySurface;
                }
            }
        }
        if (this.F3 != dummySurface) {
            this.F3 = dummySurface;
            this.f27922x3.o(dummySurface);
            this.H3 = false;
            int state = getState();
            com.google.android.exoplayer2.mediacodec.k q02 = q0();
            if (q02 != null) {
                if (z0.f27743a >= 23 && dummySurface != null && !this.D3) {
                    b2(q02, dummySurface);
                } else {
                    a1();
                    K0();
                }
            }
            if (dummySurface != null && dummySurface != this.G3) {
                S1();
                w1();
                if (state == 2) {
                    Z1();
                    return;
                }
                return;
            }
            x1();
            w1();
        } else if (dummySurface == null || dummySurface == this.G3) {
        } else {
            S1();
            R1();
        }
    }

    private boolean f2(com.google.android.exoplayer2.mediacodec.l lVar) {
        return z0.f27743a >= 23 && !this.f27919b4 && !y1(lVar.f24078a) && (!lVar.f24084g || DummySurface.isSecureSupported(this.f27921w3));
    }

    private void w1() {
        com.google.android.exoplayer2.mediacodec.k q02;
        this.J3 = false;
        if (z0.f27743a < 23 || !this.f27919b4 || (q02 = q0()) == null) {
            return;
        }
        this.d4 = new b(q02);
    }

    private void x1() {
        this.f27918a4 = null;
    }

    @RequiresApi(21)
    private static void z1(MediaFormat mediaFormat, int i10) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @TargetApi(29)
    protected void B0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (this.E3) {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.g(decoderInputBuffer.f21575f);
            if (byteBuffer.remaining() >= 7) {
                byte b10 = byteBuffer.get();
                short s9 = byteBuffer.getShort();
                short s10 = byteBuffer.getShort();
                byte b11 = byteBuffer.get();
                byte b12 = byteBuffer.get();
                byteBuffer.position(0);
                if (b10 == -75 && s9 == 60 && s10 == 1 && b11 == 4 && b12 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    Y1(q0(), bArr);
                }
            }
        }
    }

    protected void B1(com.google.android.exoplayer2.mediacodec.k kVar, int i10, long j10) {
        v0.a("dropVideoBuffer");
        kVar.k(i10, false);
        v0.c();
        h2(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void F() {
        x1();
        w1();
        this.H3 = false;
        this.f27922x3.g();
        this.d4 = null;
        try {
            super.F();
        } finally {
            this.f27923y3.m(this.Z2);
        }
    }

    protected a F1(com.google.android.exoplayer2.mediacodec.l lVar, Format format, Format[] formatArr) {
        int D1;
        int i10 = format.width;
        int i11 = format.height;
        int H1 = H1(lVar, format);
        if (formatArr.length == 1) {
            if (H1 != -1 && (D1 = D1(lVar, format.sampleMimeType, format.width, format.height)) != -1) {
                H1 = Math.min((int) (H1 * f27914l4), D1);
            }
            return new a(i10, i11, H1);
        }
        int length = formatArr.length;
        boolean z9 = false;
        for (int i12 = 0; i12 < length; i12++) {
            Format format2 = formatArr[i12];
            if (format.colorInfo != null && format2.colorInfo == null) {
                format2 = format2.buildUpon().J(format.colorInfo).E();
            }
            if (lVar.e(format, format2).f21624d != 0) {
                int i13 = format2.width;
                z9 |= i13 == -1 || format2.height == -1;
                i10 = Math.max(i10, i13);
                i11 = Math.max(i11, format2.height);
                H1 = Math.max(H1, H1(lVar, format2));
            }
        }
        if (z9) {
            StringBuilder sb = new StringBuilder(66);
            sb.append("Resolutions unknown. Codec max resolution: ");
            sb.append(i10);
            sb.append(y.b.f83919g);
            sb.append(i11);
            com.google.android.exoplayer2.util.w.n(f27912f4, sb.toString());
            Point E1 = E1(lVar, format);
            if (E1 != null) {
                i10 = Math.max(i10, E1.x);
                i11 = Math.max(i11, E1.y);
                H1 = Math.max(H1, D1(lVar, format.sampleMimeType, i10, i11));
                StringBuilder sb2 = new StringBuilder(57);
                sb2.append("Codec max resolution adjusted to: ");
                sb2.append(i10);
                sb2.append(y.b.f83919g);
                sb2.append(i11);
                com.google.android.exoplayer2.util.w.n(f27912f4, sb2.toString());
            }
        }
        return new a(i10, i11, H1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void G(boolean z9, boolean z10) throws ExoPlaybackException {
        super.G(z9, z10);
        boolean z11 = z().f23644a;
        com.google.android.exoplayer2.util.a.i((z11 && this.f27920c4 == 0) ? false : true);
        if (this.f27919b4 != z11) {
            this.f27919b4 = z11;
            a1();
        }
        this.f27923y3.o(this.Z2);
        this.f27922x3.h();
        this.K3 = z10;
        this.L3 = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void H(long j10, boolean z9) throws ExoPlaybackException {
        super.H(j10, z9);
        w1();
        this.f27922x3.l();
        this.S3 = com.google.android.exoplayer2.i.f23649b;
        this.M3 = com.google.android.exoplayer2.i.f23649b;
        this.Q3 = 0;
        if (z9) {
            Z1();
        } else {
            this.N3 = com.google.android.exoplayer2.i.f23649b;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    @TargetApi(17)
    public void I() {
        try {
            super.I();
            DummySurface dummySurface = this.G3;
            if (dummySurface != null) {
                if (this.F3 == dummySurface) {
                    this.F3 = null;
                }
                dummySurface.release();
                this.G3 = null;
            }
        } catch (Throwable th) {
            if (this.G3 != null) {
                Surface surface = this.F3;
                DummySurface dummySurface2 = this.G3;
                if (surface == dummySurface2) {
                    this.F3 = null;
                }
                dummySurface2.release();
                this.G3 = null;
            }
            throw th;
        }
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(21)
    protected MediaFormat I1(Format format, String str, a aVar, float f10, boolean z9, int i10) {
        Pair<Integer, Integer> q9;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(com.ksyun.media.player.misc.c.f45557a, str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        com.google.android.exoplayer2.util.z.j(mediaFormat, format.initializationData);
        com.google.android.exoplayer2.util.z.d(mediaFormat, "frame-rate", format.frameRate);
        com.google.android.exoplayer2.util.z.e(mediaFormat, "rotation-degrees", format.rotationDegrees);
        com.google.android.exoplayer2.util.z.c(mediaFormat, format.colorInfo);
        if (com.google.android.exoplayer2.util.a0.f27475w.equals(format.sampleMimeType) && (q9 = MediaCodecUtil.q(format)) != null) {
            com.google.android.exoplayer2.util.z.e(mediaFormat, com.google.android.gms.common.n.f29237a, ((Integer) q9.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar.f27925a);
        mediaFormat.setInteger("max-height", aVar.f27926b);
        com.google.android.exoplayer2.util.z.e(mediaFormat, "max-input-size", aVar.f27927c);
        if (z0.f27743a >= 23) {
            mediaFormat.setInteger(t.b.f83857b, 0);
            if (f10 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (z9) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i10 != 0) {
            z1(mediaFormat, i10);
        }
        return mediaFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void J() {
        super.J();
        this.P3 = 0;
        this.O3 = SystemClock.elapsedRealtime();
        this.T3 = SystemClock.elapsedRealtime() * 1000;
        this.U3 = 0L;
        this.V3 = 0;
        this.f27922x3.m();
    }

    protected Surface J1() {
        return this.F3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void K() {
        this.N3 = com.google.android.exoplayer2.i.f23649b;
        N1();
        P1();
        this.f27922x3.n();
        super.K();
    }

    protected boolean M1(long j10, boolean z9) throws ExoPlaybackException {
        int N = N(j10);
        if (N == 0) {
            return false;
        }
        com.google.android.exoplayer2.decoder.d dVar = this.Z2;
        dVar.f21599i++;
        int i10 = this.R3 + N;
        if (z9) {
            dVar.f21596f += i10;
        } else {
            h2(i10);
        }
        n0();
        return true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void N0(Exception exc) {
        com.google.android.exoplayer2.util.w.e(f27912f4, "Video codec error", exc);
        this.f27923y3.C(exc);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void O0(String str, long j10, long j11) {
        this.f27923y3.k(str, j10, j11);
        this.D3 = y1(str);
        this.E3 = ((com.google.android.exoplayer2.mediacodec.l) com.google.android.exoplayer2.util.a.g(r0())).p();
        if (z0.f27743a < 23 || !this.f27919b4) {
            return;
        }
        this.d4 = new b((com.google.android.exoplayer2.mediacodec.k) com.google.android.exoplayer2.util.a.g(q0()));
    }

    void O1() {
        this.L3 = true;
        if (this.J3) {
            return;
        }
        this.J3 = true;
        this.f27923y3.A(this.F3);
        this.H3 = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void P0(String str) {
        this.f27923y3.l(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected com.google.android.exoplayer2.decoder.e Q(com.google.android.exoplayer2.mediacodec.l lVar, Format format, Format format2) {
        com.google.android.exoplayer2.decoder.e e4 = lVar.e(format, format2);
        int i10 = e4.f21625e;
        int i11 = format2.width;
        a aVar = this.C3;
        if (i11 > aVar.f27925a || format2.height > aVar.f27926b) {
            i10 |= 256;
        }
        if (H1(lVar, format2) > this.C3.f27927c) {
            i10 |= 64;
        }
        int i12 = i10;
        return new com.google.android.exoplayer2.decoder.e(lVar.f24078a, format, format2, i12 != 0 ? 0 : e4.f21624d, i12);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @Nullable
    public com.google.android.exoplayer2.decoder.e Q0(com.google.android.exoplayer2.v0 v0Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.e Q0 = super.Q0(v0Var);
        this.f27923y3.p(v0Var.f27763b, Q0);
        return Q0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void R0(Format format, @Nullable MediaFormat mediaFormat) {
        int integer;
        int integer2;
        com.google.android.exoplayer2.mediacodec.k q02 = q0();
        if (q02 != null) {
            q02.p(this.I3);
        }
        if (this.f27919b4) {
            this.W3 = format.width;
            this.X3 = format.height;
        } else {
            com.google.android.exoplayer2.util.a.g(mediaFormat);
            boolean z9 = mediaFormat.containsKey(h4) && mediaFormat.containsKey(g4) && mediaFormat.containsKey(i4) && mediaFormat.containsKey(j4);
            if (z9) {
                integer = (mediaFormat.getInteger(h4) - mediaFormat.getInteger(g4)) + 1;
            } else {
                integer = mediaFormat.getInteger("width");
            }
            this.W3 = integer;
            if (z9) {
                integer2 = (mediaFormat.getInteger(i4) - mediaFormat.getInteger(j4)) + 1;
            } else {
                integer2 = mediaFormat.getInteger("height");
            }
            this.X3 = integer2;
        }
        float f10 = format.pixelWidthHeightRatio;
        this.Z3 = f10;
        if (z0.f27743a >= 21) {
            int i10 = format.rotationDegrees;
            if (i10 == 90 || i10 == 270) {
                int i11 = this.W3;
                this.W3 = this.X3;
                this.X3 = i11;
                this.Z3 = 1.0f / f10;
            }
        } else {
            this.Y3 = format.rotationDegrees;
        }
        this.f27922x3.i(format.frameRate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    public void S0(long j10) {
        super.S0(j10);
        if (this.f27919b4) {
            return;
        }
        this.R3--;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void T0() {
        super.T0();
        w1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    protected void U0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        boolean z9 = this.f27919b4;
        if (!z9) {
            this.R3++;
        }
        if (z0.f27743a >= 23 || !z9) {
            return;
        }
        U1(decoderInputBuffer.f21574e);
    }

    protected void U1(long j10) throws ExoPlaybackException {
        t1(j10);
        Q1();
        this.Z2.f21595e++;
        O1();
        S0(j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean W0(long j10, long j11, @Nullable com.google.android.exoplayer2.mediacodec.k kVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z9, boolean z10, Format format) throws ExoPlaybackException {
        long j13;
        boolean z11;
        com.google.android.exoplayer2.util.a.g(kVar);
        if (this.M3 == com.google.android.exoplayer2.i.f23649b) {
            this.M3 = j10;
        }
        if (j12 != this.S3) {
            this.f27922x3.j(j12);
            this.S3 = j12;
        }
        long z02 = z0();
        long j14 = j12 - z02;
        if (z9 && !z10) {
            g2(kVar, i10, j14);
            return true;
        }
        double A0 = A0();
        boolean z12 = getState() == 2;
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j15 = (long) ((j12 - j10) / A0);
        if (z12) {
            j15 -= elapsedRealtime - j11;
        }
        if (this.F3 == this.G3) {
            if (K1(j15)) {
                g2(kVar, i10, j14);
                i2(j15);
                return true;
            }
            return false;
        }
        long j16 = elapsedRealtime - this.T3;
        if (this.L3 ? this.J3 : !(z12 || this.K3)) {
            j13 = j16;
            z11 = false;
        } else {
            j13 = j16;
            z11 = true;
        }
        if (this.N3 == com.google.android.exoplayer2.i.f23649b && j10 >= z02 && (z11 || (z12 && e2(j15, j13)))) {
            long nanoTime = System.nanoTime();
            T1(j14, nanoTime, format);
            if (z0.f27743a >= 21) {
                X1(kVar, i10, j14, nanoTime);
            } else {
                W1(kVar, i10, j14);
            }
            i2(j15);
            return true;
        }
        if (z12 && j10 != this.M3) {
            long nanoTime2 = System.nanoTime();
            long b10 = this.f27922x3.b((j15 * 1000) + nanoTime2);
            long j17 = (b10 - nanoTime2) / 1000;
            boolean z13 = this.N3 != com.google.android.exoplayer2.i.f23649b;
            if (c2(j17, j11, z10) && M1(j10, z13)) {
                return false;
            }
            if (d2(j17, j11, z10)) {
                if (z13) {
                    g2(kVar, i10, j14);
                } else {
                    B1(kVar, i10, j14);
                }
                i2(j17);
                return true;
            } else if (z0.f27743a >= 21) {
                if (j17 < 50000) {
                    T1(j14, b10, format);
                    X1(kVar, i10, j14, b10);
                    i2(j17);
                    return true;
                }
            } else if (j17 < 30000) {
                if (j17 > 11000) {
                    try {
                        Thread.sleep((j17 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                T1(j14, b10, format);
                W1(kVar, i10, j14);
                i2(j17);
                return true;
            }
        }
        return false;
    }

    protected void W1(com.google.android.exoplayer2.mediacodec.k kVar, int i10, long j10) {
        Q1();
        v0.a("releaseOutputBuffer");
        kVar.k(i10, true);
        v0.c();
        this.T3 = SystemClock.elapsedRealtime() * 1000;
        this.Z2.f21595e++;
        this.Q3 = 0;
        O1();
    }

    @RequiresApi(21)
    protected void X1(com.google.android.exoplayer2.mediacodec.k kVar, int i10, long j10, long j11) {
        Q1();
        v0.a("releaseOutputBuffer");
        kVar.h(i10, j11);
        v0.c();
        this.T3 = SystemClock.elapsedRealtime() * 1000;
        this.Z2.f21595e++;
        this.Q3 = 0;
        O1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException a0(Throwable th, @Nullable com.google.android.exoplayer2.mediacodec.l lVar) {
        return new MediaCodecVideoDecoderException(th, lVar, this.F3);
    }

    @RequiresApi(23)
    protected void b2(com.google.android.exoplayer2.mediacodec.k kVar, Surface surface) {
        kVar.e(surface);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    public void c1() {
        super.c1();
        this.R3 = 0;
    }

    protected boolean c2(long j10, long j11, boolean z9) {
        return L1(j10) && !z9;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.z1.b
    public void d(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 == 1) {
            a2(obj);
        } else if (i10 == 4) {
            this.I3 = ((Integer) obj).intValue();
            com.google.android.exoplayer2.mediacodec.k q02 = q0();
            if (q02 != null) {
                q02.p(this.I3);
            }
        } else if (i10 == 6) {
            this.e4 = (j) obj;
        } else if (i10 != 102) {
            super.d(i10, obj);
        } else {
            int intValue = ((Integer) obj).intValue();
            if (this.f27920c4 != intValue) {
                this.f27920c4 = intValue;
                if (this.f27919b4) {
                    a1();
                }
            }
        }
    }

    protected boolean d2(long j10, long j11, boolean z9) {
        return K1(j10) && !z9;
    }

    protected boolean e2(long j10, long j11) {
        return K1(j10) && j11 > 100000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.e2
    public boolean f() {
        DummySurface dummySurface;
        if (super.f() && (this.J3 || (((dummySurface = this.G3) != null && this.F3 == dummySurface) || q0() == null || this.f27919b4))) {
            this.N3 = com.google.android.exoplayer2.i.f23649b;
            return true;
        } else if (this.N3 == com.google.android.exoplayer2.i.f23649b) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.N3) {
                return true;
            }
            this.N3 = com.google.android.exoplayer2.i.f23649b;
            return false;
        }
    }

    protected void g2(com.google.android.exoplayer2.mediacodec.k kVar, int i10, long j10) {
        v0.a("skipVideoBuffer");
        kVar.k(i10, false);
        v0.c();
        this.Z2.f21596f++;
    }

    @Override // com.google.android.exoplayer2.e2, com.google.android.exoplayer2.g2
    public String getName() {
        return f27912f4;
    }

    protected void h2(int i10) {
        com.google.android.exoplayer2.decoder.d dVar = this.Z2;
        dVar.f21597g += i10;
        this.P3 += i10;
        int i11 = this.Q3 + i10;
        this.Q3 = i11;
        dVar.f21598h = Math.max(i11, dVar.f21598h);
        int i12 = this.A3;
        if (i12 <= 0 || this.P3 < i12) {
            return;
        }
        N1();
    }

    protected void i2(long j10) {
        this.Z2.a(j10);
        this.U3 += j10;
        this.V3++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean m1(com.google.android.exoplayer2.mediacodec.l lVar) {
        return this.F3 != null || f2(lVar);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int o1(com.google.android.exoplayer2.mediacodec.n nVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        int i10 = 0;
        if (!com.google.android.exoplayer2.util.a0.s(format.sampleMimeType)) {
            return f2.a(0);
        }
        boolean z9 = format.drmInitData != null;
        List<com.google.android.exoplayer2.mediacodec.l> G1 = G1(nVar, format, z9, false);
        if (z9 && G1.isEmpty()) {
            G1 = G1(nVar, format, false, false);
        }
        if (G1.isEmpty()) {
            return f2.a(1);
        }
        if (!MediaCodecRenderer.p1(format)) {
            return f2.a(2);
        }
        com.google.android.exoplayer2.mediacodec.l lVar = G1.get(0);
        boolean o9 = lVar.o(format);
        int i11 = lVar.q(format) ? 16 : 8;
        if (o9) {
            List<com.google.android.exoplayer2.mediacodec.l> G12 = G1(nVar, format, z9, true);
            if (!G12.isEmpty()) {
                com.google.android.exoplayer2.mediacodec.l lVar2 = G12.get(0);
                if (lVar2.o(format) && lVar2.q(format)) {
                    i10 = 32;
                }
            }
        }
        return f2.b(o9 ? 4 : 3, i11, i10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f, com.google.android.exoplayer2.e2
    public void p(float f10, float f11) throws ExoPlaybackException {
        super.p(f10, f11);
        this.f27922x3.k(f10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean s0() {
        return this.f27919b4 && z0.f27743a < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected float u0(float f10, Format format, Format[] formatArr) {
        float f11 = -1.0f;
        for (Format format2 : formatArr) {
            float f12 = format2.frameRate;
            if (f12 != -1.0f) {
                f11 = Math.max(f11, f12);
            }
        }
        if (f11 == -1.0f) {
            return -1.0f;
        }
        return f11 * f10;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected List<com.google.android.exoplayer2.mediacodec.l> w0(com.google.android.exoplayer2.mediacodec.n nVar, Format format, boolean z9) throws MediaCodecUtil.DecoderQueryException {
        return G1(nVar, format, z9, this.f27919b4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @TargetApi(17)
    protected k.a y0(com.google.android.exoplayer2.mediacodec.l lVar, Format format, @Nullable MediaCrypto mediaCrypto, float f10) {
        DummySurface dummySurface = this.G3;
        if (dummySurface != null && dummySurface.secure != lVar.f24084g) {
            dummySurface.release();
            this.G3 = null;
        }
        String str = lVar.f24080c;
        a F1 = F1(lVar, format, D());
        this.C3 = F1;
        MediaFormat I1 = I1(format, str, F1, f10, this.B3, this.f27919b4 ? this.f27920c4 : 0);
        if (this.F3 == null) {
            if (f2(lVar)) {
                if (this.G3 == null) {
                    this.G3 = DummySurface.newInstanceV17(this.f27921w3, lVar.f24084g);
                }
                this.F3 = this.G3;
            } else {
                throw new IllegalStateException();
            }
        }
        return new k.a(lVar, I1, format, this.F3, mediaCrypto, 0);
    }

    protected boolean y1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (f.class) {
            if (!f27916n4) {
                f27917o4 = C1();
                f27916n4 = true;
            }
        }
        return f27917o4;
    }

    public f(Context context, com.google.android.exoplayer2.mediacodec.n nVar, long j10) {
        this(context, nVar, j10, null, null, 0);
    }

    public f(Context context, com.google.android.exoplayer2.mediacodec.n nVar, long j10, @Nullable Handler handler, @Nullable z zVar, int i10) {
        this(context, k.b.f24075a, nVar, j10, false, handler, zVar, i10);
    }

    public f(Context context, com.google.android.exoplayer2.mediacodec.n nVar, long j10, boolean z9, @Nullable Handler handler, @Nullable z zVar, int i10) {
        this(context, k.b.f24075a, nVar, j10, z9, handler, zVar, i10);
    }

    public f(Context context, k.b bVar, com.google.android.exoplayer2.mediacodec.n nVar, long j10, boolean z9, @Nullable Handler handler, @Nullable z zVar, int i10) {
        super(2, bVar, nVar, z9, 30.0f);
        this.f27924z3 = j10;
        this.A3 = i10;
        Context applicationContext = context.getApplicationContext();
        this.f27921w3 = applicationContext;
        this.f27922x3 = new l(applicationContext);
        this.f27923y3 = new z.a(handler, zVar);
        this.B3 = A1();
        this.N3 = com.google.android.exoplayer2.i.f23649b;
        this.W3 = -1;
        this.X3 = -1;
        this.Z3 = -1.0f;
        this.I3 = 1;
        this.f27920c4 = 0;
        x1();
    }
}
