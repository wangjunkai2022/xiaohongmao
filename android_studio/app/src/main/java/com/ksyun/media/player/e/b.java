package com.ksyun.media.player.e;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.a0;
import com.ksyun.media.player.util.c;
import java.net.URLEncoder;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: WhiteListUtil.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f45488a = "Data";

    /* renamed from: b  reason: collision with root package name */
    public static final String f45489b = "RetCode";

    /* renamed from: c  reason: collision with root package name */
    public static final String f45490c = "Intval";

    /* renamed from: d  reason: collision with root package name */
    public static final String f45491d = "HwDec264";

    /* renamed from: e  reason: collision with root package name */
    public static final String f45492e = "HwDec265";

    /* renamed from: f  reason: collision with root package name */
    private static final String f45493f = "Model";

    /* renamed from: g  reason: collision with root package name */
    private static final String f45494g = "OsVer";

    /* renamed from: h  reason: collision with root package name */
    private static final String f45495h = "DeviceID";

    /* renamed from: i  reason: collision with root package name */
    private static final String f45496i = "Pkg";

    /* renamed from: j  reason: collision with root package name */
    private static final String f45497j = "AvcInfo";

    /* renamed from: k  reason: collision with root package name */
    private static final String f45498k = "HevcInfo";

    /* renamed from: l  reason: collision with root package name */
    private static final String f45499l = "RomInfo";

    /* renamed from: m  reason: collision with root package name */
    private static final String f45500m = "RetMsg";

    public static String a(Context context) {
        if (context == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject.put("Model", Build.MODEL);
            jSONObject.put(f45494g, Build.VERSION.RELEASE);
            jSONObject.put(f45495h, c.a(context));
            jSONObject.put(f45496i, context.getPackageName());
            JSONArray c10 = c();
            if (c10 != null) {
                jSONObject.put(f45497j, c10);
            } else {
                jSONObject.put(f45497j, jSONArray);
            }
            JSONArray b10 = b();
            if (b10 != null) {
                jSONObject.put(f45498k, b10);
            } else {
                jSONObject.put(f45498k, jSONArray);
            }
            jSONObject.put(f45499l, a());
            return jSONObject.toString();
        } catch (JSONException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return URLEncoder.encode(new String(str.getBytes(), "UTF-8"), "UTF-8");
        } catch (Exception unused) {
            return null;
        }
    }

    private static JSONArray c() {
        return c("video/avc");
    }

    @TargetApi(16)
    private static JSONArray c(String str) {
        String[] supportedTypes;
        int codecCount = MediaCodecList.getCodecCount();
        JSONArray jSONArray = null;
        int i4 = 0;
        for (int i10 = 0; i10 < codecCount; i10++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i10);
            if (!codecInfoAt.isEncoder() && (supportedTypes = codecInfoAt.getSupportedTypes()) != null) {
                for (String str2 : supportedTypes) {
                    if (!TextUtils.isEmpty(str2) && str2.equalsIgnoreCase(str)) {
                        String name = codecInfoAt.getName();
                        if (!name.contains("ffmpeg") && !name.contains("avcodec") && !name.contains("google") && !name.contains(".sw") && !name.startsWith("omx.pv")) {
                            if (jSONArray == null) {
                                jSONArray = new JSONArray();
                            }
                            try {
                                jSONArray.put(i4, name);
                                i4++;
                            } catch (JSONException e4) {
                                e4.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
        return jSONArray;
    }

    private static JSONArray b() {
        return c(a0.f27451k);
    }

    private static String a() {
        String a10;
        String str = Build.DISPLAY;
        String lowerCase = Build.BRAND.toLowerCase();
        lowerCase.hashCode();
        char c10 = 65535;
        switch (lowerCase.hashCode()) {
            case -1206476313:
                if (lowerCase.equals("huawei")) {
                    c10 = 0;
                    break;
                }
                break;
            case -759499589:
                if (lowerCase.equals("xiaomi")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3318203:
                if (lowerCase.equals("letv")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3418016:
                if (lowerCase.equals("oppo")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3620012:
                if (lowerCase.equals("vivo")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                a10 = a("ro.build.version.emui");
                break;
            case 1:
                a10 = Build.VERSION.INCREMENTAL;
                break;
            case 2:
                a10 = a("ro.letv.release.version");
                break;
            case 3:
                a10 = a("ro.build.version.opporom");
                break;
            case 4:
                a10 = a("ro.vivo.os.build.display.id");
                break;
            default:
                a10 = null;
                break;
        }
        if (!TextUtils.isEmpty(a10)) {
            str = a10;
        }
        return b(str);
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Exception unused) {
            return null;
        }
    }
}
