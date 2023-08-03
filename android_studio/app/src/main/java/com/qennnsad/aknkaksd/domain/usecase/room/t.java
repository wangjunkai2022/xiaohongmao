package com.qennnsad.aknkaksd.domain.usecase.room;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: InterruptDepositUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/room/t;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "", "b", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class t extends com.qennnsad.aknkaksd.domain.base.h<Integer, Object> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48346a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48347b;

    @u7.a
    public t(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f48346a = sourceFactory;
        this.f48347b = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ String e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (String) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    @Override // com.qennnsad.aknkaksd.domain.base.h
    public /* bridge */ /* synthetic */ io.reactivex.z<Object> a(Integer num) {
        return d(num.intValue());
    }

    @m8.g
    protected io.reactivex.z<Object> d(int i4) {
        io.reactivex.z<Response<String>> interruptDeposit = com.qennnsad.aknkaksd.data.repository.m.g(this.f48346a, false, 1, null).interruptDeposit(i4);
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48347b;
        io.reactivex.z<R> map = interruptDeposit.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.room.s
            @Override // n7.o
            public final Object apply(Object obj) {
                String e4;
                e4 = t.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().i…(params).map(mapper::map)");
        return map;
    }
}
