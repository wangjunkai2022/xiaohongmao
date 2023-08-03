package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.domain.usecase.auth.d;
import com.qennnsad.aknkaksd.util.JwtUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: LoginUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u000e¢\u0006\u0004\b\"\u0010#J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\r\u001a\u00020\b8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0012\u001a\u00020\u000e8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0014\u001a\u00020\u00138\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0019\u001a\u00020\u00188\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u00020\u001d8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$b;", "params", "Lio/reactivex/z;", "Lretrofit2/Response;", "", "q", "Lcom/qennnsad/aknkaksd/util/JwtUtil;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/util/JwtUtil;", "k", "()Lcom/qennnsad/aknkaksd/util/JwtUtil;", "jwtUtil", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "o", "()Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lg5/a;", "localDataManager", "Lg5/a;", "l", "()Lg5/a;", "Lg5/f;", "loginManager", "Lg5/f;", "m", "()Lg5/f;", "Lx4/a;", "analytics", "Lx4/a;", "j", "()Lx4/a;", "<init>", "(Lg5/a;Lg5/f;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class x extends d<d.b> {
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final g5.a f48147g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final g5.f f48148h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final JwtUtil f48149i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final x4.a f48150j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f48151k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @u7.a
    public x(@m8.g g5.a localDataManager, @m8.g g5.f loginManager, @m8.g JwtUtil jwtUtil, @m8.g x4.a analytics, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool) {
        super(localDataManager, loginManager, jwtUtil, analytics, wsObjectPool);
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(loginManager, "loginManager");
        Intrinsics.checkNotNullParameter(jwtUtil, "jwtUtil");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        this.f48147g = localDataManager;
        this.f48148h = loginManager;
        this.f48149i = jwtUtil;
        this.f48150j = analytics;
        this.f48151k = wsObjectPool;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.d
    @m8.g
    protected x4.a j() {
        return this.f48150j;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.d
    @m8.g
    protected JwtUtil k() {
        return this.f48149i;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.d
    @m8.g
    protected g5.a l() {
        return this.f48147g;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.d
    @m8.g
    protected g5.f m() {
        return this.f48148h;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.d
    @m8.g
    protected com.qennnsad.aknkaksd.data.websocket.j o() {
        return this.f48151k;
    }

    @Override // com.qennnsad.aknkaksd.domain.usecase.auth.d
    @m8.g
    /* renamed from: q */
    public io.reactivex.z<Response<String>> p(@m8.g d.b params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return m().h(params.h(), params.l(), params.i(), params.j(), params.k(), l().J() ? l().A() : null);
    }
}
