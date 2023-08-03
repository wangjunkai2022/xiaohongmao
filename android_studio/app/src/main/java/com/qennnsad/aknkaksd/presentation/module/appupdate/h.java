package com.qennnsad.aknkaksd.presentation.module.appupdate;

import com.qennnsad.aknkaksd.util.m1;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: UpdateViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class h implements dagger.internal.h<UpdateViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<m1> f50989a;

    public h(u7.c<m1> cVar) {
        this.f50989a = cVar;
    }

    public static h a(u7.c<m1> cVar) {
        return new h(cVar);
    }

    public static UpdateViewModel c(m1 m1Var) {
        return new UpdateViewModel(m1Var);
    }

    @Override // u7.c
    /* renamed from: b */
    public UpdateViewModel get() {
        return c(this.f50989a.get());
    }
}
