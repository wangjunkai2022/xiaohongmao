package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: RankItem.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0004"}, d2 = {"isGameRank", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "isPkRank", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RankItemKt {
    public static final boolean isGameRank(@g RankItem rankItem) {
        Intrinsics.checkNotNullParameter(rankItem, "<this>");
        return (rankItem.getCoin() == null || rankItem.getGame() == null) ? false : true;
    }

    public static final boolean isPkRank(@g RankItem rankItem) {
        Intrinsics.checkNotNullParameter(rankItem, "<this>");
        return (rankItem.getCoin() != null || rankItem.getWins() == null || rankItem.getDefeats() == null) ? false : true;
    }
}
