package com.qennnsad.aknkaksd.domain.usecase.user;

import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: SyncMeUserUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/w;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "params", "Lio/reactivex/z;", "e", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class w extends com.qennnsad.aknkaksd.domain.base.h<Unit, UserBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48489a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48490b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<UserBean> f48491c;

    @u7.a
    public w(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48489a = localDataManager;
        this.f48490b = sourceFactory;
        this.f48491c = new com.qennnsad.aknkaksd.domain.base.d<>(UserBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(w this$0, UserBean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        g5.a aVar = this$0.f48489a;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        aVar.T(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ UserBean g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (UserBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public io.reactivex.z<UserBean> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> myInfo = com.qennnsad.aknkaksd.data.repository.m.g(this.f48490b, false, 1, null).getMyInfo();
        final com.qennnsad.aknkaksd.domain.base.d<UserBean> dVar = this.f48491c;
        io.reactivex.z<UserBean> doOnNext = myInfo.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.v
            @Override // n7.o
            public final Object apply(Object obj) {
                UserBean g4;
                g4 = w.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.u
            @Override // n7.g
            public final void accept(Object obj) {
                w.f(w.this, (UserBean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().m…aveUserInfo(it)\n        }");
        return doOnNext;
    }
}
