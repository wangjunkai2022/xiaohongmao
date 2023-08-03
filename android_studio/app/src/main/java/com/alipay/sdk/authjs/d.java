package com.alipay.sdk.authjs;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import com.alipay.sdk.authjs.a;
import java.util.Timer;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    c f6857a;

    /* renamed from: b  reason: collision with root package name */
    Context f6858b;

    public d(Context context, c cVar) {
        this.f6858b = context;
        this.f6857a = cVar;
    }

    private static /* synthetic */ int a(d dVar, a aVar) {
        if (aVar != null && "toast".equals(aVar.f6846c)) {
            JSONObject jSONObject = aVar.f6848e;
            String optString = jSONObject.optString("content");
            int i4 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
            Toast.makeText(dVar.f6858b, optString, i4).show();
            new Timer().schedule(new f(dVar, aVar), i4);
        }
        return a.EnumC0038a.f6850a;
    }

    private static void e(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    private void f(String str) {
        String str2 = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(a.f6840k);
            try {
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject(a.f6841l);
                JSONObject jSONObject3 = jSONObject2 instanceof JSONObject ? jSONObject2 : null;
                String string2 = jSONObject.getString(a.f6842m);
                String string3 = jSONObject.getString(a.f6839j);
                a aVar = new a("call");
                aVar.f6845b = string3;
                aVar.f6846c = string2;
                aVar.f6848e = jSONObject3;
                aVar.f6844a = string;
                c(aVar);
            } catch (Exception unused) {
                str2 = string;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    g(str2, a.EnumC0038a.f6853d);
                } catch (JSONException unused2) {
                }
            }
        } catch (Exception unused3) {
        }
    }

    private int h(a aVar) {
        if (aVar != null && "toast".equals(aVar.f6846c)) {
            JSONObject jSONObject = aVar.f6848e;
            String optString = jSONObject.optString("content");
            int i4 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
            Toast.makeText(this.f6858b, optString, i4).show();
            new Timer().schedule(new f(this, aVar), i4);
        }
        return a.EnumC0038a.f6850a;
    }

    private void i(a aVar) {
        JSONObject jSONObject = aVar.f6848e;
        String optString = jSONObject.optString("content");
        int i4 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
        Toast.makeText(this.f6858b, optString, i4).show();
        new Timer().schedule(new f(this, aVar), i4);
    }

    public final void c(a aVar) throws JSONException {
        if (TextUtils.isEmpty(aVar.f6846c)) {
            g(aVar.f6844a, a.EnumC0038a.f6852c);
            return;
        }
        e eVar = new e(this, aVar);
        if (Looper.getMainLooper() == Looper.myLooper()) {
            eVar.run();
        } else {
            new Handler(Looper.getMainLooper()).post(eVar);
        }
    }

    public final void g(String str, int i4) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(com.qennnsad.aknkaksd.data.websocket.b.f47825n, i4 - 1);
        a aVar = new a(a.f6838i);
        aVar.f6848e = jSONObject;
        aVar.f6844a = str;
        this.f6857a.a(aVar);
    }
}
