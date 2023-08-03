package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;
import timber.log.Timber;

/* compiled from: ImLoginUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\b\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "", "params", "Lio/reactivex/z;", "f", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/domain/base/d;", "d", "Lcom/qennnsad/aknkaksd/domain/base/d;", "j", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "Lg5/f;", "loginManager", "Lx4/a;", "analytics", "<init>", "(Lg5/a;Lg5/f;Lx4/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class r extends com.qennnsad.aknkaksd.domain.base.h<Unit, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48122a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.f f48123b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final x4.a f48124c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48125d;

    @u7.a
    public r(@m8.g g5.a localDataManager, @m8.g g5.f loginManager, @m8.g x4.a analytics) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(loginManager, "loginManager");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        this.f48122a = localDataManager;
        this.f48123b = loginManager;
        this.f48124c = analytics;
        this.f48125d = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(r this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f48124c.c(EventSignature.APP_IM_LOGIN, true, new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(r this$0, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f48124c.c(EventSignature.APP_IM_LOGIN, false, new String[0]);
        Timber.f93860a.e(th);
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
        if (this.f48122a.C() == null) {
            io.reactivex.z<String> empty = io.reactivex.z.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty()");
            return empty;
        }
        io.reactivex.z<Response<String>> d4 = this.f48123b.d();
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48125d;
        io.reactivex.z<String> doOnError = d4.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.q
            @Override // n7.o
            public final Object apply(Object obj) {
                String i4;
                i4 = r.i(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return i4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.o
            @Override // n7.g
            public final void accept(Object obj) {
                r.g(r.this, (String) obj);
            }
        }).doOnError(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.auth.p
            @Override // n7.g
            public final void accept(Object obj) {
                r.h(r.this, (Throwable) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "loginManager.getImToken(…imber.e(it)\n            }");
        return doOnError;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<String> j() {
        return this.f48125d;
    }
}
