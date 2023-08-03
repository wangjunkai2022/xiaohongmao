package com.qennnsad.aknkaksd.domain.usecase.user;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ClearCurrentUserAndReleaseSocketUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0003\u001a\u00020\u0002H\u0086\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/a;", "", "", "a", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "b", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48364a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f48365b;

    @u7.a
    public a(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        this.f48364a = localDataManager;
        this.f48365b = wsObjectPool;
    }

    public final void a() {
        this.f48364a.a();
        this.f48365b.q();
    }
}
