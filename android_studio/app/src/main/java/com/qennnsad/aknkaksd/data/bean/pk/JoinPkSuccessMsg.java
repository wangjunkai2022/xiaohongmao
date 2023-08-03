package com.qennnsad.aknkaksd.data.bean.pk;

import a5.a;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.qennnsad.aknkaksd.data.bean.WatermarkBean;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: JoinPkSuccessMsg.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0002\u0010\rJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u000fJ\t\u0010\u0018\u001a\u00020\nHÆ\u0003J\t\u0010\u0019\u001a\u00020\nHÆ\u0003JV\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\nHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0006HÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;", "", "type", "", "pull_address", "interaction_time", "", StatsConstant.FUNCTION_WATERMARK, "Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;", "start_time", "", "sender_id", "receiver_id", "(Ljava/lang/String;Ljava/lang/String;ILcom/qennnsad/aknkaksd/data/bean/WatermarkBean;Ljava/lang/Long;JJ)V", "getStart_time", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getType", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;ILcom/qennnsad/aknkaksd/data/bean/WatermarkBean;Ljava/lang/Long;JJ)Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class JoinPkSuccessMsg {
    @JvmField
    public final int interaction_time;
    @JvmField
    @g
    public final String pull_address;
    @JvmField
    public final long receiver_id;
    @JvmField
    public final long sender_id;
    @h
    private final transient Long start_time;
    @g
    private final String type;
    @JvmField
    @g
    public final WatermarkBean watermark;

    public JoinPkSuccessMsg(@g String type, @g String pull_address, int i4, @g WatermarkBean watermark, @h Long l10, long j4, long j10) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(pull_address, "pull_address");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        this.type = type;
        this.pull_address = pull_address;
        this.interaction_time = i4;
        this.watermark = watermark;
        this.start_time = l10;
        this.sender_id = j4;
        this.receiver_id = j10;
    }

    @g
    public final String component1() {
        return this.type;
    }

    @g
    public final String component2() {
        return this.pull_address;
    }

    public final int component3() {
        return this.interaction_time;
    }

    @g
    public final WatermarkBean component4() {
        return this.watermark;
    }

    @h
    public final Long component5() {
        return this.start_time;
    }

    public final long component6() {
        return this.sender_id;
    }

    public final long component7() {
        return this.receiver_id;
    }

    @g
    public final JoinPkSuccessMsg copy(@g String type, @g String pull_address, int i4, @g WatermarkBean watermark, @h Long l10, long j4, long j10) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(pull_address, "pull_address");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        return new JoinPkSuccessMsg(type, pull_address, i4, watermark, l10, j4, j10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JoinPkSuccessMsg) {
            JoinPkSuccessMsg joinPkSuccessMsg = (JoinPkSuccessMsg) obj;
            return Intrinsics.areEqual(this.type, joinPkSuccessMsg.type) && Intrinsics.areEqual(this.pull_address, joinPkSuccessMsg.pull_address) && this.interaction_time == joinPkSuccessMsg.interaction_time && Intrinsics.areEqual(this.watermark, joinPkSuccessMsg.watermark) && Intrinsics.areEqual(this.start_time, joinPkSuccessMsg.start_time) && this.sender_id == joinPkSuccessMsg.sender_id && this.receiver_id == joinPkSuccessMsg.receiver_id;
        }
        return false;
    }

    @h
    public final Long getStart_time() {
        return this.start_time;
    }

    @g
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((((((this.type.hashCode() * 31) + this.pull_address.hashCode()) * 31) + this.interaction_time) * 31) + this.watermark.hashCode()) * 31;
        Long l10 = this.start_time;
        return ((((hashCode + (l10 == null ? 0 : l10.hashCode())) * 31) + a.a(this.sender_id)) * 31) + a.a(this.receiver_id);
    }

    @g
    public String toString() {
        return "JoinPkSuccessMsg(type=" + this.type + ", pull_address=" + this.pull_address + ", interaction_time=" + this.interaction_time + ", watermark=" + this.watermark + ", start_time=" + this.start_time + ", sender_id=" + this.sender_id + ", receiver_id=" + this.receiver_id + ')';
    }

    public /* synthetic */ JoinPkSuccessMsg(String str, String str2, int i4, WatermarkBean watermarkBean, Long l10, long j4, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i4, watermarkBean, (i10 & 16) != 0 ? null : l10, j4, j10);
    }
}
