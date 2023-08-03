package com.qennnsad.aknkaksd.domain.usecase.anchor;

import com.qennnsad.aknkaksd.data.bean.AnchorSummary;
import com.qennnsad.aknkaksd.data.bean.PageBean;
import com.squareup.moshi.z;
import java.lang.reflect.ParameterizedType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: GetPageListForSearchUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\tB\u0019\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR#\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p$a;", "Lcom/qennnsad/aknkaksd/data/bean/PageBean;", "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "b", "Lcom/qennnsad/aknkaksd/domain/base/d;", "f", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class p extends com.qennnsad.aknkaksd.domain.base.h<a, PageBean<AnchorSummary>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f47992a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<PageBean<AnchorSummary>> f47993b;

    /* compiled from: GetPageListForSearchUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p$a;", "", "", "a", "", "b", s2.d.f93273b, com.qennnsad.aknkaksd.data.repository.f.f47744a, "c", "toString", "hashCode", "other", "", "equals", "Ljava/lang/String;", "f", "()Ljava/lang/String;", "I", "e", "()I", "<init>", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f47994a;

        /* renamed from: b  reason: collision with root package name */
        private final int f47995b;

        public a(@m8.g String query, int i4) {
            Intrinsics.checkNotNullParameter(query, "query");
            this.f47994a = query;
            this.f47995b = i4;
        }

        public static /* synthetic */ a d(a aVar, String str, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = aVar.f47994a;
            }
            if ((i10 & 2) != 0) {
                i4 = aVar.f47995b;
            }
            return aVar.c(str, i4);
        }

        @m8.g
        public final String a() {
            return this.f47994a;
        }

        public final int b() {
            return this.f47995b;
        }

        @m8.g
        public final a c(@m8.g String query, int i4) {
            Intrinsics.checkNotNullParameter(query, "query");
            return new a(query, i4);
        }

        public final int e() {
            return this.f47995b;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f47994a, aVar.f47994a) && this.f47995b == aVar.f47995b;
            }
            return false;
        }

        @m8.g
        public final String f() {
            return this.f47994a;
        }

        public int hashCode() {
            return (this.f47994a.hashCode() * 31) + this.f47995b;
        }

        @m8.g
        public String toString() {
            return "Params(query=" + this.f47994a + ", page=" + this.f47995b + ')';
        }
    }

    @u7.a
    public p(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f47992a = sourceFactory;
        ParameterizedType m9 = z.m(PageBean.class, AnchorSummary.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(\n  …ary::class.java\n        )");
        this.f47993b = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ PageBean e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (PageBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<PageBean<AnchorSummary>> a(@m8.g a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> queryAnchors = com.qennnsad.aknkaksd.data.repository.m.g(this.f47992a, false, 1, null).queryAnchors(params.f(), params.e());
        final com.qennnsad.aknkaksd.domain.base.d<PageBean<AnchorSummary>> dVar = this.f47993b;
        io.reactivex.z map = queryAnchors.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.anchor.o
            @Override // n7.o
            public final Object apply(Object obj) {
                PageBean e4;
                e4 = p.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().q….map(responseMapper::map)");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<PageBean<AnchorSummary>> f() {
        return this.f47993b;
    }
}
