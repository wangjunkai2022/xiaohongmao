package p;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final String f93049c = "\"&";

    /* renamed from: d  reason: collision with root package name */
    public static final String f93050d = "&";

    /* renamed from: e  reason: collision with root package name */
    public static final String f93051e = "bizcontext=\"";

    /* renamed from: f  reason: collision with root package name */
    public static final String f93052f = "bizcontext=";

    /* renamed from: g  reason: collision with root package name */
    public static final String f93053g = "\"";

    /* renamed from: h  reason: collision with root package name */
    public static final String f93054h = "appkey";

    /* renamed from: i  reason: collision with root package name */
    public static final String f93055i = "ty";

    /* renamed from: j  reason: collision with root package name */
    public static final String f93056j = "sv";

    /* renamed from: k  reason: collision with root package name */
    public static final String f93057k = "an";

    /* renamed from: l  reason: collision with root package name */
    public static final String f93058l = "av";

    /* renamed from: m  reason: collision with root package name */
    public static final String f93059m = "sdk_start_time";

    /* renamed from: n  reason: collision with root package name */
    public static final String f93060n = "UTF-8";

    /* renamed from: a  reason: collision with root package name */
    private String f93061a;

    /* renamed from: b  reason: collision with root package name */
    private String f93062b;

    public a(Context context) {
        this.f93061a = "";
        this.f93062b = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            this.f93061a = packageInfo.versionName;
            this.f93062b = packageInfo.packageName;
        } catch (Exception unused) {
        }
    }

    private static String c(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split(str2);
        for (int i4 = 0; i4 < split.length; i4++) {
            if (!TextUtils.isEmpty(split[i4]) && split[i4].startsWith(str3)) {
                return split[i4];
            }
        }
        return null;
    }

    private String d(String str, String str2) throws JSONException, UnsupportedEncodingException {
        String b10 = b("", "");
        return str + b10 + str2;
    }

    private String e(String str, String str2, String str3) throws JSONException, UnsupportedEncodingException {
        String substring = str.substring(str2.length());
        JSONObject jSONObject = new JSONObject(substring.substring(0, substring.length() - str3.length()));
        if (!jSONObject.has(f93054h)) {
            jSONObject.put(f93054h, m.a.f86904c);
        }
        if (!jSONObject.has(f93055i)) {
            jSONObject.put(f93055i, "and_lite");
        }
        if (!jSONObject.has(f93056j)) {
            jSONObject.put(f93056j, m.a.f86907f);
        }
        if (!jSONObject.has(f93057k)) {
            jSONObject.put(f93057k, this.f93062b);
        }
        if (!jSONObject.has(f93058l)) {
            jSONObject.put(f93058l, this.f93061a);
        }
        if (!jSONObject.has(f93059m)) {
            jSONObject.put(f93059m, System.currentTimeMillis());
        }
        String jSONObject2 = jSONObject.toString();
        return str2 + jSONObject2 + str3;
    }

    private static boolean f(String str) {
        return !str.contains(f93049c);
    }

    private String g(String str) {
        try {
            String c10 = c(str, f93050d, f93052f);
            if (TextUtils.isEmpty(c10)) {
                str = str + f93050d + d(f93052f, "");
            } else {
                int indexOf = str.indexOf(c10);
                str = str.substring(0, indexOf) + e(c10, f93052f, "") + str.substring(indexOf + c10.length());
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    private String h(String str) {
        try {
            String c10 = c(str, f93049c, f93051e);
            if (TextUtils.isEmpty(c10)) {
                return str + f93050d + d(f93051e, "\"");
            }
            if (!c10.endsWith("\"")) {
                c10 = c10 + "\"";
            }
            int indexOf = str.indexOf(c10);
            return str.substring(0, indexOf) + e(c10, f93051e, "\"") + str.substring(indexOf + c10.length());
        } catch (Throwable unused) {
            return str;
        }
    }

    public final String a(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("new_external_info==")) {
            return str;
        }
        if (!str.contains(f93049c)) {
            return g(str);
        }
        return h(str);
    }

    public final String b(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f93054h, m.a.f86904c);
            jSONObject.put(f93055i, "and_lite");
            jSONObject.put(f93056j, m.a.f86907f);
            jSONObject.put(f93057k, this.f93062b);
            jSONObject.put(f93058l, this.f93061a);
            jSONObject.put(f93059m, System.currentTimeMillis());
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(str, str2);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
