package com.qennnsad.aknkaksd.domain.usecase.user;

import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SetUserAndStartSocketUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/p;", "", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "user", "", "a", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "b", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class p {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48455a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f48456b;

    @u7.a
    public p(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        this.f48455a = localDataManager;
        this.f48456b = wsObjectPool;
    }

    public final void a(@m8.g UserBean user) {
        Intrinsics.checkNotNullParameter(user, "user");
        this.f48455a.T(user);
        this.f48456b.c(user, this.f48455a.o(), this.f48455a.q());
    }
}
