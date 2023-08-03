package com.qennnsad.aknkaksd.domain.usecase.app;

import com.qennnsad.aknkaksd.data.bean.AdConfigBean;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: GetAdConfigUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/app/c;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;", "params", "Lio/reactivex/z;", "e", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "h", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends com.qennnsad.aknkaksd.domain.base.h<Unit, AdConfigBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48005a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48006b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<AdConfigBean> f48007c;

    @u7.a
    public c(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f48005a = sourceFactory;
        this.f48006b = localDataManager;
        this.f48007c = new com.qennnsad.aknkaksd.domain.base.d<>(AdConfigBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(c this$0, AdConfigBean adConfigBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f48006b.V(adConfigBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AdConfigBean g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (AdConfigBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public z<AdConfigBean> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> adConfig = com.qennnsad.aknkaksd.data.repository.m.g(this.f48005a, false, 1, null).getAdConfig();
        final com.qennnsad.aknkaksd.domain.base.d<AdConfigBean> dVar = this.f48007c;
        z<AdConfigBean> doOnNext = adConfig.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.b
            @Override // n7.o
            public final Object apply(Object obj) {
                AdConfigBean g4;
                g4 = c.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.a
            @Override // n7.g
            public final void accept(Object obj) {
                c.f(c.this, (AdConfigBean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().a…setAdConfig(it)\n        }");
        return doOnNext;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<AdConfigBean> h() {
        return this.f48007c;
    }
}
