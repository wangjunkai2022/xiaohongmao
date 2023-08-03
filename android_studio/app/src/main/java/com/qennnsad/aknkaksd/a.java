package com.qennnsad.aknkaksd;

import dagger.internal.j;
import dagger.internal.r;

/* compiled from: BaseBeautyApplication_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class a implements d6.g<BaseBeautyApplication> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<x4.a> f47677a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f47678b;

    public a(u7.c<x4.a> cVar, u7.c<g5.a> cVar2) {
        this.f47677a = cVar;
        this.f47678b = cVar2;
    }

    public static d6.g<BaseBeautyApplication> b(u7.c<x4.a> cVar, u7.c<g5.a> cVar2) {
        return new a(cVar, cVar2);
    }

    @j("com.qennnsad.aknkaksd.BaseBeautyApplication.analytics")
    public static void c(BaseBeautyApplication baseBeautyApplication, x4.a aVar) {
        baseBeautyApplication.analytics = aVar;
    }

    @j("com.qennnsad.aknkaksd.BaseBeautyApplication.localDataManager")
    public static void d(BaseBeautyApplication baseBeautyApplication, g5.a aVar) {
        baseBeautyApplication.localDataManager = aVar;
    }

    @Override // d6.g
    /* renamed from: e */
    public void a(BaseBeautyApplication baseBeautyApplication) {
        c(baseBeautyApplication, this.f47677a.get());
        d(baseBeautyApplication, this.f47678b.get());
    }
}
