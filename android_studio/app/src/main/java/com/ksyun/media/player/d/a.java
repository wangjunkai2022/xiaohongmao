package com.ksyun.media.player.d;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import com.ksy.statlibrary.log.LogClient;
import com.ksy.statlibrary.log.LogParams;
import com.ksyun.media.player.KSYMediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: KSYBaseStat.java */
/* loaded from: classes3.dex */
public class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Handler f45418a;

    /* renamed from: b  reason: collision with root package name */
    private Context f45419b;

    public a(Handler handler, Context context) {
        this.f45419b = context;
        this.f45418a = handler;
    }

    private String a(String str) {
        if (str == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        String[] split = str.split("\\.");
        stringBuffer.append("ksyplayer_android_");
        for (String str2 : split) {
            stringBuffer.append(str2);
        }
        return stringBuffer.toString();
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONObject jSONObject = new JSONObject();
        LogClient.getInstance(this.f45419b).addReportParam(new LogParams(jSONObject, "D8uDWZ88ZKUCPu0KRJkR", "2tueIxI3wqxo6IvVU9/Wn+h8RKNNBrxzk/vdmWSD", a(KSYMediaPlayer.getVersion())));
        LogClient.getInstance().setTIMER_INTERVAL(120000L);
        LogClient.getInstance().start();
        try {
            jSONObject.put("sdk_type", d.an);
            jSONObject.put("sdk_ver", KSYMediaPlayer.getVersion());
            jSONObject.put("platform", "android");
            jSONObject.put("os_ver", Build.VERSION.RELEASE);
            Context context = this.f45419b;
            if (context != null) {
                jSONObject.put("pkg", context.getPackageName());
            } else {
                jSONObject.put("pkg", "UNKNOWN");
            }
            jSONObject.put("dev_model", Build.MODEL);
            String a10 = com.ksyun.media.player.util.c.a(this.f45419b);
            if (a10 != null) {
                jSONObject.put("dev_id", a10);
            } else {
                jSONObject.put("dev_id", "UNKNOWN");
            }
            String c10 = com.ksyun.media.player.util.c.c(this.f45419b);
            if (!TextUtils.isEmpty(c10)) {
                jSONObject.put(d.f45440l, c10);
            }
            String b10 = com.ksyun.media.player.util.c.b(this.f45419b);
            if (!TextUtils.isEmpty(b10)) {
                jSONObject.put(d.f45439k, b10);
            }
            jSONObject.put("log_ver", LogClient.getInstance().getBuildVersion());
            jSONObject.put("log_vn", LogClient.getInstance().getBuildVersionNumber());
            Handler handler = this.f45418a;
            if (handler != null) {
                handler.obtainMessage(501, 6, 0, jSONObject.toString()).sendToTarget();
            }
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }
}
