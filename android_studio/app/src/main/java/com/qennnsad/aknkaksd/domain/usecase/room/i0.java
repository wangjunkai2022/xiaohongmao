package com.qennnsad.aknkaksd.domain.usecase.room;

import com.qennnsad.aknkaksd.data.bean.DepositOption;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: SyncDepositOptionsUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR \u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "params", "Lio/reactivex/z;", "e", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "", "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i0 extends com.qennnsad.aknkaksd.domain.base.h<Unit, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48323a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48324b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<List<DepositOption>> f48325c;

    @u7.a
    public i0(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f48323a = sourceFactory;
        this.f48324b = localDataManager;
        ParameterizedType m9 = com.squareup.moshi.z.m(List.class, DepositOption.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(Lis…epositOption::class.java)");
        this.f48325c = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(i0 this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.f48324b.Z(it);
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
        io.reactivex.z<Response<String>> depositOptions = com.qennnsad.aknkaksd.data.repository.m.g(this.f48323a, false, 1, null).getDepositOptions();
        final com.qennnsad.aknkaksd.domain.base.d<List<DepositOption>> dVar = this.f48325c;
        io.reactivex.z<Unit> map = depositOptions.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.room.g0
            @Override // n7.o
            public final Object apply(Object obj) {
                List g4;
                g4 = i0.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.room.h0
            @Override // n7.o
            public final Object apply(Object obj) {
                Unit f10;
                f10 = i0.f(i0.this, (List) obj);
                return f10;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().d…r.setDepositOptions(it) }");
        return map;
    }
}
