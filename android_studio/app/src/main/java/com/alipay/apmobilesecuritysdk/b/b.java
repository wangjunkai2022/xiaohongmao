package com.alipay.apmobilesecuritysdk.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import h.e;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private File f6709a;

    /* renamed from: b  reason: collision with root package name */
    private s.a f6710b;

    public b(String str, s.a aVar) {
        this.f6709a = null;
        this.f6710b = null;
        this.f6709a = new File(str);
        this.f6710b = aVar;
    }

    private static String a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "id");
            jSONObject.put(com.qennnsad.aknkaksd.data.websocket.b.f47825n, str);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        File file = this.f6709a;
        if (file == null) {
            return;
        }
        if (file.exists() && this.f6709a.isDirectory() && this.f6709a.list().length != 0) {
            ArrayList arrayList = new ArrayList();
            for (String str : this.f6709a.list()) {
                arrayList.add(str);
            }
            Collections.sort(arrayList);
            String str2 = (String) arrayList.get(arrayList.size() - 1);
            int size = arrayList.size();
            if (str2.equals(new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime()) + ".log")) {
                if (arrayList.size() < 2) {
                    return;
                }
                str2 = (String) arrayList.get(arrayList.size() - 2);
                size--;
            }
            if (!this.f6710b.b(a(t.c.e(this.f6709a.getAbsolutePath(), str2)))) {
                size--;
            }
            for (int i4 = 0; i4 < size; i4++) {
                new File(this.f6709a, (String) arrayList.get(i4)).delete();
            }
        }
    }

    public final void c(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager == null ? null : connectivityManager.getActiveNetworkInfo();
        boolean z9 = true;
        z9 = (activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1) ? false : false;
        boolean b10 = e.b(context);
        if (z9 && b10) {
            new Thread(new c(this)).start();
        }
    }
}
