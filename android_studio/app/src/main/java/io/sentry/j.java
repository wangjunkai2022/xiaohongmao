package io.sentry;

import java.util.HashMap;
import java.util.Map;

/* compiled from: CustomSamplingContext.java */
/* loaded from: classes4.dex */
public final class j {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f83355a = new HashMap();

    @m8.h
    public Object a(@m8.g String str) {
        io.sentry.util.l.c(str, "key is required");
        return this.f83355a.get(str);
    }

    @m8.g
    public Map<String, Object> b() {
        return this.f83355a;
    }

    public void c(@m8.g String str, @m8.h Object obj) {
        io.sentry.util.l.c(str, "key is required");
        this.f83355a.put(str, obj);
    }
}
