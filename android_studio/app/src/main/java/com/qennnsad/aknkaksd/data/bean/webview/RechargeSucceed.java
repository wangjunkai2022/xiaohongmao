package com.qennnsad.aknkaksd.data.bean.webview;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: RechargeSucceed.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\tJ0\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/webview/RechargeSucceed;", "", "type", "", "coin", "", "agent", "(Ljava/lang/String;ILjava/lang/Integer;)V", "getAgent", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCoin", "()I", "getType", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;ILjava/lang/Integer;)Lcom/qennnsad/aknkaksd/data/bean/webview/RechargeSucceed;", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RechargeSucceed {
    @h
    private final Integer agent;
    private final int coin;
    @h
    private final String type;

    public RechargeSucceed(@h String str, int i4, @h Integer num) {
        this.type = str;
        this.coin = i4;
        this.agent = num;
    }

    public static /* synthetic */ RechargeSucceed copy$default(RechargeSucceed rechargeSucceed, String str, int i4, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = rechargeSucceed.type;
        }
        if ((i10 & 2) != 0) {
            i4 = rechargeSucceed.coin;
        }
        if ((i10 & 4) != 0) {
            num = rechargeSucceed.agent;
        }
        return rechargeSucceed.copy(str, i4, num);
    }

    @h
    public final String component1() {
        return this.type;
    }

    public final int component2() {
        return this.coin;
    }

    @h
    public final Integer component3() {
        return this.agent;
    }

    @g
    public final RechargeSucceed copy(@h String str, int i4, @h Integer num) {
        return new RechargeSucceed(str, i4, num);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RechargeSucceed) {
            RechargeSucceed rechargeSucceed = (RechargeSucceed) obj;
            return Intrinsics.areEqual(this.type, rechargeSucceed.type) && this.coin == rechargeSucceed.coin && Intrinsics.areEqual(this.agent, rechargeSucceed.agent);
        }
        return false;
    }

    @h
    public final Integer getAgent() {
        return this.agent;
    }

    public final int getCoin() {
        return this.coin;
    }

    @h
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        int hashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.coin) * 31;
        Integer num = this.agent;
        return hashCode + (num != null ? num.hashCode() : 0);
    }

    @g
    public String toString() {
        return "RechargeSucceed(type=" + this.type + ", coin=" + this.coin + ", agent=" + this.agent + ')';
    }
}
