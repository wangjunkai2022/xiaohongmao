package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import r7.h;

/* compiled from: AnimatedImageResult.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final d f11836a;

    /* renamed from: b  reason: collision with root package name */
    private final int f11837b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.common.references.a<Bitmap> f11838c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private List<com.facebook.common.references.a<Bitmap>> f11839d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private t1.a f11840e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(g builder) {
        this.f11836a = (d) j.i(builder.e());
        this.f11837b = builder.d();
        this.f11838c = builder.f();
        this.f11839d = builder.c();
        this.f11840e = builder.b();
    }

    public static f b(d image) {
        return new f(image);
    }

    public static g i(d image) {
        return new g(image);
    }

    public synchronized void a() {
        com.facebook.common.references.a.k(this.f11838c);
        this.f11838c = null;
        com.facebook.common.references.a.p(this.f11839d);
        this.f11839d = null;
    }

    @h
    public t1.a c() {
        return this.f11840e;
    }

    @h
    public synchronized com.facebook.common.references.a<Bitmap> d(int index) {
        List<com.facebook.common.references.a<Bitmap>> list = this.f11839d;
        if (list != null) {
            return com.facebook.common.references.a.h(list.get(index));
        }
        return null;
    }

    public int e() {
        return this.f11837b;
    }

    public d f() {
        return this.f11836a;
    }

    @h
    public synchronized com.facebook.common.references.a<Bitmap> g() {
        return com.facebook.common.references.a.h(this.f11838c);
    }

    public synchronized boolean h(int index) {
        boolean z9;
        List<com.facebook.common.references.a<Bitmap>> list = this.f11839d;
        if (list != null) {
            z9 = list.get(index) != null;
        }
        return z9;
    }

    private f(d image) {
        this.f11836a = (d) j.i(image);
        this.f11837b = 0;
    }
}
