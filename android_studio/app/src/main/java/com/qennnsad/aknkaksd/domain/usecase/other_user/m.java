package com.qennnsad.aknkaksd.domain.usecase.other_user;

import io.reactivex.z;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: UnblacklistUserUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/other_user/m;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m extends com.qennnsad.aknkaksd.domain.base.h<String, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48247a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48248b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48249c;

    @u7.a
    public m(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48247a = localDataManager;
        this.f48248b = sourceFactory;
        this.f48249c = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ String e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (String) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public z<String> a(@m8.g String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> removeHit = com.qennnsad.aknkaksd.data.repository.m.g(this.f48248b, false, 1, null).removeHit(params);
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48249c;
        z map = removeHit.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.other_user.l
            @Override // n7.o
            public final Object apply(Object obj) {
                String e4;
                e4 = m.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().r…(params).map(mapper::map)");
        return map;
    }
}
