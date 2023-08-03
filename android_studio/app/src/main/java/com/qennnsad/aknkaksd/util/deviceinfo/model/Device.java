package com.qennnsad.aknkaksd.util.deviceinfo.model;

import android.content.Context;
import com.qennnsad.aknkaksd.util.deviceinfo.DeviceInfo;
import io.sentry.h4;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.json.JSONObject;

/* compiled from: Device.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u001c\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010U\u001a\u0004\u0018\u00010VR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\nR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\b\"\u0004\b\u0019\u0010\nR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\b\"\u0004\b\u001c\u0010\nR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\b\"\u0004\b\u001f\u0010\nR\u001c\u0010 \u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\b\"\u0004\b\"\u0010\nR\u001c\u0010#\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\b\"\u0004\b%\u0010\nR\u001c\u0010&\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\b\"\u0004\b(\u0010\nR\u001a\u0010)\u001a\u00020*X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010+\"\u0004\b,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\b\"\u0004\b0\u0010\nR\u001c\u00101\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\b\"\u0004\b3\u0010\nR\u001c\u00104\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\b\"\u0004\b6\u0010\nR\u001c\u00107\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\b\"\u0004\b9\u0010\nR\u001c\u0010:\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\b\"\u0004\b<\u0010\nR\u001c\u0010=\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\b\"\u0004\b?\u0010\nR\u001c\u0010@\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\b\"\u0004\bB\u0010\nR\u001c\u0010C\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010\b\"\u0004\bE\u0010\nR\u001a\u0010F\u001a\u00020GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001a\u0010L\u001a\u00020GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010I\"\u0004\bN\u0010KR\u001a\u0010O\u001a\u00020GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010I\"\u0004\bQ\u0010KR\u001c\u0010R\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010\b\"\u0004\bT\u0010\n¨\u0006W"}, d2 = {"Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "board", "", "getBoard", "()Ljava/lang/String;", "setBoard", "(Ljava/lang/String;)V", "buildBrand", "getBuildBrand", "setBuildBrand", "buildHost", "getBuildHost", "setBuildHost", "buildTime", "", "getBuildTime", "()J", "setBuildTime", "(J)V", "buildUser", "getBuildUser", "setBuildUser", "buildVersionCodeName", "getBuildVersionCodeName", "setBuildVersionCodeName", "device", "getDevice", "setDevice", "displayVersion", "getDisplayVersion", "setDisplayVersion", h4.b.f83290h, "getFingerprint", "setFingerprint", "hardware", "getHardware", "setHardware", "isEmulator", "", "()Z", "setEmulator", "(Z)V", "language", "getLanguage", "setLanguage", Device.b.f83591b, "getManufacturer", "setManufacturer", Device.b.f83594e, "getModel", "setModel", "osVersion", "getOsVersion", "setOsVersion", "product", "getProduct", "setProduct", "radioVersion", "getRadioVersion", "setRadioVersion", "releaseBuildVersion", "getReleaseBuildVersion", "setReleaseBuildVersion", "screenDensity", "getScreenDensity", "setScreenDensity", "screenHeight", "", "getScreenHeight", "()I", "setScreenHeight", "(I)V", "screenWidth", "getScreenWidth", "setScreenWidth", "sdkVersion", "getSdkVersion", "setSdkVersion", "serial", "getSerial", "setSerial", "toJSON", "Lorg/json/JSONObject;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Device {
    @h
    private String board;
    @h
    private String buildBrand;
    @h
    private String buildHost;
    private long buildTime;
    @h
    private String buildUser;
    @h
    private String buildVersionCodeName;
    @h
    private String device;
    @h
    private String displayVersion;
    @h
    private String fingerprint;
    @h
    private String hardware;
    private boolean isEmulator;
    @h
    private String language;
    @h
    private String manufacturer;
    @h
    private String model;
    @h
    private String osVersion;
    @h
    private String product;
    @h
    private String radioVersion;
    @h
    private String releaseBuildVersion;
    @h
    private String screenDensity;
    private int screenHeight;
    private int screenWidth;
    private int sdkVersion;
    @h
    private String serial;

    public Device(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        DeviceInfo deviceInfo = new DeviceInfo(context);
        this.releaseBuildVersion = deviceInfo.getReleaseBuildVersion();
        this.buildVersionCodeName = deviceInfo.getBuildVersionCodeName();
        this.manufacturer = deviceInfo.getManufacturer();
        this.model = deviceInfo.getModel();
        this.product = deviceInfo.getProduct();
        this.fingerprint = deviceInfo.getFingerprint();
        this.hardware = deviceInfo.getHardware();
        this.radioVersion = deviceInfo.getRadioVer();
        this.device = deviceInfo.getDevice();
        this.board = deviceInfo.getBoard();
        this.displayVersion = deviceInfo.getDisplayVersion();
        this.buildBrand = deviceInfo.getBuildBrand();
        this.buildHost = deviceInfo.getBuildHost();
        this.buildTime = deviceInfo.getBuildTime();
        this.buildUser = deviceInfo.getBuildUser();
        this.serial = deviceInfo.getSerial();
        this.osVersion = deviceInfo.getOsVersion();
        this.language = deviceInfo.getLanguage();
        this.sdkVersion = deviceInfo.getSdkVersion();
        this.screenDensity = deviceInfo.getScreenDensity();
        this.screenHeight = deviceInfo.getScreenHeight();
        this.screenWidth = deviceInfo.getScreenWidth();
        this.isEmulator = deviceInfo.isRunningOnEmulator();
    }

    @h
    public final String getBoard() {
        return this.board;
    }

    @h
    public final String getBuildBrand() {
        return this.buildBrand;
    }

    @h
    public final String getBuildHost() {
        return this.buildHost;
    }

    public final long getBuildTime() {
        return this.buildTime;
    }

    @h
    public final String getBuildUser() {
        return this.buildUser;
    }

    @h
    public final String getBuildVersionCodeName() {
        return this.buildVersionCodeName;
    }

    @h
    public final String getDevice() {
        return this.device;
    }

    @h
    public final String getDisplayVersion() {
        return this.displayVersion;
    }

    @h
    public final String getFingerprint() {
        return this.fingerprint;
    }

    @h
    public final String getHardware() {
        return this.hardware;
    }

    @h
    public final String getLanguage() {
        return this.language;
    }

    @h
    public final String getManufacturer() {
        return this.manufacturer;
    }

    @h
    public final String getModel() {
        return this.model;
    }

    @h
    public final String getOsVersion() {
        return this.osVersion;
    }

    @h
    public final String getProduct() {
        return this.product;
    }

    @h
    public final String getRadioVersion() {
        return this.radioVersion;
    }

    @h
    public final String getReleaseBuildVersion() {
        return this.releaseBuildVersion;
    }

    @h
    public final String getScreenDensity() {
        return this.screenDensity;
    }

    public final int getScreenHeight() {
        return this.screenHeight;
    }

    public final int getScreenWidth() {
        return this.screenWidth;
    }

    public final int getSdkVersion() {
        return this.sdkVersion;
    }

    @h
    public final String getSerial() {
        return this.serial;
    }

    public final boolean isEmulator() {
        return this.isEmulator;
    }

    public final void setBoard(@h String str) {
        this.board = str;
    }

    public final void setBuildBrand(@h String str) {
        this.buildBrand = str;
    }

    public final void setBuildHost(@h String str) {
        this.buildHost = str;
    }

    public final void setBuildTime(long j4) {
        this.buildTime = j4;
    }

    public final void setBuildUser(@h String str) {
        this.buildUser = str;
    }

    public final void setBuildVersionCodeName(@h String str) {
        this.buildVersionCodeName = str;
    }

    public final void setDevice(@h String str) {
        this.device = str;
    }

    public final void setDisplayVersion(@h String str) {
        this.displayVersion = str;
    }

    public final void setEmulator(boolean z9) {
        this.isEmulator = z9;
    }

    public final void setFingerprint(@h String str) {
        this.fingerprint = str;
    }

    public final void setHardware(@h String str) {
        this.hardware = str;
    }

    public final void setLanguage(@h String str) {
        this.language = str;
    }

    public final void setManufacturer(@h String str) {
        this.manufacturer = str;
    }

    public final void setModel(@h String str) {
        this.model = str;
    }

    public final void setOsVersion(@h String str) {
        this.osVersion = str;
    }

    public final void setProduct(@h String str) {
        this.product = str;
    }

    public final void setRadioVersion(@h String str) {
        this.radioVersion = str;
    }

    public final void setReleaseBuildVersion(@h String str) {
        this.releaseBuildVersion = str;
    }

    public final void setScreenDensity(@h String str) {
        this.screenDensity = str;
    }

    public final void setScreenHeight(int i4) {
        this.screenHeight = i4;
    }

    public final void setScreenWidth(int i4) {
        this.screenWidth = i4;
    }

    public final void setSdkVersion(int i4) {
        this.sdkVersion = i4;
    }

    public final void setSerial(@h String str) {
        this.serial = str;
    }

    @h
    public final JSONObject toJSON() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("releaseBuildVersion", this.releaseBuildVersion);
            jSONObject.put("buildVersionCodeName", this.buildVersionCodeName);
            jSONObject.put(Device.b.f83591b, this.manufacturer);
            jSONObject.put(Device.b.f83594e, this.model);
            jSONObject.put("product", this.product);
            jSONObject.put(h4.b.f83290h, this.fingerprint);
            jSONObject.put("hardware", this.hardware);
            jSONObject.put("radioVersion", this.radioVersion);
            jSONObject.put("device", this.device);
            jSONObject.put("board", this.board);
            jSONObject.put("displayVersion", this.displayVersion);
            jSONObject.put("buildBrand", this.buildBrand);
            jSONObject.put("buildHost", this.buildHost);
            jSONObject.put("buildTime", this.buildTime);
            jSONObject.put("buildUser", this.buildUser);
            jSONObject.put("serial", this.serial);
            jSONObject.put("osVersion", this.osVersion);
            jSONObject.put("language", this.language);
            jSONObject.put("sdkVersion", this.sdkVersion);
            jSONObject.put("screenDensity", this.screenDensity);
            jSONObject.put("screenHeight", this.screenHeight);
            jSONObject.put("screenWidth", this.screenWidth);
            return jSONObject;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
