package com.qennnsad.aknkaksd.domain.usecase.anchor;

import com.qennnsad.aknkaksd.data.bean.PageBean;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.squareup.moshi.z;
import java.lang.reflect.ParameterizedType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: GetPageListForFollowersUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\tB\u0019\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR#\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m$a;", "Lcom/qennnsad/aknkaksd/data/bean/PageBean;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "b", "Lcom/qennnsad/aknkaksd/domain/base/d;", "f", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m extends com.qennnsad.aknkaksd.domain.base.h<a, PageBean<UserInfo>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f47984a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<PageBean<UserInfo>> f47985b;

    /* compiled from: GetPageListForFollowersUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\f\u001a\u00020\u0002HÖ\u0001J\t\u0010\r\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m$a;", "", "", "a", "", "b", "", "c", "userId", "isFollowees", com.qennnsad.aknkaksd.data.repository.f.f47744a, "d", "toString", "hashCode", "other", "equals", "Ljava/lang/String;", "g", "()Ljava/lang/String;", "Z", "h", "()Z", "I", "f", "()I", "<init>", "(Ljava/lang/String;ZI)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f47986a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f47987b;

        /* renamed from: c  reason: collision with root package name */
        private final int f47988c;

        public a(@m8.g String userId, boolean z9, int i4) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            this.f47986a = userId;
            this.f47987b = z9;
            this.f47988c = i4;
        }

        public static /* synthetic */ a e(a aVar, String str, boolean z9, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = aVar.f47986a;
            }
            if ((i10 & 2) != 0) {
                z9 = aVar.f47987b;
            }
            if ((i10 & 4) != 0) {
                i4 = aVar.f47988c;
            }
            return aVar.d(str, z9, i4);
        }

        @m8.g
        public final String a() {
            return this.f47986a;
        }

        public final boolean b() {
            return this.f47987b;
        }

        public final int c() {
            return this.f47988c;
        }

        @m8.g
        public final a d(@m8.g String userId, boolean z9, int i4) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            return new a(userId, z9, i4);
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f47986a, aVar.f47986a) && this.f47987b == aVar.f47987b && this.f47988c == aVar.f47988c;
            }
            return false;
        }

        public final int f() {
            return this.f47988c;
        }

        @m8.g
        public final String g() {
            return this.f47986a;
        }

        public final boolean h() {
            return this.f47987b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = this.f47986a.hashCode() * 31;
            boolean z9 = this.f47987b;
            int i4 = z9;
            if (z9 != 0) {
                i4 = 1;
            }
            return ((hashCode + i4) * 31) + this.f47988c;
        }

        @m8.g
        public String toString() {
            return "Params(userId=" + this.f47986a + ", isFollowees=" + this.f47987b + ", page=" + this.f47988c + ')';
        }
    }

    @u7.a
    public m(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f47984a = sourceFactory;
        ParameterizedType m9 = z.m(PageBean.class, UserInfo.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(\n  …nfo::class.java\n        )");
        this.f47985b = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ PageBean e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (PageBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<PageBean<UserInfo>> a(@m8.g a params) {
        io.reactivex.z<Response<String>> userStars;
        Intrinsics.checkNotNullParameter(params, "params");
        if (params.h()) {
            userStars = com.qennnsad.aknkaksd.data.repository.m.g(this.f47984a, false, 1, null).getUserFans(params.g(), params.f());
        } else {
            userStars = com.qennnsad.aknkaksd.data.repository.m.g(this.f47984a, false, 1, null).getUserStars(params.g(), params.f());
        }
        final com.qennnsad.aknkaksd.domain.base.d<PageBean<UserInfo>> dVar = this.f47985b;
        io.reactivex.z map = userStars.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.anchor.l
            @Override // n7.o
            public final Object apply(Object obj) {
                PageBean e4;
                e4 = m.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "if (params.isFollowees) ….map(responseMapper::map)");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<PageBean<UserInfo>> f() {
        return this.f47985b;
    }
}
