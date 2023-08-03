package com.qennnsad.aknkaksd.data.bean;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: GameCenter.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/GameCenter;", "", "()V", "GetPointsBean", "GetUrlBean", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GameCenter {
    @g
    public static final GameCenter INSTANCE = new GameCenter();

    /* compiled from: GameCenter.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\u0003HÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetPointsBean;", "", "ordercount", "", "(I)V", "getOrdercount", "()I", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class GetPointsBean {
        private final int ordercount;

        public GetPointsBean(int i4) {
            this.ordercount = i4;
        }

        public static /* synthetic */ GetPointsBean copy$default(GetPointsBean getPointsBean, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i4 = getPointsBean.ordercount;
            }
            return getPointsBean.copy(i4);
        }

        public final int component1() {
            return this.ordercount;
        }

        @g
        public final GetPointsBean copy(int i4) {
            return new GetPointsBean(i4);
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof GetPointsBean) && this.ordercount == ((GetPointsBean) obj).ordercount;
        }

        public final int getOrdercount() {
            return this.ordercount;
        }

        public int hashCode() {
            return this.ordercount;
        }

        @g
        public String toString() {
            return "GetPointsBean(ordercount=" + this.ordercount + ')';
        }
    }

    /* compiled from: GameCenter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;", "", "url", "", TypedValues.Attributes.S_TARGET, "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "hideNavBar", "", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;I)V", "getHideNavBar", "()I", "getTarget", "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "getUrl", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class GetUrlBean {
        private final int hideNavBar;
        @g
        private final UrlTarget target;
        @h
        private final String url;

        public GetUrlBean(@h String str, @g UrlTarget target, int i4) {
            Intrinsics.checkNotNullParameter(target, "target");
            this.url = str;
            this.target = target;
            this.hideNavBar = i4;
        }

        public static /* synthetic */ GetUrlBean copy$default(GetUrlBean getUrlBean, String str, UrlTarget urlTarget, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = getUrlBean.url;
            }
            if ((i10 & 2) != 0) {
                urlTarget = getUrlBean.target;
            }
            if ((i10 & 4) != 0) {
                i4 = getUrlBean.hideNavBar;
            }
            return getUrlBean.copy(str, urlTarget, i4);
        }

        @h
        public final String component1() {
            return this.url;
        }

        @g
        public final UrlTarget component2() {
            return this.target;
        }

        public final int component3() {
            return this.hideNavBar;
        }

        @g
        public final GetUrlBean copy(@h String str, @g UrlTarget target, int i4) {
            Intrinsics.checkNotNullParameter(target, "target");
            return new GetUrlBean(str, target, i4);
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof GetUrlBean) {
                GetUrlBean getUrlBean = (GetUrlBean) obj;
                return Intrinsics.areEqual(this.url, getUrlBean.url) && this.target == getUrlBean.target && this.hideNavBar == getUrlBean.hideNavBar;
            }
            return false;
        }

        public final int getHideNavBar() {
            return this.hideNavBar;
        }

        @g
        public final UrlTarget getTarget() {
            return this.target;
        }

        @h
        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            String str = this.url;
            return ((((str == null ? 0 : str.hashCode()) * 31) + this.target.hashCode()) * 31) + this.hideNavBar;
        }

        @g
        public String toString() {
            return "GetUrlBean(url=" + this.url + ", target=" + this.target + ", hideNavBar=" + this.hideNavBar + ')';
        }
    }

    private GameCenter() {
    }
}
