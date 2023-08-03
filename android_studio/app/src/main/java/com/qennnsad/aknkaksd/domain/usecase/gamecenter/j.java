package com.qennnsad.aknkaksd.domain.usecase.gamecenter;

import com.qennnsad.aknkaksd.data.bean.GameCenter;
import com.qennnsad.aknkaksd.data.repository.m;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import n7.o;
import retrofit2.Response;

/* compiled from: RequestGameCenterUrlUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "", "params", "Lio/reactivex/z;", "e", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "h", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends com.qennnsad.aknkaksd.domain.base.h<Unit, Boolean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48191a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m f48192b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<GameCenter.GetUrlBean> f48193c;

    @u7.a
    public j(@m8.g g5.a localDataManager, @m8.g m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48191a = localDataManager;
        this.f48192b = sourceFactory;
        this.f48193c = new com.qennnsad.aknkaksd.domain.base.d<>(GameCenter.GetUrlBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean f(j this$0, GameCenter.GetUrlBean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.f48191a.d0(it);
        String url = it.getUrl();
        return Boolean.valueOf(!(url == null || url.length() == 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ GameCenter.GetUrlBean g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (GameCenter.GetUrlBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public z<Boolean> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> gameCenterUrl = m.g(this.f48192b, false, 1, null).getGameCenterUrl();
        final com.qennnsad.aknkaksd.domain.base.d<GameCenter.GetUrlBean> dVar = this.f48193c;
        z<Boolean> map = gameCenterUrl.map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.gamecenter.h
            @Override // n7.o
            public final Object apply(Object obj) {
                GameCenter.GetUrlBean g4;
                g4 = j.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.gamecenter.i
            @Override // n7.o
            public final Object apply(Object obj) {
                Boolean f10;
                f10 = j.f(j.this, (GameCenter.GetUrlBean) obj);
                return f10;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().g…isNullOrEmpty()\n        }");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<GameCenter.GetUrlBean> h() {
        return this.f48193c;
    }
}
