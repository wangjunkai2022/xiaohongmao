package com.qennnsad.aknkaksd.data.bean;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: LaunchAdBean.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0019\u001a\u00020\tHÆ\u0003J\t\u0010\u001a\u001a\u00020\tHÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\tHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\r¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;", "", "id", "", "picPath", "targetUrl", TypedValues.Attributes.S_TARGET, "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "skipTime", "", "showTime", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;II)V", "getId", "()Ljava/lang/String;", "getPicPath", "getShowTime", "()I", "getSkipTime", "getTarget", "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "getTargetUrl", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LaunchAdBean {
    @g
    private final String id;
    @SerializedName("pic_path")
    @g
    private final String picPath;
    @SerializedName("show_time")
    private final int showTime;
    @SerializedName("skip_time")
    private final int skipTime;
    @g
    private final UrlTarget target;
    @SerializedName("target_url")
    @g
    private final String targetUrl;

    public LaunchAdBean(@g String id, @g String picPath, @g String targetUrl, @g UrlTarget target, int i4, int i10) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(picPath, "picPath");
        Intrinsics.checkNotNullParameter(targetUrl, "targetUrl");
        Intrinsics.checkNotNullParameter(target, "target");
        this.id = id;
        this.picPath = picPath;
        this.targetUrl = targetUrl;
        this.target = target;
        this.skipTime = i4;
        this.showTime = i10;
    }

    public static /* synthetic */ LaunchAdBean copy$default(LaunchAdBean launchAdBean, String str, String str2, String str3, UrlTarget urlTarget, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = launchAdBean.id;
        }
        if ((i11 & 2) != 0) {
            str2 = launchAdBean.picPath;
        }
        String str4 = str2;
        if ((i11 & 4) != 0) {
            str3 = launchAdBean.targetUrl;
        }
        String str5 = str3;
        if ((i11 & 8) != 0) {
            urlTarget = launchAdBean.target;
        }
        UrlTarget urlTarget2 = urlTarget;
        if ((i11 & 16) != 0) {
            i4 = launchAdBean.skipTime;
        }
        int i12 = i4;
        if ((i11 & 32) != 0) {
            i10 = launchAdBean.showTime;
        }
        return launchAdBean.copy(str, str4, str5, urlTarget2, i12, i10);
    }

    @g
    public final String component1() {
        return this.id;
    }

    @g
    public final String component2() {
        return this.picPath;
    }

    @g
    public final String component3() {
        return this.targetUrl;
    }

    @g
    public final UrlTarget component4() {
        return this.target;
    }

    public final int component5() {
        return this.skipTime;
    }

    public final int component6() {
        return this.showTime;
    }

    @g
    public final LaunchAdBean copy(@g String id, @g String picPath, @g String targetUrl, @g UrlTarget target, int i4, int i10) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(picPath, "picPath");
        Intrinsics.checkNotNullParameter(targetUrl, "targetUrl");
        Intrinsics.checkNotNullParameter(target, "target");
        return new LaunchAdBean(id, picPath, targetUrl, target, i4, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LaunchAdBean) {
            LaunchAdBean launchAdBean = (LaunchAdBean) obj;
            return Intrinsics.areEqual(this.id, launchAdBean.id) && Intrinsics.areEqual(this.picPath, launchAdBean.picPath) && Intrinsics.areEqual(this.targetUrl, launchAdBean.targetUrl) && this.target == launchAdBean.target && this.skipTime == launchAdBean.skipTime && this.showTime == launchAdBean.showTime;
        }
        return false;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @g
    public final String getPicPath() {
        return this.picPath;
    }

    public final int getShowTime() {
        return this.showTime;
    }

    public final int getSkipTime() {
        return this.skipTime;
    }

    @g
    public final UrlTarget getTarget() {
        return this.target;
    }

    @g
    public final String getTargetUrl() {
        return this.targetUrl;
    }

    public int hashCode() {
        return (((((((((this.id.hashCode() * 31) + this.picPath.hashCode()) * 31) + this.targetUrl.hashCode()) * 31) + this.target.hashCode()) * 31) + this.skipTime) * 31) + this.showTime;
    }

    @g
    public String toString() {
        return "LaunchAdBean(id=" + this.id + ", picPath=" + this.picPath + ", targetUrl=" + this.targetUrl + ", target=" + this.target + ", skipTime=" + this.skipTime + ", showTime=" + this.showTime + ')';
    }
}
