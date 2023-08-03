package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.qennnsad.aknkaksd.data.bean.register.RegisterBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: RegisterUserUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\r\u001a\u00020\b8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u000f\u001a\u00020\u000e8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0014\u001a\u00020\u00138\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;", "Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;", "params", "Lio/reactivex/z;", "Lretrofit2/Response;", "", "n", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "g", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "m", "()Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lg5/a;", "localDataManager", "Lg5/a;", "k", "()Lg5/a;", "Lx4/a;", "analytics", "Lx4/a;", "j", "()Lx4/a;", "Lg5/f;", "loginManager", "<init>", "(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;Lg5/f;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e0 extends h {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final g5.a f48078e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final x4.a f48079f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f48080g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final g5.f f48081h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @u7.a
    public e0(@m8.g g5.a localDataManager, @m8.g x4.a analytics, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool, @m8.g g5.f loginManager) {
        super(localDataManager, analytics, wsObjectPool);
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        Intrinsics.checkNotNullParameter(loginManager, "loginManager");
        this.f48078e = localDataManager;
        this.f48079f = analytics;
        this.f48080g = wsObjectPool;
        this.f48081h = loginManager;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.h
    @m8.g
    protected x4.a j() {
        return this.f48079f;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.h
    @m8.g
    protected g5.a k() {
        return this.f48078e;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.h
    @m8.g
    protected com.qennnsad.aknkaksd.data.websocket.j m() {
        return this.f48080g;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.h
    @m8.g
    public io.reactivex.z<Response<String>> n(@m8.g RegisterBean params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return this.f48081h.k(params);
    }
}
