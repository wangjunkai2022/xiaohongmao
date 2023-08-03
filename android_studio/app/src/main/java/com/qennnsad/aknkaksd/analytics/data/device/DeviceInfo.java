package com.qennnsad.aknkaksd.analytics.data.device;

import android.content.Context;
import android.os.Build;
import com.qennnsad.aknkaksd.e;
import com.qennnsad.aknkaksd.util.deviceinfo.model.App;
import io.sentry.protocol.Device;
import io.sentry.protocol.a;
import io.sentry.protocol.h;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m6.b;
import m8.g;
import u7.f;

/* compiled from: DeviceInfo.kt */
@f
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u0011\u0010\r\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\nR\u0011\u0010\u000f\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\nR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\nR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\nR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\nR\u0011\u0010\u0019\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\nR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\nR\u0013\u0010 \u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b!\u0010\nR\u0011\u0010\"\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b#\u0010\nR\u0011\u0010$\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b%\u0010\nR\u0013\u0010&\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b'\u0010\n¨\u0006("}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", a.f83616j, "Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;", "appAliasForAnalytics", "", "getAppAliasForAnalytics", "()Ljava/lang/String;", "appAliasForAnalytics$delegate", "Lkotlin/Lazy;", "appBuildTime", "getAppBuildTime", "appName", "getAppName", "appPackageName", "getAppPackageName", "appVersionName", "getAppVersionName", "device", "Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;", "deviceId", "getDeviceId", "isEmulator", "", "()Z", "language", "getLanguage", Device.b.f83594e, "getModel", h.f83693h, "getOs", "platform", "getPlatform", "recordTime", "getRecordTime", "vendor", "getVendor", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DeviceInfo {
    @g
    private final App app;
    @g
    private final Lazy appAliasForAnalytics$delegate;
    @g
    private final com.qennnsad.aknkaksd.util.deviceinfo.model.Device device;
    @g
    private final String deviceId;
    @g
    private final String language;

    @u7.a
    public DeviceInfo(@b @g Context context) {
        Lazy lazy;
        String radioVersion;
        Intrinsics.checkNotNullParameter(context, "context");
        this.app = new App(context);
        com.qennnsad.aknkaksd.util.deviceinfo.model.Device device = new com.qennnsad.aknkaksd.util.deviceinfo.model.Device(context);
        this.device = device;
        lazy = LazyKt__LazyJVMKt.lazy(DeviceInfo$appAliasForAnalytics$2.INSTANCE);
        this.appAliasForAnalytics$delegate = lazy;
        String str = "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
        String uuid = new UUID(str.hashCode(), (device.getRadioVersion() == null ? "n/a" : radioVersion).hashCode()).toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "UUID(uniquePseudoID.hash…de().toLong()).toString()");
        this.deviceId = uuid;
        String language = device.getLanguage();
        this.language = language != null ? language : "n/a";
    }

    private final String getAppAliasForAnalytics() {
        return (String) this.appAliasForAnalytics$delegate.getValue();
    }

    @g
    public final String getAppBuildTime() {
        return e.f48522n;
    }

    @g
    public final String getAppName() {
        return getAppAliasForAnalytics();
    }

    @m8.h
    public final String getAppPackageName() {
        return this.app.getPackageName();
    }

    @m8.h
    public final String getAppVersionName() {
        return this.app.getAppVersionName();
    }

    @g
    public final String getDeviceId() {
        return this.deviceId;
    }

    @g
    public final String getLanguage() {
        return this.language;
    }

    @m8.h
    public final String getModel() {
        return this.device.getModel();
    }

    @m8.h
    public final String getOs() {
        return this.device.getOsVersion();
    }

    @g
    public final String getPlatform() {
        return "Android";
    }

    @g
    public final String getRecordTime() {
        return String.valueOf(System.currentTimeMillis());
    }

    @m8.h
    public final String getVendor() {
        return this.device.getManufacturer();
    }

    public final boolean isEmulator() {
        return this.device.isEmulator();
    }
}
