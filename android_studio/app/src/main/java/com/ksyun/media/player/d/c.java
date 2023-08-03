package com.ksyun.media.player.d;

import android.content.Context;
import android.os.Handler;
import com.ksy.statlibrary.log.LogClient;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* compiled from: KSYStatRecord.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static c f45424a;

    /* renamed from: c  reason: collision with root package name */
    private Context f45426c;

    /* renamed from: e  reason: collision with root package name */
    private String f45428e;

    /* renamed from: b  reason: collision with root package name */
    private ExecutorService f45425b = Executors.newFixedThreadPool(2);

    /* renamed from: d  reason: collision with root package name */
    private boolean f45427d = false;

    private c() {
    }

    public static c a() {
        c cVar;
        synchronized (c.class) {
            if (f45424a == null) {
                f45424a = new c();
            }
            cVar = f45424a;
        }
        return cVar;
    }

    private String b(String str) {
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

    public void a(Context context, Handler handler, String str) {
        if (this.f45427d) {
            LogClient.getInstance().start();
            return;
        }
        this.f45426c = context;
        this.f45428e = b(str);
        this.f45425b.execute(new a(handler, this.f45426c));
        this.f45427d = true;
    }

    public void a(Handler handler) {
        ExecutorService executorService = this.f45425b;
        if (executorService != null) {
            executorService.execute(new b(handler));
        }
    }

    public void a(String str) {
        if (str == null) {
            return;
        }
        try {
            LogClient.getInstance().put(str, this.f45428e);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            LogClient.getInstance().put(jSONObject.toString(), this.f45428e);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void a(JSONObject jSONObject, boolean z9) {
        if (jSONObject == null) {
            return;
        }
        try {
            LogClient.getInstance().put(jSONObject.toString(), this.f45428e, z9);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
