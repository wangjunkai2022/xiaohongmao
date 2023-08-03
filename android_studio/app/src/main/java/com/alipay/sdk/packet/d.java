package com.alipay.sdk.packet;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.sdk.util.i;
import com.alipay.sdk.util.k;
import com.alipay.sdk.util.l;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: c  reason: collision with root package name */
    public static final String f6893c = "msp-gzip";

    /* renamed from: d  reason: collision with root package name */
    public static final String f6894d = "Msp-Param";

    /* renamed from: e  reason: collision with root package name */
    public static final String f6895e = "Operation-Type";

    /* renamed from: f  reason: collision with root package name */
    public static final String f6896f = "content-type";

    /* renamed from: g  reason: collision with root package name */
    public static final String f6897g = "Version";

    /* renamed from: h  reason: collision with root package name */
    public static final String f6898h = "AppId";

    /* renamed from: i  reason: collision with root package name */
    public static final String f6899i = "des-mode";

    /* renamed from: j  reason: collision with root package name */
    public static final String f6900j = "namespace";

    /* renamed from: k  reason: collision with root package name */
    public static final String f6901k = "api_name";

    /* renamed from: l  reason: collision with root package name */
    public static final String f6902l = "api_version";

    /* renamed from: m  reason: collision with root package name */
    public static final String f6903m = "data";

    /* renamed from: n  reason: collision with root package name */
    public static final String f6904n = "params";

    /* renamed from: o  reason: collision with root package name */
    public static final String f6905o = "public_key";

    /* renamed from: p  reason: collision with root package name */
    public static final String f6906p = "device";

    /* renamed from: q  reason: collision with root package name */
    public static final String f6907q = "action";

    /* renamed from: r  reason: collision with root package name */
    public static final String f6908r = "type";

    /* renamed from: s  reason: collision with root package name */
    public static final String f6909s = "method";

    /* renamed from: t  reason: collision with root package name */
    private static com.alipay.sdk.net.a f6910t;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f6911a = true;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f6912b = true;

    private b a(Context context) throws Throwable {
        return d(context, "", k.a(context), true);
    }

    private b c(Context context, String str, String str2) throws Throwable {
        return d(context, str, str2, true);
    }

    public static String f(HashMap<String, String> hashMap, HashMap<String, String> hashMap2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            jSONObject2.put(entry.getKey(), entry.getValue());
        }
        JSONObject jSONObject3 = new JSONObject();
        for (Map.Entry<String, String> entry2 : hashMap2.entrySet()) {
            jSONObject3.put(entry2.getKey(), entry2.getValue());
        }
        jSONObject2.put("params", jSONObject3);
        jSONObject.put("data", jSONObject2);
        return jSONObject.toString();
    }

    private static String g(HttpResponse httpResponse, String str) {
        Header[] allHeaders;
        String name;
        if (httpResponse == null || (allHeaders = httpResponse.getAllHeaders()) == null || allHeaders.length <= 0) {
            return null;
        }
        for (Header header : allHeaders) {
            if (header != null && (name = header.getName()) != null && name.equalsIgnoreCase(str)) {
                return header.getValue();
            }
        }
        return null;
    }

    public static JSONObject j(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", str);
        jSONObject2.put("method", str2);
        jSONObject.put(f6907q, jSONObject2);
        return jSONObject;
    }

    private static boolean k(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("data");
            if (jSONObject.has("params")) {
                String optString = jSONObject.getJSONObject("params").optString("public_key", null);
                if (TextUtils.isEmpty(optString)) {
                    return false;
                }
                p.b.b();
                com.alipay.sdk.data.c.a().e(optString);
                return true;
            }
            return false;
        } catch (JSONException unused) {
            return false;
        }
    }

    private static boolean l(HttpResponse httpResponse) {
        Header[] allHeaders;
        String name;
        String str = null;
        if (httpResponse != null && (allHeaders = httpResponse.getAllHeaders()) != null && allHeaders.length > 0) {
            int length = allHeaders.length;
            int i4 = 0;
            while (true) {
                if (i4 < length) {
                    Header header = allHeaders[i4];
                    if (header != null && (name = header.getName()) != null && name.equalsIgnoreCase(f6893c)) {
                        str = header.getValue();
                        break;
                    }
                    i4++;
                } else {
                    break;
                }
            }
        }
        return Boolean.valueOf(str).booleanValue();
    }

    private static com.alipay.sdk.net.a m(Context context, String str) {
        com.alipay.sdk.net.a aVar = f6910t;
        if (aVar == null) {
            f6910t = new com.alipay.sdk.net.a(context, str);
        } else if (!TextUtils.equals(str, aVar.f6885b)) {
            f6910t.f6885b = str;
        }
        return f6910t;
    }

    private static byte[] o(HttpResponse httpResponse) throws IllegalStateException, IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr = new byte[1024];
        InputStream inputStream = null;
        try {
            InputStream content = httpResponse.getEntity().getContent();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    try {
                        int read = content.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    } catch (Throwable th) {
                        th = th;
                        inputStream = content;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception unused) {
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        throw th;
                    }
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    content.close();
                } catch (Exception unused3) {
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Exception unused4) {
                }
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    public b b(Context context, String str) throws Throwable {
        return d(context, str, k.a(context), true);
    }

    public final b d(Context context, String str, String str2, boolean z9) throws Throwable {
        Header[] allHeaders;
        String name;
        e eVar = new e(this.f6912b);
        c c10 = eVar.c(new b(p(), e(str, i())), this.f6911a);
        com.alipay.sdk.net.a aVar = f6910t;
        if (aVar == null) {
            f6910t = new com.alipay.sdk.net.a(context, str2);
        } else if (!TextUtils.equals(str2, aVar.f6885b)) {
            f6910t.f6885b = str2;
        }
        HttpResponse b10 = f6910t.b(c10.f6892b, h(c10.f6891a, str));
        String str3 = null;
        if (b10 != null && (allHeaders = b10.getAllHeaders()) != null && allHeaders.length > 0) {
            int length = allHeaders.length;
            int i4 = 0;
            while (true) {
                if (i4 < length) {
                    Header header = allHeaders[i4];
                    if (header != null && (name = header.getName()) != null && name.equalsIgnoreCase(f6893c)) {
                        str3 = header.getValue();
                        break;
                    }
                    i4++;
                } else {
                    break;
                }
            }
        }
        b b11 = eVar.b(new c(Boolean.valueOf(str3).booleanValue(), o(b10)));
        return (b11 != null && k(b11.f6889a) && z9) ? d(context, str, str2, false) : b11;
    }

    public String e(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        String str2;
        String str3;
        CharSequence charSequence;
        Object obj;
        p.b bVar;
        JSONObject jSONObject3;
        String str4;
        String str5;
        String str6;
        p.b b10 = p.b.b();
        com.alipay.sdk.tid.b a10 = com.alipay.sdk.tid.b.a();
        JSONObject a11 = com.alipay.sdk.util.c.a(new JSONObject(), jSONObject);
        try {
            a11.put(m.b.f86919c, a10.f6925a);
            com.alipay.sdk.data.c a12 = com.alipay.sdk.data.c.a();
            Context context = p.b.b().f93064a;
            com.alipay.sdk.util.b a13 = com.alipay.sdk.util.b.a(context);
            if (TextUtils.isEmpty(a12.f6880a)) {
                bVar = b10;
                String d4 = l.d();
                jSONObject3 = a11;
                try {
                    String k10 = l.k();
                    str4 = "user_agent";
                    String q9 = l.q(context);
                    str2 = m.b.f86923g;
                    String a14 = k.a(context);
                    obj = m.b.f86919c;
                    str3 = "wifi";
                    String substring = a14.substring(0, a14.indexOf("://"));
                    String s9 = l.s(context);
                    String f10 = Float.toString(new TextView(context).getTextSize());
                    charSequence = " ";
                    a12.f6880a = "Msp/15.1.3 (" + d4 + i.f6965b + k10 + i.f6965b + q9 + i.f6965b + substring + i.f6965b + s9 + i.f6965b + f10;
                } catch (Throwable unused) {
                    jSONObject2 = jSONObject3;
                }
            } else {
                str2 = m.b.f86923g;
                str3 = "wifi";
                charSequence = " ";
                obj = m.b.f86919c;
                bVar = b10;
                jSONObject3 = a11;
                str4 = "user_agent";
            }
            String str7 = com.alipay.sdk.util.b.d(context).f6950p;
            String b11 = a13.b();
            String e4 = a13.e();
            Context context2 = p.b.b().f93064a;
            SharedPreferences sharedPreferences = context2.getSharedPreferences("virtualImeiAndImsi", 0);
            String string = sharedPreferences.getString("virtual_imsi", null);
            if (TextUtils.isEmpty(string)) {
                if (TextUtils.isEmpty(com.alipay.sdk.tid.b.a().f6925a)) {
                    String e10 = p.b.b().e();
                    if (TextUtils.isEmpty(e10)) {
                        str5 = e4;
                        str6 = com.alipay.sdk.data.c.f();
                    } else {
                        str5 = e4;
                        str6 = e10.substring(3, 18);
                    }
                } else {
                    str5 = e4;
                    str6 = com.alipay.sdk.util.b.a(context2).b();
                }
                sharedPreferences.edit().putString("virtual_imsi", str6).commit();
            } else {
                str5 = e4;
                str6 = string;
            }
            Context context3 = p.b.b().f93064a;
            SharedPreferences sharedPreferences2 = context3.getSharedPreferences("virtualImeiAndImsi", 0);
            String string2 = sharedPreferences2.getString("virtual_imei", null);
            if (TextUtils.isEmpty(string2)) {
                string2 = TextUtils.isEmpty(com.alipay.sdk.tid.b.a().f6925a) ? com.alipay.sdk.data.c.f() : com.alipay.sdk.util.b.a(context3).e();
                sharedPreferences2.edit().putString("virtual_imei", string2).commit();
            }
            a12.f6882c = a10.f6926b;
            CharSequence charSequence2 = charSequence;
            String replace = Build.MANUFACTURER.replace(i.f6965b, charSequence2);
            String replace2 = Build.MODEL.replace(i.f6965b, charSequence2);
            boolean d10 = p.b.d();
            String str8 = a13.f6933c;
            String str9 = str3;
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService(str9)).getConnectionInfo();
            String ssid = connectionInfo != null ? connectionInfo.getSSID() : "-1";
            WifiInfo connectionInfo2 = ((WifiManager) context.getSystemService(str9)).getConnectionInfo();
            String bssid = connectionInfo2 != null ? connectionInfo2.getBSSID() : "00";
            StringBuilder sb = new StringBuilder();
            sb.append(a12.f6880a);
            sb.append(i.f6965b);
            sb.append(str7);
            sb.append(i.f6965b);
            sb.append("-1;-1");
            sb.append(i.f6965b);
            sb.append("1");
            sb.append(i.f6965b);
            sb.append(b11);
            sb.append(i.f6965b);
            sb.append(str5);
            sb.append(i.f6965b);
            sb.append(a12.f6882c);
            sb.append(i.f6965b);
            sb.append(replace);
            sb.append(i.f6965b);
            sb.append(replace2);
            sb.append(i.f6965b);
            sb.append(d10);
            sb.append(i.f6965b);
            sb.append(str8);
            sb.append(";-1;-1;");
            sb.append(a12.f6881b);
            sb.append(i.f6965b);
            sb.append(str6);
            sb.append(i.f6965b);
            sb.append(string2);
            sb.append(i.f6965b);
            sb.append(ssid);
            sb.append(i.f6965b);
            sb.append(bssid);
            HashMap hashMap = new HashMap();
            hashMap.put(obj, a10.f6925a);
            String str10 = str2;
            hashMap.put(str10, p.b.b().e());
            String c10 = com.alipay.sdk.data.c.c(context, hashMap);
            if (!TextUtils.isEmpty(c10)) {
                sb.append(i.f6965b);
                sb.append(c10);
            }
            sb.append(")");
            jSONObject2 = jSONObject3;
            try {
                jSONObject2.put(str4, sb.toString());
                p.b bVar2 = bVar;
                jSONObject2.put(m.b.f86921e, l.l(bVar2.f93064a));
                jSONObject2.put(m.b.f86922f, l.h(bVar2.f93064a));
                jSONObject2.put(m.b.f86920d, str);
                jSONObject2.put(m.b.f86924h, m.a.f86904c);
                jSONObject2.put(str10, bVar2.e());
                jSONObject2.put(m.b.f86926j, a10.f6926b);
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            jSONObject2 = a11;
        }
        return jSONObject2.toString();
    }

    public List<Header> h(boolean z9, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicHeader(f6893c, String.valueOf(z9)));
        arrayList.add(new BasicHeader(f6895e, "alipay.msp.cashier.dispatch.bytes"));
        arrayList.add(new BasicHeader(f6896f, "application/octet-stream"));
        arrayList.add(new BasicHeader(f6897g, "2.0"));
        arrayList.add(new BasicHeader(f6898h, "TAOBAO"));
        arrayList.add(new BasicHeader(f6894d, a.a(str)));
        arrayList.add(new BasicHeader(f6899i, "CBC"));
        return arrayList;
    }

    public abstract JSONObject i() throws JSONException;

    public String n() {
        return "4.9.0";
    }

    public String p() throws JSONException {
        HashMap hashMap = new HashMap();
        hashMap.put("device", Build.MODEL);
        hashMap.put("namespace", "com.alipay.mobilecashier");
        hashMap.put(f6901k, "com.alipay.mcpay");
        hashMap.put(f6902l, n());
        return f(hashMap, new HashMap());
    }
}
