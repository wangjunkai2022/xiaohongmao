package com.qennnsad.aknkaksd.data.bean.websocket;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: PopupWindowMsg.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\nHÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003JO\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0010\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;", "", "type", "", "popup_type", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;", MessageBundle.TITLE_ENTRY, "content", "url", TypedValues.Attributes.S_TARGET, "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "anchorid", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PopupWindowMsg {
    @JvmField
    @g
    public final String anchorid;
    @JvmField
    @g
    public final String content;
    @JvmField
    @g
    public final PopupType popup_type;
    @JvmField
    @g
    public final UrlTarget target;
    @JvmField
    @g
    public final String title;
    @g
    private final String type;
    @JvmField
    @g
    public final String url;

    public PopupWindowMsg(@g String type, @g PopupType popup_type, @g String title, @g String content, @g String url, @g UrlTarget target, @g String anchorid) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(popup_type, "popup_type");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(anchorid, "anchorid");
        this.type = type;
        this.popup_type = popup_type;
        this.title = title;
        this.content = content;
        this.url = url;
        this.target = target;
        this.anchorid = anchorid;
    }

    public static /* synthetic */ PopupWindowMsg copy$default(PopupWindowMsg popupWindowMsg, String str, PopupType popupType, String str2, String str3, String str4, UrlTarget urlTarget, String str5, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = popupWindowMsg.type;
        }
        if ((i4 & 2) != 0) {
            popupType = popupWindowMsg.popup_type;
        }
        PopupType popupType2 = popupType;
        if ((i4 & 4) != 0) {
            str2 = popupWindowMsg.title;
        }
        String str6 = str2;
        if ((i4 & 8) != 0) {
            str3 = popupWindowMsg.content;
        }
        String str7 = str3;
        if ((i4 & 16) != 0) {
            str4 = popupWindowMsg.url;
        }
        String str8 = str4;
        if ((i4 & 32) != 0) {
            urlTarget = popupWindowMsg.target;
        }
        UrlTarget urlTarget2 = urlTarget;
        if ((i4 & 64) != 0) {
            str5 = popupWindowMsg.anchorid;
        }
        return popupWindowMsg.copy(str, popupType2, str6, str7, str8, urlTarget2, str5);
    }

    @g
    public final String component1() {
        return this.type;
    }

    @g
    public final PopupType component2() {
        return this.popup_type;
    }

    @g
    public final String component3() {
        return this.title;
    }

    @g
    public final String component4() {
        return this.content;
    }

    @g
    public final String component5() {
        return this.url;
    }

    @g
    public final UrlTarget component6() {
        return this.target;
    }

    @g
    public final String component7() {
        return this.anchorid;
    }

    @g
    public final PopupWindowMsg copy(@g String type, @g PopupType popup_type, @g String title, @g String content, @g String url, @g UrlTarget target, @g String anchorid) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(popup_type, "popup_type");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(anchorid, "anchorid");
        return new PopupWindowMsg(type, popup_type, title, content, url, target, anchorid);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PopupWindowMsg) {
            PopupWindowMsg popupWindowMsg = (PopupWindowMsg) obj;
            return Intrinsics.areEqual(this.type, popupWindowMsg.type) && this.popup_type == popupWindowMsg.popup_type && Intrinsics.areEqual(this.title, popupWindowMsg.title) && Intrinsics.areEqual(this.content, popupWindowMsg.content) && Intrinsics.areEqual(this.url, popupWindowMsg.url) && this.target == popupWindowMsg.target && Intrinsics.areEqual(this.anchorid, popupWindowMsg.anchorid);
        }
        return false;
    }

    @g
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((((((((this.type.hashCode() * 31) + this.popup_type.hashCode()) * 31) + this.title.hashCode()) * 31) + this.content.hashCode()) * 31) + this.url.hashCode()) * 31) + this.target.hashCode()) * 31) + this.anchorid.hashCode();
    }

    @g
    public String toString() {
        return "PopupWindowMsg(type=" + this.type + ", popup_type=" + this.popup_type + ", title=" + this.title + ", content=" + this.content + ", url=" + this.url + ", target=" + this.target + ", anchorid=" + this.anchorid + ')';
    }
}
