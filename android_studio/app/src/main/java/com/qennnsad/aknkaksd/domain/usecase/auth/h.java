package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.register.RegisterBean;
import com.qennnsad.aknkaksd.data.bean.user.LoginInfoAll;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import retrofit2.Response;

/* compiled from: AbstractRegisterUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b!\u0010\"J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014J\u001c\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00052\u0006\u0010\u0004\u001a\u00020\u0002H&R\u001a\u0010\u000f\u001a\u00020\n8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR!\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0018\u001a\u00020\u00178\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\u00020\u001c8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;", "", "params", "Lio/reactivex/z;", "f", "Lretrofit2/Response;", "", "n", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "c", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "m", "()Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;", "d", "Lkotlin/Lazy;", "l", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "Lg5/a;", "k", "()Lg5/a;", "Lx4/a;", "analytics", "Lx4/a;", "j", "()Lx4/a;", "<init>", "(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class h extends com.qennnsad.aknkaksd.domain.base.h<RegisterBean, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48089a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final x4.a f48090b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f48091c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f48092d;

    /* compiled from: AbstractRegisterUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;", "a", "()Lcom/qennnsad/aknkaksd/domain/base/d;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<com.qennnsad.aknkaksd.domain.base.d<LoginInfoAll>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final com.qennnsad.aknkaksd.domain.base.d<LoginInfoAll> invoke() {
            return new com.qennnsad.aknkaksd.domain.base.d<>(LoginInfoAll.class, h.this.k());
        }
    }

    public h(@m8.g g5.a localDataManager, @m8.g x4.a analytics, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        this.f48089a = localDataManager;
        this.f48090b = analytics;
        this.f48091c = wsObjectPool;
        lazy = LazyKt__LazyJVMKt.lazy(new a());
        this.f48092d = lazy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(h this$0, LoginInfoAll it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        g5.a k10 = this$0.k();
        String jwtToken = it.getJwtToken();
        Intrinsics.checkNotNullExpressionValue(jwtToken, "it.jwtToken");
        k10.h0(jwtToken);
        g5.a k11 = this$0.k();
        UserBean user = it.getUser();
        Intrinsics.checkNotNullExpressionValue(user, "it.user");
        k11.T(user);
        this$0.k().g0(it.getImRole());
        com.qennnsad.aknkaksd.analytics.error.b.f47679a.a().a(it.getUser().getId());
        this$0.j().i();
        this$0.j().j(it.getUser().getId(), it.getUser().getNickname());
        this$0.j().d(EventSignature.APP_SIGN_UP, new String[0]);
        com.qennnsad.aknkaksd.data.websocket.j m9 = this$0.m();
        UserBean user2 = it.getUser();
        Intrinsics.checkNotNullExpressionValue(user2, "it.user");
        com.qennnsad.aknkaksd.data.websocket.j.d(m9, user2, it.getJwtToken(), null, 4, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(h this$0, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (th != null) {
            th.printStackTrace();
        }
        this$0.j().c(EventSignature.APP_SIGN_UP, false, new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ LoginInfoAll i(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (LoginInfoAll) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    private final com.qennnsad.aknkaksd.domain.base.d<LoginInfoAll> l() {
        return (com.qennnsad.aknkaksd.domain.base.d) this.f48092d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: f */
    public io.reactivex.z<Unit> a(@m8.g RegisterBean params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> n9 = n(params);
        final com.qennnsad.aknkaksd.domain.base.d<LoginInfoAll> l10 = l();
        io.reactivex.z<Unit> doOnError = n9.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.f
            @Override // n7.o
            public final Object apply(Object obj) {
                LoginInfoAll i4;
                i4 = h.i(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return i4;
            }
        }).map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.g
            @Override // n7.o
            public final Object apply(Object obj) {
                Unit g4;
                g4 = h.g(h.this, (LoginInfoAll) obj);
                return g4;
            }
        }).doOnError(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.e
            @Override // n7.g
            public final void accept(Object obj) {
                h.h(h.this, (Throwable) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "requestEndpoint(params)\n…_UP, false)\n            }");
        return doOnError;
    }

    @m8.g
    protected x4.a j() {
        return this.f48090b;
    }

    @m8.g
    protected g5.a k() {
        return this.f48089a;
    }

    @m8.g
    protected com.qennnsad.aknkaksd.data.websocket.j m() {
        return this.f48091c;
    }

    @m8.g
    public abstract io.reactivex.z<Response<String>> n(@m8.g RegisterBean registerBean);
}
