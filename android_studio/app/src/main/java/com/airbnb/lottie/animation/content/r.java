package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import com.airbnb.lottie.animation.keyframe.a;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.List;

/* compiled from: ShapeContent.java */
/* loaded from: classes.dex */
public class r implements n, a.InterfaceC0031a {

    /* renamed from: b  reason: collision with root package name */
    private final String f4184b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4185c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.h f4186d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Path> f4187e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f4188f;

    /* renamed from: a  reason: collision with root package name */
    private final Path f4183a = new Path();

    /* renamed from: g  reason: collision with root package name */
    private b f4189g = new b();

    public r(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.k kVar) {
        this.f4184b = kVar.b();
        this.f4185c = kVar.d();
        this.f4186d = hVar;
        com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.h, Path> a10 = kVar.c().a();
        this.f4187e = a10;
        aVar.h(a10);
        a10.a(this);
    }

    private void c() {
        this.f4188f = false;
        this.f4186d.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        c();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            c cVar = list.get(i4);
            if (cVar instanceof t) {
                t tVar = (t) cVar;
                if (tVar.i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f4189g.a(tVar);
                    tVar.c(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4184b;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        if (this.f4188f) {
            return this.f4183a;
        }
        this.f4183a.reset();
        if (this.f4185c) {
            this.f4188f = true;
            return this.f4183a;
        }
        this.f4183a.set(this.f4187e.h());
        this.f4183a.setFillType(Path.FillType.EVEN_ODD);
        this.f4189g.b(this.f4183a);
        this.f4188f = true;
        return this.f4183a;
    }
}
