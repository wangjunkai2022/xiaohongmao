package com.qennnsad.aknkaksd.domain.usecase.user;

import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: SyncMyFanClubInfoUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "params", "Lio/reactivex/z;", "e", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a0 extends com.qennnsad.aknkaksd.domain.base.h<Unit, FanClubInfoBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48366a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48367b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<FanClubInfoBean> f48368c;

    @u7.a
    public a0(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48366a = localDataManager;
        this.f48367b = sourceFactory;
        this.f48368c = new com.qennnsad.aknkaksd.domain.base.d<>(FanClubInfoBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FanClubInfoBean f(a0 this$0, Response it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        return this$0.f48368c.a(it, new FanClubInfoBean(0, 0, 0, 0L, null, 0, 0L, 127, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(a0 this$0, FanClubInfoBean fanClubInfoBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f48366a.O(fanClubInfoBean);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public io.reactivex.z<FanClubInfoBean> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<FanClubInfoBean> doOnNext = com.qennnsad.aknkaksd.data.repository.m.g(this.f48367b, false, 1, null).getFanClubInfo().map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.z
            @Override // n7.o
            public final Object apply(Object obj) {
                FanClubInfoBean f10;
                f10 = a0.f(a0.this, (Response) obj);
                return f10;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.y
            @Override // n7.g
            public final void accept(Object obj) {
                a0.g(a0.this, (FanClubInfoBean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().f…ger.saveFanClubInfo(it) }");
        return doOnNext;
    }
}
