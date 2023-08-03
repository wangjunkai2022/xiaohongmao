package com.qennnsad.aknkaksd.util.deviceinfo;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Point;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.nfc.NfcAdapter;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Patterns;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import androidx.core.content.ContextCompat;
import com.ksyun.media.player.d.d;
import io.sentry.h4;
import io.sentry.protocol.Device;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;

/* compiled from: DeviceInfo.kt */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010Æ\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0007J\u0007\u0010Ç\u0001\u001a\u00020tJ\u0010\u0010È\u0001\u001a\u00020t2\u0007\u0010\u0093\u0001\u001a\u00020\u0006J\u0010\u0010É\u0001\u001a\u00020t2\u0007\u0010Ê\u0001\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\"\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b#\u0010$R\u001b\u0010%\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b'\u0010!\u001a\u0004\b&\u0010$R\u0011\u0010(\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b)\u0010$R\u0011\u0010*\u001a\u00020+8F¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0011\u0010.\u001a\u00020+8F¢\u0006\u0006\u001a\u0004\b/\u0010-R\u0011\u00100\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b1\u0010$R\u0013\u00102\u001a\u0004\u0018\u0001038F¢\u0006\u0006\u001a\u0004\b4\u00105R\u0016\u00106\u001a\u0004\u0018\u0001078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b8\u00109R\u0013\u0010:\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b;\u0010$R\u0011\u0010<\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\b>\u0010?R\u0011\u0010@\u001a\u0002038F¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0011\u0010C\u001a\u00020\u00068G¢\u0006\u0006\u001a\u0004\bD\u0010$R\u0011\u0010E\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bF\u0010$R\u0011\u0010G\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bH\u0010$R\u0011\u0010I\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bJ\u0010$R\u0011\u0010K\u001a\u00020+8F¢\u0006\u0006\u001a\u0004\bL\u0010-R\u0011\u0010M\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bN\u0010$R\u0011\u0010O\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bP\u0010$R\u0011\u0010Q\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bR\u0010$R\u001b\u0010S\u001a\u00020T8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bW\u0010!\u001a\u0004\bU\u0010VR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010X\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bY\u0010$R\u0013\u0010Z\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b[\u0010$R\u0011\u0010\\\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b]\u0010$R\u0011\u0010^\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b_\u0010$R\u0011\u0010`\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\ba\u0010$R\u0017\u0010b\u001a\b\u0012\u0004\u0012\u00020\u00060c8G¢\u0006\u0006\u001a\u0004\bd\u0010eR\u0011\u0010f\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bg\u0010$R\u0011\u0010h\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bi\u0010$R\u0011\u0010j\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bk\u0010$R\u0011\u0010l\u001a\u00020\u00068G¢\u0006\u0006\u001a\u0004\bm\u0010$R\u0011\u0010n\u001a\u00020\u00068G¢\u0006\u0006\u001a\u0004\bo\u0010$R\u001d\u0010p\u001a\u0004\u0018\u00010\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\br\u0010!\u001a\u0004\bq\u0010$R\u0011\u0010s\u001a\u00020t8F¢\u0006\u0006\u001a\u0004\bs\u0010uR\u0011\u0010v\u001a\u00020t8F¢\u0006\u0006\u001a\u0004\bv\u0010uR\u0011\u0010w\u001a\u00020t8F¢\u0006\u0006\u001a\u0004\bw\u0010uR\u0011\u0010x\u001a\u00020t8F¢\u0006\u0006\u001a\u0004\bx\u0010uR\u0011\u0010y\u001a\u00020t8F¢\u0006\u0006\u001a\u0004\by\u0010uR\u0011\u0010z\u001a\u00020t8F¢\u0006\u0006\u001a\u0004\bz\u0010uR\u001b\u0010{\u001a\u00020t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b|\u0010!\u001a\u0004\b{\u0010uR\u0011\u0010}\u001a\u00020t8F¢\u0006\u0006\u001a\u0004\b}\u0010uR\u0011\u0010~\u001a\u00020t8F¢\u0006\u0006\u001a\u0004\b~\u0010uR\u0012\u0010\u007f\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0080\u0001\u0010$R\u0013\u0010\u0081\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010$R\u0013\u0010\u0083\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010$R\u0013\u0010\u0085\u0001\u001a\u00020\u00068G¢\u0006\u0007\u001a\u0005\b\u0086\u0001\u0010$R\u0013\u0010\u0087\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010$R*\u0010\u0089\u0001\u001a\r \u008b\u0001*\u0005\u0018\u00010\u008a\u00010\u008a\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u008e\u0001\u0010!\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0013\u0010\u008f\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0090\u0001\u0010$R\u0013\u0010\u0091\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0092\u0001\u0010$R\u0013\u0010\u0093\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0094\u0001\u0010$R\u0013\u0010\u0095\u0001\u001a\u00020\u00068G¢\u0006\u0007\u001a\u0005\b\u0096\u0001\u0010$R\u0013\u0010\u0097\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0098\u0001\u0010$R\u0013\u0010\u0099\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u009a\u0001\u0010$R\u0015\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0007\u001a\u0005\b\u009c\u0001\u0010$R\u0013\u0010\u009d\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u009e\u0001\u0010$R\u0013\u0010\u009f\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b \u0001\u0010$R\u0013\u0010¡\u0001\u001a\u0002038F¢\u0006\u0007\u001a\u0005\b¢\u0001\u0010BR\u0013\u0010£\u0001\u001a\u0002038F¢\u0006\u0007\u001a\u0005\b¤\u0001\u0010BR\u0013\u0010¥\u0001\u001a\u0002038F¢\u0006\u0007\u001a\u0005\b¦\u0001\u0010BR\u0015\u0010§\u0001\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0007\u001a\u0005\b¨\u0001\u0010$R\u0013\u0010©\u0001\u001a\u00020\u00068G¢\u0006\u0007\u001a\u0005\bª\u0001\u0010$R \u0010«\u0001\u001a\u00030¬\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b¯\u0001\u0010!\u001a\u0006\b\u00ad\u0001\u0010®\u0001R\u0013\u0010°\u0001\u001a\u00020+8F¢\u0006\u0007\u001a\u0005\b±\u0001\u0010-R\u0013\u0010²\u0001\u001a\u00020+8F¢\u0006\u0007\u001a\u0005\b³\u0001\u0010-R\u0013\u0010´\u0001\u001a\u00020+8F¢\u0006\u0007\u001a\u0005\bµ\u0001\u0010-R\u0013\u0010¶\u0001\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b·\u0001\u0010$R\u0015\u0010¸\u0001\u001a\u0004\u0018\u0001038F¢\u0006\u0007\u001a\u0005\b¹\u0001\u00105R\u0015\u0010º\u0001\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0007\u001a\u0005\b»\u0001\u0010$R \u0010¼\u0001\u001a\u00030½\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\bÀ\u0001\u0010!\u001a\u0006\b¾\u0001\u0010¿\u0001R \u0010Á\u0001\u001a\u00030Â\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\bÅ\u0001\u0010!\u001a\u0006\bÃ\u0001\u0010Ä\u0001¨\u0006Ë\u0001"}, d2 = {"Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "BATTERY_HEALTH_COLD", "", "BATTERY_HEALTH_DEAD", "BATTERY_HEALTH_GOOD", "BATTERY_HEALTH_OVERHEAT", "BATTERY_HEALTH_OVER_VOLTAGE", "BATTERY_HEALTH_UNKNOWN", "BATTERY_HEALTH_UNSPECIFIED_FAILURE", "BATTERY_PLUGGED_AC", "BATTERY_PLUGGED_UNKNOWN", "BATTERY_PLUGGED_USB", "BATTERY_PLUGGED_WIRELESS", "NETWORK_TYPE_2G", "NETWORK_TYPE_3G", "NETWORK_TYPE_4G", "NETWORK_TYPE_WIFI_WIFIMAX", "NOT_FOUND_VAL", "PHONE_TYPE_CDMA", "PHONE_TYPE_GSM", "PHONE_TYPE_NONE", "RINGER_MODE_NORMAL", "RINGER_MODE_SILENT", "RINGER_MODE_VIBRATE", "activityManager", "Landroid/app/ActivityManager;", "getActivityManager", "()Landroid/app/ActivityManager;", "activityManager$delegate", "Lkotlin/Lazy;", "activityName", "getActivityName", "()Ljava/lang/String;", "androidId", "getAndroidId", "androidId$delegate", "appName", "getAppName", "availableExternalMemorySize", "", "getAvailableExternalMemorySize", "()J", "availableInternalMemorySize", "getAvailableInternalMemorySize", "batteryHealth", "getBatteryHealth", "batteryPercent", "", "getBatteryPercent", "()Ljava/lang/Integer;", "batteryStatusIntent", "Landroid/content/Intent;", "getBatteryStatusIntent", "()Landroid/content/Intent;", "batteryTechnology", "getBatteryTechnology", "batteryTemperature", "", "getBatteryTemperature", "()F", "batteryVoltage", "getBatteryVoltage", "()I", "bluetoothMAC", "getBluetoothMAC", "board", "getBoard", "buildBrand", "getBuildBrand", "buildHost", "getBuildHost", "buildTime", "getBuildTime", "buildUser", "getBuildUser", "buildVersionCodeName", "getBuildVersionCodeName", "chargingSource", "getChargingSource", "connectivityManager", "Landroid/net/ConnectivityManager;", "getConnectivityManager", "()Landroid/net/ConnectivityManager;", "connectivityManager$delegate", "device", "getDevice", "deviceLocale", "getDeviceLocale", "deviceName", "getDeviceName", "deviceRingerMode", "getDeviceRingerMode", "displayVersion", "getDisplayVersion", "emailAccounts", "", "getEmailAccounts", "()Ljava/util/List;", h4.b.f83290h, "getFingerprint", "gsfId", "getGsfId", "hardware", "getHardware", d.f45439k, "getImei", "imsi", "getImsi", "installSource", "getInstallSource", "installSource$delegate", "isBatteryPresent", "", "()Z", "isDeviceRooted", "isNetworkAvailable", "isNfcEnabled", "isNfcPresent", "isPhoneCharging", "isRunningOnEmulator", "isRunningOnEmulator$delegate", "isSimNetworkLocked", "isWifiEnabled", "language", "getLanguage", Device.b.f83591b, "getManufacturer", Device.b.f83594e, "getModel", "networkClass", "getNetworkClass", "networkType", "getNetworkType", "nfcAdapter", "Landroid/nfc/NfcAdapter;", "kotlin.jvm.PlatformType", "getNfcAdapter", "()Landroid/nfc/NfcAdapter;", "nfcAdapter$delegate", "operator", "getOperator", "osVersion", "getOsVersion", "packageName", "getPackageName", "phoneNumber", "getPhoneNumber", "phoneType", "getPhoneType", "product", "getProduct", "radioVer", "getRadioVer", "releaseBuildVersion", "getReleaseBuildVersion", "screenDensity", "getScreenDensity", "screenHeight", "getScreenHeight", "screenWidth", "getScreenWidth", "sdkVersion", "getSdkVersion", "serial", "getSerial", "simSerial", "getSimSerial", "telephonyMgr", "Landroid/telephony/TelephonyManager;", "getTelephonyMgr", "()Landroid/telephony/TelephonyManager;", "telephonyMgr$delegate", "totalExternalMemorySize", "getTotalExternalMemorySize", "totalInternalMemorySize", "getTotalInternalMemorySize", "totalRAM", "getTotalRAM", "userAgent", "getUserAgent", "versionCode", "getVersionCode", "versionName", "getVersionName", "wifiManager", "Landroid/net/wifi/WifiManager;", "getWifiManager", "()Landroid/net/wifi/WifiManager;", "wifiManager$delegate", "windowManager", "Landroid/view/WindowManager;", "getWindowManager", "()Landroid/view/WindowManager;", "windowManager$delegate", "getWifiMacAddress", "hasExternalSDCard", "isAppInstalled", "isPermissionGranted", "permission", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DeviceInfo {
    @g
    private final String BATTERY_HEALTH_COLD;
    @g
    private final String BATTERY_HEALTH_DEAD;
    @g
    private final String BATTERY_HEALTH_GOOD;
    @g
    private final String BATTERY_HEALTH_OVERHEAT;
    @g
    private final String BATTERY_HEALTH_OVER_VOLTAGE;
    @g
    private final String BATTERY_HEALTH_UNKNOWN;
    @g
    private final String BATTERY_HEALTH_UNSPECIFIED_FAILURE;
    @g
    private final String BATTERY_PLUGGED_AC;
    @g
    private final String BATTERY_PLUGGED_UNKNOWN;
    @g
    private final String BATTERY_PLUGGED_USB;
    @g
    private final String BATTERY_PLUGGED_WIRELESS;
    @g
    private final String NETWORK_TYPE_2G;
    @g
    private final String NETWORK_TYPE_3G;
    @g
    private final String NETWORK_TYPE_4G;
    @g
    private final String NETWORK_TYPE_WIFI_WIFIMAX;
    @g
    private final String NOT_FOUND_VAL;
    @g
    private final String PHONE_TYPE_CDMA;
    @g
    private final String PHONE_TYPE_GSM;
    @g
    private final String PHONE_TYPE_NONE;
    @g
    private final String RINGER_MODE_NORMAL;
    @g
    private final String RINGER_MODE_SILENT;
    @g
    private final String RINGER_MODE_VIBRATE;
    @g
    private final Lazy activityManager$delegate;
    @g
    private final Lazy androidId$delegate;
    @g
    private final Lazy connectivityManager$delegate;
    @g
    private final Context context;
    @g
    private final Lazy installSource$delegate;
    @g
    private final Lazy isRunningOnEmulator$delegate;
    @g
    private final Lazy nfcAdapter$delegate;
    @g
    private final Lazy telephonyMgr$delegate;
    @g
    private final Lazy wifiManager$delegate;
    @g
    private final Lazy windowManager$delegate;

    public DeviceInfo(@g Context context) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Lazy lazy9;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.BATTERY_HEALTH_COLD = "cold";
        this.BATTERY_HEALTH_DEAD = "dead";
        this.BATTERY_HEALTH_GOOD = "good";
        this.BATTERY_HEALTH_OVERHEAT = "Over Heat";
        this.BATTERY_HEALTH_OVER_VOLTAGE = "Over Voltage";
        this.BATTERY_HEALTH_UNKNOWN = "Unknown";
        this.BATTERY_HEALTH_UNSPECIFIED_FAILURE = "Unspecified failure";
        this.BATTERY_PLUGGED_AC = "Charging via AC";
        this.BATTERY_PLUGGED_USB = "Charging via USB";
        this.BATTERY_PLUGGED_WIRELESS = "Wireless";
        this.BATTERY_PLUGGED_UNKNOWN = "Unknown Source";
        this.RINGER_MODE_NORMAL = "Normal";
        this.RINGER_MODE_SILENT = "Silent";
        this.RINGER_MODE_VIBRATE = "Vibrate";
        this.PHONE_TYPE_GSM = "GSM";
        this.PHONE_TYPE_CDMA = "CDMA";
        this.PHONE_TYPE_NONE = "Unknown";
        this.NETWORK_TYPE_2G = "2G";
        this.NETWORK_TYPE_3G = "3G";
        this.NETWORK_TYPE_4G = "4G";
        this.NETWORK_TYPE_WIFI_WIFIMAX = "WiFi";
        this.NOT_FOUND_VAL = "unknown";
        lazy = LazyKt__LazyJVMKt.lazy(new DeviceInfo$windowManager$2(this));
        this.windowManager$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(DeviceInfo$isRunningOnEmulator$2.INSTANCE);
        this.isRunningOnEmulator$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new DeviceInfo$androidId$2(this));
        this.androidId$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new DeviceInfo$installSource$2(this));
        this.installSource$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new DeviceInfo$activityManager$2(this));
        this.activityManager$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new DeviceInfo$telephonyMgr$2(this));
        this.telephonyMgr$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new DeviceInfo$nfcAdapter$2(this));
        this.nfcAdapter$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new DeviceInfo$wifiManager$2(this));
        this.wifiManager$delegate = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new DeviceInfo$connectivityManager$2(this));
        this.connectivityManager$delegate = lazy9;
    }

    private final Intent getBatteryStatusIntent() {
        return this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    @g
    public final ActivityManager getActivityManager() {
        return (ActivityManager) this.activityManager$delegate.getValue();
    }

    @g
    public final String getActivityName() {
        String simpleName = this.context.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "context.javaClass.simpleName");
        return simpleName;
    }

    @g
    public final String getAndroidId() {
        Object value = this.androidId$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-androidId>(...)");
        return (String) value;
    }

    @g
    public final String getAppName() {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = this.context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(this.context.getApplicationInfo().packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            applicationInfo = null;
        }
        CharSequence applicationLabel = applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : this.NOT_FOUND_VAL;
        Intrinsics.checkNotNull(applicationLabel, "null cannot be cast to non-null type kotlin.String");
        return (String) applicationLabel;
    }

    public final long getAvailableExternalMemorySize() {
        if (hasExternalSDCard()) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        }
        return 0L;
    }

    public final long getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    @g
    public final String getBatteryHealth() {
        String str = this.BATTERY_HEALTH_UNKNOWN;
        Intent batteryStatusIntent = getBatteryStatusIntent();
        Intrinsics.checkNotNull(batteryStatusIntent);
        switch (batteryStatusIntent.getIntExtra("health", 0)) {
            case 1:
                return this.BATTERY_HEALTH_UNKNOWN;
            case 2:
                return this.BATTERY_HEALTH_GOOD;
            case 3:
                return this.BATTERY_HEALTH_OVERHEAT;
            case 4:
                return this.BATTERY_HEALTH_DEAD;
            case 5:
                return this.BATTERY_HEALTH_OVER_VOLTAGE;
            case 6:
                return this.BATTERY_HEALTH_UNSPECIFIED_FAILURE;
            case 7:
                return this.BATTERY_HEALTH_COLD;
            default:
                return str;
        }
    }

    @h
    public final Integer getBatteryPercent() {
        Intent batteryStatusIntent = getBatteryStatusIntent();
        if (batteryStatusIntent != null) {
            int i4 = -1;
            int intExtra = batteryStatusIntent.getIntExtra("level", -1);
            int intExtra2 = batteryStatusIntent.getIntExtra("scale", -1);
            if (intExtra >= 0 && intExtra2 > 0) {
                i4 = (intExtra * 100) / intExtra2;
            }
            return Integer.valueOf(i4);
        }
        return null;
    }

    @h
    public final String getBatteryTechnology() {
        Intent batteryStatusIntent = getBatteryStatusIntent();
        if (batteryStatusIntent != null) {
            return batteryStatusIntent.getStringExtra("technology");
        }
        return null;
    }

    public final float getBatteryTemperature() {
        Intent batteryStatusIntent = getBatteryStatusIntent();
        Intrinsics.checkNotNull(batteryStatusIntent);
        return (float) (batteryStatusIntent.getIntExtra("temperature", 0) / 10.0d);
    }

    public final int getBatteryVoltage() {
        Intent batteryStatusIntent = getBatteryStatusIntent();
        Intrinsics.checkNotNull(batteryStatusIntent);
        return batteryStatusIntent.getIntExtra("voltage", 0);
    }

    @g
    @SuppressLint({"HardwareIds"})
    public final String getBluetoothMAC() {
        if (isPermissionGranted("android.permission.BLUETOOTH")) {
            if (Build.VERSION.SDK_INT >= 23) {
                String string = Settings.Secure.getString(this.context.getContentResolver(), "bluetooth_address");
                Intrinsics.checkNotNullExpressionValue(string, "getString(\n             …ddress\"\n                )");
                return string;
            }
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null) {
                String address = defaultAdapter.getAddress();
                Intrinsics.checkNotNullExpressionValue(address, "bta.address");
                return address;
            }
            return "00";
        }
        return "n/a";
    }

    @g
    public final String getBoard() {
        String BOARD = Build.BOARD;
        Intrinsics.checkNotNullExpressionValue(BOARD, "BOARD");
        return BOARD;
    }

    @g
    public final String getBuildBrand() {
        String BRAND = Build.BRAND;
        Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
        return BRAND;
    }

    @g
    public final String getBuildHost() {
        String HOST = Build.HOST;
        Intrinsics.checkNotNullExpressionValue(HOST, "HOST");
        return HOST;
    }

    public final long getBuildTime() {
        return Build.TIME;
    }

    @g
    public final String getBuildUser() {
        String USER = Build.USER;
        Intrinsics.checkNotNullExpressionValue(USER, "USER");
        return USER;
    }

    @g
    public final String getBuildVersionCodeName() {
        String CODENAME = Build.VERSION.CODENAME;
        Intrinsics.checkNotNullExpressionValue(CODENAME, "CODENAME");
        return CODENAME;
    }

    @g
    public final String getChargingSource() {
        Intent batteryStatusIntent = getBatteryStatusIntent();
        Intrinsics.checkNotNull(batteryStatusIntent);
        int intExtra = batteryStatusIntent.getIntExtra("plugged", 0);
        if (intExtra != 1) {
            if (intExtra != 2) {
                if (intExtra != 4) {
                    return this.BATTERY_PLUGGED_UNKNOWN;
                }
                return this.BATTERY_PLUGGED_WIRELESS;
            }
            return this.BATTERY_PLUGGED_USB;
        }
        return this.BATTERY_PLUGGED_AC;
    }

    @g
    public final ConnectivityManager getConnectivityManager() {
        return (ConnectivityManager) this.connectivityManager$delegate.getValue();
    }

    @g
    public final String getDevice() {
        String DEVICE = Build.DEVICE;
        Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
        return DEVICE;
    }

    @h
    public final String getDeviceLocale() {
        Locale locale = this.context.getResources().getConfiguration().locale;
        if (locale != null) {
            return locale.toString();
        }
        return null;
    }

    @g
    public final String getDeviceName() {
        boolean startsWith$default;
        String manufacturer = Build.MANUFACTURER;
        String model = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(model, "model");
        Intrinsics.checkNotNullExpressionValue(manufacturer, "manufacturer");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(model, manufacturer, false, 2, null);
        if (startsWith$default) {
            return model;
        }
        return manufacturer + ' ' + model;
    }

    @g
    public final String getDeviceRingerMode() {
        Object systemService = this.context.getSystemService("audio");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        int ringerMode = ((AudioManager) systemService).getRingerMode();
        if (ringerMode != 0) {
            if (ringerMode != 1) {
                return this.RINGER_MODE_NORMAL;
            }
            return this.RINGER_MODE_VIBRATE;
        }
        return this.RINGER_MODE_SILENT;
    }

    @g
    public final String getDisplayVersion() {
        String DISPLAY = Build.DISPLAY;
        Intrinsics.checkNotNullExpressionValue(DISPLAY, "DISPLAY");
        return DISPLAY;
    }

    @g
    @SuppressLint({"MissingPermission"})
    public final List<String> getEmailAccounts() {
        List<String> emptyList;
        if (!isPermissionGranted("android.permission.GET_ACCOUNTS")) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        HashSet hashSet = new HashSet();
        Pattern pattern = Patterns.EMAIL_ADDRESS;
        Account[] accounts = AccountManager.get(this.context).getAccounts();
        Intrinsics.checkNotNullExpressionValue(accounts, "get(context).accounts");
        for (Account account : accounts) {
            if (pattern.matcher(account.name).matches()) {
                hashSet.add(account.name);
            }
        }
        return new ArrayList(new LinkedHashSet(hashSet));
    }

    @g
    public final String getFingerprint() {
        String FINGERPRINT = Build.FINGERPRINT;
        Intrinsics.checkNotNullExpressionValue(FINGERPRINT, "FINGERPRINT");
        return FINGERPRINT;
    }

    @g
    public final String getGsfId() {
        Cursor query = this.context.getContentResolver().query(Uri.parse("content://com.google.android.gsf.gservices"), null, null, new String[]{"android_id"}, null);
        Intrinsics.checkNotNull(query);
        if (query.moveToFirst() && query.getColumnCount() >= 2) {
            try {
                String gsfId = Long.toHexString(Long.parseLong(query.getString(1)));
                query.close();
                Intrinsics.checkNotNullExpressionValue(gsfId, "gsfId");
                return gsfId;
            } catch (NumberFormatException unused) {
                query.close();
                return this.NOT_FOUND_VAL;
            }
        }
        query.close();
        return this.NOT_FOUND_VAL;
    }

    @g
    public final String getHardware() {
        String HARDWARE = Build.HARDWARE;
        Intrinsics.checkNotNullExpressionValue(HARDWARE, "HARDWARE");
        return HARDWARE;
    }

    @g
    @SuppressLint({"MissingPermission", "HardwareIds"})
    public final String getImei() {
        if (isPermissionGranted("android.permission.READ_PHONE_STATE")) {
            String deviceId = getTelephonyMgr().getDeviceId();
            Intrinsics.checkNotNullExpressionValue(deviceId, "telephonyMgr.deviceId");
            return deviceId;
        }
        return "n/a";
    }

    @g
    @SuppressLint({"MissingPermission", "HardwareIds"})
    public final String getImsi() {
        String subscriberId = getTelephonyMgr().getSubscriberId();
        Intrinsics.checkNotNullExpressionValue(subscriberId, "telephonyMgr.subscriberId");
        return subscriberId;
    }

    @h
    public final String getInstallSource() {
        return (String) this.installSource$delegate.getValue();
    }

    @g
    public final String getLanguage() {
        String languageTag = Locale.getDefault().toLanguageTag();
        Intrinsics.checkNotNullExpressionValue(languageTag, "getDefault().toLanguageTag()");
        return languageTag;
    }

    @g
    public final String getManufacturer() {
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        return MANUFACTURER;
    }

    @g
    public final String getModel() {
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        return MODEL;
    }

    @g
    @SuppressLint({"MissingPermission"})
    public final String getNetworkClass() {
        switch (getTelephonyMgr().getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return this.NETWORK_TYPE_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return this.NETWORK_TYPE_3G;
            case 13:
                return this.NETWORK_TYPE_4G;
            default:
                return this.NOT_FOUND_VAL;
        }
    }

    @g
    public final String getNetworkType() {
        NetworkInfo activeNetworkInfo = getConnectivityManager().getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return this.NOT_FOUND_VAL;
        }
        if (activeNetworkInfo.getType() != 1 && activeNetworkInfo.getType() != 6) {
            if (activeNetworkInfo.getType() == 0) {
                return getNetworkClass();
            }
            return this.NOT_FOUND_VAL;
        }
        return this.NETWORK_TYPE_WIFI_WIFIMAX;
    }

    public final NfcAdapter getNfcAdapter() {
        return (NfcAdapter) this.nfcAdapter$delegate.getValue();
    }

    @g
    public final String getOperator() {
        String networkOperatorName = getTelephonyMgr().getNetworkOperatorName();
        return networkOperatorName == null ? getTelephonyMgr().getSimOperatorName() : networkOperatorName;
    }

    @g
    public final String getOsVersion() {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        return RELEASE;
    }

    @g
    public final String getPackageName() {
        String packageName = this.context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
        return packageName;
    }

    @g
    @SuppressLint({"MissingPermission", "HardwareIds"})
    public final String getPhoneNumber() {
        if (isPermissionGranted("android.permission.READ_PHONE_STATE")) {
            String line1Number = getTelephonyMgr().getLine1Number();
            Intrinsics.checkNotNullExpressionValue(line1Number, "telephonyMgr.line1Number");
            return line1Number;
        }
        return "n/a";
    }

    @g
    public final String getPhoneType() {
        int phoneType = getTelephonyMgr().getPhoneType();
        if (phoneType != 0) {
            if (phoneType != 1) {
                if (phoneType != 2) {
                    return this.PHONE_TYPE_NONE;
                }
                return this.PHONE_TYPE_CDMA;
            }
            return this.PHONE_TYPE_GSM;
        }
        return this.PHONE_TYPE_NONE;
    }

    @g
    public final String getProduct() {
        String PRODUCT = Build.PRODUCT;
        Intrinsics.checkNotNullExpressionValue(PRODUCT, "PRODUCT");
        return PRODUCT;
    }

    @h
    public final String getRadioVer() {
        return Build.getRadioVersion();
    }

    @g
    public final String getReleaseBuildVersion() {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        return RELEASE;
    }

    @g
    public final String getScreenDensity() {
        int i4 = this.context.getResources().getDisplayMetrics().densityDpi;
        return i4 != 120 ? i4 != 160 ? i4 != 240 ? i4 != 320 ? "other" : "xhdpi" : "hdpi" : "mdpi" : "ldpi";
    }

    public final int getScreenHeight() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.y;
    }

    public final int getScreenWidth() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x;
    }

    public final int getSdkVersion() {
        return Build.VERSION.SDK_INT;
    }

    @h
    public final String getSerial() {
        return Build.SERIAL;
    }

    @g
    @SuppressLint({"MissingPermission", "HardwareIds"})
    public final String getSimSerial() {
        String simSerialNumber = getTelephonyMgr().getSimSerialNumber();
        Intrinsics.checkNotNullExpressionValue(simSerialNumber, "telephonyMgr.simSerialNumber");
        return simSerialNumber;
    }

    @g
    public final TelephonyManager getTelephonyMgr() {
        return (TelephonyManager) this.telephonyMgr$delegate.getValue();
    }

    public final long getTotalExternalMemorySize() {
        if (hasExternalSDCard()) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
        }
        return 0L;
    }

    public final long getTotalInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
    }

    public final long getTotalRAM() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        getActivityManager().getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    @g
    public final String getUserAgent() {
        String property = System.getProperty("http.agent");
        return WebSettings.getDefaultUserAgent(this.context) + "__" + property;
    }

    @h
    public final Integer getVersionCode() {
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
            Intrinsics.checkNotNullExpressionValue(packageInfo, "context.packageManager.g…Name, 0\n                )");
            return Integer.valueOf(packageInfo.versionCode);
        } catch (Exception unused) {
            return null;
        }
    }

    @h
    public final String getVersionName() {
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
            Intrinsics.checkNotNullExpressionValue(packageInfo, "context.packageManager.g…Name, 0\n                )");
            return packageInfo.versionName;
        } catch (Exception unused) {
            return null;
        }
    }

    @g
    @SuppressLint({"HardwareIds"})
    public final String getWifiMacAddress(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (isPermissionGranted("android.permission.ACCESS_WIFI_STATE")) {
            String macAddress = getWifiManager().getConnectionInfo().getMacAddress();
            Intrinsics.checkNotNullExpressionValue(macAddress, "info.macAddress");
            return macAddress;
        }
        return "n/a";
    }

    @g
    public final WifiManager getWifiManager() {
        return (WifiManager) this.wifiManager$delegate.getValue();
    }

    @g
    public final WindowManager getWindowManager() {
        return (WindowManager) this.windowManager$delegate.getValue();
    }

    public final boolean hasExternalSDCard() {
        return Intrinsics.areEqual(Environment.getExternalStorageState(), "mounted");
    }

    public final boolean isAppInstalled(@g String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return this.context.getPackageManager().getLaunchIntentForPackage(packageName) != null;
    }

    public final boolean isBatteryPresent() {
        Intent batteryStatusIntent = getBatteryStatusIntent();
        Intrinsics.checkNotNull(batteryStatusIntent);
        return batteryStatusIntent.getBooleanExtra("present", false);
    }

    public final boolean isDeviceRooted() {
        boolean z9;
        String[] strArr = {"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su"};
        int i4 = 0;
        while (true) {
            if (i4 >= 10) {
                z9 = false;
                break;
            } else if (new File(strArr[i4]).exists()) {
                z9 = true;
                break;
            } else {
                i4++;
            }
        }
        return z9;
    }

    public final boolean isNetworkAvailable() {
        NetworkInfo activeNetworkInfo = getConnectivityManager().getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final boolean isNfcEnabled() {
        return getNfcAdapter() != null && getNfcAdapter().isEnabled();
    }

    public final boolean isNfcPresent() {
        return getNfcAdapter() != null;
    }

    public final synchronized boolean isPermissionGranted(@g String permission) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        if (Build.VERSION.SDK_INT < 23) {
            return this.context.checkCallingOrSelfPermission(permission) == 0;
        }
        return ContextCompat.checkSelfPermission(this.context, permission) == 0;
    }

    public final boolean isPhoneCharging() {
        Intent batteryStatusIntent = getBatteryStatusIntent();
        Intrinsics.checkNotNull(batteryStatusIntent);
        int intExtra = batteryStatusIntent.getIntExtra("plugged", 0);
        return intExtra == 1 || intExtra == 2;
    }

    public final boolean isRunningOnEmulator() {
        return ((Boolean) this.isRunningOnEmulator$delegate.getValue()).booleanValue();
    }

    public final boolean isSimNetworkLocked() {
        return getTelephonyMgr().getSimState() == 4;
    }

    public final boolean isWifiEnabled() {
        return getWifiManager().isWifiEnabled();
    }
}
