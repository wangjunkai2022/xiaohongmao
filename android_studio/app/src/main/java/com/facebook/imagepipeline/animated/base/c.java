package com.facebook.imagepipeline.animated.base;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: AnimatedDrawableOptionsBuilder.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private boolean f11831a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11832b = true;

    /* renamed from: c  reason: collision with root package name */
    private int f11833c = -1;

    /* renamed from: d  reason: collision with root package name */
    private boolean f11834d;

    public b a() {
        return new b(this);
    }

    public boolean b() {
        return this.f11832b;
    }

    public boolean c() {
        return this.f11834d;
    }

    public boolean d() {
        return this.f11831a;
    }

    public int e() {
        return this.f11833c;
    }

    public c f(boolean allowPrefetching) {
        this.f11832b = allowPrefetching;
        return this;
    }

    public c g(boolean enableDebugging) {
        this.f11834d = enableDebugging;
        return this;
    }

    public c h(boolean forceKeepAllFramesInMemory) {
        this.f11831a = forceKeepAllFramesInMemory;
        return this;
    }

    public c i(int maximumBytes) {
        this.f11833c = maximumBytes;
        return this;
    }
}
