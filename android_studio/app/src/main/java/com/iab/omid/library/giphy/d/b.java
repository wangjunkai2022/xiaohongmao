package com.iab.omid.library.giphy.d;

import a.f0;
import a.g0;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import io.sentry.protocol.y;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static WindowManager f39405a;

    /* renamed from: b  reason: collision with root package name */
    private static String[] f39406b = {y.b.f83919g, y.b.f83920h, "width", "height"};

    /* renamed from: c  reason: collision with root package name */
    static float f39407c = Resources.getSystem().getDisplayMetrics().density;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final float f39408a;

        /* renamed from: b  reason: collision with root package name */
        final float f39409b;

        a(float f10, float f11) {
            this.f39408a = f10;
            this.f39409b = f11;
        }
    }

    static float a(int i4) {
        return i4 / f39407c;
    }

    public static JSONObject b(int i4, int i10, int i11, int i12) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(y.b.f83919g, a(i4));
            jSONObject.put(y.b.f83920h, a(i10));
            jSONObject.put("width", a(i11));
            jSONObject.put("height", a(i12));
        } catch (JSONException e4) {
            c.b("Error with creating viewStateObject", e4);
        }
        return jSONObject;
    }

    public static void c(Context context) {
        if (context != null) {
            f39407c = context.getResources().getDisplayMetrics().density;
            f39405a = (WindowManager) context.getSystemService("window");
        }
    }

    public static void d(JSONObject jSONObject) {
        a j4 = j(jSONObject);
        try {
            jSONObject.put("width", j4.f39408a);
            jSONObject.put("height", j4.f39409b);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    public static void e(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e4) {
            c.b("Error with setting ad session id", e4);
        }
    }

    public static void f(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e4) {
            c.b("JSONException during JSONObject.put for name [" + str + "]", e4);
        }
    }

    public static void g(JSONObject jSONObject, List<String> list) {
        JSONArray jSONArray = new JSONArray();
        for (String str : list) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
        } catch (JSONException e4) {
            c.b("Error with setting friendly obstruction", e4);
        }
    }

    public static void h(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
                jSONObject.put("childViews", optJSONArray);
            }
            optJSONArray.put(jSONObject2);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    private static boolean i(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    private static a j(JSONObject jSONObject) {
        float f10;
        float f11 = 0.0f;
        if (f39405a != null) {
            Point point = new Point(0, 0);
            f39405a.getDefaultDisplay().getRealSize(point);
            f11 = a(point.x);
            f10 = a(point.y);
        } else {
            f10 = 0.0f;
        }
        return new a(f11, f10);
    }

    public static boolean k(@f0 JSONObject jSONObject, @g0 JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        return jSONObject != null && jSONObject2 != null && l(jSONObject, jSONObject2) && m(jSONObject, jSONObject2) && n(jSONObject, jSONObject2) && o(jSONObject, jSONObject2);
    }

    private static boolean l(JSONObject jSONObject, JSONObject jSONObject2) {
        String[] strArr;
        for (String str : f39406b) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    private static boolean m(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    private static boolean n(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (i(optJSONArray, optJSONArray2)) {
            for (int i4 = 0; i4 < optJSONArray.length(); i4++) {
                if (!optJSONArray.optString(i4, "").equals(optJSONArray2.optString(i4, ""))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private static boolean o(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (i(optJSONArray, optJSONArray2)) {
            for (int i4 = 0; i4 < optJSONArray.length(); i4++) {
                if (!k(optJSONArray.optJSONObject(i4), optJSONArray2.optJSONObject(i4))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
