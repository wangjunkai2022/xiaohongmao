package com.qennnsad.aknkaksd.data.bean;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AdConfigBean.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;", "", "targetUrl", "", TypedValues.Attributes.S_TARGET, "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "content", "textColor", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getTarget", "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "getTargetUrl", "getTextColor", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TextAdBean {
    @h
    private final String content;
    @h
    private final UrlTarget target;
    @SerializedName("target_url")
    @h
    private final String targetUrl;
    @SerializedName("text_color")
    @h
    private final String textColor;

    public TextAdBean(@h String str, @h UrlTarget urlTarget, @h String str2, @h String str3) {
        this.targetUrl = str;
        this.target = urlTarget;
        this.content = str2;
        this.textColor = str3;
    }

    public static /* synthetic */ TextAdBean copy$default(TextAdBean textAdBean, String str, UrlTarget urlTarget, String str2, String str3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = textAdBean.targetUrl;
        }
        if ((i4 & 2) != 0) {
            urlTarget = textAdBean.target;
        }
        if ((i4 & 4) != 0) {
            str2 = textAdBean.content;
        }
        if ((i4 & 8) != 0) {
            str3 = textAdBean.textColor;
        }
        return textAdBean.copy(str, urlTarget, str2, str3);
    }

    @h
    public final String component1() {
        return this.targetUrl;
    }

    @h
    public final UrlTarget component2() {
        return this.target;
    }

    @h
    public final String component3() {
        return this.content;
    }

    @h
    public final String component4() {
        return this.textColor;
    }

    @g
    public final TextAdBean copy(@h String str, @h UrlTarget urlTarget, @h String str2, @h String str3) {
        return new TextAdBean(str, urlTarget, str2, str3);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextAdBean) {
            TextAdBean textAdBean = (TextAdBean) obj;
            return Intrinsics.areEqual(this.targetUrl, textAdBean.targetUrl) && this.target == textAdBean.target && Intrinsics.areEqual(this.content, textAdBean.content) && Intrinsics.areEqual(this.textColor, textAdBean.textColor);
        }
        return false;
    }

    @h
    public final String getContent() {
        return this.content;
    }

    @h
    public final UrlTarget getTarget() {
        return this.target;
    }

    @h
    public final String getTargetUrl() {
        return this.targetUrl;
    }

    @h
    public final String getTextColor() {
        return this.textColor;
    }

    public int hashCode() {
        String str = this.targetUrl;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        UrlTarget urlTarget = this.target;
        int hashCode2 = (hashCode + (urlTarget == null ? 0 : urlTarget.hashCode())) * 31;
        String str2 = this.content;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.textColor;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    @g
    public String toString() {
        return "TextAdBean(targetUrl=" + this.targetUrl + ", target=" + this.target + ", content=" + this.content + ", textColor=" + this.textColor + ')';
    }
}
