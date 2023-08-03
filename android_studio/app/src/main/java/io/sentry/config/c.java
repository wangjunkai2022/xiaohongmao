package io.sentry.config;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: CompositePropertiesProvider.java */
/* loaded from: classes4.dex */
final class c implements h {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final List<h> f83087a;

    public c(@m8.g List<h> list) {
        this.f83087a = list;
    }

    @Override // io.sentry.config.h
    @m8.g
    public Map<String, String> a(@m8.g String str) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (h hVar : this.f83087a) {
            concurrentHashMap.putAll(hVar.a(str));
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
        for (h hVar : this.f83087a) {
            String property = hVar.getProperty(str);
            if (property != null) {
                return property;
            }
        }
        return null;
    }
}
