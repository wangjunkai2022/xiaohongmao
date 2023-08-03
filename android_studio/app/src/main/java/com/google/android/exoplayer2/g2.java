package com.google.android.exoplayer2;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: RendererCapabilities.java */
/* loaded from: classes2.dex */
public interface g2 {
    public static final int A0 = 16;
    public static final int B0 = 8;
    public static final int C0 = 0;
    public static final int D0 = 32;
    public static final int E0 = 32;
    public static final int F0 = 0;

    /* renamed from: t0  reason: collision with root package name */
    public static final int f23625t0 = 7;
    @Deprecated

    /* renamed from: u0  reason: collision with root package name */
    public static final int f23626u0 = 4;
    @Deprecated

    /* renamed from: v0  reason: collision with root package name */
    public static final int f23627v0 = 3;
    @Deprecated

    /* renamed from: w0  reason: collision with root package name */
    public static final int f23628w0 = 2;
    @Deprecated

    /* renamed from: x0  reason: collision with root package name */
    public static final int f23629x0 = 1;
    @Deprecated

    /* renamed from: y0  reason: collision with root package name */
    public static final int f23630y0 = 0;

    /* renamed from: z0  reason: collision with root package name */
    public static final int f23631z0 = 24;

    /* compiled from: RendererCapabilities.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: RendererCapabilities.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: RendererCapabilities.java */
    @Deprecated
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface c {
    }

    /* compiled from: RendererCapabilities.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface d {
    }

    int a(Format format) throws ExoPlaybackException;

    String getName();

    int getTrackType();

    int r() throws ExoPlaybackException;
}
