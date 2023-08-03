package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.x;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.util.z0;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: e0  reason: collision with root package name */
    public static final float f21016e0 = 1.0f;

    /* renamed from: f0  reason: collision with root package name */
    public static final float f21017f0 = 0.1f;

    /* renamed from: g0  reason: collision with root package name */
    public static final float f21018g0 = 8.0f;

    /* renamed from: h0  reason: collision with root package name */
    public static final float f21019h0 = 0.1f;

    /* renamed from: i0  reason: collision with root package name */
    public static final float f21020i0 = 8.0f;

    /* renamed from: j0  reason: collision with root package name */
    private static final boolean f21021j0 = false;

    /* renamed from: k0  reason: collision with root package name */
    public static final int f21022k0 = 0;

    /* renamed from: l0  reason: collision with root package name */
    public static final int f21023l0 = 1;

    /* renamed from: m0  reason: collision with root package name */
    public static final int f21024m0 = 2;

    /* renamed from: n0  reason: collision with root package name */
    private static final int f21025n0 = 0;

    /* renamed from: o0  reason: collision with root package name */
    private static final int f21026o0 = 1;

    /* renamed from: p0  reason: collision with root package name */
    private static final int f21027p0 = 2;

    /* renamed from: q0  reason: collision with root package name */
    private static final long f21028q0 = 250000;

    /* renamed from: r0  reason: collision with root package name */
    private static final long f21029r0 = 750000;

    /* renamed from: s0  reason: collision with root package name */
    private static final long f21030s0 = 250000;

    /* renamed from: t0  reason: collision with root package name */
    private static final long f21031t0 = 50000000;

    /* renamed from: u0  reason: collision with root package name */
    private static final int f21032u0 = 4;

    /* renamed from: v0  reason: collision with root package name */
    private static final int f21033v0 = 2;

    /* renamed from: w0  reason: collision with root package name */
    private static final int f21034w0 = -32;

    /* renamed from: x0  reason: collision with root package name */
    private static final int f21035x0 = 100;

    /* renamed from: y0  reason: collision with root package name */
    private static final String f21036y0 = "DefaultAudioSink";

    /* renamed from: z0  reason: collision with root package name */
    public static boolean f21037z0 = false;
    private t1 A;
    @Nullable
    private ByteBuffer B;
    private int C;
    private long D;
    private long E;
    private long F;
    private long G;
    private int H;
    private boolean I;
    private boolean J;
    private long K;
    private float L;
    private AudioProcessor[] M;
    private ByteBuffer[] N;
    @Nullable
    private ByteBuffer O;
    private int P;
    @Nullable
    private ByteBuffer Q;
    private byte[] R;
    private int S;
    private int T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private int Y;
    private y Z;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f21038a0;

    /* renamed from: b0  reason: collision with root package name */
    private long f21039b0;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f21040c0;

    /* renamed from: d0  reason: collision with root package name */
    private boolean f21041d0;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.audio.f f21042e;

    /* renamed from: f  reason: collision with root package name */
    private final b f21043f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f21044g;

    /* renamed from: h  reason: collision with root package name */
    private final a0 f21045h;

    /* renamed from: i  reason: collision with root package name */
    private final n0 f21046i;

    /* renamed from: j  reason: collision with root package name */
    private final AudioProcessor[] f21047j;

    /* renamed from: k  reason: collision with root package name */
    private final AudioProcessor[] f21048k;

    /* renamed from: l  reason: collision with root package name */
    private final ConditionVariable f21049l;

    /* renamed from: m  reason: collision with root package name */
    private final x f21050m;

    /* renamed from: n  reason: collision with root package name */
    private final ArrayDeque<e> f21051n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f21052o;

    /* renamed from: p  reason: collision with root package name */
    private final int f21053p;

    /* renamed from: q  reason: collision with root package name */
    private i f21054q;

    /* renamed from: r  reason: collision with root package name */
    private final g<AudioSink.InitializationException> f21055r;

    /* renamed from: s  reason: collision with root package name */
    private final g<AudioSink.WriteException> f21056s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private AudioSink.a f21057t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private c f21058u;

    /* renamed from: v  reason: collision with root package name */
    private c f21059v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private AudioTrack f21060w;

    /* renamed from: x  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f21061x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private e f21062y;

    /* renamed from: z  reason: collision with root package name */
    private e f21063z;

    /* loaded from: classes2.dex */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        /* synthetic */ InvalidAudioTrackTimestampException(String str, a aVar) {
            this(str);
        }

        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AudioTrack f21064a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, AudioTrack audioTrack) {
            super(str);
            this.f21064a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.f21064a.flush();
                this.f21064a.release();
            } finally {
                DefaultAudioSink.this.f21049l.open();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        long a(long j4);

        AudioProcessor[] b();

        t1 c(t1 t1Var);

        long d();

        boolean e(boolean z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final Format f21066a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21067b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21068c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21069d;

        /* renamed from: e  reason: collision with root package name */
        public final int f21070e;

        /* renamed from: f  reason: collision with root package name */
        public final int f21071f;

        /* renamed from: g  reason: collision with root package name */
        public final int f21072g;

        /* renamed from: h  reason: collision with root package name */
        public final int f21073h;

        /* renamed from: i  reason: collision with root package name */
        public final AudioProcessor[] f21074i;

        public c(Format format, int i4, int i10, int i11, int i12, int i13, int i14, int i15, boolean z9, AudioProcessor[] audioProcessorArr) {
            this.f21066a = format;
            this.f21067b = i4;
            this.f21068c = i10;
            this.f21069d = i11;
            this.f21070e = i12;
            this.f21071f = i13;
            this.f21072g = i14;
            this.f21074i = audioProcessorArr;
            this.f21073h = c(i15, z9);
        }

        private int c(int i4, boolean z9) {
            if (i4 != 0) {
                return i4;
            }
            int i10 = this.f21068c;
            if (i10 == 0) {
                return m(z9 ? 8.0f : 1.0f);
            } else if (i10 != 1) {
                if (i10 == 2) {
                    return l(250000L);
                }
                throw new IllegalStateException();
            } else {
                return l(DefaultAudioSink.f21031t0);
            }
        }

        private AudioTrack d(boolean z9, com.google.android.exoplayer2.audio.e eVar, int i4) {
            int i10 = z0.f27743a;
            if (i10 >= 29) {
                return f(z9, eVar, i4);
            }
            if (i10 >= 21) {
                return e(z9, eVar, i4);
            }
            return g(eVar, i4);
        }

        @RequiresApi(21)
        private AudioTrack e(boolean z9, com.google.android.exoplayer2.audio.e eVar, int i4) {
            return new AudioTrack(j(eVar, z9), DefaultAudioSink.L(this.f21070e, this.f21071f, this.f21072g), this.f21073h, 1, i4);
        }

        @RequiresApi(29)
        private AudioTrack f(boolean z9, com.google.android.exoplayer2.audio.e eVar, int i4) {
            return new AudioTrack.Builder().setAudioAttributes(j(eVar, z9)).setAudioFormat(DefaultAudioSink.L(this.f21070e, this.f21071f, this.f21072g)).setTransferMode(1).setBufferSizeInBytes(this.f21073h).setSessionId(i4).setOffloadedPlayback(this.f21068c == 1).build();
        }

        private AudioTrack g(com.google.android.exoplayer2.audio.e eVar, int i4) {
            int m02 = z0.m0(eVar.f21193c);
            if (i4 == 0) {
                return new AudioTrack(m02, this.f21070e, this.f21071f, this.f21072g, this.f21073h, 1);
            }
            return new AudioTrack(m02, this.f21070e, this.f21071f, this.f21072g, this.f21073h, 1, i4);
        }

        @RequiresApi(21)
        private static AudioAttributes j(com.google.android.exoplayer2.audio.e eVar, boolean z9) {
            if (z9) {
                return k();
            }
            return eVar.b();
        }

        @RequiresApi(21)
        private static AudioAttributes k() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        private int l(long j4) {
            int R = DefaultAudioSink.R(this.f21072g);
            if (this.f21072g == 5) {
                R *= 2;
            }
            return (int) ((j4 * R) / 1000000);
        }

        private int m(float f10) {
            int minBufferSize = AudioTrack.getMinBufferSize(this.f21070e, this.f21071f, this.f21072g);
            com.google.android.exoplayer2.util.a.i(minBufferSize != -2);
            int t9 = z0.t(minBufferSize * 4, ((int) h(250000L)) * this.f21069d, Math.max(minBufferSize, ((int) h(DefaultAudioSink.f21029r0)) * this.f21069d));
            return f10 != 1.0f ? Math.round(t9 * f10) : t9;
        }

        public AudioTrack a(boolean z9, com.google.android.exoplayer2.audio.e eVar, int i4) throws AudioSink.InitializationException {
            try {
                AudioTrack d4 = d(z9, eVar, i4);
                int state = d4.getState();
                if (state == 1) {
                    return d4;
                }
                try {
                    d4.release();
                } catch (Exception unused) {
                }
                throw new AudioSink.InitializationException(state, this.f21070e, this.f21071f, this.f21073h, this.f21066a, o(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e4) {
                throw new AudioSink.InitializationException(0, this.f21070e, this.f21071f, this.f21073h, this.f21066a, o(), e4);
            }
        }

        public boolean b(c cVar) {
            return cVar.f21068c == this.f21068c && cVar.f21072g == this.f21072g && cVar.f21070e == this.f21070e && cVar.f21071f == this.f21071f && cVar.f21069d == this.f21069d;
        }

        public long h(long j4) {
            return (j4 * this.f21070e) / 1000000;
        }

        public long i(long j4) {
            return (j4 * 1000000) / this.f21070e;
        }

        public long n(long j4) {
            return (j4 * 1000000) / this.f21066a.sampleRate;
        }

        public boolean o() {
            return this.f21068c == 1;
        }
    }

    /* loaded from: classes2.dex */
    public static class d implements b {

        /* renamed from: a  reason: collision with root package name */
        private final AudioProcessor[] f21075a;

        /* renamed from: b  reason: collision with root package name */
        private final j0 f21076b;

        /* renamed from: c  reason: collision with root package name */
        private final l0 f21077c;

        public d(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new j0(), new l0());
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public long a(long j4) {
            return this.f21077c.g(j4);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public AudioProcessor[] b() {
            return this.f21075a;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public t1 c(t1 t1Var) {
            this.f21077c.j(t1Var.f25300a);
            this.f21077c.i(t1Var.f25301b);
            return t1Var;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public long d() {
            return this.f21076b.p();
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.b
        public boolean e(boolean z9) {
            this.f21076b.v(z9);
            return z9;
        }

        public d(AudioProcessor[] audioProcessorArr, j0 j0Var, l0 l0Var) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f21075a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f21076b = j0Var;
            this.f21077c = l0Var;
            audioProcessorArr2[audioProcessorArr.length] = j0Var;
            audioProcessorArr2[audioProcessorArr.length + 1] = l0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final t1 f21078a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f21079b;

        /* renamed from: c  reason: collision with root package name */
        public final long f21080c;

        /* renamed from: d  reason: collision with root package name */
        public final long f21081d;

        /* synthetic */ e(t1 t1Var, boolean z9, long j4, long j10, a aVar) {
            this(t1Var, z9, j4, j10);
        }

        private e(t1 t1Var, boolean z9, long j4, long j10) {
            this.f21078a = t1Var;
            this.f21079b = z9;
            this.f21080c = j4;
            this.f21081d = j10;
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface f {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g<T extends Exception> {

        /* renamed from: a  reason: collision with root package name */
        private final long f21082a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private T f21083b;

        /* renamed from: c  reason: collision with root package name */
        private long f21084c;

        public g(long j4) {
            this.f21082a = j4;
        }

        public void a() {
            this.f21083b = null;
        }

        public void b(T t9) throws Exception {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f21083b == null) {
                this.f21083b = t9;
                this.f21084c = this.f21082a + elapsedRealtime;
            }
            if (elapsedRealtime >= this.f21084c) {
                T t10 = this.f21083b;
                if (t10 != t9) {
                    t10.addSuppressed(t9);
                }
                T t11 = this.f21083b;
                a();
                throw t11;
            }
        }
    }

    /* loaded from: classes2.dex */
    private final class h implements x.a {
        private h() {
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void a(int i4, long j4) {
            if (DefaultAudioSink.this.f21057t != null) {
                DefaultAudioSink.this.f21057t.e(i4, j4, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f21039b0);
            }
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void b(long j4) {
            if (DefaultAudioSink.this.f21057t != null) {
                DefaultAudioSink.this.f21057t.b(j4);
            }
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void c(long j4) {
            StringBuilder sb = new StringBuilder(61);
            sb.append("Ignoring impossibly large audio latency: ");
            sb.append(j4);
            com.google.android.exoplayer2.util.w.n(DefaultAudioSink.f21036y0, sb.toString());
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void d(long j4, long j10, long j11, long j12) {
            long T = DefaultAudioSink.this.T();
            long U = DefaultAudioSink.this.U();
            StringBuilder sb = new StringBuilder(182);
            sb.append("Spurious audio timestamp (frame position mismatch): ");
            sb.append(j4);
            sb.append(", ");
            sb.append(j10);
            sb.append(", ");
            sb.append(j11);
            sb.append(", ");
            sb.append(j12);
            sb.append(", ");
            sb.append(T);
            sb.append(", ");
            sb.append(U);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.f21037z0) {
                com.google.android.exoplayer2.util.w.n(DefaultAudioSink.f21036y0, sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2, null);
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void e(long j4, long j10, long j11, long j12) {
            long T = DefaultAudioSink.this.T();
            long U = DefaultAudioSink.this.U();
            StringBuilder sb = new StringBuilder((int) com.facebook.imagepipeline.common.e.f12205e);
            sb.append("Spurious audio timestamp (system clock mismatch): ");
            sb.append(j4);
            sb.append(", ");
            sb.append(j10);
            sb.append(", ");
            sb.append(j11);
            sb.append(", ");
            sb.append(j12);
            sb.append(", ");
            sb.append(T);
            sb.append(", ");
            sb.append(U);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.f21037z0) {
                com.google.android.exoplayer2.util.w.n(DefaultAudioSink.f21036y0, sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2, null);
        }

        /* synthetic */ h(DefaultAudioSink defaultAudioSink, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(29)
    /* loaded from: classes2.dex */
    public final class i {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f21086a = new Handler();

        /* renamed from: b  reason: collision with root package name */
        private final AudioTrack.StreamEventCallback f21087b;

        /* loaded from: classes2.dex */
        class a extends AudioTrack.StreamEventCallback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DefaultAudioSink f21089a;

            a(DefaultAudioSink defaultAudioSink) {
                this.f21089a = defaultAudioSink;
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public void onDataRequest(AudioTrack audioTrack, int i4) {
                com.google.android.exoplayer2.util.a.i(audioTrack == DefaultAudioSink.this.f21060w);
                if (DefaultAudioSink.this.f21057t == null || !DefaultAudioSink.this.W) {
                    return;
                }
                DefaultAudioSink.this.f21057t.g();
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public void onTearDown(@NonNull AudioTrack audioTrack) {
                com.google.android.exoplayer2.util.a.i(audioTrack == DefaultAudioSink.this.f21060w);
                if (DefaultAudioSink.this.f21057t == null || !DefaultAudioSink.this.W) {
                    return;
                }
                DefaultAudioSink.this.f21057t.g();
            }
        }

        public i() {
            this.f21087b = new a(DefaultAudioSink.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.f21086a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new androidx.emoji2.text.a(handler), this.f21087b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f21087b);
            this.f21086a.removeCallbacksAndMessages(null);
        }
    }

    public DefaultAudioSink(@Nullable com.google.android.exoplayer2.audio.f fVar, AudioProcessor[] audioProcessorArr) {
        this(fVar, audioProcessorArr, false);
    }

    private void D(long j4) {
        t1 t1Var;
        if (m0()) {
            t1Var = this.f21043f.c(M());
        } else {
            t1Var = t1.f25296d;
        }
        t1 t1Var2 = t1Var;
        boolean e4 = m0() ? this.f21043f.e(F()) : false;
        this.f21051n.add(new e(t1Var2, e4, Math.max(0L, j4), this.f21059v.i(U()), null));
        l0();
        AudioSink.a aVar = this.f21057t;
        if (aVar != null) {
            aVar.a(e4);
        }
    }

    private long E(long j4) {
        while (!this.f21051n.isEmpty() && j4 >= this.f21051n.getFirst().f21081d) {
            this.f21063z = this.f21051n.remove();
        }
        e eVar = this.f21063z;
        long j10 = j4 - eVar.f21081d;
        if (eVar.f21078a.equals(t1.f25296d)) {
            return this.f21063z.f21080c + j10;
        }
        if (this.f21051n.isEmpty()) {
            return this.f21063z.f21080c + this.f21043f.a(j10);
        }
        e first = this.f21051n.getFirst();
        return first.f21080c - z0.g0(first.f21081d - j4, this.f21063z.f21078a.f25300a);
    }

    private long G(long j4) {
        return j4 + this.f21059v.i(this.f21043f.d());
    }

    private AudioTrack H() throws AudioSink.InitializationException {
        try {
            return ((c) com.google.android.exoplayer2.util.a.g(this.f21059v)).a(this.f21038a0, this.f21061x, this.Y);
        } catch (AudioSink.InitializationException e4) {
            b0();
            AudioSink.a aVar = this.f21057t;
            if (aVar != null) {
                aVar.d(e4);
            }
            throw e4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean I() throws com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            r9 = this;
            int r0 = r9.T
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto Lb
            r9.T = r3
        L9:
            r0 = 1
            goto Lc
        Lb:
            r0 = 0
        Lc:
            int r4 = r9.T
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r9.M
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.f()
        L1f:
            r9.d0(r7)
            boolean r0 = r4.b()
            if (r0 != 0) goto L29
            return r3
        L29:
            int r0 = r9.T
            int r0 = r0 + r2
            r9.T = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.Q
            if (r0 == 0) goto L3b
            r9.p0(r0, r7)
            java.nio.ByteBuffer r0 = r9.Q
            if (r0 == 0) goto L3b
            return r3
        L3b:
            r9.T = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.I():boolean");
    }

    private void K() {
        int i4 = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.M;
            if (i4 >= audioProcessorArr.length) {
                return;
            }
            AudioProcessor audioProcessor = audioProcessorArr[i4];
            audioProcessor.flush();
            this.N[i4] = audioProcessor.c();
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    public static AudioFormat L(int i4, int i10, int i11) {
        return new AudioFormat.Builder().setSampleRate(i4).setChannelMask(i10).setEncoding(i11).build();
    }

    private t1 M() {
        return S().f21078a;
    }

    private static int N(int i4) {
        int i10 = z0.f27743a;
        if (i10 <= 28) {
            if (i4 == 7) {
                i4 = 8;
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                i4 = 6;
            }
        }
        if (i10 <= 26 && "fugu".equals(z0.f27744b) && i4 == 1) {
            i4 = 2;
        }
        return z0.N(i4);
    }

    @Nullable
    private static Pair<Integer, Integer> O(Format format, @Nullable com.google.android.exoplayer2.audio.f fVar) {
        if (fVar == null) {
            return null;
        }
        int f10 = com.google.android.exoplayer2.util.a0.f((String) com.google.android.exoplayer2.util.a.g(format.sampleMimeType), format.codecs);
        int i4 = 6;
        if (f10 == 5 || f10 == 6 || f10 == 18 || f10 == 17 || f10 == 7 || f10 == 8 || f10 == 14) {
            if (f10 == 18 && !fVar.g(18)) {
                f10 = 6;
            } else if (f10 == 8 && !fVar.g(8)) {
                f10 = 7;
            }
            if (fVar.g(f10)) {
                if (f10 == 18) {
                    if (z0.f27743a >= 29 && (i4 = Q(18, format.sampleRate)) == 0) {
                        com.google.android.exoplayer2.util.w.n(f21036y0, "E-AC3 JOC encoding supported but no channel count supported");
                        return null;
                    }
                } else {
                    i4 = format.channelCount;
                    if (i4 > fVar.f()) {
                        return null;
                    }
                }
                int N = N(i4);
                if (N == 0) {
                    return null;
                }
                return Pair.create(Integer.valueOf(f10), Integer.valueOf(N));
            }
            return null;
        }
        return null;
    }

    private static int P(int i4, ByteBuffer byteBuffer) {
        switch (i4) {
            case 5:
            case 6:
            case 18:
                return com.google.android.exoplayer2.audio.b.d(byteBuffer);
            case 7:
            case 8:
                return c0.e(byteBuffer);
            case 9:
                int m9 = g0.m(z0.P(byteBuffer, byteBuffer.position()));
                if (m9 != -1) {
                    return m9;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                StringBuilder sb = new StringBuilder(38);
                sb.append("Unexpected audio encoding: ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            case 14:
                int a10 = com.google.android.exoplayer2.audio.b.a(byteBuffer);
                if (a10 == -1) {
                    return 0;
                }
                return com.google.android.exoplayer2.audio.b.h(byteBuffer, a10) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return com.google.android.exoplayer2.audio.c.c(byteBuffer);
        }
    }

    @RequiresApi(29)
    private static int Q(int i4, int i10) {
        AudioAttributes build = new AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        for (int i11 = 8; i11 > 0; i11--) {
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i4).setSampleRate(i10).setChannelMask(z0.N(i11)).build(), build)) {
                return i11;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int R(int i4) {
        switch (i4) {
            case 5:
                return com.google.android.exoplayer2.audio.b.f21119b;
            case 6:
            case 18:
                return com.google.android.exoplayer2.audio.b.f21120c;
            case 7:
                return c0.f21169a;
            case 8:
                return c0.f21170b;
            case 9:
                return g0.f21226b;
            case 10:
                return com.google.android.exoplayer2.audio.a.f21096f;
            case 11:
                return com.google.android.exoplayer2.audio.a.f21097g;
            case 12:
                return com.google.android.exoplayer2.audio.a.f21098h;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return com.google.android.exoplayer2.audio.b.f21121d;
            case 15:
                return 8000;
            case 16:
                return com.google.android.exoplayer2.audio.a.f21099i;
            case 17:
                return com.google.android.exoplayer2.audio.c.f21159c;
        }
    }

    private e S() {
        e eVar = this.f21062y;
        if (eVar != null) {
            return eVar;
        }
        if (!this.f21051n.isEmpty()) {
            return this.f21051n.getLast();
        }
        return this.f21063z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long T() {
        c cVar = this.f21059v;
        if (cVar.f21068c == 0) {
            return this.D / cVar.f21067b;
        }
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long U() {
        c cVar = this.f21059v;
        if (cVar.f21068c == 0) {
            return this.F / cVar.f21069d;
        }
        return this.G;
    }

    private void V() throws AudioSink.InitializationException {
        this.f21049l.block();
        AudioTrack H = H();
        this.f21060w = H;
        if (Z(H)) {
            e0(this.f21060w);
            AudioTrack audioTrack = this.f21060w;
            Format format = this.f21059v.f21066a;
            audioTrack.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
        }
        this.Y = this.f21060w.getAudioSessionId();
        x xVar = this.f21050m;
        AudioTrack audioTrack2 = this.f21060w;
        c cVar = this.f21059v;
        xVar.t(audioTrack2, cVar.f21068c == 2, cVar.f21072g, cVar.f21069d, cVar.f21073h);
        i0();
        int i4 = this.Z.f21416a;
        if (i4 != 0) {
            this.f21060w.attachAuxEffect(i4);
            this.f21060w.setAuxEffectSendLevel(this.Z.f21417b);
        }
        this.J = true;
    }

    private static boolean W(int i4) {
        return (z0.f27743a >= 24 && i4 == -6) || i4 == f21034w0;
    }

    private boolean X() {
        return this.f21060w != null;
    }

    private static boolean Y() {
        return z0.f27743a >= 30 && z0.f27746d.startsWith("Pixel");
    }

    private static boolean Z(AudioTrack audioTrack) {
        return z0.f27743a >= 29 && audioTrack.isOffloadedPlayback();
    }

    private static boolean a0(Format format, @Nullable com.google.android.exoplayer2.audio.f fVar) {
        return O(format, fVar) != null;
    }

    private void b0() {
        if (this.f21059v.o()) {
            this.f21040c0 = true;
        }
    }

    private void c0() {
        if (this.V) {
            return;
        }
        this.V = true;
        this.f21050m.h(U());
        this.f21060w.stop();
        this.C = 0;
    }

    private void d0(long j4) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.M.length;
        int i4 = length;
        while (i4 >= 0) {
            if (i4 > 0) {
                byteBuffer = this.N[i4 - 1];
            } else {
                byteBuffer = this.O;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f21006a;
                }
            }
            if (i4 == length) {
                p0(byteBuffer, j4);
            } else {
                AudioProcessor audioProcessor = this.M[i4];
                if (i4 > this.T) {
                    audioProcessor.d(byteBuffer);
                }
                ByteBuffer c10 = audioProcessor.c();
                this.N[i4] = c10;
                if (c10.hasRemaining()) {
                    i4++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i4--;
        }
    }

    @RequiresApi(29)
    private void e0(AudioTrack audioTrack) {
        if (this.f21054q == null) {
            this.f21054q = new i();
        }
        this.f21054q.a(audioTrack);
    }

    private void f0() {
        this.D = 0L;
        this.E = 0L;
        this.F = 0L;
        this.G = 0L;
        this.f21041d0 = false;
        this.H = 0;
        this.f21063z = new e(M(), F(), 0L, 0L, null);
        this.K = 0L;
        this.f21062y = null;
        this.f21051n.clear();
        this.O = null;
        this.P = 0;
        this.Q = null;
        this.V = false;
        this.U = false;
        this.T = -1;
        this.B = null;
        this.C = 0;
        this.f21046i.n();
        K();
    }

    private void g0(t1 t1Var, boolean z9) {
        e S = S();
        if (t1Var.equals(S.f21078a) && z9 == S.f21079b) {
            return;
        }
        e eVar = new e(t1Var, z9, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b, null);
        if (X()) {
            this.f21062y = eVar;
        } else {
            this.f21063z = eVar;
        }
    }

    @RequiresApi(23)
    private void h0(t1 t1Var) {
        if (X()) {
            try {
                this.f21060w.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(t1Var.f25300a).setPitch(t1Var.f25301b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e4) {
                com.google.android.exoplayer2.util.w.o(f21036y0, "Failed to set playback params", e4);
            }
            t1Var = new t1(this.f21060w.getPlaybackParams().getSpeed(), this.f21060w.getPlaybackParams().getPitch());
            this.f21050m.u(t1Var.f25300a);
        }
        this.A = t1Var;
    }

    private void i0() {
        if (X()) {
            if (z0.f27743a >= 21) {
                j0(this.f21060w, this.L);
            } else {
                k0(this.f21060w, this.L);
            }
        }
    }

    @RequiresApi(21)
    private static void j0(AudioTrack audioTrack, float f10) {
        audioTrack.setVolume(f10);
    }

    private static void k0(AudioTrack audioTrack, float f10) {
        audioTrack.setStereoVolume(f10, f10);
    }

    private void l0() {
        AudioProcessor[] audioProcessorArr = this.f21059v.f21074i;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.a()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.M = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.N = new ByteBuffer[size];
        K();
    }

    private boolean m0() {
        return (this.f21038a0 || !com.google.android.exoplayer2.util.a0.I.equals(this.f21059v.f21066a.sampleMimeType) || n0(this.f21059v.f21066a.pcmEncoding)) ? false : true;
    }

    private boolean n0(int i4) {
        return this.f21044g && z0.B0(i4);
    }

    private boolean o0(Format format, com.google.android.exoplayer2.audio.e eVar) {
        int f10;
        int N;
        if (z0.f27743a < 29 || this.f21053p == 0 || (f10 = com.google.android.exoplayer2.util.a0.f((String) com.google.android.exoplayer2.util.a.g(format.sampleMimeType), format.codecs)) == 0 || (N = z0.N(format.channelCount)) == 0 || !AudioManager.isOffloadedPlaybackSupported(L(format.sampleRate, N, f10), eVar.b())) {
            return false;
        }
        return ((format.encoderDelay != 0 || format.encoderPadding != 0) && (this.f21053p == 1) && !Y()) ? false : true;
    }

    private void p0(ByteBuffer byteBuffer, long j4) throws AudioSink.WriteException {
        int q02;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.Q;
            if (byteBuffer2 != null) {
                com.google.android.exoplayer2.util.a.a(byteBuffer2 == byteBuffer);
            } else {
                this.Q = byteBuffer;
                if (z0.f27743a < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.R;
                    if (bArr == null || bArr.length < remaining) {
                        this.R = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.R, 0, remaining);
                    byteBuffer.position(position);
                    this.S = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (z0.f27743a < 21) {
                int c10 = this.f21050m.c(this.F);
                if (c10 > 0) {
                    q02 = this.f21060w.write(this.R, this.S, Math.min(remaining2, c10));
                    if (q02 > 0) {
                        this.S += q02;
                        byteBuffer.position(byteBuffer.position() + q02);
                    }
                } else {
                    q02 = 0;
                }
            } else if (this.f21038a0) {
                com.google.android.exoplayer2.util.a.i(j4 != com.google.android.exoplayer2.i.f23649b);
                q02 = r0(this.f21060w, byteBuffer, remaining2, j4);
            } else {
                q02 = q0(this.f21060w, byteBuffer, remaining2);
            }
            this.f21039b0 = SystemClock.elapsedRealtime();
            if (q02 < 0) {
                boolean W = W(q02);
                if (W) {
                    b0();
                }
                AudioSink.WriteException writeException = new AudioSink.WriteException(q02, this.f21059v.f21066a, W);
                AudioSink.a aVar = this.f21057t;
                if (aVar != null) {
                    aVar.d(writeException);
                }
                if (!writeException.isRecoverable) {
                    this.f21056s.b(writeException);
                    return;
                }
                throw writeException;
            }
            this.f21056s.a();
            if (Z(this.f21060w)) {
                long j10 = this.G;
                if (j10 > 0) {
                    this.f21041d0 = false;
                }
                if (this.W && this.f21057t != null && q02 < remaining2 && !this.f21041d0) {
                    this.f21057t.c(this.f21050m.e(j10));
                }
            }
            int i4 = this.f21059v.f21068c;
            if (i4 == 0) {
                this.F += q02;
            }
            if (q02 == remaining2) {
                if (i4 != 0) {
                    com.google.android.exoplayer2.util.a.i(byteBuffer == this.O);
                    this.G += this.H * this.P;
                }
                this.Q = null;
            }
        }
    }

    @RequiresApi(21)
    private static int q0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i4) {
        return audioTrack.write(byteBuffer, i4, 1);
    }

    @RequiresApi(21)
    private int r0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i4, long j4) {
        if (z0.f27743a >= 26) {
            return audioTrack.write(byteBuffer, i4, 1, j4 * 1000);
        }
        if (this.B == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.B = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.B.putInt(1431633921);
        }
        if (this.C == 0) {
            this.B.putInt(4, i4);
            this.B.putLong(8, j4 * 1000);
            this.B.position(0);
            this.C = i4;
        }
        int remaining = this.B.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.B, remaining, 1);
            if (write < 0) {
                this.C = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int q02 = q0(audioTrack, byteBuffer, i4);
        if (q02 < 0) {
            this.C = 0;
            return q02;
        }
        this.C -= q02;
        return q02;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean F() {
        return S().f21079b;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void J(boolean z9) {
        g0(M(), z9);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean a(Format format) {
        return m(format) != 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean b() {
        return !X() || (this.U && !c());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean c() {
        return X() && this.f21050m.i(U());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void d() {
        this.W = true;
        if (X()) {
            this.f21050m.v();
            this.f21060w.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public t1 e() {
        if (this.f21052o) {
            return this.A;
        }
        return M();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void f(float f10) {
        if (this.L != f10) {
            this.L = f10;
            i0();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        if (X()) {
            f0();
            if (this.f21050m.j()) {
                this.f21060w.pause();
            }
            if (Z(this.f21060w)) {
                ((i) com.google.android.exoplayer2.util.a.g(this.f21054q)).b(this.f21060w);
            }
            AudioTrack audioTrack = this.f21060w;
            this.f21060w = null;
            if (z0.f27743a < 21 && !this.X) {
                this.Y = 0;
            }
            c cVar = this.f21058u;
            if (cVar != null) {
                this.f21059v = cVar;
                this.f21058u = null;
            }
            this.f21050m.r();
            this.f21049l.close();
            new a("ExoPlayer:AudioTrackReleaseThread", audioTrack).start();
        }
        this.f21056s.a();
        this.f21055r.a();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void g(t1 t1Var) {
        t1 t1Var2 = new t1(z0.s(t1Var.f25300a, 0.1f, 8.0f), z0.s(t1Var.f25301b, 0.1f, 8.0f));
        if (this.f21052o && z0.f27743a >= 23) {
            h0(t1Var2);
        } else {
            g0(t1Var2, F());
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void h() {
        if (this.f21038a0) {
            this.f21038a0 = false;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void i(com.google.android.exoplayer2.audio.e eVar) {
        if (this.f21061x.equals(eVar)) {
            return;
        }
        this.f21061x = eVar;
        if (this.f21038a0) {
            return;
        }
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean j(ByteBuffer byteBuffer, long j4, int i4) throws AudioSink.InitializationException, AudioSink.WriteException {
        ByteBuffer byteBuffer2 = this.O;
        com.google.android.exoplayer2.util.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f21058u != null) {
            if (!I()) {
                return false;
            }
            if (!this.f21058u.b(this.f21059v)) {
                c0();
                if (c()) {
                    return false;
                }
                flush();
            } else {
                this.f21059v = this.f21058u;
                this.f21058u = null;
                if (Z(this.f21060w)) {
                    this.f21060w.setOffloadEndOfStream();
                    AudioTrack audioTrack = this.f21060w;
                    Format format = this.f21059v.f21066a;
                    audioTrack.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
                    this.f21041d0 = true;
                }
            }
            D(j4);
        }
        if (!X()) {
            try {
                V();
            } catch (AudioSink.InitializationException e4) {
                if (!e4.isRecoverable) {
                    this.f21055r.b(e4);
                    return false;
                }
                throw e4;
            }
        }
        this.f21055r.a();
        if (this.J) {
            this.K = Math.max(0L, j4);
            this.I = false;
            this.J = false;
            if (this.f21052o && z0.f27743a >= 23) {
                h0(this.A);
            }
            D(j4);
            if (this.W) {
                d();
            }
        }
        if (this.f21050m.l(U())) {
            if (this.O == null) {
                com.google.android.exoplayer2.util.a.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
                if (!byteBuffer.hasRemaining()) {
                    return true;
                }
                c cVar = this.f21059v;
                if (cVar.f21068c != 0 && this.H == 0) {
                    int P = P(cVar.f21072g, byteBuffer);
                    this.H = P;
                    if (P == 0) {
                        return true;
                    }
                }
                if (this.f21062y != null) {
                    if (!I()) {
                        return false;
                    }
                    D(j4);
                    this.f21062y = null;
                }
                long n9 = this.K + this.f21059v.n(T() - this.f21046i.m());
                if (!this.I && Math.abs(n9 - j4) > 200000) {
                    this.f21057t.d(new AudioSink.UnexpectedDiscontinuityException(j4, n9));
                    this.I = true;
                }
                if (this.I) {
                    if (!I()) {
                        return false;
                    }
                    long j10 = j4 - n9;
                    this.K += j10;
                    this.I = false;
                    D(j4);
                    AudioSink.a aVar = this.f21057t;
                    if (aVar != null && j10 != 0) {
                        aVar.f();
                    }
                }
                if (this.f21059v.f21068c == 0) {
                    this.D += byteBuffer.remaining();
                } else {
                    this.E += this.H * i4;
                }
                this.O = byteBuffer;
                this.P = i4;
            }
            d0(j4);
            if (!this.O.hasRemaining()) {
                this.O = null;
                this.P = 0;
                return true;
            } else if (this.f21050m.k(U())) {
                com.google.android.exoplayer2.util.w.n(f21036y0, "Resetting stalled audio track");
                flush();
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void k(AudioSink.a aVar) {
        this.f21057t = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void l(int i4) {
        if (this.Y != i4) {
            this.Y = i4;
            this.X = i4 != 0;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public int m(Format format) {
        if (!com.google.android.exoplayer2.util.a0.I.equals(format.sampleMimeType)) {
            return ((this.f21040c0 || !o0(format, this.f21061x)) && !a0(format, this.f21042e)) ? 0 : 2;
        } else if (!z0.C0(format.pcmEncoding)) {
            int i4 = format.pcmEncoding;
            StringBuilder sb = new StringBuilder(33);
            sb.append("Invalid PCM encoding: ");
            sb.append(i4);
            com.google.android.exoplayer2.util.w.n(f21036y0, sb.toString());
            return 0;
        } else {
            int i10 = format.pcmEncoding;
            return (i10 == 2 || (this.f21044g && i10 == 4)) ? 2 : 1;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void n() {
        if (z0.f27743a < 25) {
            flush();
            return;
        }
        this.f21056s.a();
        this.f21055r.a();
        if (X()) {
            f0();
            if (this.f21050m.j()) {
                this.f21060w.pause();
            }
            this.f21060w.flush();
            this.f21050m.r();
            x xVar = this.f21050m;
            AudioTrack audioTrack = this.f21060w;
            c cVar = this.f21059v;
            xVar.t(audioTrack, cVar.f21068c == 2, cVar.f21072g, cVar.f21069d, cVar.f21073h);
            this.J = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void o() throws AudioSink.WriteException {
        if (!this.U && X() && I()) {
            c0();
            this.U = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public long p(boolean z9) {
        if (!X() || this.J) {
            return Long.MIN_VALUE;
        }
        return G(E(Math.min(this.f21050m.d(z9), this.f21059v.i(U()))));
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.W = false;
        if (X() && this.f21050m.q()) {
            this.f21060w.pause();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void q() {
        this.I = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void r() {
        com.google.android.exoplayer2.util.a.i(z0.f27743a >= 21);
        com.google.android.exoplayer2.util.a.i(this.X);
        if (this.f21038a0) {
            return;
        }
        this.f21038a0 = true;
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void reset() {
        flush();
        for (AudioProcessor audioProcessor : this.f21047j) {
            audioProcessor.reset();
        }
        for (AudioProcessor audioProcessor2 : this.f21048k) {
            audioProcessor2.reset();
        }
        this.W = false;
        this.f21040c0 = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void s(Format format, int i4, @Nullable int[] iArr) throws AudioSink.ConfigurationException {
        AudioProcessor[] audioProcessorArr;
        int intValue;
        int i10;
        int i11;
        int intValue2;
        int i12;
        int i13;
        AudioProcessor[] audioProcessorArr2;
        int[] iArr2;
        if (com.google.android.exoplayer2.util.a0.I.equals(format.sampleMimeType)) {
            com.google.android.exoplayer2.util.a.a(z0.C0(format.pcmEncoding));
            i10 = z0.k0(format.pcmEncoding, format.channelCount);
            if (n0(format.pcmEncoding)) {
                audioProcessorArr2 = this.f21048k;
            } else {
                audioProcessorArr2 = this.f21047j;
            }
            this.f21046i.o(format.encoderDelay, format.encoderPadding);
            if (z0.f27743a < 21 && format.channelCount == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i14 = 0; i14 < 6; i14++) {
                    iArr2[i14] = i14;
                }
            } else {
                iArr2 = iArr;
            }
            this.f21045h.m(iArr2);
            AudioProcessor.a aVar = new AudioProcessor.a(format.sampleRate, format.channelCount, format.pcmEncoding);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    AudioProcessor.a e4 = audioProcessor.e(aVar);
                    if (audioProcessor.a()) {
                        aVar = e4;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e10) {
                    throw new AudioSink.ConfigurationException(e10, format);
                }
            }
            int i15 = aVar.f21010c;
            i12 = aVar.f21008a;
            intValue2 = z0.N(aVar.f21009b);
            audioProcessorArr = audioProcessorArr2;
            intValue = i15;
            i11 = z0.k0(i15, aVar.f21009b);
            i13 = 0;
        } else {
            AudioProcessor[] audioProcessorArr3 = new AudioProcessor[0];
            int i16 = format.sampleRate;
            if (o0(format, this.f21061x)) {
                audioProcessorArr = audioProcessorArr3;
                intValue = com.google.android.exoplayer2.util.a0.f((String) com.google.android.exoplayer2.util.a.g(format.sampleMimeType), format.codecs);
                intValue2 = z0.N(format.channelCount);
                i10 = -1;
                i11 = -1;
                i12 = i16;
                i13 = 1;
            } else {
                Pair<Integer, Integer> O = O(format, this.f21042e);
                if (O != null) {
                    audioProcessorArr = audioProcessorArr3;
                    intValue = ((Integer) O.first).intValue();
                    i10 = -1;
                    i11 = -1;
                    intValue2 = ((Integer) O.second).intValue();
                    i12 = i16;
                    i13 = 2;
                } else {
                    String valueOf = String.valueOf(format);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 37);
                    sb.append("Unable to configure passthrough for: ");
                    sb.append(valueOf);
                    throw new AudioSink.ConfigurationException(sb.toString(), format);
                }
            }
        }
        if (intValue == 0) {
            String valueOf2 = String.valueOf(format);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 48);
            sb2.append("Invalid output encoding (mode=");
            sb2.append(i13);
            sb2.append(") for: ");
            sb2.append(valueOf2);
            throw new AudioSink.ConfigurationException(sb2.toString(), format);
        } else if (intValue2 != 0) {
            this.f21040c0 = false;
            c cVar = new c(format, i10, i13, i11, i12, intValue2, intValue, i4, this.f21052o, audioProcessorArr);
            if (X()) {
                this.f21058u = cVar;
            } else {
                this.f21059v = cVar;
            }
        } else {
            String valueOf3 = String.valueOf(format);
            StringBuilder sb3 = new StringBuilder(valueOf3.length() + 54);
            sb3.append("Invalid output channel config (mode=");
            sb3.append(i13);
            sb3.append(") for: ");
            sb3.append(valueOf3);
            throw new AudioSink.ConfigurationException(sb3.toString(), format);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void u(y yVar) {
        if (this.Z.equals(yVar)) {
            return;
        }
        int i4 = yVar.f21416a;
        float f10 = yVar.f21417b;
        AudioTrack audioTrack = this.f21060w;
        if (audioTrack != null) {
            if (this.Z.f21416a != i4) {
                audioTrack.attachAuxEffect(i4);
            }
            if (i4 != 0) {
                this.f21060w.setAuxEffectSendLevel(f10);
            }
        }
        this.Z = yVar;
    }

    public DefaultAudioSink(@Nullable com.google.android.exoplayer2.audio.f fVar, AudioProcessor[] audioProcessorArr, boolean z9) {
        this(fVar, new d(audioProcessorArr), z9, false, 0);
    }

    public DefaultAudioSink(@Nullable com.google.android.exoplayer2.audio.f fVar, b bVar, boolean z9, boolean z10, int i4) {
        this.f21042e = fVar;
        this.f21043f = (b) com.google.android.exoplayer2.util.a.g(bVar);
        int i10 = z0.f27743a;
        this.f21044g = i10 >= 21 && z9;
        this.f21052o = i10 >= 23 && z10;
        this.f21053p = i10 < 29 ? 0 : i4;
        this.f21049l = new ConditionVariable(true);
        this.f21050m = new x(new h(this, null));
        a0 a0Var = new a0();
        this.f21045h = a0Var;
        n0 n0Var = new n0();
        this.f21046i = n0Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new i0(), a0Var, n0Var);
        Collections.addAll(arrayList, bVar.b());
        this.f21047j = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f21048k = new AudioProcessor[]{new d0()};
        this.L = 1.0f;
        this.f21061x = com.google.android.exoplayer2.audio.e.f21185f;
        this.Y = 0;
        this.Z = new y(0, 0.0f);
        t1 t1Var = t1.f25296d;
        this.f21063z = new e(t1Var, false, 0L, 0L, null);
        this.A = t1Var;
        this.T = -1;
        this.M = new AudioProcessor[0];
        this.N = new ByteBuffer[0];
        this.f21051n = new ArrayDeque<>();
        this.f21055r = new g<>(100L);
        this.f21056s = new g<>(100L);
    }
}
