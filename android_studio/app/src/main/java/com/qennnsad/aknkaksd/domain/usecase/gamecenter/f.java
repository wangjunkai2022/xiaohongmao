package com.qennnsad.aknkaksd.domain.usecase.gamecenter;

import com.qennnsad.aknkaksd.data.bean.GameCenter;
import com.qennnsad.aknkaksd.data.repository.m;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import n7.o;
import retrofit2.Response;

/* compiled from: RequestGameCenterPointsUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "", "params", "Lio/reactivex/z;", "e", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetPointsBean;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "h", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f extends com.qennnsad.aknkaksd.domain.base.h<Unit, Integer> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48184a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m f48185b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<GameCenter.GetPointsBean> f48186c;

    @u7.a
    public f(@m8.g g5.a localDataManager, @m8.g m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48184a = localDataManager;
        this.f48185b = sourceFactory;
        this.f48186c = new com.qennnsad.aknkaksd.domain.base.d<>(GameCenter.GetPointsBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer f(GameCenter.GetPointsBean it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Integer.valueOf(it.getOrdercount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ GameCenter.GetPointsBean g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (GameCenter.GetPointsBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public z<Integer> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> gameCenterPoints = m.g(this.f48185b, false, 1, null).getGameCenterPoints();
        final com.qennnsad.aknkaksd.domain.base.d<GameCenter.GetPointsBean> dVar = this.f48186c;
        z<Integer> map = gameCenterPoints.map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.gamecenter.d
            @Override // n7.o
            public final Object apply(Object obj) {
                GameCenter.GetPointsBean g4;
                g4 = f.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).map(e.f48183a);
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().g…  it.ordercount\n        }");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<GameCenter.GetPointsBean> h() {
        return this.f48186c;
    }
}
