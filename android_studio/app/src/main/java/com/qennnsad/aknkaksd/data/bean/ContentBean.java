package com.qennnsad.aknkaksd.data.bean;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AdInfoBean.kt */
@d
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0015HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/ContentBean;", "Landroid/os/Parcelable;", "content", "", "textColor", "targetUrl", TypedValues.Attributes.S_TARGET, "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V", "getContent", "()Ljava/lang/String;", "getTarget", "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "getTargetUrl", "getTextColor", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ContentBean implements Parcelable {
    @g
    public static final Parcelable.Creator<ContentBean> CREATOR = new Creator();
    @g
    private final String content;
    @h
    private final UrlTarget target;
    @SerializedName("target_url")
    @g
    private final String targetUrl;
    @SerializedName("text_color")
    @g
    private final String textColor;

    /* compiled from: AdInfoBean.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<ContentBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final ContentBean createFromParcel(@g Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ContentBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : UrlTarget.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final ContentBean[] newArray(int i4) {
            return new ContentBean[i4];
        }
    }

    public ContentBean(@g String content, @g String textColor, @g String targetUrl, @h UrlTarget urlTarget) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textColor, "textColor");
        Intrinsics.checkNotNullParameter(targetUrl, "targetUrl");
        this.content = content;
        this.textColor = textColor;
        this.targetUrl = targetUrl;
        this.target = urlTarget;
    }

    public static /* synthetic */ ContentBean copy$default(ContentBean contentBean, String str, String str2, String str3, UrlTarget urlTarget, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = contentBean.content;
        }
        if ((i4 & 2) != 0) {
            str2 = contentBean.textColor;
        }
        if ((i4 & 4) != 0) {
            str3 = contentBean.targetUrl;
        }
        if ((i4 & 8) != 0) {
            urlTarget = contentBean.target;
        }
        return contentBean.copy(str, str2, str3, urlTarget);
    }

    @g
    public final String component1() {
        return this.content;
    }

    @g
    public final String component2() {
        return this.textColor;
    }

    @g
    public final String component3() {
        return this.targetUrl;
    }

    @h
    public final UrlTarget component4() {
        return this.target;
    }

    @g
    public final ContentBean copy(@g String content, @g String textColor, @g String targetUrl, @h UrlTarget urlTarget) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textColor, "textColor");
        Intrinsics.checkNotNullParameter(targetUrl, "targetUrl");
        return new ContentBean(content, textColor, targetUrl, urlTarget);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ContentBean) {
            ContentBean contentBean = (ContentBean) obj;
            return Intrinsics.areEqual(this.content, contentBean.content) && Intrinsics.areEqual(this.textColor, contentBean.textColor) && Intrinsics.areEqual(this.targetUrl, contentBean.targetUrl) && this.target == contentBean.target;
        }
        return false;
    }

    @g
    public final String getContent() {
        return this.content;
    }

    @h
    public final UrlTarget getTarget() {
        return this.target;
    }

    @g
    public final String getTargetUrl() {
        return this.targetUrl;
    }

    @g
    public final String getTextColor() {
        return this.textColor;
    }

    public int hashCode() {
        int hashCode = ((((this.content.hashCode() * 31) + this.textColor.hashCode()) * 31) + this.targetUrl.hashCode()) * 31;
        UrlTarget urlTarget = this.target;
        return hashCode + (urlTarget == null ? 0 : urlTarget.hashCode());
    }

    @g
    public String toString() {
        return "ContentBean(content=" + this.content + ", textColor=" + this.textColor + ", targetUrl=" + this.targetUrl + ", target=" + this.target + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel out, int i4) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.content);
        out.writeString(this.textColor);
        out.writeString(this.targetUrl);
        UrlTarget urlTarget = this.target;
        if (urlTarget == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeString(urlTarget.name());
    }
}
