package com.facebook.imagepipeline.core;

import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.j;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.cache.v;
import com.facebook.imagepipeline.memory.e0;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Set;

/* compiled from: ImagePipelineConfigInterface.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public interface j {
    com.facebook.imagepipeline.cache.g A();

    boolean B();

    com.facebook.imagepipeline.cache.q C();

    @r7.h
    u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> D();

    com.facebook.common.memory.c E();

    @r7.h
    l0.a F();

    k G();

    f H();

    Set<q1.e> a();

    Bitmap.Config b();

    com.facebook.common.internal.m<Boolean> c();

    l0 d();

    @r7.h
    u<com.facebook.cache.common.c, PooledByteBuffer> e();

    com.facebook.cache.disk.c f();

    @r7.h
    com.facebook.imagepipeline.bitmaps.f g();

    Context getContext();

    Set<q1.f> h();

    u.a i();

    com.facebook.imagepipeline.decoder.d j();

    com.facebook.cache.disk.c k();

    @r7.h
    j.b<com.facebook.cache.common.c> l();

    boolean m();

    @r7.h
    com.facebook.common.executors.g n();

    @r7.h
    Integer o();

    @r7.h
    s1.d p();

    @r7.h
    com.facebook.imagepipeline.decoder.c q();

    boolean r();

    com.facebook.common.internal.m<v> s();

    @r7.h
    com.facebook.imagepipeline.decoder.b t();

    com.facebook.common.internal.m<v> u();

    e0 v();

    int w();

    g x();

    m1.a y();

    com.facebook.imagepipeline.cache.b z();
}
