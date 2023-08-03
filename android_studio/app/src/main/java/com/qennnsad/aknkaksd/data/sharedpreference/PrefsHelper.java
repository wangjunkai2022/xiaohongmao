package com.qennnsad.aknkaksd.data.sharedpreference;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.ksyun.media.player.d.d;
import com.qennnsad.aknkaksd.data.bean.AdConfigBean;
import com.qennnsad.aknkaksd.data.bean.AppUpdateBean;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.ConfigDnsBean;
import com.qennnsad.aknkaksd.data.bean.GameCenter;
import com.qennnsad.aknkaksd.data.bean.PeeragePriceBean;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean;
import com.qennnsad.aknkaksd.data.bean.me.UserMoney;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.websocket.LocalRoomMsg;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.data.websocket.b;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import com.qennnsad.aknkaksd.e;
import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import com.qennnsad.aknkaksd.util.AES;
import com.qennnsad.aknkaksd.util.DES;
import com.qennnsad.aknkaksd.util.o0;
import java.util.List;
import java.util.Random;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import m.c;
import m8.g;
import m8.h;
import u7.f;

/* compiled from: PrefsHelper.kt */
@f
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b5\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0017\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J \u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\u0006\b\u0000\u0010\u0012\u0018\u00012\u0006\u0010\u0013\u001a\u00020\fH\u0082\b¢\u0006\u0002\u0010\u0014J\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eJ\b\u0010\u001f\u001a\u0004\u0018\u00010 J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020$J\b\u0010%\u001a\u0004\u0018\u00010&J\u0006\u0010'\u001a\u00020(J\n\u0010)\u001a\u0004\u0018\u00010\fH\u0007J\n\u0010*\u001a\u0004\u0018\u00010\fH\u0002J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\u0006\u0010.\u001a\u00020\fJ\u0006\u0010/\u001a\u00020,J\b\u00100\u001a\u0004\u0018\u000101J\u0006\u00102\u001a\u00020,J\u000e\u00103\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104J\u0006\u00106\u001a\u00020,J\b\u00107\u001a\u0004\u0018\u00010\fJ\u000e\u00108\u001a\u00020\f2\u0006\u00109\u001a\u00020\fJ\u0006\u0010:\u001a\u00020(J\u0006\u0010;\u001a\u00020\u001aJ\u0006\u0010<\u001a\u00020=J\b\u0010>\u001a\u0004\u0018\u00010\fJ\u0006\u0010?\u001a\u00020(J\u0006\u0010@\u001a\u00020(J\b\u0010A\u001a\u0004\u0018\u00010BJ\b\u0010C\u001a\u0004\u0018\u00010DJ\u0006\u0010E\u001a\u00020,J\b\u0010F\u001a\u0004\u0018\u00010\fJ\u0006\u0010G\u001a\u00020,J\u0006\u0010H\u001a\u00020IJ\u0010\u0010J\u001a\u00020I2\b\u0010K\u001a\u0004\u0018\u00010 J\u0006\u0010L\u001a\u00020IJ\u0018\u0010M\u001a\u00020I2\u0006\u00109\u001a\u00020\f2\b\u0010N\u001a\u0004\u0018\u00010\fJ\u000e\u0010O\u001a\u00020I2\u0006\u0010P\u001a\u00020\u0016J\u0010\u0010Q\u001a\u00020I2\b\u0010P\u001a\u0004\u0018\u00010\u0018J\u000e\u0010R\u001a\u00020I2\u0006\u0010S\u001a\u00020\u001aJ\u000e\u0010T\u001a\u00020I2\u0006\u0010K\u001a\u00020\u001cJ\u0010\u0010U\u001a\u00020I2\b\u0010P\u001a\u0004\u0018\u00010\u001eJ\u000e\u0010V\u001a\u00020I2\u0006\u0010W\u001a\u00020\"J\u0010\u0010X\u001a\u00020I2\b\u0010Y\u001a\u0004\u0018\u00010$J\u000e\u0010Z\u001a\u00020I2\u0006\u0010P\u001a\u00020&J\u000e\u0010[\u001a\u00020I2\u0006\u0010\\\u001a\u00020(J\u000e\u0010]\u001a\u00020I2\u0006\u0010^\u001a\u00020\fJ\u000e\u0010_\u001a\u00020I2\u0006\u0010`\u001a\u00020,J\u000e\u0010a\u001a\u00020I2\u0006\u0010b\u001a\u00020,J\u000e\u0010c\u001a\u00020I2\u0006\u0010d\u001a\u00020\fJ\u000e\u0010e\u001a\u00020I2\u0006\u0010P\u001a\u000201J\u000e\u0010f\u001a\u00020I2\u0006\u0010g\u001a\u00020,J\u0018\u0010h\u001a\u00020I2\u0010\u0010P\u001a\f\u0012\u0006\u0012\u0004\u0018\u000105\u0018\u000104J\u000e\u0010i\u001a\u00020I2\u0006\u0010j\u001a\u00020,J\u0010\u0010k\u001a\u00020I2\b\u0010l\u001a\u0004\u0018\u00010\fJ\u000e\u0010m\u001a\u00020I2\u0006\u0010S\u001a\u00020(J\u000e\u0010n\u001a\u00020I2\u0006\u0010o\u001a\u00020\u001aJ\u000e\u0010p\u001a\u00020I2\u0006\u0010g\u001a\u00020,J\u000e\u0010q\u001a\u00020I2\u0006\u0010Y\u001a\u00020=J\u0010\u0010r\u001a\u00020I2\b\u0010s\u001a\u0004\u0018\u00010\fJ\u000e\u0010t\u001a\u00020I2\u0006\u0010u\u001a\u00020(J\u000e\u0010v\u001a\u00020I2\u0006\u0010u\u001a\u00020(J\u000e\u0010w\u001a\u00020I2\u0006\u0010K\u001a\u00020BJ\u000e\u0010x\u001a\u00020I2\u0006\u0010y\u001a\u00020DJ\u000e\u0010z\u001a\u00020I2\u0006\u0010j\u001a\u00020,J\u0010\u0010{\u001a\u00020I2\u0006\u0010|\u001a\u00020,H\u0002JA\u0010}\u001a\u00020I\"\u0006\b\u0000\u0010\u0012\u0018\u00012\u0006\u0010~\u001a\u00020\u007f2\u0012\u0010\u0080\u0001\u001a\r\u0012\b\b\u0000\u0012\u0004\u0018\u0001H\u00120\u0081\u00012\u0007\u0010\u0082\u0001\u001a\u00020\f2\t\b\u0002\u0010\u0083\u0001\u001a\u00020,H\u0082\bJ#\u0010\u0084\u0001\u001a\u00020I2\u0006\u0010~\u001a\u00020\u007f2\u0012\u0010\u0080\u0001\u001a\r\u0012\b\b\u0000\u0012\u0004\u0018\u00010\u001c0\u0081\u0001J7\u0010\u0085\u0001\u001a\u00020I\"\u0006\b\u0000\u0010\u0012\u0018\u00012\u0006\u0010~\u001a\u00020\u007f2\u0012\u0010\u0080\u0001\u001a\r\u0012\b\b\u0000\u0012\u0004\u0018\u0001H\u00120\u0081\u00012\u0007\u0010\u0082\u0001\u001a\u00020\fH\u0082\bJ#\u0010\u0086\u0001\u001a\u00020I2\u0006\u0010~\u001a\u00020\u007f2\u0012\u0010\u0080\u0001\u001a\r\u0012\b\b\u0000\u0012\u0004\u0018\u00010D0\u0081\u0001J\u0007\u0010\u0087\u0001\u001a\u00020,R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0088\u0001"}, d2 = {"Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;", "", "prefs", "Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;", "gson", "Lcom/google/gson/Gson;", "(Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;Lcom/google/gson/Gson;)V", "getGson", "()Lcom/google/gson/Gson;", "prefValueData", "Landroidx/lifecycle/MutableLiveData;", "Lkotlin/Pair;", "", "getPrefs", "()Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;", "prefsChangeListener", "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;", "decryptPrefRecord", ExifInterface.GPS_DIRECTION_TRUE, "encrypted", "(Ljava/lang/String;)Ljava/lang/Object;", "getAdConfig", "Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;", "getAppUpdateBean", "Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;", "getAppUpdateDownloadId", "", "getConfig", "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;", "getDnsCofig", "Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;", "getFanClubInfo", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "getForcedDnsResolutionHost", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;", "getForcedServer", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;", "getGameCenterBean", "Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;", "getImRole", "", "getImei", "getImeiStr", "getIsCacheGift", "", "getIsFirstRun", "getJwtToken", "getKeepOldAppVersion", "getLocalRoomMsg", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;", "getNameCardAllowed", "getPeeragePrices", "", "Lcom/qennnsad/aknkaksd/data/bean/PeeragePriceBean;", "getPinnedEnabled", "getPinnedMessageIntro", "getRoomTicketJwt", "aId", "getStreamChatId", "getStreamChatStartTime", "getTestServerCaptchaType", "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;", "getTestServerDomain", "getTranslationModeText", "getTranslationModeVoice", "getUserInfo", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "getUserMoney", "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;", "getV2Server", "getXImei", "isStreamContinueInBackground", "removeUserInfo", "", "saveFanClubInfo", "info", "saveKeepOldAppVersion", "saveRoomTicketJwt", "ticket", "setAdConfig", "bean", "setAppUpdateBean", "setAppUpdateDownloadId", "id", "setConfig", "setDnsConfig", "setForcedDnsResolutionHost", c.f86932f, "setForcedServer", "type", "setGameCenterBean", "setImRole", "role", "setImei", d.f45439k, "setIsCacheGift", "isCacheGift", "setIsFirstRun", "isFirstRun", "setJwtToken", "token", "setLocalRoomMsg", "setNameCardAllowed", "allowed", "setPeeragePrices", "setPinnedEnabled", "b", "setPinnedMessageIntro", "intro", "setStreamChatId", "setStreamChatStartTime", j.f47980a, "setStreamContinueInBackground", "setTestServerCaptchaType", "setTestServerDomain", d.A, "setTranslationModeText", "mode", "setTranslationModeVoice", "setUserInfo", "setUserMoney", "money", "setV2Server", "setWasUserGuest", "was", "subscribeBeanRecord", "lifecycle", "Landroidx/lifecycle/LifecycleOwner;", "observer", "Landroidx/lifecycle/Observer;", "key", "decrypt", "subscribeConfig", "subscribeRecord", "subscribeUserMoney", "wasUserGuest", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PrefsHelper {
    @g
    private final Gson gson;
    @g
    private final MutableLiveData<Pair<String, Object>> prefValueData;
    @g
    private final Prefs prefs;
    @g
    private final SharedPreferences.OnSharedPreferenceChangeListener prefsChangeListener;

    @u7.a
    public PrefsHelper(@g Prefs prefs, @g Gson gson) {
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.prefs = prefs;
        this.gson = gson;
        this.prefValueData = new MutableLiveData<>();
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.qennnsad.aknkaksd.data.sharedpreference.a
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                PrefsHelper.m65prefsChangeListener$lambda0(PrefsHelper.this, sharedPreferences, str);
            }
        };
        this.prefsChangeListener = onSharedPreferenceChangeListener;
        prefs.registerListener(onSharedPreferenceChangeListener);
    }

    private final /* synthetic */ <T> T decryptPrefRecord(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            str2 = DES.decryptDES(str);
        } catch (Exception e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("Decrypt ");
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            sb.append(Object.class.getSimpleName());
            String sb2 = sb.toString();
            o0.c(sb2, "decode--eeeeeeeeee: " + e4);
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        Gson gson = new Gson();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) gson.fromJson(str2, (Class<Object>) Object.class);
    }

    private final String getImeiStr() {
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < 8; i4++) {
            stringBuffer.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt(36)));
        }
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: prefsChangeListener$lambda-0  reason: not valid java name */
    public static final void m65prefsChangeListener$lambda0(PrefsHelper this$0, SharedPreferences sharedPreferences, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.prefValueData.postValue(new Pair<>(str, sharedPreferences.getAll().get(str)));
    }

    private final void setWasUserGuest(boolean z9) {
        this.prefs.set("wasUserGuest", Boolean.valueOf(z9));
    }

    private final /* synthetic */ <T> void subscribeBeanRecord(LifecycleOwner lifecycleOwner, Observer<? super T> observer, String str, boolean z9) {
        MutableLiveData mutableLiveData = this.prefValueData;
        Intrinsics.needClassReification();
        mutableLiveData.observe(lifecycleOwner, new PrefsHelper$subscribeBeanRecord$1(str, z9, observer, this));
    }

    static /* synthetic */ void subscribeBeanRecord$default(PrefsHelper prefsHelper, LifecycleOwner lifecycleOwner, Observer observer, String str, boolean z9, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            z9 = false;
        }
        MutableLiveData mutableLiveData = prefsHelper.prefValueData;
        Intrinsics.needClassReification();
        mutableLiveData.observe(lifecycleOwner, new PrefsHelper$subscribeBeanRecord$1(str, z9, observer, prefsHelper));
    }

    private final /* synthetic */ <T> void subscribeRecord(LifecycleOwner lifecycleOwner, final Observer<? super T> observer, final String str) {
        MutableLiveData<Pair<String, Object>> mutableLiveData = this.prefValueData;
        Intrinsics.needClassReification();
        mutableLiveData.observe(lifecycleOwner, new Observer() { // from class: com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper$subscribeRecord$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(@h Pair<String, ? extends Object> pair) {
                if (Intrinsics.areEqual(pair != null ? pair.getFirst() : null, str)) {
                    Intrinsics.reifiedOperationMarker(1, "T?");
                    observer.onChanged((Object) pair.getSecond());
                }
            }
        });
    }

    @h
    public final AdConfigBean getAdConfig() {
        try {
            String string = this.prefs.getString("adconfig");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return (AdConfigBean) new Gson().fromJson(string, (Class<Object>) AdConfigBean.class);
        } catch (Throwable unused) {
            return null;
        }
    }

    @h
    public final AppUpdateBean getAppUpdateBean() {
        String string = this.prefs.getString("KEY_APP_UPDATE_BEAN");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (AppUpdateBean) new Gson().fromJson(string, (Class<Object>) AppUpdateBean.class);
    }

    public final long getAppUpdateDownloadId() {
        return this.prefs.getLong("KEY_APP_UPDATE_DOWNLOAD_ID");
    }

    @h
    public final ConfigBean getConfig() {
        String str;
        String string = this.prefs.getString("config");
        ConfigBean configBean = null;
        if (!TextUtils.isEmpty(string)) {
            try {
                str = DES.decryptDES(string);
            } catch (Exception e4) {
                o0.c("Decrypt " + ConfigBean.class.getSimpleName(), "decode--eeeeeeeeee: " + e4);
                str = null;
            }
            if (!TextUtils.isEmpty(str)) {
                configBean = new Gson().fromJson(str, (Class<Object>) ConfigBean.class);
            }
        }
        return configBean;
    }

    @h
    public final ConfigDnsBean getDnsCofig() {
        String string = this.prefs.getString("config_host");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (ConfigDnsBean) new Gson().fromJson(string, (Class<Object>) ConfigDnsBean.class);
    }

    @h
    public final FanClubInfoBean getFanClubInfo() {
        String string = this.prefs.getString("KEY_FAN_CLUB_INFO");
        o0.g("PrefsHelper", "Cached FanClubInfo: " + string);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (FanClubInfoBean) new Gson().fromJson(string, (Class<Object>) FanClubInfoBean.class);
    }

    @g
    public final DnsResolver.ForcedDnsResolutionHost getForcedDnsResolutionHost() {
        return DnsResolver.ForcedDnsResolutionHost.values()[((Number) this.prefs.get("KEY_FORCED_DNS_RESOLUTION_HOST", 0)).intValue()];
    }

    @g
    public final DnsResolver.ForcedServerType getForcedServer() {
        return DnsResolver.ForcedServerType.values()[((Number) this.prefs.get("KEY_FORCED_SERVER_TYPE", 0)).intValue()];
    }

    @h
    public final GameCenter.GetUrlBean getGameCenterBean() {
        return (GameCenter.GetUrlBean) new Gson().fromJson(this.prefs.getString("KEY_GAME_CENTER_VISIBLE"), (Class<Object>) GameCenter.GetUrlBean.class);
    }

    @g
    public final Gson getGson() {
        return this.gson;
    }

    public final int getImRole() {
        return ((Number) this.prefs.get("imRole", 0)).intValue();
    }

    @h
    @SuppressLint({"HardwareIds", "PrivateApi"})
    public final String getImei() {
        String str;
        try {
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 28) {
                str = Settings.Secure.getString(this.prefs.getAppContext().getContentResolver(), "android_id");
            } else if (i4 > 24) {
                str = Build.SERIAL;
            } else {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                Object invoke = cls.getMethod("get", String.class).invoke(cls, "ro.serialno");
                Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.String");
                str = (String) invoke;
            }
            return str;
        } catch (Exception e4) {
            e4.printStackTrace();
            return "UNKNOWN";
        }
    }

    public final boolean getIsCacheGift() {
        return ((Boolean) this.prefs.get("isCacheGift", Boolean.FALSE)).booleanValue();
    }

    public final boolean getIsFirstRun() {
        return ((Boolean) this.prefs.get("isFirstRun", Boolean.TRUE)).booleanValue();
    }

    @g
    public final String getJwtToken() {
        return (String) this.prefs.get("jwtToken", "");
    }

    public final boolean getKeepOldAppVersion() {
        return this.prefs.getBoolean("KEY_KEEP_OLD_APP_VERSION");
    }

    @h
    public final LocalRoomMsg getLocalRoomMsg() {
        String string = this.prefs.getString(b.P);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (LocalRoomMsg) new Gson().fromJson(string, (Class<Object>) LocalRoomMsg.class);
    }

    public final boolean getNameCardAllowed() {
        return this.prefs.getBoolean("name_card_allowed");
    }

    @h
    public final List<PeeragePriceBean> getPeeragePrices() {
        String string = this.prefs.getString("KEY_PEERAGE_PRICES");
        o0.g("PrefsHelper", "PeeragePrices: " + string);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (List) new Gson().fromJson(string, TypeToken.getParameterized(List.class, PeeragePriceBean.class).getType());
    }

    public final boolean getPinnedEnabled() {
        return ((Boolean) this.prefs.get("KEY_PINNED_ENABLED", Boolean.TRUE)).booleanValue();
    }

    @h
    public final String getPinnedMessageIntro() {
        return (String) this.prefs.get("KEY_PINNED_INTRO", "");
    }

    @g
    public final Prefs getPrefs() {
        return this.prefs;
    }

    @g
    public final String getRoomTicketJwt(@g String aId) {
        Intrinsics.checkNotNullParameter(aId, "aId");
        Prefs prefs = this.prefs;
        return prefs.getString("KEY_TICKET_ANCHOR_ID" + aId);
    }

    public final int getStreamChatId() {
        return this.prefs.getInt("KEY_STREAM_CHAT_ID");
    }

    public final long getStreamChatStartTime() {
        return this.prefs.getLong("KEY_STREAM_CHAT_START_TIME");
    }

    @g
    public final CaptchaType getTestServerCaptchaType() {
        return CaptchaType.values()[((Number) this.prefs.get("KEY_CAPTCHA_TYPE", 3)).intValue()];
    }

    @h
    public final String getTestServerDomain() {
        return (String) this.prefs.get("KEY_TEST_SERVER_DOMAIN", e.f48524p);
    }

    public final int getTranslationModeText() {
        return this.prefs.getInt("translation_text");
    }

    public final int getTranslationModeVoice() {
        return this.prefs.getInt("translation_voice");
    }

    @h
    public final UserBean getUserInfo() {
        String string = this.prefs.getString("userInfo");
        o0.g("PrefsHelper", "LoginInfoFromSp:%s" + string);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (UserBean) this.gson.fromJson(string, (Class<Object>) UserBean.class);
    }

    @h
    public final UserMoney getUserMoney() {
        String string = this.prefs.getString("usermonry");
        o0.g("PrefsHelper", "usermoney:%s" + string);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (UserMoney) new Gson().fromJson(string, (Class<Object>) UserMoney.class);
    }

    public final boolean getV2Server() {
        return ((Boolean) this.prefs.get("KEY_V2_SERVER", Boolean.FALSE)).booleanValue();
    }

    @h
    public final String getXImei() {
        Prefs prefs = this.prefs;
        String SERIAL = Build.SERIAL;
        Intrinsics.checkNotNullExpressionValue(SERIAL, "SERIAL");
        String str = (String) prefs.get("XIMEI", SERIAL);
        o0.g("PrefsHelper", "getXImei:" + str);
        return str;
    }

    public final boolean isStreamContinueInBackground() {
        return this.prefs.getBoolean("KEY_STREAM_CONTINUE_IN_BACKGROUND");
    }

    public final void removeUserInfo() {
        o0.a("PrefsHelper", "Removing login info.");
        this.prefs.remove("userInfo");
        this.prefs.remove("jwtToken");
    }

    public final void saveFanClubInfo(@h FanClubInfoBean fanClubInfoBean) {
        String json = fanClubInfoBean == null ? "" : new Gson().toJson(fanClubInfoBean);
        o0.g("PrefsHelper", "Saving FanClubInfo: " + json);
        this.prefs.set("KEY_FAN_CLUB_INFO", json);
    }

    public final void saveKeepOldAppVersion() {
        this.prefs.set("KEY_KEEP_OLD_APP_VERSION", Boolean.TRUE);
    }

    public final void saveRoomTicketJwt(@g String aId, @h String str) {
        Intrinsics.checkNotNullParameter(aId, "aId");
        Prefs prefs = this.prefs;
        prefs.set("KEY_TICKET_ANCHOR_ID" + aId, str);
    }

    public final void setAdConfig(@g AdConfigBean bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.prefs.set("adconfig", new Gson().toJson(bean));
    }

    public final void setAppUpdateBean(@h AppUpdateBean appUpdateBean) {
        this.prefs.set("KEY_APP_UPDATE_BEAN", new Gson().toJson(appUpdateBean));
    }

    public final void setAppUpdateDownloadId(long j4) {
        this.prefs.set("KEY_APP_UPDATE_DOWNLOAD_ID", Long.valueOf(j4));
    }

    public final void setConfig(@g ConfigBean info) {
        Intrinsics.checkNotNullParameter(info, "info");
        String json = new Gson().toJson(info);
        o0.b("PrefsHelper", "ConfigBeanToSp: %s", json);
        try {
            json = DES.encryptDES(json);
        } catch (Exception e4) {
            o0.c("config", "encode--eeeeeeeeee: " + e4);
        }
        this.prefs.set("config", json);
    }

    public final void setDnsConfig(@h ConfigDnsBean configDnsBean) {
        this.prefs.set("config_host", new Gson().toJson(configDnsBean));
    }

    public final void setForcedDnsResolutionHost(@g DnsResolver.ForcedDnsResolutionHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        this.prefs.set("KEY_FORCED_DNS_RESOLUTION_HOST", Integer.valueOf(host.ordinal()));
    }

    public final void setForcedServer(@h DnsResolver.ForcedServerType forcedServerType) {
        this.prefs.set("KEY_FORCED_SERVER_TYPE", forcedServerType != null ? Integer.valueOf(forcedServerType.ordinal()) : null);
    }

    public final void setGameCenterBean(@g GameCenter.GetUrlBean bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.prefs.set("KEY_GAME_CENTER_VISIBLE", new Gson().toJson(bean));
    }

    public final void setImRole(int i4) {
        this.prefs.set("imRole", Integer.valueOf(i4));
    }

    public final void setImei(@g String imei) {
        Intrinsics.checkNotNullParameter(imei, "imei");
        o0.g("PrefsHelper", "setImei:" + imei);
        this.prefs.set("IMEI", imei);
        try {
            String aesencrypt_tiger = AES.aesencrypt_tiger("plat=android;ver=1.13.0;uuid:" + imei + ';');
            Intrinsics.checkNotNullExpressionValue(aesencrypt_tiger, "aesencrypt_tiger(deviceHeadler)");
            o0.g("PrefsHelper", "本地加密:" + aesencrypt_tiger);
            this.prefs.set("XIMEI", aesencrypt_tiger);
        } catch (Exception e4) {
            o0.g("PrefsHelper", "本地加密失败");
            e4.printStackTrace();
        }
    }

    public final void setIsCacheGift(boolean z9) {
        this.prefs.set("isCacheGift", Boolean.valueOf(z9));
    }

    public final void setIsFirstRun(boolean z9) {
        this.prefs.set("isFirstRun", Boolean.valueOf(z9));
    }

    public final void setJwtToken(@g String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.prefs.set("jwtToken", token);
    }

    public final void setLocalRoomMsg(@g LocalRoomMsg bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.prefs.set(b.P, new Gson().toJson(bean));
    }

    public final void setNameCardAllowed(boolean z9) {
        this.prefs.set("name_card_allowed", Boolean.valueOf(z9));
    }

    public final void setPeeragePrices(@h List<PeeragePriceBean> list) {
        this.prefs.set("KEY_PEERAGE_PRICES", new Gson().toJson(list));
    }

    public final void setPinnedEnabled(boolean z9) {
        this.prefs.set("KEY_PINNED_ENABLED", Boolean.valueOf(z9));
    }

    public final void setPinnedMessageIntro(@h String str) {
        this.prefs.set("KEY_PINNED_INTRO", str);
    }

    public final void setStreamChatId(int i4) {
        this.prefs.set("KEY_STREAM_CHAT_ID", Integer.valueOf(i4));
    }

    public final void setStreamChatStartTime(long j4) {
        this.prefs.set("KEY_STREAM_CHAT_START_TIME", Long.valueOf(j4));
    }

    public final void setStreamContinueInBackground(boolean z9) {
        this.prefs.set("KEY_STREAM_CONTINUE_IN_BACKGROUND", Boolean.valueOf(z9));
    }

    public final void setTestServerCaptchaType(@g CaptchaType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.prefs.set("KEY_CAPTCHA_TYPE", Integer.valueOf(type.ordinal()));
    }

    public final void setTestServerDomain(@h String str) {
        this.prefs.set("KEY_TEST_SERVER_DOMAIN", str);
    }

    public final void setTranslationModeText(int i4) {
        this.prefs.set("translation_text", Integer.valueOf(i4));
    }

    public final void setTranslationModeVoice(int i4) {
        this.prefs.set("translation_voice", Integer.valueOf(i4));
    }

    public final void setUserInfo(@g UserBean info) {
        Intrinsics.checkNotNullParameter(info, "info");
        String json = new Gson().toJson(info);
        o0.a("PrefsHelper", "LoginInfoToSp:%s" + json);
        this.prefs.set("userInfo", json);
        setWasUserGuest(info.isGuest());
    }

    public final void setUserMoney(@g UserMoney money) {
        Intrinsics.checkNotNullParameter(money, "money");
        String json = new Gson().toJson(money);
        o0.a("PrefsHelper", "MoneyInfoToSp:%s" + json);
        this.prefs.set("usermonry", json);
    }

    public final void setV2Server(boolean z9) {
        this.prefs.set("KEY_V2_SERVER", Boolean.valueOf(z9));
    }

    public final void subscribeConfig(@g LifecycleOwner lifecycle, @g final Observer<? super ConfigBean> observer) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.prefValueData.observe(lifecycle, new Observer() { // from class: com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper$subscribeConfig$$inlined$subscribeBeanRecord$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(@h Pair<String, ? extends Object> pair) {
                String str;
                T t9 = null;
                if (Intrinsics.areEqual(pair != null ? pair.getFirst() : null, r1)) {
                    if (r2) {
                        Observer observer2 = observer;
                        Object second = pair.getSecond();
                        Intrinsics.checkNotNull(second, "null cannot be cast to non-null type kotlin.String");
                        String str2 = (String) second;
                        if (!TextUtils.isEmpty(str2)) {
                            try {
                                str = DES.decryptDES(str2);
                            } catch (Exception e4) {
                                o0.c("Decrypt " + ConfigBean.class.getSimpleName(), "decode--eeeeeeeeee: " + e4);
                                str = null;
                            }
                            if (!TextUtils.isEmpty(str)) {
                                t9 = new Gson().fromJson(str, (Class) ConfigBean.class);
                            }
                        }
                        observer2.onChanged(t9);
                        return;
                    }
                    Observer observer3 = observer;
                    Gson gson = this.getGson();
                    Object second2 = pair.getSecond();
                    Intrinsics.checkNotNull(second2, "null cannot be cast to non-null type kotlin.String");
                    observer3.onChanged(gson.fromJson((String) second2, (Class<Object>) ConfigBean.class));
                }
            }
        });
    }

    public final void subscribeUserMoney(@g LifecycleOwner lifecycle, @g final Observer<? super UserMoney> observer) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.prefValueData.observe(lifecycle, new Observer() { // from class: com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper$subscribeUserMoney$$inlined$subscribeBeanRecord$default$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(@h Pair<String, ? extends Object> pair) {
                String str;
                T t9 = null;
                if (Intrinsics.areEqual(pair != null ? pair.getFirst() : null, r1)) {
                    if (r2) {
                        Observer observer2 = observer;
                        Object second = pair.getSecond();
                        Intrinsics.checkNotNull(second, "null cannot be cast to non-null type kotlin.String");
                        String str2 = (String) second;
                        if (!TextUtils.isEmpty(str2)) {
                            try {
                                str = DES.decryptDES(str2);
                            } catch (Exception e4) {
                                o0.c("Decrypt " + UserMoney.class.getSimpleName(), "decode--eeeeeeeeee: " + e4);
                                str = null;
                            }
                            if (!TextUtils.isEmpty(str)) {
                                t9 = new Gson().fromJson(str, (Class) UserMoney.class);
                            }
                        }
                        observer2.onChanged(t9);
                        return;
                    }
                    Observer observer3 = observer;
                    Gson gson = this.getGson();
                    Object second2 = pair.getSecond();
                    Intrinsics.checkNotNull(second2, "null cannot be cast to non-null type kotlin.String");
                    observer3.onChanged(gson.fromJson((String) second2, (Class<Object>) UserMoney.class));
                }
            }
        });
    }

    public final boolean wasUserGuest() {
        return this.prefs.getBoolean("wasUserGuest");
    }
}
