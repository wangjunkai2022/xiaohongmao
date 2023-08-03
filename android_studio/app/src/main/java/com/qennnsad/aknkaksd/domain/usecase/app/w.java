package com.qennnsad.aknkaksd.domain.usecase.app;

import com.qennnsad.aknkaksd.data.bean.PeeragePriceBean;
import com.squareup.moshi.z;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: SyncPeeragePricesUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR#\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/app/w;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "params", "Lio/reactivex/z;", "e", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "", "Lcom/qennnsad/aknkaksd/data/bean/PeeragePriceBean;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "h", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class w extends com.qennnsad.aknkaksd.domain.base.h<Unit, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48048a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48049b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<List<PeeragePriceBean>> f48050c;

    @u7.a
    public w(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48048a = localDataManager;
        this.f48049b = sourceFactory;
        ParameterizedType m9 = z.m(List.class, PeeragePriceBean.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(Lis…agePriceBean::class.java)");
        this.f48050c = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(w this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.f48048a.k0(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ List g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (List) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public io.reactivex.z<Unit> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> peeragePrices = com.qennnsad.aknkaksd.data.repository.m.g(this.f48049b, false, 1, null).getPeeragePrices();
        final com.qennnsad.aknkaksd.domain.base.d<List<PeeragePriceBean>> dVar = this.f48050c;
        io.reactivex.z<Unit> map = peeragePrices.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.u
            @Override // n7.o
            public final Object apply(Object obj) {
                List g4;
                g4 = w.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.app.v
            @Override // n7.o
            public final Object apply(Object obj) {
                Unit f10;
                f10 = w.f(w.this, (List) obj);
                return f10;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().p…eragePrices(it)\n        }");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<List<PeeragePriceBean>> h() {
        return this.f48050c;
    }
}
