package com.qennnsad.aknkaksd.data.bean.pk;

import a5.a;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PkBroadcastMsg.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J\u000f\u0010 \u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u000eHÆ\u0003Je\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\u0005HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0016\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0016\u0010\f\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006*"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;", "", "type", "", "coinsSender", "", "coinsReceiver", "donatorsSender", "", "Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;", "donatorsReceiver", "interactionTime", "punishmentTime", "startTime", "", "(Ljava/lang/String;IILjava/util/List;Ljava/util/List;IIJ)V", "getCoinsReceiver", "()I", "getCoinsSender", "getDonatorsReceiver", "()Ljava/util/List;", "getDonatorsSender", "getInteractionTime", "getPunishmentTime", "getStartTime", "()J", "getType", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PkBroadcastMsg {
    @SerializedName("receiver_score")
    private final int coinsReceiver;
    @SerializedName("sender_score")
    private final int coinsSender;
    @SerializedName("receiver_donators")
    @g
    private final List<Donator> donatorsReceiver;
    @SerializedName("sender_donators")
    @g
    private final List<Donator> donatorsSender;
    @SerializedName("interaction_time")
    private final int interactionTime;
    @SerializedName("punishment_time")
    private final int punishmentTime;
    @SerializedName("start_time")
    private final long startTime;
    @g
    private final String type;

    public PkBroadcastMsg(@g String type, int i4, int i10, @g List<Donator> donatorsSender, @g List<Donator> donatorsReceiver, int i11, int i12, long j4) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(donatorsSender, "donatorsSender");
        Intrinsics.checkNotNullParameter(donatorsReceiver, "donatorsReceiver");
        this.type = type;
        this.coinsSender = i4;
        this.coinsReceiver = i10;
        this.donatorsSender = donatorsSender;
        this.donatorsReceiver = donatorsReceiver;
        this.interactionTime = i11;
        this.punishmentTime = i12;
        this.startTime = j4;
    }

    @g
    public final String component1() {
        return this.type;
    }

    public final int component2() {
        return this.coinsSender;
    }

    public final int component3() {
        return this.coinsReceiver;
    }

    @g
    public final List<Donator> component4() {
        return this.donatorsSender;
    }

    @g
    public final List<Donator> component5() {
        return this.donatorsReceiver;
    }

    public final int component6() {
        return this.interactionTime;
    }

    public final int component7() {
        return this.punishmentTime;
    }

    public final long component8() {
        return this.startTime;
    }

    @g
    public final PkBroadcastMsg copy(@g String type, int i4, int i10, @g List<Donator> donatorsSender, @g List<Donator> donatorsReceiver, int i11, int i12, long j4) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(donatorsSender, "donatorsSender");
        Intrinsics.checkNotNullParameter(donatorsReceiver, "donatorsReceiver");
        return new PkBroadcastMsg(type, i4, i10, donatorsSender, donatorsReceiver, i11, i12, j4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PkBroadcastMsg) {
            PkBroadcastMsg pkBroadcastMsg = (PkBroadcastMsg) obj;
            return Intrinsics.areEqual(this.type, pkBroadcastMsg.type) && this.coinsSender == pkBroadcastMsg.coinsSender && this.coinsReceiver == pkBroadcastMsg.coinsReceiver && Intrinsics.areEqual(this.donatorsSender, pkBroadcastMsg.donatorsSender) && Intrinsics.areEqual(this.donatorsReceiver, pkBroadcastMsg.donatorsReceiver) && this.interactionTime == pkBroadcastMsg.interactionTime && this.punishmentTime == pkBroadcastMsg.punishmentTime && this.startTime == pkBroadcastMsg.startTime;
        }
        return false;
    }

    public final int getCoinsReceiver() {
        return this.coinsReceiver;
    }

    public final int getCoinsSender() {
        return this.coinsSender;
    }

    @g
    public final List<Donator> getDonatorsReceiver() {
        return this.donatorsReceiver;
    }

    @g
    public final List<Donator> getDonatorsSender() {
        return this.donatorsSender;
    }

    public final int getInteractionTime() {
        return this.interactionTime;
    }

    public final int getPunishmentTime() {
        return this.punishmentTime;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    @g
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((((((((((this.type.hashCode() * 31) + this.coinsSender) * 31) + this.coinsReceiver) * 31) + this.donatorsSender.hashCode()) * 31) + this.donatorsReceiver.hashCode()) * 31) + this.interactionTime) * 31) + this.punishmentTime) * 31) + a.a(this.startTime);
    }

    @g
    public String toString() {
        return "PkBroadcastMsg(type=" + this.type + ", coinsSender=" + this.coinsSender + ", coinsReceiver=" + this.coinsReceiver + ", donatorsSender=" + this.donatorsSender + ", donatorsReceiver=" + this.donatorsReceiver + ", interactionTime=" + this.interactionTime + ", punishmentTime=" + this.punishmentTime + ", startTime=" + this.startTime + ')';
    }
}
