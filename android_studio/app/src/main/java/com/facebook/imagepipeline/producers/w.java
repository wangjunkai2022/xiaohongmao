package com.facebook.imagepipeline.producers;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: FetchState.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private final l<com.facebook.imagepipeline.image.e> f13257a;

    /* renamed from: b  reason: collision with root package name */
    private final s0 f13258b;

    /* renamed from: c  reason: collision with root package name */
    private long f13259c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f13260d;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.common.a f13261e;

    public w(l<com.facebook.imagepipeline.image.e> consumer, s0 context) {
        this.f13257a = consumer;
        this.f13258b = context;
    }

    public l<com.facebook.imagepipeline.image.e> a() {
        return this.f13257a;
    }

    public s0 b() {
        return this.f13258b;
    }

    public String c() {
        return this.f13258b.getId();
    }

    public long d() {
        return this.f13259c;
    }

    public u0 e() {
        return this.f13258b.k();
    }

    public int f() {
        return this.f13260d;
    }

    @r7.h
    public com.facebook.imagepipeline.common.a g() {
        return this.f13261e;
    }

    public Uri h() {
        return this.f13258b.c().w();
    }

    public void i(long lastIntermediateResultTimeMs) {
        this.f13259c = lastIntermediateResultTimeMs;
    }

    public void j(int onNewResultStatusFlags) {
        this.f13260d = onNewResultStatusFlags;
    }

    public void k(@r7.h com.facebook.imagepipeline.common.a bytesRange) {
        this.f13261e = bytesRange;
    }
}
