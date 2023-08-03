package com.qennnsad.aknkaksd.domain.usecase.user;

import com.qennnsad.aknkaksd.data.bean.room.BlacklistedUserBean;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: GetBlacklistedUsersUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR \u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/d;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "", "Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;", "params", "Lio/reactivex/z;", "d", "(Lkotlin/Unit;)Lio/reactivex/z;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends com.qennnsad.aknkaksd.domain.base.h<Unit, List<? extends BlacklistedUserBean>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48381a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48382b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<List<BlacklistedUserBean>> f48383c;

    @u7.a
    public d(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48381a = localDataManager;
        this.f48382b = sourceFactory;
        ParameterizedType m9 = com.squareup.moshi.z.m(List.class, BlacklistedUserBean.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(Lis…stedUserBean::class.java)");
        this.f48383c = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ List e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (List) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<List<BlacklistedUserBean>> a(@m8.g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> c10 = com.qennnsad.aknkaksd.data.repository.m.g(this.f48382b, false, 1, null).c();
        final com.qennnsad.aknkaksd.domain.base.d<List<BlacklistedUserBean>> dVar = this.f48383c;
        io.reactivex.z map = c10.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.c
            @Override // n7.o
            public final Object apply(Object obj) {
                List e4;
                e4 = d.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().g…itList().map(mapper::map)");
        return map;
    }
}
