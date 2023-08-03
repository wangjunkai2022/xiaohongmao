package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubConfig;
import com.qennnsad.aknkaksd.data.websocket.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m.c;
import m8.g;
import m8.h;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b+\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B{\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\u0002\u0010\u001aJ\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0019HÆ\u0003¢\u0006\u0002\u0010(J\u000b\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\rHÆ\u0003J\t\u0010=\u001a\u00020\u000fHÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u009c\u0001\u0010@\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÆ\u0001¢\u0006\u0002\u0010AJ\u0013\u0010B\u001a\u00020\u00192\b\u0010C\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010D\u001a\u00020EHÖ\u0001J\t\u0010F\u001a\u00020\u0007HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0015\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\n\n\u0002\u0010)\u001a\u0004\b'\u0010(R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b2\u00103¨\u0006G"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;", "", c.f86932f, "Lcom/qennnsad/aknkaksd/data/bean/HostBean;", "customerService", "Lcom/qennnsad/aknkaksd/data/bean/CustomerServiceBean;", "androidLink", "", "hall", "Lcom/qennnsad/aknkaksd/data/bean/HallBean;", "yunxin", "Lcom/qennnsad/aknkaksd/data/bean/Yunxin;", "fanclub", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;", "mystery", "Lcom/qennnsad/aknkaksd/data/bean/MysteryConfigBean;", "pinMessage", "Lcom/qennnsad/aknkaksd/data/bean/PinMessageConfig;", "guest", "Lcom/qennnsad/aknkaksd/data/bean/GuestConfig;", "pk", "Lcom/qennnsad/aknkaksd/data/bean/PkConfig;", "streamDeposit", "Lcom/qennnsad/aknkaksd/data/bean/StreamDeposit;", "imWssReconnection", "", "(Lcom/qennnsad/aknkaksd/data/bean/HostBean;Lcom/qennnsad/aknkaksd/data/bean/CustomerServiceBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/HallBean;Lcom/qennnsad/aknkaksd/data/bean/Yunxin;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lcom/qennnsad/aknkaksd/data/bean/MysteryConfigBean;Lcom/qennnsad/aknkaksd/data/bean/PinMessageConfig;Lcom/qennnsad/aknkaksd/data/bean/GuestConfig;Lcom/qennnsad/aknkaksd/data/bean/PkConfig;Lcom/qennnsad/aknkaksd/data/bean/StreamDeposit;Ljava/lang/Boolean;)V", "getAndroidLink", "()Ljava/lang/String;", "getCustomerService", "()Lcom/qennnsad/aknkaksd/data/bean/CustomerServiceBean;", "getFanclub", "()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;", "getGuest", "()Lcom/qennnsad/aknkaksd/data/bean/GuestConfig;", "getHall", "()Lcom/qennnsad/aknkaksd/data/bean/HallBean;", "getHost", "()Lcom/qennnsad/aknkaksd/data/bean/HostBean;", "getImWssReconnection", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getMystery", "()Lcom/qennnsad/aknkaksd/data/bean/MysteryConfigBean;", "getPinMessage", "()Lcom/qennnsad/aknkaksd/data/bean/PinMessageConfig;", "getPk", "()Lcom/qennnsad/aknkaksd/data/bean/PkConfig;", "getStreamDeposit", "()Lcom/qennnsad/aknkaksd/data/bean/StreamDeposit;", "getYunxin", "()Lcom/qennnsad/aknkaksd/data/bean/Yunxin;", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/qennnsad/aknkaksd/data/bean/HostBean;Lcom/qennnsad/aknkaksd/data/bean/CustomerServiceBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/HallBean;Lcom/qennnsad/aknkaksd/data/bean/Yunxin;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lcom/qennnsad/aknkaksd/data/bean/MysteryConfigBean;Lcom/qennnsad/aknkaksd/data/bean/PinMessageConfig;Lcom/qennnsad/aknkaksd/data/bean/GuestConfig;Lcom/qennnsad/aknkaksd/data/bean/PkConfig;Lcom/qennnsad/aknkaksd/data/bean/StreamDeposit;Ljava/lang/Boolean;)Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;", "equals", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ConfigBean {
    @SerializedName("android_download_link")
    @h
    private final String androidLink;
    @h
    private final CustomerServiceBean customerService;
    @h
    private final FanClubConfig fanclub;
    @h
    private final GuestConfig guest;
    @h
    private final HallBean hall;
    @h
    private final HostBean host;
    @h
    private final Boolean imWssReconnection;
    @g
    private final MysteryConfigBean mystery;
    @SerializedName(b.f47838t0)
    @h
    private final PinMessageConfig pinMessage;
    @h
    private final PkConfig pk;
    @SerializedName("topUpDialog")
    @h
    private final StreamDeposit streamDeposit;
    @h
    private final Yunxin yunxin;

    public ConfigBean(@h HostBean hostBean, @h CustomerServiceBean customerServiceBean, @h String str, @h HallBean hallBean, @h Yunxin yunxin, @h FanClubConfig fanClubConfig, @g MysteryConfigBean mystery, @h PinMessageConfig pinMessageConfig, @h GuestConfig guestConfig, @h PkConfig pkConfig, @h StreamDeposit streamDeposit, @h Boolean bool) {
        Intrinsics.checkNotNullParameter(mystery, "mystery");
        this.host = hostBean;
        this.customerService = customerServiceBean;
        this.androidLink = str;
        this.hall = hallBean;
        this.yunxin = yunxin;
        this.fanclub = fanClubConfig;
        this.mystery = mystery;
        this.pinMessage = pinMessageConfig;
        this.guest = guestConfig;
        this.pk = pkConfig;
        this.streamDeposit = streamDeposit;
        this.imWssReconnection = bool;
    }

    @h
    public final HostBean component1() {
        return this.host;
    }

    @h
    public final PkConfig component10() {
        return this.pk;
    }

    @h
    public final StreamDeposit component11() {
        return this.streamDeposit;
    }

    @h
    public final Boolean component12() {
        return this.imWssReconnection;
    }

    @h
    public final CustomerServiceBean component2() {
        return this.customerService;
    }

    @h
    public final String component3() {
        return this.androidLink;
    }

    @h
    public final HallBean component4() {
        return this.hall;
    }

    @h
    public final Yunxin component5() {
        return this.yunxin;
    }

    @h
    public final FanClubConfig component6() {
        return this.fanclub;
    }

    @g
    public final MysteryConfigBean component7() {
        return this.mystery;
    }

    @h
    public final PinMessageConfig component8() {
        return this.pinMessage;
    }

    @h
    public final GuestConfig component9() {
        return this.guest;
    }

    @g
    public final ConfigBean copy(@h HostBean hostBean, @h CustomerServiceBean customerServiceBean, @h String str, @h HallBean hallBean, @h Yunxin yunxin, @h FanClubConfig fanClubConfig, @g MysteryConfigBean mystery, @h PinMessageConfig pinMessageConfig, @h GuestConfig guestConfig, @h PkConfig pkConfig, @h StreamDeposit streamDeposit, @h Boolean bool) {
        Intrinsics.checkNotNullParameter(mystery, "mystery");
        return new ConfigBean(hostBean, customerServiceBean, str, hallBean, yunxin, fanClubConfig, mystery, pinMessageConfig, guestConfig, pkConfig, streamDeposit, bool);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ConfigBean) {
            ConfigBean configBean = (ConfigBean) obj;
            return Intrinsics.areEqual(this.host, configBean.host) && Intrinsics.areEqual(this.customerService, configBean.customerService) && Intrinsics.areEqual(this.androidLink, configBean.androidLink) && Intrinsics.areEqual(this.hall, configBean.hall) && Intrinsics.areEqual(this.yunxin, configBean.yunxin) && Intrinsics.areEqual(this.fanclub, configBean.fanclub) && Intrinsics.areEqual(this.mystery, configBean.mystery) && Intrinsics.areEqual(this.pinMessage, configBean.pinMessage) && Intrinsics.areEqual(this.guest, configBean.guest) && Intrinsics.areEqual(this.pk, configBean.pk) && Intrinsics.areEqual(this.streamDeposit, configBean.streamDeposit) && Intrinsics.areEqual(this.imWssReconnection, configBean.imWssReconnection);
        }
        return false;
    }

    @h
    public final String getAndroidLink() {
        return this.androidLink;
    }

    @h
    public final CustomerServiceBean getCustomerService() {
        return this.customerService;
    }

    @h
    public final FanClubConfig getFanclub() {
        return this.fanclub;
    }

    @h
    public final GuestConfig getGuest() {
        return this.guest;
    }

    @h
    public final HallBean getHall() {
        return this.hall;
    }

    @h
    public final HostBean getHost() {
        return this.host;
    }

    @h
    public final Boolean getImWssReconnection() {
        return this.imWssReconnection;
    }

    @g
    public final MysteryConfigBean getMystery() {
        return this.mystery;
    }

    @h
    public final PinMessageConfig getPinMessage() {
        return this.pinMessage;
    }

    @h
    public final PkConfig getPk() {
        return this.pk;
    }

    @h
    public final StreamDeposit getStreamDeposit() {
        return this.streamDeposit;
    }

    @h
    public final Yunxin getYunxin() {
        return this.yunxin;
    }

    public int hashCode() {
        HostBean hostBean = this.host;
        int hashCode = (hostBean == null ? 0 : hostBean.hashCode()) * 31;
        CustomerServiceBean customerServiceBean = this.customerService;
        int hashCode2 = (hashCode + (customerServiceBean == null ? 0 : customerServiceBean.hashCode())) * 31;
        String str = this.androidLink;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        HallBean hallBean = this.hall;
        int hashCode4 = (hashCode3 + (hallBean == null ? 0 : hallBean.hashCode())) * 31;
        Yunxin yunxin = this.yunxin;
        int hashCode5 = (hashCode4 + (yunxin == null ? 0 : yunxin.hashCode())) * 31;
        FanClubConfig fanClubConfig = this.fanclub;
        int hashCode6 = (((hashCode5 + (fanClubConfig == null ? 0 : fanClubConfig.hashCode())) * 31) + this.mystery.hashCode()) * 31;
        PinMessageConfig pinMessageConfig = this.pinMessage;
        int hashCode7 = (hashCode6 + (pinMessageConfig == null ? 0 : pinMessageConfig.hashCode())) * 31;
        GuestConfig guestConfig = this.guest;
        int hashCode8 = (hashCode7 + (guestConfig == null ? 0 : guestConfig.hashCode())) * 31;
        PkConfig pkConfig = this.pk;
        int hashCode9 = (hashCode8 + (pkConfig == null ? 0 : pkConfig.hashCode())) * 31;
        StreamDeposit streamDeposit = this.streamDeposit;
        int hashCode10 = (hashCode9 + (streamDeposit == null ? 0 : streamDeposit.hashCode())) * 31;
        Boolean bool = this.imWssReconnection;
        return hashCode10 + (bool != null ? bool.hashCode() : 0);
    }

    @g
    public String toString() {
        return "ConfigBean(host=" + this.host + ", customerService=" + this.customerService + ", androidLink=" + this.androidLink + ", hall=" + this.hall + ", yunxin=" + this.yunxin + ", fanclub=" + this.fanclub + ", mystery=" + this.mystery + ", pinMessage=" + this.pinMessage + ", guest=" + this.guest + ", pk=" + this.pk + ", streamDeposit=" + this.streamDeposit + ", imWssReconnection=" + this.imWssReconnection + ')';
    }
}
