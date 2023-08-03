package com.qennnsad.aknkaksd.domain.usecase.app;

import com.qennnsad.aknkaksd.data.bean.AppUpdateBean;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: RequestAppVersionUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/app/l;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;", "params", "Lio/reactivex/z;", "f", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "j", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class l extends com.qennnsad.aknkaksd.domain.base.h<Unit, AppUpdateBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48026a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48027b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<AppUpdateBean> f48028c;

    @u7.a
    public l(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f48026a = sourceFactory;
        this.f48027b = localDataManager;
        this.f48028c = new com.qennnsad.aknkaksd.domain.base.d<>(AppUpdateBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(l this$0, AppUpdateBean appUpdateBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f48027b.N(appUpdateBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(l this$0, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f48027b.N(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AppUpdateBean i(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (AppUpdateBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: f */
    public z<AppUpdateBean> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> K = com.qennnsad.aknkaksd.data.repository.m.g(this.f48026a, false, 1, null).K();
        final com.qennnsad.aknkaksd.domain.base.d<AppUpdateBean> dVar = this.f48028c;
        z<AppUpdateBean> doOnError = K.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.k
            @Override // n7.o
            public final Object apply(Object obj) {
                AppUpdateBean i4;
                i4 = l.i(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return i4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.i
            @Override // n7.g
            public final void accept(Object obj) {
                l.g(l.this, (AppUpdateBean) obj);
            }
        }).doOnError(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.j
            @Override // n7.g
            public final void accept(Object obj) {
                l.h(l.this, (Throwable) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "sourceFactory.create().a…pdateBean(null)\n        }");
        return doOnError;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<AppUpdateBean> j() {
        return this.f48028c;
    }
}
