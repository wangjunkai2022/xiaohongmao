package com.qennnsad.aknkaksd.util;

import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean;
import com.qennnsad.aknkaksd.data.bean.websocket.FanInfoEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FanClubUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0012\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;", "event", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f0 {
    @m8.g
    public static final FanClubInfoBean a(@m8.g FanClubInfoBean fanClubInfoBean, @m8.g FanInfoEvent event) {
        FanClubInfoBean copy;
        Intrinsics.checkNotNullParameter(fanClubInfoBean, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        copy = fanClubInfoBean.copy((r20 & 1) != 0 ? fanClubInfoBean.level : event.getLevel(), (r20 & 2) != 0 ? fanClubInfoBean.coins : event.getCoins(), (r20 & 4) != 0 ? fanClubInfoBean.upLevel : event.getUpLevel(), (r20 & 8) != 0 ? fanClubInfoBean.fanOf : 0L, (r20 & 16) != 0 ? fanClubInfoBean.nickname : null, (r20 & 32) != 0 ? fanClubInfoBean.freeGifts : event.getFreeGifts(), (r20 & 64) != 0 ? fanClubInfoBean.startedAt : 0L);
        return copy;
    }
}
