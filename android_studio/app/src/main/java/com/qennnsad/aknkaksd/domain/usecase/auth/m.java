package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.qennnsad.aknkaksd.data.bean.user.LoginGCaptchaBean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: GetGraphCaptchaUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/user/LoginGCaptchaBean;", "params", "Lio/reactivex/z;", "d", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "f", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "Lg5/f;", "loginManager", "<init>", "(Lg5/a;Lg5/f;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m extends com.qennnsad.aknkaksd.domain.base.h<Unit, LoginGCaptchaBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48114a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.f f48115b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<LoginGCaptchaBean> f48116c;

    @u7.a
    public m(@m8.g g5.a localDataManager, @m8.g g5.f loginManager) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(loginManager, "loginManager");
        this.f48114a = localDataManager;
        this.f48115b = loginManager;
        this.f48116c = new com.qennnsad.aknkaksd.domain.base.d<>(LoginGCaptchaBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ LoginGCaptchaBean e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (LoginGCaptchaBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<LoginGCaptchaBean> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> e4 = this.f48115b.e();
        final com.qennnsad.aknkaksd.domain.base.d<LoginGCaptchaBean> dVar = this.f48116c;
        io.reactivex.z map = e4.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.l
            @Override // n7.o
            public final Object apply(Object obj) {
                LoginGCaptchaBean e10;
                e10 = m.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e10;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "loginManager.getLoginCaptcha().map(mapper::map)");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<LoginGCaptchaBean> f() {
        return this.f48116c;
    }
}
