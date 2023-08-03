package com.qennnsad.aknkaksd.domain.usecase.anchor;

import com.qennnsad.aknkaksd.data.bean.PageBean;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.squareup.moshi.z;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: GetAnchorContributorsUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0013\u0010\u0014J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR \u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/anchor/c;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "params", "Lio/reactivex/z;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/data/bean/PageBean;", "b", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends com.qennnsad.aknkaksd.domain.base.h<String, List<? extends RankItem>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f47960a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<PageBean<RankItem>> f47961b;

    @u7.a
    public c(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f47960a = sourceFactory;
        ParameterizedType m9 = z.m(PageBean.class, RankItem.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(Pag…va, RankItem::class.java)");
        this.f47961b = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List f(PageBean it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ PageBean g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (PageBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public io.reactivex.z<List<RankItem>> a(@m8.g String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> contributeRankList = com.qennnsad.aknkaksd.data.repository.m.g(this.f47960a, false, 1, null).getContributeRankList(params, 1);
        final com.qennnsad.aknkaksd.domain.base.d<PageBean<RankItem>> dVar = this.f47961b;
        io.reactivex.z<List<RankItem>> map = contributeRankList.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.anchor.a
            @Override // n7.o
            public final Object apply(Object obj) {
                PageBean g4;
                g4 = c.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).map(b.f47959a);
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().g…          .map{ it.list }");
        return map;
    }
}
