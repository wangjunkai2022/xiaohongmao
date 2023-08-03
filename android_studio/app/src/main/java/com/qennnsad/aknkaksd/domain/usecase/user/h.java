package com.qennnsad.aknkaksd.domain.usecase.user;

import com.qennnsad.aknkaksd.data.bean.fanclub.JoinFanClubBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: JoinFanClubInfoUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/h;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;", "params", "Lio/reactivex/z;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h extends com.qennnsad.aknkaksd.domain.base.h<String, JoinFanClubBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48404a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48405b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<JoinFanClubBean> f48406c;

    @u7.a
    public h(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48404a = localDataManager;
        this.f48405b = sourceFactory;
        this.f48406c = new com.qennnsad.aknkaksd.domain.base.d<>(JoinFanClubBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final JoinFanClubBean f(h this$0, Response it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        return (JoinFanClubBean) com.qennnsad.aknkaksd.domain.base.d.b(this$0.f48406c, it, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(h this$0, JoinFanClubBean joinFanClubBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f48404a.O(joinFanClubBean.getInfo());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public io.reactivex.z<JoinFanClubBean> a(@m8.g String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<JoinFanClubBean> doOnNext = com.qennnsad.aknkaksd.data.repository.m.g(this.f48405b, false, 1, null).joinFanClub(params).map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.g
            @Override // n7.o
            public final Object apply(Object obj) {
                JoinFanClubBean f10;
                f10 = h.f(h.this, (Response) obj);
                return f10;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.f
            @Override // n7.g
            public final void accept(Object obj) {
                h.g(h.this, (JoinFanClubBean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().j…aveFanClubInfo(it.info) }");
        return doOnNext;
    }
}
