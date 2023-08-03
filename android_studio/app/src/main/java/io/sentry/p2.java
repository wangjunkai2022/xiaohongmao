package io.sentry;

import java.net.URI;
import java.util.HashMap;

/* compiled from: RequestDetailsResolver.java */
/* loaded from: classes4.dex */
final class p2 {

    /* renamed from: b  reason: collision with root package name */
    private static final String f83521b = "User-Agent";

    /* renamed from: c  reason: collision with root package name */
    private static final String f83522c = "X-Sentry-Auth";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SentryOptions f83523a;

    public p2(@m8.g SentryOptions sentryOptions) {
        this.f83523a = (SentryOptions) io.sentry.util.l.c(sentryOptions, "options is required");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public o2 a() {
        URI e4;
        String str;
        q qVar = new q(this.f83523a.getDsn());
        String uri = qVar.e().resolve(e4.getPath() + "/envelope/").toString();
        String c10 = qVar.c();
        String d4 = qVar.d();
        StringBuilder sb = new StringBuilder();
        sb.append("Sentry sentry_version=7,sentry_client=");
        sb.append(this.f83523a.getSentryClientName());
        sb.append(",sentry_key=");
        sb.append(c10);
        if (d4 == null || d4.length() <= 0) {
            str = "";
        } else {
            str = ",sentry_secret=" + d4;
        }
        sb.append(str);
        String sb2 = sb.toString();
        String sentryClientName = this.f83523a.getSentryClientName();
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", sentryClientName);
        hashMap.put(f83522c, sb2);
        return new o2(uri, hashMap);
    }
}
