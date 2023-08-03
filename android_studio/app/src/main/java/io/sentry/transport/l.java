package io.sentry.transport;

import java.net.Authenticator;

/* compiled from: AuthenticatorWrapper.java */
/* loaded from: classes4.dex */
final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final l f84035a = new l();

    private l() {
    }

    public static l a() {
        return f84035a;
    }

    public void b(@m8.g Authenticator authenticator) {
        Authenticator.setDefault(authenticator);
    }
}
