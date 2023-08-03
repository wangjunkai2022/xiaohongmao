package h;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a {
    public static synchronized b a() {
        synchronized (a.class) {
            String b10 = i.c.b("wxcasxx_v3", "wxcasxx");
            if (t.a.e(b10)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(b10);
                return new b(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString("token"), jSONObject.optString("timestamp"));
            } catch (Exception e4) {
                t.d.c(e4);
                return null;
            }
        }
    }

    public static synchronized b b(Context context) {
        synchronized (a.class) {
            String e4 = e(context);
            if (t.a.e(e4)) {
                e4 = i.c.b("wxcasxx_v3", "wxcasxx");
            }
            if (t.a.e(e4)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(e4);
                return new b(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString("token"), jSONObject.optString("timestamp"));
            } catch (Exception e10) {
                t.d.c(e10);
                return null;
            }
        }
    }

    public static synchronized void c(Context context, b bVar) {
        synchronized (a.class) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("apdid", bVar.a());
                jSONObject.put("deviceInfoHash", bVar.b());
                jSONObject.put("token", bVar.c());
                jSONObject.put("timestamp", bVar.d());
                String jSONObject2 = jSONObject.toString();
                i.c.c(context, "vkeyid_profiles_v3", "deviceid", jSONObject2);
                i.c.d("wxcasxx_v3", "wxcasxx", jSONObject2);
            } catch (JSONException e4) {
                t.d.c(e4);
            }
        }
    }

    public static synchronized b d(Context context) {
        synchronized (a.class) {
            String e4 = e(context);
            if (t.a.e(e4)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(e4);
                return new b(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString("token"), jSONObject.optString("timestamp"));
            } catch (Exception e10) {
                t.d.c(e10);
                return null;
            }
        }
    }

    private static String e(Context context) {
        return i.c.a(context, "vkeyid_profiles_v3", "deviceid");
    }
}
