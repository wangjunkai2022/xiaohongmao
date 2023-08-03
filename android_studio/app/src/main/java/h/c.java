package h;

import android.content.Context;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c {
    public static d a(Context context) {
        if (context == null) {
            return null;
        }
        String a10 = i.c.a(context, "device_feature_prefs_name", "device_feature_prefs_key");
        if (t.a.e(a10)) {
            a10 = i.c.b("device_feature_file_name", "device_feature_file_key");
        }
        if (t.a.e(a10)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(a10);
            d dVar = new d();
            dVar.b(jSONObject.getString(com.ksyun.media.player.d.d.f45439k));
            dVar.d(jSONObject.getString("imsi"));
            dVar.f(jSONObject.getString(com.ksyun.media.player.d.d.f45440l));
            dVar.h(jSONObject.getString("bluetoothmac"));
            dVar.j(jSONObject.getString("gsi"));
            return dVar;
        } catch (Exception e4) {
            t.d.c(e4);
            return null;
        }
    }
}
