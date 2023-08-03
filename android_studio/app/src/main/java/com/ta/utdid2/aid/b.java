package com.ta.utdid2.aid;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.ta.utdid2.android.utils.d;
import com.ta.utdid2.android.utils.f;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AidRequester.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static final String f55772c = "com.ta.utdid2.aid.b";

    /* renamed from: d  reason: collision with root package name */
    private static final String f55773d = "http://hydra.alibaba.com/";

    /* renamed from: e  reason: collision with root package name */
    private static final String f55774e = "/get_aid/";

    /* renamed from: f  reason: collision with root package name */
    private static final String f55775f = "auth[token]=";

    /* renamed from: g  reason: collision with root package name */
    private static final String f55776g = "&type=";

    /* renamed from: h  reason: collision with root package name */
    private static final String f55777h = "&id=";

    /* renamed from: i  reason: collision with root package name */
    private static final String f55778i = "&aid=";

    /* renamed from: j  reason: collision with root package name */
    private static final String f55779j = "data";

    /* renamed from: k  reason: collision with root package name */
    private static final String f55780k = "aid";

    /* renamed from: l  reason: collision with root package name */
    private static final String f55781l = "action";

    /* renamed from: m  reason: collision with root package name */
    private static final String f55782m = "isError";

    /* renamed from: n  reason: collision with root package name */
    private static final String f55783n = "status";

    /* renamed from: o  reason: collision with root package name */
    private static final String f55784o = "utdid";

    /* renamed from: p  reason: collision with root package name */
    private static final String f55785p = "new";

    /* renamed from: q  reason: collision with root package name */
    private static final String f55786q = "changed";

    /* renamed from: r  reason: collision with root package name */
    private static final String f55787r = "unchanged";

    /* renamed from: s  reason: collision with root package name */
    private static final String f55788s = "true";

    /* renamed from: t  reason: collision with root package name */
    private static final String f55789t = "false";

    /* renamed from: u  reason: collision with root package name */
    private static final String f55790u = "200";

    /* renamed from: v  reason: collision with root package name */
    private static final String f55791v = "404";

    /* renamed from: w  reason: collision with root package name */
    private static final String f55792w = "401";

    /* renamed from: x  reason: collision with root package name */
    private static final int f55793x = 1000;

    /* renamed from: y  reason: collision with root package name */
    private static final int f55794y = 3000;

    /* renamed from: z  reason: collision with root package name */
    private static b f55795z;

    /* renamed from: a  reason: collision with root package name */
    private Context f55796a;

    /* renamed from: b  reason: collision with root package name */
    private Object f55797b = new Object();

    public b(Context context) {
        this.f55796a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("data")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("action") && jSONObject2.has(f55780k)) {
                    String string = jSONObject2.getString("action");
                    return (string.equalsIgnoreCase(f55785p) || string.equalsIgnoreCase(f55786q)) ? jSONObject2.getString(f55780k) : str2;
                }
                return str2;
            } else if (jSONObject.has(f55782m) && jSONObject.has("status")) {
                String string2 = jSONObject.getString(f55782m);
                String string3 = jSONObject.getString("status");
                if (string2.equalsIgnoreCase(f55788s)) {
                    if (string3.equalsIgnoreCase(f55791v) || string3.equalsIgnoreCase(f55792w)) {
                        if (d.f55837b) {
                            String str3 = f55772c;
                            Log.d(str3, "remove the AID, status:" + string3);
                        }
                        return "";
                    }
                    return str2;
                }
                return str2;
            } else {
                return str2;
            }
        } catch (JSONException e4) {
            Log.e(f55772c, e4.toString());
            return str2;
        } catch (Exception e10) {
            Log.e(f55772c, e10.toString());
            return str2;
        }
    }

    public static synchronized b f(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f55795z == null) {
                f55795z = new b(context);
            }
            bVar = f55795z;
        }
        return bVar;
    }

    private static String g(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        try {
            str3 = URLEncoder.encode(str3, "UTF-8");
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
        }
        sb.append(f55773d);
        sb.append(str);
        sb.append(f55774e);
        sb.append("?");
        sb.append(f55775f);
        sb.append(str2);
        sb.append(f55776g);
        sb.append("utdid");
        sb.append(f55777h);
        sb.append(str3);
        sb.append(f55778i);
        sb.append(str4);
        return sb.toString();
    }

    public String h(String str, String str2, String str3, String str4) {
        String g4 = g(str, str2, str3, str4);
        int i4 = f.g(this.f55796a) ? 3000 : 1000;
        if (d.f55837b) {
            String str5 = f55772c;
            Log.d(str5, "url:" + g4 + "; timeout:" + i4);
        }
        a aVar = new a(new HttpPost(g4));
        aVar.start();
        try {
            synchronized (this.f55797b) {
                this.f55797b.wait(i4);
            }
        } catch (Exception e4) {
            Log.e(f55772c, e4.toString());
        }
        String a10 = aVar.a();
        if (d.f55837b) {
            String str6 = f55772c;
            Log.d(str6, "mLine:" + a10);
        }
        return e(a10, str4);
    }

    public void i(String str, String str2, String str3, String str4, y5.a aVar) {
        String g4 = g(str, str2, str3, str4);
        if (d.f55837b) {
            String str5 = f55772c;
            Log.d(str5, "url:" + g4 + "; len:" + g4.length());
        }
        new a(new HttpPost(g4), aVar, str4, str, str2).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AidRequester.java */
    /* loaded from: classes3.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        HttpPost f55798a;

        /* renamed from: b  reason: collision with root package name */
        String f55799b;

        /* renamed from: c  reason: collision with root package name */
        y5.a f55800c;

        /* renamed from: d  reason: collision with root package name */
        String f55801d;

        /* renamed from: e  reason: collision with root package name */
        String f55802e;

        /* renamed from: f  reason: collision with root package name */
        String f55803f;

        public a(HttpPost httpPost) {
            this.f55799b = "";
            this.f55803f = "";
            this.f55798a = httpPost;
        }

        public String a() {
            return this.f55799b;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            HttpResponse httpResponse;
            y5.a aVar = this.f55800c;
            if (aVar != null) {
                aVar.a(1000, this.f55801d);
            }
            BufferedReader bufferedReader = null;
            try {
                httpResponse = new DefaultHttpClient().execute(this.f55798a);
            } catch (Exception e4) {
                y5.a aVar2 = this.f55800c;
                if (aVar2 != null) {
                    aVar2.a(1002, this.f55801d);
                }
                Log.e(b.f55772c, e4.toString());
                httpResponse = null;
            }
            try {
                if (httpResponse != null) {
                    bufferedReader = new BufferedReader(new InputStreamReader(httpResponse.getEntity().getContent(), Charset.forName("UTF-8")));
                } else {
                    Log.e(b.f55772c, "response is null!");
                }
            } catch (Exception e10) {
                y5.a aVar3 = this.f55800c;
                if (aVar3 != null) {
                    aVar3.a(1002, this.f55801d);
                }
                Log.e(b.f55772c, e10.toString());
            }
            try {
                if (bufferedReader != null) {
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        if (d.f55837b) {
                            Log.d(b.f55772c, readLine);
                        }
                        this.f55799b = readLine;
                    }
                } else {
                    Log.e(b.f55772c, "BufferredReader is null!");
                }
            } catch (Exception e11) {
                y5.a aVar4 = this.f55800c;
                if (aVar4 != null) {
                    aVar4.a(1002, this.f55801d);
                }
                Log.e(b.f55772c, e11.toString());
            }
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                    if (d.f55837b) {
                        Log.d(b.f55772c, "close the bufferreader");
                    }
                } catch (IOException e12) {
                    Log.e(b.f55772c, e12.toString());
                }
            }
            if (this.f55800c == null) {
                synchronized (b.this.f55797b) {
                    b.this.f55797b.notifyAll();
                }
                return;
            }
            String e13 = b.e(this.f55799b, this.f55801d);
            this.f55800c.a(1001, e13);
            c.d(b.this.f55796a, this.f55802e, e13, this.f55803f);
        }

        public a(HttpPost httpPost, y5.a aVar, String str, String str2, String str3) {
            this.f55799b = "";
            this.f55798a = httpPost;
            this.f55800c = aVar;
            this.f55801d = str;
            this.f55802e = str2;
            this.f55803f = str3;
        }
    }
}
