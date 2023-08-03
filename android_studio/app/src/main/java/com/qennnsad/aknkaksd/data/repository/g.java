package com.qennnsad.aknkaksd.data.repository;

import com.qennnsad.aknkaksd.presentation.module.rank.h;
import com.qennnsad.aknkaksd.util.o;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: RepositoryExt.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a*\u0010\b\u001a\u0012\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0018\u00010\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/k;", "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "rankType", "", f.f47744a, "Lio/reactivex/z;", "Lretrofit2/Response;", "", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g {
    @m8.h
    public static final z<Response<String>> a(@m8.g k kVar, @m8.g com.qennnsad.aknkaksd.presentation.module.rank.h rankType, int i4) {
        Intrinsics.checkNotNullParameter(kVar, "<this>");
        Intrinsics.checkNotNullParameter(rankType, "rankType");
        long w9 = kVar.f47757c.w();
        Integer a10 = rankType.a();
        if (rankType instanceof h.c) {
            return kVar.f47755a.anchorRankToday(i4, a10);
        }
        if (rankType instanceof h.d) {
            return kVar.f47755a.anchorRankYesterday(i4, a10);
        }
        if (rankType instanceof h.b) {
            return kVar.f47755a.anchorRankThisWeek(i4, a10);
        }
        if (rankType instanceof h.a) {
            return kVar.f47755a.anchorRankLastWeek(i4, a10);
        }
        if (rankType instanceof h.o) {
            return kVar.f47755a.viewerRankToday(i4);
        }
        if (rankType instanceof h.p) {
            return kVar.f47755a.viewerRankYesterday(i4);
        }
        if (rankType instanceof h.n) {
            return kVar.f47755a.viewerRankThisWeek(i4);
        }
        if (rankType instanceof h.m) {
            return kVar.f47755a.viewerRankLastWeek(i4);
        }
        if (rankType instanceof h.g) {
            return kVar.f47755a.gameRank("today", i4, 10);
        }
        if (rankType instanceof h.C0428h) {
            return kVar.f47755a.gameRank("yesterday", i4, 10);
        }
        if (rankType instanceof h.f) {
            return kVar.f47755a.gameRank("thisWeek", i4, 10);
        }
        if (rankType instanceof h.e) {
            return kVar.f47755a.gameRank("lastWeek", i4, 10);
        }
        long j4 = 0;
        if (rankType instanceof h.k) {
            j4 = com.qennnsad.aknkaksd.util.o.f54868a.i();
        } else if (rankType instanceof h.l) {
            o.a aVar = com.qennnsad.aknkaksd.util.o.f54868a;
            j4 = aVar.l();
            w9 = aVar.i();
        } else if (rankType instanceof h.j) {
            j4 = com.qennnsad.aknkaksd.util.o.f54868a.k();
        } else if (rankType instanceof h.i) {
            o.a aVar2 = com.qennnsad.aknkaksd.util.o.f54868a;
            j4 = aVar2.j();
            w9 = aVar2.k();
        } else {
            w9 = 0;
        }
        com.qennnsad.aknkaksd.util.o.f54868a.e("PK Ratings for " + rankType, Long.valueOf(j4), Long.valueOf(w9));
        RetrofitApi retrofitApi = kVar.f47755a;
        long j10 = (long) 1000;
        return retrofitApi.pkRank(j4 / j10, w9 / j10, i4);
    }
}
