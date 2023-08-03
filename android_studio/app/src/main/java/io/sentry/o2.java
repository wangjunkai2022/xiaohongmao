package io.sentry;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.Map;

/* compiled from: RequestDetails.java */
/* loaded from: classes4.dex */
public final class o2 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final URL f83502a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f83503b;

    public o2(@m8.g String str, @m8.g Map<String, String> map) {
        io.sentry.util.l.c(str, "url is required");
        io.sentry.util.l.c(map, "headers is required");
        try {
            this.f83502a = URI.create(str).toURL();
            this.f83503b = map;
        } catch (MalformedURLException e4) {
            throw new IllegalArgumentException("Failed to compose the Sentry's server URL.", e4);
        }
    }

    @m8.g
    public Map<String, String> a() {
        return this.f83503b;
    }

    @m8.g
    public URL b() {
        return this.f83502a;
    }
}
