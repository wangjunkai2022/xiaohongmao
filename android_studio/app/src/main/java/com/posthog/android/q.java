package com.posthog.android;

import a.f0;
import a.g0;
import com.google.gson.Gson;
import com.posthog.android.c;
import com.posthog.android.internal.Utils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PostHogFeatureFlags.java */
/* loaded from: classes3.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private PostHog f47580a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Boolean> f47581b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f47582c;

    /* renamed from: d  reason: collision with root package name */
    private Boolean f47583d;

    /* renamed from: e  reason: collision with root package name */
    private Boolean f47584e;

    /* renamed from: f  reason: collision with root package name */
    private final i f47585f;

    /* renamed from: g  reason: collision with root package name */
    private final c f47586g;

    /* compiled from: PostHogFeatureFlags.java */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private PostHog f47587a;

        /* renamed from: b  reason: collision with root package name */
        private i f47588b;

        /* renamed from: c  reason: collision with root package name */
        private c f47589c;

        public q a() {
            q qVar = new q(this.f47587a, null, null, null, this.f47588b, this.f47589c);
            if (this.f47587a != null) {
                qVar.h();
            }
            return qVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b b(c cVar) {
            this.f47589c = cVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b c(i iVar) {
            this.f47588b = iVar;
            return this;
        }

        public b d(PostHog postHog) {
            this.f47587a = postHog;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        try {
            Thread.sleep(5L);
            i();
        } catch (Exception e4) {
            System.err.println(e4);
        }
    }

    private void g(HashMap hashMap) {
        Map map = (Map) hashMap.get("featureFlags");
        m c10 = this.f47580a.f47390g.c();
        if (map != null) {
            c10.v(map);
        } else {
            c10.put(m.f47509b, null);
        }
    }

    private void j() {
        if (!this.f47582c.booleanValue() || this.f47583d.booleanValue()) {
            return;
        }
        new Thread(new Runnable() { // from class: com.posthog.android.p
            @Override // java.lang.Runnable
            public final void run() {
                q.this.f();
            }
        }).start();
        this.f47582c = Boolean.FALSE;
    }

    private void k(Boolean bool) {
        this.f47583d = bool;
    }

    public Object b(@f0 String str, @g0 Object obj, @g0 Map<String, Object> map) {
        if (!this.f47584e.booleanValue()) {
            this.f47585f.b(null, "getFeatureFlag for key %s failed. Feature flags didn't load in time.", str);
            return obj;
        }
        Object obj2 = c().get(str);
        if (map != null && ((Boolean) map.get("send_event")).booleanValue() && this.f47581b.get(str) == null) {
            this.f47581b.put(str, Boolean.TRUE);
            this.f47580a.f("$feature_flag_called", new s().o("$feature_flag", str).o("$feature_flag_response", obj2));
        }
        return (obj2 == null || obj2 == "") ? obj : obj2;
    }

    public x c() {
        return this.f47580a.f47390g.c().t();
    }

    public List<String> d() {
        return new ArrayList(c().keySet());
    }

    public Boolean e(@f0 String str, @g0 Boolean bool, @g0 Map<String, Object> map) {
        if (!this.f47584e.booleanValue()) {
            this.f47585f.b(null, "isFeatureEnabled for key %s failed. Feature flags didn't load in time.", str);
            return bool;
        }
        Object b10 = b(str, bool, map);
        if (b10 != null) {
            if (b10 instanceof Boolean) {
                return (Boolean) b10;
            }
            return Boolean.TRUE;
        }
        return bool;
    }

    public void h() {
        if (this.f47582c.booleanValue()) {
            return;
        }
        this.f47582c = Boolean.TRUE;
        j();
    }

    protected void i() {
        k(Boolean.TRUE);
        this.f47585f.f(" reloading feature flags.", new Object[0]);
        s c10 = this.f47580a.f47389f.c();
        c.AbstractC0398c abstractC0398c = null;
        try {
            try {
                try {
                    try {
                        try {
                            abstractC0398c = this.f47586g.d();
                            HttpURLConnection httpURLConnection = abstractC0398c.f47465a;
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("token", this.f47580a.f47398o);
                            jSONObject.put("distinct_id", c10.w());
                            if (c10.w() == null) {
                                jSONObject.put("distinct_id", c10.t());
                            }
                            jSONObject.put("groups", c10.y());
                            jSONObject.put("$anon_distinct_id", c10.t());
                            String jSONObject2 = jSONObject.toString();
                            OutputStream outputStream = httpURLConnection.getOutputStream();
                            byte[] bytes = jSONObject2.getBytes("utf-8");
                            outputStream.write(bytes, 0, bytes.length);
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "utf-8"));
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                String readLine = bufferedReader.readLine();
                                if (readLine != null) {
                                    sb.append(readLine.trim());
                                } else {
                                    g((HashMap) new Gson().fromJson(sb.toString(), (Class<Object>) HashMap.class));
                                    this.f47584e = Boolean.TRUE;
                                    j();
                                    return;
                                }
                            }
                        } catch (IllegalArgumentException e4) {
                            this.f47585f.b(e4, "Error while sending reload feature flags request", new Object[0]);
                        }
                    } catch (IOException e10) {
                        this.f47585f.b(e10, "Error while sending reload feature flags request", new Object[0]);
                    }
                } catch (c.d e11) {
                    this.f47585f.b(e11, "Error while sending reload feature flags request", new Object[0]);
                }
            } catch (JSONException e12) {
                this.f47585f.b(e12, "Error while creating payload", new Object[0]);
            }
        } finally {
            Utils.e(abstractC0398c);
            k(Boolean.FALSE);
        }
    }

    private q(PostHog postHog, Map<String, Boolean> map, Boolean bool, Boolean bool2, i iVar, c cVar) {
        this.f47580a = postHog;
        this.f47581b = map == null ? new HashMap<>() : map;
        this.f47582c = Boolean.valueOf(bool == null ? false : bool.booleanValue());
        this.f47583d = Boolean.valueOf(bool2 != null ? bool2.booleanValue() : false);
        this.f47584e = Boolean.FALSE;
        this.f47585f = iVar;
        this.f47586g = cVar;
    }
}
