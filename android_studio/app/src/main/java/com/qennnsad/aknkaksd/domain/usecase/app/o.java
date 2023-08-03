package com.qennnsad.aknkaksd.domain.usecase.app;

import com.qennnsad.aknkaksd.data.bean.LaunchAdBean;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: RequestLaunchAdUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/app/o;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;", "params", "Lio/reactivex/z;", "d", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "f", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class o extends com.qennnsad.aknkaksd.domain.base.h<Unit, LaunchAdBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48032a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48033b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<LaunchAdBean> f48034c;

    @u7.a
    public o(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f48032a = sourceFactory;
        this.f48033b = localDataManager;
        this.f48034c = new com.qennnsad.aknkaksd.domain.base.d<>(LaunchAdBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ LaunchAdBean e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (LaunchAdBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public z<LaunchAdBean> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> n9 = com.qennnsad.aknkaksd.data.repository.m.g(this.f48032a, false, 1, null).n();
        final com.qennnsad.aknkaksd.domain.base.d<LaunchAdBean> dVar = this.f48034c;
        z map = n9.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.n
            @Override // n7.o
            public final Object apply(Object obj) {
                LaunchAdBean e4;
                e4 = o.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().l….map(responseMapper::map)");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<LaunchAdBean> f() {
        return this.f48034c;
    }
}
