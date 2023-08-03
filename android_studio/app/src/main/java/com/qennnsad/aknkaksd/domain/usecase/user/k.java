package com.qennnsad.aknkaksd.domain.usecase.user;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: ModifyPasswordUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/k;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/user/k$a;", "", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "b", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k extends com.qennnsad.aknkaksd.domain.base.h<a, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48421a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48422b;

    /* compiled from: ModifyPasswordUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0004\u001a\u0004\b\u0003\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/k$a;", "", "", "a", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "oldPassword", "newPassword", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f48423a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f48424b;

        public a(@m8.g String oldPassword, @m8.g String newPassword) {
            Intrinsics.checkNotNullParameter(oldPassword, "oldPassword");
            Intrinsics.checkNotNullParameter(newPassword, "newPassword");
            this.f48423a = oldPassword;
            this.f48424b = newPassword;
        }

        @m8.g
        public final String a() {
            return this.f48424b;
        }

        @m8.g
        public final String b() {
            return this.f48423a;
        }
    }

    @u7.a
    public k(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48421a = sourceFactory;
        this.f48422b = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ String e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (String) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<String> a(@m8.g a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> modifyPassword = com.qennnsad.aknkaksd.data.repository.m.g(this.f48421a, false, 1, null).modifyPassword(params.b(), params.a());
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48422b;
        io.reactivex.z map = modifyPassword.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.j
            @Override // n7.o
            public final Object apply(Object obj) {
                String e4;
                e4 = k.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().m…assword).map(mapper::map)");
        return map;
    }
}
