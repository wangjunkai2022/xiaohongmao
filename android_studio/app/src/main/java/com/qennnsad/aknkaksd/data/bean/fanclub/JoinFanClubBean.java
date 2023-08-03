package com.qennnsad.aknkaksd.data.bean.fanclub;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: JoinFanClubBean.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;", "", "chips", "", "info", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "(ILcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V", "getChips", "()I", "getInfo", "()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class JoinFanClubBean {
    private final int chips;
    @g
    private final FanClubInfoBean info;

    public JoinFanClubBean(int i4, @g FanClubInfoBean info) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.chips = i4;
        this.info = info;
    }

    public static /* synthetic */ JoinFanClubBean copy$default(JoinFanClubBean joinFanClubBean, int i4, FanClubInfoBean fanClubInfoBean, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = joinFanClubBean.chips;
        }
        if ((i10 & 2) != 0) {
            fanClubInfoBean = joinFanClubBean.info;
        }
        return joinFanClubBean.copy(i4, fanClubInfoBean);
    }

    public final int component1() {
        return this.chips;
    }

    @g
    public final FanClubInfoBean component2() {
        return this.info;
    }

    @g
    public final JoinFanClubBean copy(int i4, @g FanClubInfoBean info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return new JoinFanClubBean(i4, info);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JoinFanClubBean) {
            JoinFanClubBean joinFanClubBean = (JoinFanClubBean) obj;
            return this.chips == joinFanClubBean.chips && Intrinsics.areEqual(this.info, joinFanClubBean.info);
        }
        return false;
    }

    public final int getChips() {
        return this.chips;
    }

    @g
    public final FanClubInfoBean getInfo() {
        return this.info;
    }

    public int hashCode() {
        return (this.chips * 31) + this.info.hashCode();
    }

    @g
    public String toString() {
        return "JoinFanClubBean(chips=" + this.chips + ", info=" + this.info + ')';
    }
}
