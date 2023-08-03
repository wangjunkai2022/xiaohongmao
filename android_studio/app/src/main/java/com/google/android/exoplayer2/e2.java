package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.z1;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: Renderer.java */
/* loaded from: classes2.dex */
public interface e2 extends z1.b {

    /* renamed from: c0  reason: collision with root package name */
    public static final int f21826c0 = 1;

    /* renamed from: d0  reason: collision with root package name */
    public static final int f21827d0 = 2;

    /* renamed from: e0  reason: collision with root package name */
    public static final int f21828e0 = 3;

    /* renamed from: f0  reason: collision with root package name */
    public static final int f21829f0 = 4;

    /* renamed from: g0  reason: collision with root package name */
    public static final int f21830g0 = 5;

    /* renamed from: h0  reason: collision with root package name */
    public static final int f21831h0 = 6;

    /* renamed from: i0  reason: collision with root package name */
    public static final int f21832i0 = 7;

    /* renamed from: j0  reason: collision with root package name */
    public static final int f21833j0 = 101;

    /* renamed from: k0  reason: collision with root package name */
    public static final int f21834k0 = 102;

    /* renamed from: l0  reason: collision with root package name */
    public static final int f21835l0 = 103;

    /* renamed from: m0  reason: collision with root package name */
    public static final int f21836m0 = 10000;
    @Deprecated

    /* renamed from: n0  reason: collision with root package name */
    public static final int f21837n0 = 1;
    @Deprecated

    /* renamed from: o0  reason: collision with root package name */
    public static final int f21838o0 = 2;
    @Deprecated

    /* renamed from: p0  reason: collision with root package name */
    public static final int f21839p0 = 1;

    /* renamed from: q0  reason: collision with root package name */
    public static final int f21840q0 = 0;

    /* renamed from: r0  reason: collision with root package name */
    public static final int f21841r0 = 1;

    /* renamed from: s0  reason: collision with root package name */
    public static final int f21842s0 = 2;

    /* compiled from: Renderer.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: Renderer.java */
    @Deprecated
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: Renderer.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a();

        void b(long j4);
    }

    boolean b();

    void c();

    boolean f();

    String getName();

    int getState();

    int getTrackType();

    void h(int i4);

    boolean i();

    void j();

    void k() throws IOException;

    boolean l();

    void m(Format[] formatArr, com.google.android.exoplayer2.source.x0 x0Var, long j4, long j10) throws ExoPlaybackException;

    g2 n();

    void p(float f10, float f11) throws ExoPlaybackException;

    void q(h2 h2Var, Format[] formatArr, com.google.android.exoplayer2.source.x0 x0Var, long j4, boolean z9, boolean z10, long j10, long j11) throws ExoPlaybackException;

    void reset();

    void s(long j4, long j10) throws ExoPlaybackException;

    void start() throws ExoPlaybackException;

    void stop();

    @Nullable
    com.google.android.exoplayer2.source.x0 t();

    long u();

    void v(long j4) throws ExoPlaybackException;

    @Nullable
    com.google.android.exoplayer2.util.y w();
}
