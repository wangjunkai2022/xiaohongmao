package io.sentry;

import java.net.URI;

/* compiled from: Dsn.java */
/* loaded from: classes4.dex */
final class q {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f83924a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final String f83925b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final String f83926c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final String f83927d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final URI f83928e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(@m8.h String str) throws IllegalArgumentException {
        try {
            io.sentry.util.l.c(str, "The DSN is required.");
            URI normalize = new URI(str).normalize();
            String userInfo = normalize.getUserInfo();
            if (userInfo != null && !userInfo.isEmpty()) {
                String[] split = userInfo.split(":", -1);
                String str2 = split[0];
                this.f83927d = str2;
                if (str2 != null && !str2.isEmpty()) {
                    this.f83926c = split.length > 1 ? split[1] : null;
                    String path = normalize.getPath();
                    path = path.endsWith("/") ? path.substring(0, path.length() - 1) : path;
                    int lastIndexOf = path.lastIndexOf("/") + 1;
                    String substring = path.substring(0, lastIndexOf);
                    if (!substring.endsWith("/")) {
                        substring = substring + "/";
                    }
                    this.f83925b = substring;
                    String substring2 = path.substring(lastIndexOf);
                    this.f83924a = substring2;
                    if (!substring2.isEmpty()) {
                        this.f83928e = new URI(normalize.getScheme(), null, normalize.getHost(), normalize.getPort(), substring + "api/" + substring2, null, null);
                        return;
                    }
                    throw new IllegalArgumentException("Invalid DSN: A Project Id is required.");
                }
                throw new IllegalArgumentException("Invalid DSN: No public key provided.");
            }
            throw new IllegalArgumentException("Invalid DSN: No public key provided.");
        } catch (Throwable th) {
            throw new IllegalArgumentException(th);
        }
    }

    @m8.h
    public String a() {
        return this.f83925b;
    }

    @m8.g
    public String b() {
        return this.f83924a;
    }

    @m8.g
    public String c() {
        return this.f83927d;
    }

    @m8.h
    public String d() {
        return this.f83926c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public URI e() {
        return this.f83928e;
    }
}
