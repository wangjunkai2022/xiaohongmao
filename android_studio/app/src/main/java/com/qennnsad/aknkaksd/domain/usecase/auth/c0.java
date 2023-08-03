package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: LogoutUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "", "params", "Lio/reactivex/z;", "f", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "Lx4/a;", "analytics", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c0 extends com.qennnsad.aknkaksd.domain.base.h<Unit, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48058a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final x4.a f48059b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48060c;

    @u7.a
    public c0(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g x4.a analytics) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        this.f48058a = sourceFactory;
        this.f48059b = analytics;
        this.f48060c = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(c0 this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f48059b.d(EventSignature.APP_LOGOUT, new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(c0 this$0, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f48059b.c(EventSignature.APP_LOGOUT, false, new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ String i(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (String) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: f */
    public io.reactivex.z<String> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> logout = com.qennnsad.aknkaksd.data.repository.m.g(this.f48058a, false, 1, null).logout();
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48060c;
        io.reactivex.z<String> doOnError = logout.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.b0
            @Override // n7.o
            public final Object apply(Object obj) {
                String i4;
                i4 = c0.i(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return i4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.z
            @Override // n7.g
            public final void accept(Object obj) {
                c0.g(c0.this, (String) obj);
            }
        }).doOnError(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.a0
            @Override // n7.g
            public final void accept(Object obj) {
                c0.h(c0.this, (Throwable) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "sourceFactory.create().l…_LOGOUT, false)\n        }");
        return doOnError;
    }
}
