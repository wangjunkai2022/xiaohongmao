package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AdConfigBean.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B§\u0001\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0004HÆ\u0003J«\u0001\u0010,\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001J\u0013\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u000201HÖ\u0001J\t\u00102\u001a\u000203HÖ\u0001R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0013R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001cR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001cR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001c¨\u00064"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;", "", "launch", "", "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;", "hallPopup", "Lcom/qennnsad/aknkaksd/data/bean/HallPopupBean;", "meProfile", "rankings", "chatList", "followedAnchors", "ticketRoom", "passwordRoom", "streamFinished", "searchUser", "otherUserProfile", "Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;", "(Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/HallPopupBean;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;)V", "getChatList", "()Ljava/util/List;", "getFollowedAnchors", "getHallPopup", "()Lcom/qennnsad/aknkaksd/data/bean/HallPopupBean;", "getLaunch", "getMeProfile", "getOtherUserProfile", "()Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;", "getPasswordRoom", "()Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;", "getRankings", "getSearchUser", "getStreamFinished", "getTicketRoom", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AdConfigBean {
    @SerializedName("im_top")
    @h
    private final List<BannerAdBean> chatList;
    @SerializedName("subscriptions")
    @h
    private final List<BannerAdBean> followedAnchors;
    @SerializedName("hall_popup")
    @h
    private final HallPopupBean hallPopup;
    @h
    private final List<BannerAdBean> launch;
    @SerializedName("profile_page")
    @h
    private final List<BannerAdBean> meProfile;
    @SerializedName("other_profile")
    @h
    private final TextAdBean otherUserProfile;
    @SerializedName("confirm_password_room")
    @h
    private final BannerAdBean passwordRoom;
    @SerializedName("ratings_page")
    @h
    private final List<BannerAdBean> rankings;
    @SerializedName("user_search_page")
    @h
    private final BannerAdBean searchUser;
    @SerializedName("stream_finished")
    @h
    private final BannerAdBean streamFinished;
    @SerializedName("confirm_ticket_room")
    @h
    private final BannerAdBean ticketRoom;

    public AdConfigBean() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public AdConfigBean(@h List<BannerAdBean> list, @h HallPopupBean hallPopupBean, @h List<BannerAdBean> list2, @h List<BannerAdBean> list3, @h List<BannerAdBean> list4, @h List<BannerAdBean> list5, @h BannerAdBean bannerAdBean, @h BannerAdBean bannerAdBean2, @h BannerAdBean bannerAdBean3, @h BannerAdBean bannerAdBean4, @h TextAdBean textAdBean) {
        this.launch = list;
        this.hallPopup = hallPopupBean;
        this.meProfile = list2;
        this.rankings = list3;
        this.chatList = list4;
        this.followedAnchors = list5;
        this.ticketRoom = bannerAdBean;
        this.passwordRoom = bannerAdBean2;
        this.streamFinished = bannerAdBean3;
        this.searchUser = bannerAdBean4;
        this.otherUserProfile = textAdBean;
    }

    @h
    public final List<BannerAdBean> component1() {
        return this.launch;
    }

    @h
    public final BannerAdBean component10() {
        return this.searchUser;
    }

    @h
    public final TextAdBean component11() {
        return this.otherUserProfile;
    }

    @h
    public final HallPopupBean component2() {
        return this.hallPopup;
    }

    @h
    public final List<BannerAdBean> component3() {
        return this.meProfile;
    }

    @h
    public final List<BannerAdBean> component4() {
        return this.rankings;
    }

    @h
    public final List<BannerAdBean> component5() {
        return this.chatList;
    }

    @h
    public final List<BannerAdBean> component6() {
        return this.followedAnchors;
    }

    @h
    public final BannerAdBean component7() {
        return this.ticketRoom;
    }

    @h
    public final BannerAdBean component8() {
        return this.passwordRoom;
    }

    @h
    public final BannerAdBean component9() {
        return this.streamFinished;
    }

    @g
    public final AdConfigBean copy(@h List<BannerAdBean> list, @h HallPopupBean hallPopupBean, @h List<BannerAdBean> list2, @h List<BannerAdBean> list3, @h List<BannerAdBean> list4, @h List<BannerAdBean> list5, @h BannerAdBean bannerAdBean, @h BannerAdBean bannerAdBean2, @h BannerAdBean bannerAdBean3, @h BannerAdBean bannerAdBean4, @h TextAdBean textAdBean) {
        return new AdConfigBean(list, hallPopupBean, list2, list3, list4, list5, bannerAdBean, bannerAdBean2, bannerAdBean3, bannerAdBean4, textAdBean);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdConfigBean) {
            AdConfigBean adConfigBean = (AdConfigBean) obj;
            return Intrinsics.areEqual(this.launch, adConfigBean.launch) && Intrinsics.areEqual(this.hallPopup, adConfigBean.hallPopup) && Intrinsics.areEqual(this.meProfile, adConfigBean.meProfile) && Intrinsics.areEqual(this.rankings, adConfigBean.rankings) && Intrinsics.areEqual(this.chatList, adConfigBean.chatList) && Intrinsics.areEqual(this.followedAnchors, adConfigBean.followedAnchors) && Intrinsics.areEqual(this.ticketRoom, adConfigBean.ticketRoom) && Intrinsics.areEqual(this.passwordRoom, adConfigBean.passwordRoom) && Intrinsics.areEqual(this.streamFinished, adConfigBean.streamFinished) && Intrinsics.areEqual(this.searchUser, adConfigBean.searchUser) && Intrinsics.areEqual(this.otherUserProfile, adConfigBean.otherUserProfile);
        }
        return false;
    }

    @h
    public final List<BannerAdBean> getChatList() {
        return this.chatList;
    }

    @h
    public final List<BannerAdBean> getFollowedAnchors() {
        return this.followedAnchors;
    }

    @h
    public final HallPopupBean getHallPopup() {
        return this.hallPopup;
    }

    @h
    public final List<BannerAdBean> getLaunch() {
        return this.launch;
    }

    @h
    public final List<BannerAdBean> getMeProfile() {
        return this.meProfile;
    }

    @h
    public final TextAdBean getOtherUserProfile() {
        return this.otherUserProfile;
    }

    @h
    public final BannerAdBean getPasswordRoom() {
        return this.passwordRoom;
    }

    @h
    public final List<BannerAdBean> getRankings() {
        return this.rankings;
    }

    @h
    public final BannerAdBean getSearchUser() {
        return this.searchUser;
    }

    @h
    public final BannerAdBean getStreamFinished() {
        return this.streamFinished;
    }

    @h
    public final BannerAdBean getTicketRoom() {
        return this.ticketRoom;
    }

    public int hashCode() {
        List<BannerAdBean> list = this.launch;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        HallPopupBean hallPopupBean = this.hallPopup;
        int hashCode2 = (hashCode + (hallPopupBean == null ? 0 : hallPopupBean.hashCode())) * 31;
        List<BannerAdBean> list2 = this.meProfile;
        int hashCode3 = (hashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<BannerAdBean> list3 = this.rankings;
        int hashCode4 = (hashCode3 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<BannerAdBean> list4 = this.chatList;
        int hashCode5 = (hashCode4 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<BannerAdBean> list5 = this.followedAnchors;
        int hashCode6 = (hashCode5 + (list5 == null ? 0 : list5.hashCode())) * 31;
        BannerAdBean bannerAdBean = this.ticketRoom;
        int hashCode7 = (hashCode6 + (bannerAdBean == null ? 0 : bannerAdBean.hashCode())) * 31;
        BannerAdBean bannerAdBean2 = this.passwordRoom;
        int hashCode8 = (hashCode7 + (bannerAdBean2 == null ? 0 : bannerAdBean2.hashCode())) * 31;
        BannerAdBean bannerAdBean3 = this.streamFinished;
        int hashCode9 = (hashCode8 + (bannerAdBean3 == null ? 0 : bannerAdBean3.hashCode())) * 31;
        BannerAdBean bannerAdBean4 = this.searchUser;
        int hashCode10 = (hashCode9 + (bannerAdBean4 == null ? 0 : bannerAdBean4.hashCode())) * 31;
        TextAdBean textAdBean = this.otherUserProfile;
        return hashCode10 + (textAdBean != null ? textAdBean.hashCode() : 0);
    }

    @g
    public String toString() {
        return "AdConfigBean(launch=" + this.launch + ", hallPopup=" + this.hallPopup + ", meProfile=" + this.meProfile + ", rankings=" + this.rankings + ", chatList=" + this.chatList + ", followedAnchors=" + this.followedAnchors + ", ticketRoom=" + this.ticketRoom + ", passwordRoom=" + this.passwordRoom + ", streamFinished=" + this.streamFinished + ", searchUser=" + this.searchUser + ", otherUserProfile=" + this.otherUserProfile + ')';
    }

    public /* synthetic */ AdConfigBean(List list, HallPopupBean hallPopupBean, List list2, List list3, List list4, List list5, BannerAdBean bannerAdBean, BannerAdBean bannerAdBean2, BannerAdBean bannerAdBean3, BannerAdBean bannerAdBean4, TextAdBean textAdBean, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : list, (i4 & 2) != 0 ? null : hallPopupBean, (i4 & 4) != 0 ? null : list2, (i4 & 8) != 0 ? null : list3, (i4 & 16) != 0 ? null : list4, (i4 & 32) != 0 ? null : list5, (i4 & 64) != 0 ? null : bannerAdBean, (i4 & 128) != 0 ? null : bannerAdBean2, (i4 & 256) != 0 ? null : bannerAdBean3, (i4 & 512) != 0 ? null : bannerAdBean4, (i4 & 1024) == 0 ? textAdBean : null);
    }
}
