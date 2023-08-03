package io.sentry.transport;

import java.net.Authenticator;
import java.net.PasswordAuthentication;

/* compiled from: ProxyAuthenticator.java */
/* loaded from: classes4.dex */
final class v extends Authenticator {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f84045a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f84046b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(@m8.g String str, @m8.g String str2) {
        this.f84045a = (String) io.sentry.util.l.c(str, "user is required");
        this.f84046b = (String) io.sentry.util.l.c(str2, "password is required");
    }

    @m8.g
    String a() {
        return this.f84046b;
    }

    @m8.g
    String b() {
        return this.f84045a;
    }

    @Override // java.net.Authenticator
    @m8.h
    protected PasswordAuthentication getPasswordAuthentication() {
        if (getRequestorType() == Authenticator.RequestorType.PROXY) {
            return new PasswordAuthentication(this.f84045a, this.f84046b.toCharArray());
        }
        return null;
    }
}
