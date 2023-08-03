package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UploadAvatarUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class t1 implements dagger.internal.h<s1> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48480a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48481b;

    public t1(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48480a = cVar;
        this.f48481b = cVar2;
    }

    public static t1 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new t1(cVar, cVar2);
    }

    public static s1 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new s1(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public s1 get() {
        return c(this.f48480a.get(), this.f48481b.get());
    }
}
