package com.qennnsad.aknkaksd.presentation.module.main.profile;

import dagger.internal.r;

/* compiled from: UserProfileActivity_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class d implements d6.g<UserProfileActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f51906a;

    public d(u7.c<g5.a> cVar) {
        this.f51906a = cVar;
    }

    public static d6.g<UserProfileActivity> b(u7.c<g5.a> cVar) {
        return new d(cVar);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity.localDataManager")
    public static void c(UserProfileActivity userProfileActivity, g5.a aVar) {
        userProfileActivity.f51834k = aVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(UserProfileActivity userProfileActivity) {
        c(userProfileActivity, this.f51906a.get());
    }
}
