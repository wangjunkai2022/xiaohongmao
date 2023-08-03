package com.qennnsad.aknkaksd.util.deviceinfo.model;

import android.content.Context;
import com.qennnsad.aknkaksd.util.deviceinfo.DeviceInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.json.JSONObject;

/* compiled from: App.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\b\"\u0004\b\u0017\u0010\nR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\b\"\u0004\b\u001a\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "activityName", "", "getActivityName", "()Ljava/lang/String;", "setActivityName", "(Ljava/lang/String;)V", "appName", "getAppName", "setAppName", "appVersionCode", "", "getAppVersionCode", "()Ljava/lang/Integer;", "setAppVersionCode", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "appVersionName", "getAppVersionName", "setAppVersionName", "packageName", "getPackageName", "setPackageName", "toJSON", "Lorg/json/JSONObject;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class App {
    @h
    private String activityName;
    @h
    private String appName;
    @h
    private Integer appVersionCode;
    @h
    private String appVersionName;
    @h
    private String packageName;

    public App(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        DeviceInfo deviceInfo = new DeviceInfo(context);
        this.appVersionName = deviceInfo.getVersionName();
        this.appVersionCode = deviceInfo.getVersionCode();
        this.packageName = deviceInfo.getPackageName();
        this.activityName = deviceInfo.getActivityName();
        this.appName = deviceInfo.getAppName();
    }

    @h
    public final String getActivityName() {
        return this.activityName;
    }

    @h
    public final String getAppName() {
        return this.appName;
    }

    @h
    public final Integer getAppVersionCode() {
        return this.appVersionCode;
    }

    @h
    public final String getAppVersionName() {
        return this.appVersionName;
    }

    @h
    public final String getPackageName() {
        return this.packageName;
    }

    public final void setActivityName(@h String str) {
        this.activityName = str;
    }

    public final void setAppName(@h String str) {
        this.appName = str;
    }

    public final void setAppVersionCode(@h Integer num) {
        this.appVersionCode = num;
    }

    public final void setAppVersionName(@h String str) {
        this.appVersionName = str;
    }

    public final void setPackageName(@h String str) {
        this.packageName = str;
    }

    @h
    public final JSONObject toJSON() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appVersionName", this.appVersionName);
            jSONObject.put("appVersionCode", this.appVersionCode);
            jSONObject.put("packageName", this.packageName);
            jSONObject.put("activityName", this.activityName);
            jSONObject.put("appName", this.appName);
            return jSONObject;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
