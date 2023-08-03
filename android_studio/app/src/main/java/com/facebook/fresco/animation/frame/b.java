package com.facebook.fresco.animation.frame;

/* compiled from: FrameScheduler.java */
/* loaded from: classes.dex */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f11774a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f11775b = -1;

    long a(int frameNumber);

    long b(long animationTimeMs);

    int c(long animationTimeMs, long lastFrameTimeMs);

    boolean d();

    long e();
}
