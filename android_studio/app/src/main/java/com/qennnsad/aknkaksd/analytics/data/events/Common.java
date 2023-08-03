package com.qennnsad.aknkaksd.analytics.data.events;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.annotations.SerializedName;
import io.sentry.protocol.Device;
import io.sentry.protocol.h;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Common.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001f\b\u0016\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003¢\u0006\u0002\u0010\u0011J\b\u0010!\u001a\u00020\u0003H\u0016R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0013R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0013R\u0016\u0010\u0010\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0013R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0013¨\u0006\""}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Common;", "", "recordTime", "", "userAgent", "httpHost", "userId", "appName", "appVersionNumber", "appBuildTime", "appPkgName", "appReleaseChannel", Device.b.f83594e, "platform", h.f83693h, "vendor", "sysLang", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAppBuildTime", "()Ljava/lang/String;", "getAppName", "getAppPkgName", "getAppReleaseChannel", "getAppVersionNumber", "getHttpHost", "getModel", "getOs", "getPlatform", "getRecordTime", "getSysLang", "getUserAgent", "getUserId", "getVendor", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class Common {
    @SerializedName("AppBuildTime")
    @m8.h
    private final String appBuildTime;
    @SerializedName("AppName")
    @m8.h
    private final String appName;
    @SerializedName("AppPackgeName")
    @m8.h
    private final String appPkgName;
    @SerializedName("AppReleaseChannel")
    @g
    private final String appReleaseChannel;
    @SerializedName("AppVersionNumber")
    @m8.h
    private final String appVersionNumber;
    @SerializedName("HttpHost")
    @g
    private final String httpHost;
    @SerializedName(ExifInterface.TAG_MODEL)
    @m8.h
    private final String model;
    @SerializedName("OS")
    @m8.h
    private final String os;
    @SerializedName("Platform")
    @g
    private final String platform;
    @SerializedName("RecordTime")
    @g
    private final String recordTime;
    @SerializedName("SystemLanguage")
    @g
    private final String sysLang;
    @SerializedName("UserAgent")
    @g
    private final String userAgent;
    @SerializedName("UserID")
    @g
    private final String userId;
    @SerializedName("Vendor")
    @m8.h
    private final String vendor;

    public Common(@g String recordTime, @g String userAgent, @g String httpHost, @g String userId, @m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h String str4, @g String appReleaseChannel, @m8.h String str5, @g String platform, @m8.h String str6, @m8.h String str7, @g String sysLang) {
        Intrinsics.checkNotNullParameter(recordTime, "recordTime");
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        Intrinsics.checkNotNullParameter(httpHost, "httpHost");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(appReleaseChannel, "appReleaseChannel");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(sysLang, "sysLang");
        this.recordTime = recordTime;
        this.userAgent = userAgent;
        this.httpHost = httpHost;
        this.userId = userId;
        this.appName = str;
        this.appVersionNumber = str2;
        this.appBuildTime = str3;
        this.appPkgName = str4;
        this.appReleaseChannel = appReleaseChannel;
        this.model = str5;
        this.platform = platform;
        this.os = str6;
        this.vendor = str7;
        this.sysLang = sysLang;
    }

    @m8.h
    public final String getAppBuildTime() {
        return this.appBuildTime;
    }

    @m8.h
    public final String getAppName() {
        return this.appName;
    }

    @m8.h
    public final String getAppPkgName() {
        return this.appPkgName;
    }

    @g
    public final String getAppReleaseChannel() {
        return this.appReleaseChannel;
    }

    @m8.h
    public final String getAppVersionNumber() {
        return this.appVersionNumber;
    }

    @g
    public final String getHttpHost() {
        return this.httpHost;
    }

    @m8.h
    public final String getModel() {
        return this.model;
    }

    @m8.h
    public final String getOs() {
        return this.os;
    }

    @g
    public final String getPlatform() {
        return this.platform;
    }

    @g
    public final String getRecordTime() {
        return this.recordTime;
    }

    @g
    public final String getSysLang() {
        return this.sysLang;
    }

    @g
    public final String getUserAgent() {
        return this.userAgent;
    }

    @g
    public final String getUserId() {
        return this.userId;
    }

    @m8.h
    public final String getVendor() {
        return this.vendor;
    }

    @g
    public String toString() {
        return "Common(recordTime='" + this.recordTime + "', userAgent='" + this.userAgent + "', httpHost='" + this.httpHost + "', userId='" + this.userId + "', appName=" + this.appName + ", appVersionNumber=" + this.appVersionNumber + ", appBuildTime=" + this.appBuildTime + ", appPkgName=" + this.appPkgName + ", appReleaseChannel='" + this.appReleaseChannel + "', model=" + this.model + ", platform='" + this.platform + "', os='" + this.os + "', vendor=" + this.vendor + ", sysLang='" + this.sysLang + "')";
    }
}
