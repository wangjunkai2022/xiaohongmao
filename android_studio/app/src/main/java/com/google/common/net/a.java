package com.google.common.net;

import com.google.common.base.a0;
import java.net.InetAddress;
import java.text.ParseException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: HostSpecifier.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f34605a;

    private a(String str) {
        this.f34605a = str;
    }

    public static a a(String str) throws ParseException {
        try {
            return b(str);
        } catch (IllegalArgumentException e4) {
            ParseException parseException = new ParseException("Invalid host specifier: " + str, 0);
            parseException.initCause(e4);
            throw parseException;
        }
    }

    public static a b(String str) {
        HostAndPort fromString = HostAndPort.fromString(str);
        a0.d(!fromString.hasPort());
        String host = fromString.getHost();
        InetAddress inetAddress = null;
        try {
            inetAddress = c.g(host);
        } catch (IllegalArgumentException unused) {
        }
        if (inetAddress != null) {
            return new a(c.K(inetAddress));
        }
        d d4 = d.d(host);
        if (d4.f()) {
            return new a(d4.toString());
        }
        throw new IllegalArgumentException("Domain name does not have a recognized public suffix: " + host);
    }

    public static boolean c(String str) {
        try {
            b(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            return this.f34605a.equals(((a) obj).f34605a);
        }
        return false;
    }

    public int hashCode() {
        return this.f34605a.hashCode();
    }

    public String toString() {
        return this.f34605a;
    }
}
