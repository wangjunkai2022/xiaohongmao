package com.qennnsad.aknkaksd.domain.usecase;

import com.qennnsad.aknkaksd.data.bean.PageBean;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.repository.m;
import com.squareup.moshi.z;
import java.lang.reflect.ParameterizedType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import n7.o;
import retrofit2.Response;

/* compiled from: GetRanksUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\tB\u0019\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR \u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/h;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/h$a;", "Lcom/qennnsad/aknkaksd/data/bean/PageBean;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h extends com.qennnsad.aknkaksd.domain.base.h<a, PageBean<RankItem>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m f48216a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48217b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<PageBean<RankItem>> f48218c;

    /* compiled from: GetRanksUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\u000b\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/h$a;", "", "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "a", "", "b", "rankType", com.qennnsad.aknkaksd.data.repository.f.f47744a, "c", "", "toString", "hashCode", "other", "", "equals", "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "f", "()Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "I", "e", "()I", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/rank/h;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final com.qennnsad.aknkaksd.presentation.module.rank.h f48219a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48220b;

        public a(@m8.g com.qennnsad.aknkaksd.presentation.module.rank.h rankType, int i4) {
            Intrinsics.checkNotNullParameter(rankType, "rankType");
            this.f48219a = rankType;
            this.f48220b = i4;
        }

        public static /* synthetic */ a d(a aVar, com.qennnsad.aknkaksd.presentation.module.rank.h hVar, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                hVar = aVar.f48219a;
            }
            if ((i10 & 2) != 0) {
                i4 = aVar.f48220b;
            }
            return aVar.c(hVar, i4);
        }

        @m8.g
        public final com.qennnsad.aknkaksd.presentation.module.rank.h a() {
            return this.f48219a;
        }

        public final int b() {
            return this.f48220b;
        }

        @m8.g
        public final a c(@m8.g com.qennnsad.aknkaksd.presentation.module.rank.h rankType, int i4) {
            Intrinsics.checkNotNullParameter(rankType, "rankType");
            return new a(rankType, i4);
        }

        public final int e() {
            return this.f48220b;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f48219a, aVar.f48219a) && this.f48220b == aVar.f48220b;
            }
            return false;
        }

        @m8.g
        public final com.qennnsad.aknkaksd.presentation.module.rank.h f() {
            return this.f48219a;
        }

        public int hashCode() {
            return (this.f48219a.hashCode() * 31) + this.f48220b;
        }

        @m8.g
        public String toString() {
            return "Params(rankType=" + this.f48219a + ", page=" + this.f48220b + ')';
        }
    }

    @u7.a
    public h(@m8.g m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f48216a = sourceFactory;
        this.f48217b = localDataManager;
        ParameterizedType m9 = z.m(PageBean.class, RankItem.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(Pag…va, RankItem::class.java)");
        this.f48218c = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ PageBean e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (PageBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<PageBean<RankItem>> a(@m8.g a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> B = m.g(this.f48216a, false, 1, null).B(params.f(), params.e());
        final com.qennnsad.aknkaksd.domain.base.d<PageBean<RankItem>> dVar = this.f48218c;
        io.reactivex.z map = B.map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.g
            @Override // n7.o
            public final Object apply(Object obj) {
                PageBean e4;
                e4 = h.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().g…ms.page).map(mapper::map)");
        return map;
    }
}
