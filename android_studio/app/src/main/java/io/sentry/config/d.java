package io.sentry.config;

import io.sentry.util.q;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: EnvironmentVariablePropertiesProvider.java */
/* loaded from: classes4.dex */
final class d implements h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f83088a = "SENTRY";

    @m8.g
    private String g(@m8.g String str) {
        return "SENTRY_" + str.replace(".", "_").replace("-", "_").toUpperCase(Locale.ROOT);
    }

    @Override // io.sentry.config.h
    @m8.g
    public Map<String, String> a(@m8.g String str) {
        String g4;
        String str2 = g(str) + "_";
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (Map.Entry<String, String> entry : System.getenv().entrySet()) {
            String key = entry.getKey();
            if (key.startsWith(str2) && (g4 = q.g(entry.getValue(), "\"")) != null) {
                concurrentHashMap.put(key.substring(str2.length()).toLowerCase(Locale.ROOT), g4);
            }
        }
        return concurrentHashMap;
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
        return q.g(System.getenv(g(str)), "\"");
    }
}
