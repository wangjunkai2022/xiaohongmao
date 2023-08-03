package f;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c {
    public static Map<String, String> a(Context context) {
        com.alipay.security.mobile.module.deviceinfo.d q9 = com.alipay.security.mobile.module.deviceinfo.d.q();
        HashMap hashMap = new HashMap();
        h.d a10 = h.c.a(context);
        String o9 = q9.o(context);
        String p9 = q9.p(context);
        String s9 = q9.s(context);
        String h4 = q9.h();
        String f10 = q9.f(context);
        if (a10 != null) {
            t.b.b("Read deviceInfoStorageModel From local data:");
            if (t.a.e(o9)) {
                o9 = a10.a();
            }
            if (t.a.e(p9)) {
                p9 = a10.c();
            }
            if (t.a.e(s9)) {
                s9 = a10.e();
            }
            if (t.a.e(h4)) {
                h4 = a10.g();
            }
            if (t.a.e(f10)) {
                f10 = a10.i();
            }
        } else {
            t.b.b("Local deviceInfoStorageModel is null");
        }
        h.d dVar = new h.d(o9, p9, s9, h4, f10);
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.ksyun.media.player.d.d.f45439k, dVar.a());
                jSONObject.put("imsi", dVar.c());
                jSONObject.put(com.ksyun.media.player.d.d.f45440l, dVar.e());
                jSONObject.put("bluetoothmac", dVar.g());
                jSONObject.put("gsi", dVar.i());
                String jSONObject2 = jSONObject.toString();
                i.c.d("device_feature_file_name", "device_feature_file_key", jSONObject2);
                i.c.c(context, "device_feature_prefs_name", "device_feature_prefs_key", jSONObject2);
            } catch (Exception e4) {
                t.d.c(e4);
            }
        }
        hashMap.put("AD1", o9);
        hashMap.put("AD2", p9);
        hashMap.put("AD3", q9.F(context));
        hashMap.put("AD5", q9.D(context));
        hashMap.put("AD6", q9.E(context));
        hashMap.put("AD7", q9.C(context));
        hashMap.put("AD8", s9);
        hashMap.put("AD9", q9.A(context));
        hashMap.put("AD10", f10);
        hashMap.put("AD11", q9.k());
        hashMap.put("AD12", q9.l());
        hashMap.put("AD13", q9.m());
        hashMap.put("AD14", q9.t());
        hashMap.put("AD15", q9.H());
        hashMap.put("AD16", q9.z());
        hashMap.put("AD17", "");
        hashMap.put("AD18", h4);
        hashMap.put("AD19", q9.u(context));
        hashMap.put("AD20", q9.g());
        hashMap.put("AD21", q9.x(context));
        hashMap.put("AD22", "");
        hashMap.put("AD23", q9.G());
        hashMap.put("AL3", q9.K(context));
        return hashMap;
    }
}
