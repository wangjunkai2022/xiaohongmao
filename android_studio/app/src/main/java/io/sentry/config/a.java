package io.sentry.config;

import io.sentry.util.l;
import io.sentry.util.q;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/* compiled from: AbstractPropertiesProvider.java */
/* loaded from: classes4.dex */
abstract class a implements h {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f83082a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Properties f83083b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(@m8.g String str, @m8.g Properties properties) {
        this.f83082a = (String) l.c(str, "prefix is required");
        this.f83083b = (Properties) l.c(properties, "properties are required");
    }

    @Override // io.sentry.config.h
    @m8.g
    public Map<String, String> a(@m8.g String str) {
        String str2 = this.f83082a + str + ".";
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.f83083b.entrySet()) {
            if ((entry.getKey() instanceof String) && (entry.getValue() instanceof String)) {
                String str3 = (String) entry.getKey();
                if (str3.startsWith(str2)) {
                    hashMap.put(str3.substring(str2.length()), q.g((String) entry.getValue(), "\""));
                }
            }
        }
        return hashMap;
    }

    @Override // io.sentry.config.h
    public /* synthetic */ Long b(String str) {
        return g.d(this, str);
    }

    @Override // io.sentry.config.h
    public /* synthetic */ Double c(String str) {
        return g.b(this, str);
    }

    @Override // io.sentry.config.h
    public /* synthetic */ String d(String str, String str2) {
        return g.e(this, str, str2);
    }

    @Override // io.sentry.config.h
    public /* synthetic */ List e(String str) {
        return g.c(this, str);
    }

    @Override // io.sentry.config.h
    public /* synthetic */ Boolean f(String str) {
        return g.a(this, str);
    }

    @Override // io.sentry.config.h
    @m8.h
    public String getProperty(@m8.g String str) {
        Properties properties = this.f83083b;
        return q.g(properties.getProperty(this.f83082a + str), "\"");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(@m8.g Properties properties) {
        this("", properties);
    }
}
