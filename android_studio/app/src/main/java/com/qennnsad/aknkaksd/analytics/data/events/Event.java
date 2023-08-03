package com.qennnsad.aknkaksd.analytics.data.events;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.annotations.SerializedName;
import io.sentry.protocol.Device;
import io.sentry.protocol.h;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Event.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010%\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B³\u0001\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0014\u0012\u0006\u0010(\u001a\u00020\u0002¢\u0006\u0004\bE\u0010FBG\b\u0016\u0012\u0006\u0010H\u001a\u00020G\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010L\u001a\u00020K\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0014\u0012\u0006\u0010(\u001a\u00020\u0002¢\u0006\u0004\bE\u0010MJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\f\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0002HÆ\u0003J\u0015\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0014HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0002HÆ\u0003J×\u0001\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0017\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u00022\b\b\u0002\u0010\u0019\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u001f\u001a\u00020\u00022\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010!\u001a\u00020\u00022\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010$\u001a\u00020\u00022\b\b\u0002\u0010%\u001a\u00020\u00022\b\b\u0002\u0010&\u001a\u00020\u00022\u0014\b\u0002\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00142\b\b\u0002\u0010(\u001a\u00020\u0002HÆ\u0001J\t\u0010+\u001a\u00020*HÖ\u0001J\u0013\u0010.\u001a\u00020-2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001a\u0010\u0017\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010/\u001a\u0004\b0\u00101R\u001a\u0010\u0018\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010/\u001a\u0004\b2\u00101R\u001a\u0010\u0019\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010/\u001a\u0004\b3\u00101R\u001a\u0010\u001a\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010/\u001a\u0004\b4\u00101R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u0010/\u001a\u0004\b5\u00101R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010/\u001a\u0004\b6\u00101R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010/\u001a\u0004\b7\u00101R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010/\u001a\u0004\b8\u00101R\u001a\u0010\u001f\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010/\u001a\u0004\b9\u00101R\u001c\u0010 \u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b \u0010/\u001a\u0004\b:\u00101R\u001a\u0010!\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010/\u001a\u0004\b;\u00101R\u001c\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010/\u001a\u0004\b<\u00101R\u001c\u0010#\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010/\u001a\u0004\b=\u00101R\u001a\u0010$\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b$\u0010/\u001a\u0004\b>\u00101R\u001a\u0010%\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010/\u001a\u0004\b?\u00101R\u001a\u0010&\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010/\u001a\u0004\b@\u00101R&\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00148\u0006X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010A\u001a\u0004\bB\u0010CR\u001a\u0010(\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010/\u001a\u0004\bD\u00101¨\u0006N"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Event;", "", "", "toString", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "", "component17", "component18", "recordTime", "userAgent", "httpHost", "userId", "appName", "appVersionNumber", "appBuildTime", "appPkgName", "appReleaseChannel", Device.b.f83594e, "platform", h.f83693h, "vendor", "sysLang", "name", "deviceId", "params", "status", "copy", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", "getRecordTime", "()Ljava/lang/String;", "getUserAgent", "getHttpHost", "getUserId", "getAppName", "getAppVersionNumber", "getAppBuildTime", "getAppPkgName", "getAppReleaseChannel", "getModel", "getPlatform", "getOs", "getVendor", "getSysLang", "getName", "getDeviceId", "Ljava/util/Map;", "getParams", "()Ljava/util/Map;", "getStatus", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V", "Lg5/a;", "localDataManager", "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;", "deviceInfo", "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;", "prefsHelper", "(Lg5/a;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class Event {
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
    @SerializedName("DeviceID")
    @g
    private final String deviceId;
    @SerializedName("HttpHost")
    @g
    private final String httpHost;
    @SerializedName(ExifInterface.TAG_MODEL)
    @m8.h
    private final String model;
    @SerializedName("EventName")
    @g
    private final String name;
    @SerializedName("OS")
    @m8.h
    private final String os;
    @SerializedName("EventParams")
    @g
    private final Map<String, String> params;
    @SerializedName("Platform")
    @g
    private final String platform;
    @SerializedName("RecordTime")
    @g
    private final String recordTime;
    @SerializedName("EventStatus")
    @g
    private final String status;
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

    public Event(@g String recordTime, @g String userAgent, @g String httpHost, @g String userId, @m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h String str4, @g String appReleaseChannel, @m8.h String str5, @g String platform, @m8.h String str6, @m8.h String str7, @g String sysLang, @g String name, @g String deviceId, @g Map<String, String> params, @g String status) {
        Intrinsics.checkNotNullParameter(recordTime, "recordTime");
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        Intrinsics.checkNotNullParameter(httpHost, "httpHost");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(appReleaseChannel, "appReleaseChannel");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(sysLang, "sysLang");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(status, "status");
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
        this.name = name;
        this.deviceId = deviceId;
        this.params = params;
        this.status = status;
    }

    @g
    public final String component1() {
        return this.recordTime;
    }

    @m8.h
    public final String component10() {
        return this.model;
    }

    @g
    public final String component11() {
        return this.platform;
    }

    @m8.h
    public final String component12() {
        return this.os;
    }

    @m8.h
    public final String component13() {
        return this.vendor;
    }

    @g
    public final String component14() {
        return this.sysLang;
    }

    @g
    public final String component15() {
        return this.name;
    }

    @g
    public final String component16() {
        return this.deviceId;
    }

    @g
    public final Map<String, String> component17() {
        return this.params;
    }

    @g
    public final String component18() {
        return this.status;
    }

    @g
    public final String component2() {
        return this.userAgent;
    }

    @g
    public final String component3() {
        return this.httpHost;
    }

    @g
    public final String component4() {
        return this.userId;
    }

    @m8.h
    public final String component5() {
        return this.appName;
    }

    @m8.h
    public final String component6() {
        return this.appVersionNumber;
    }

    @m8.h
    public final String component7() {
        return this.appBuildTime;
    }

    @m8.h
    public final String component8() {
        return this.appPkgName;
    }

    @g
    public final String component9() {
        return this.appReleaseChannel;
    }

    @g
    public final Event copy(@g String recordTime, @g String userAgent, @g String httpHost, @g String userId, @m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h String str4, @g String appReleaseChannel, @m8.h String str5, @g String platform, @m8.h String str6, @m8.h String str7, @g String sysLang, @g String name, @g String deviceId, @g Map<String, String> params, @g String status) {
        Intrinsics.checkNotNullParameter(recordTime, "recordTime");
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        Intrinsics.checkNotNullParameter(httpHost, "httpHost");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(appReleaseChannel, "appReleaseChannel");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(sysLang, "sysLang");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(status, "status");
        return new Event(recordTime, userAgent, httpHost, userId, str, str2, str3, str4, appReleaseChannel, str5, platform, str6, str7, sysLang, name, deviceId, params, status);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Event) {
            Event event = (Event) obj;
            return Intrinsics.areEqual(this.recordTime, event.recordTime) && Intrinsics.areEqual(this.userAgent, event.userAgent) && Intrinsics.areEqual(this.httpHost, event.httpHost) && Intrinsics.areEqual(this.userId, event.userId) && Intrinsics.areEqual(this.appName, event.appName) && Intrinsics.areEqual(this.appVersionNumber, event.appVersionNumber) && Intrinsics.areEqual(this.appBuildTime, event.appBuildTime) && Intrinsics.areEqual(this.appPkgName, event.appPkgName) && Intrinsics.areEqual(this.appReleaseChannel, event.appReleaseChannel) && Intrinsics.areEqual(this.model, event.model) && Intrinsics.areEqual(this.platform, event.platform) && Intrinsics.areEqual(this.os, event.os) && Intrinsics.areEqual(this.vendor, event.vendor) && Intrinsics.areEqual(this.sysLang, event.sysLang) && Intrinsics.areEqual(this.name, event.name) && Intrinsics.areEqual(this.deviceId, event.deviceId) && Intrinsics.areEqual(this.params, event.params) && Intrinsics.areEqual(this.status, event.status);
        }
        return false;
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
    public final String getDeviceId() {
        return this.deviceId;
    }

    @g
    public final String getHttpHost() {
        return this.httpHost;
    }

    @m8.h
    public final String getModel() {
        return this.model;
    }

    @g
    public final String getName() {
        return this.name;
    }

    @m8.h
    public final String getOs() {
        return this.os;
    }

    @g
    public final Map<String, String> getParams() {
        return this.params;
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
    public final String getStatus() {
        return this.status;
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

    public int hashCode() {
        int hashCode = ((((((this.recordTime.hashCode() * 31) + this.userAgent.hashCode()) * 31) + this.httpHost.hashCode()) * 31) + this.userId.hashCode()) * 31;
        String str = this.appName;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.appVersionNumber;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.appBuildTime;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.appPkgName;
        int hashCode5 = (((hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.appReleaseChannel.hashCode()) * 31;
        String str5 = this.model;
        int hashCode6 = (((hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.platform.hashCode()) * 31;
        String str6 = this.os;
        int hashCode7 = (hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.vendor;
        return ((((((((((hashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31) + this.sysLang.hashCode()) * 31) + this.name.hashCode()) * 31) + this.deviceId.hashCode()) * 31) + this.params.hashCode()) * 31) + this.status.hashCode();
    }

    @g
    public String toString() {
        return "Event(name='" + this.name + "', status=" + this.status + ", params=" + this.params + ", deviceId='" + this.deviceId + "') " + super.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ Event(java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, java.lang.String r28, java.lang.String r29, java.lang.String r30, java.lang.String r31, java.lang.String r32, java.lang.String r33, java.lang.String r34, java.lang.String r35, java.lang.String r36, java.util.Map r37, java.lang.String r38, int r39, kotlin.jvm.internal.DefaultConstructorMarker r40) {
        /*
            r20 = this;
            r0 = 65536(0x10000, float:9.18355E-41)
            r0 = r39 & r0
            if (r0 == 0) goto L11
            java.util.Map r0 = kotlin.collections.MapsKt.emptyMap()
            java.util.Map r0 = kotlin.collections.MapsKt.toMutableMap(r0)
            r18 = r0
            goto L13
        L11:
            r18 = r37
        L13:
            r1 = r20
            r2 = r21
            r3 = r22
            r4 = r23
            r5 = r24
            r6 = r25
            r7 = r26
            r8 = r27
            r9 = r28
            r10 = r29
            r11 = r30
            r12 = r31
            r13 = r32
            r14 = r33
            r15 = r34
            r16 = r35
            r17 = r36
            r19 = r38
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.analytics.data.events.Event.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.util.Map, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ Event(g5.a r8, com.qennnsad.aknkaksd.analytics.data.device.DeviceInfo r9, com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper r10, java.lang.String r11, java.util.Map r12, java.lang.String r13, int r14, kotlin.jvm.internal.DefaultConstructorMarker r15) {
        /*
            r7 = this;
            r14 = r14 & 16
            if (r14 == 0) goto Lc
            java.util.Map r12 = kotlin.collections.MapsKt.emptyMap()
            java.util.Map r12 = kotlin.collections.MapsKt.toMutableMap(r12)
        Lc:
            r5 = r12
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.analytics.data.events.Event.<init>(g5.a, com.qennnsad.aknkaksd.analytics.data.device.DeviceInfo, com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper, java.lang.String, java.util.Map, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public Event(@m8.g g5.a r21, @m8.g com.qennnsad.aknkaksd.analytics.data.device.DeviceInfo r22, @m8.g com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper r23, @m8.g java.lang.String r24, @m8.g java.util.Map<java.lang.String, java.lang.String> r25, @m8.g java.lang.String r26) {
        /*
            r20 = this;
            java.lang.String r0 = "localDataManager"
            r1 = r21
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            java.lang.String r0 = "deviceInfo"
            r2 = r22
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "prefsHelper"
            r3 = r23
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "name"
            r15 = r24
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            java.lang.String r0 = "params"
            r14 = r25
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            java.lang.String r0 = "status"
            r13 = r26
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = r22.getRecordTime()
            com.qennnsad.aknkaksd.data.bean.ConfigDnsBean r4 = r21.g()
            r5 = 0
            java.lang.String r4 = r4.getHostWithProtocol(r5)
            java.lang.String r5 = "n/a"
            if (r4 != 0) goto L3c
            r4 = r5
        L3c:
            com.qennnsad.aknkaksd.data.bean.user.UserBean r1 = r21.C()
            if (r1 == 0) goto L4a
            java.lang.String r1 = r1.getId()
            if (r1 != 0) goto L49
            goto L4a
        L49:
            r5 = r1
        L4a:
            java.lang.String r6 = r22.getAppName()
            java.lang.String r7 = r22.getAppVersionName()
            java.lang.String r8 = r22.getAppBuildTime()
            java.lang.String r9 = r22.getAppPackageName()
            java.lang.String r11 = r22.getModel()
            java.lang.String r12 = r22.getPlatform()
            java.lang.String r16 = r22.getOs()
            java.lang.String r17 = r22.getVendor()
            java.lang.String r18 = r22.getLanguage()
            java.lang.String r1 = r23.getImei()
            if (r1 != 0) goto L78
            java.lang.String r1 = r22.getDeviceId()
        L78:
            r19 = r1
            java.lang.String r3 = "okhttp/4.8.0"
            java.lang.String r10 = "wildland"
            r1 = r20
            r2 = r0
            r13 = r16
            r14 = r17
            r15 = r18
            r16 = r24
            r17 = r19
            r18 = r25
            r19 = r26
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.analytics.data.events.Event.<init>(g5.a, com.qennnsad.aknkaksd.analytics.data.device.DeviceInfo, com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper, java.lang.String, java.util.Map, java.lang.String):void");
    }
}
