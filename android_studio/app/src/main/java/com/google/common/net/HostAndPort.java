package com.google.common.net;

import com.google.common.base.a0;
import com.google.common.base.h0;
import com.google.common.base.w;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class HostAndPort implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final int f34600d = -1;

    /* renamed from: e  reason: collision with root package name */
    private static final long f34601e = 0;

    /* renamed from: a  reason: collision with root package name */
    private final String f34602a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34603b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f34604c;

    private HostAndPort(String str, int i4, boolean z9) {
        this.f34602a = str;
        this.f34603b = i4;
        this.f34604c = z9;
    }

    private static String[] a(String str) {
        a0.u(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int indexOf = str.indexOf(58);
        int lastIndexOf = str.lastIndexOf(93);
        a0.u(indexOf > -1 && lastIndexOf > indexOf, "Invalid bracketed host/port: %s", str);
        String substring = str.substring(1, lastIndexOf);
        int i4 = lastIndexOf + 1;
        if (i4 == str.length()) {
            return new String[]{substring, ""};
        }
        a0.u(str.charAt(i4) == ':', "Only a colon may follow a close bracket: %s", str);
        int i10 = lastIndexOf + 2;
        for (int i11 = i10; i11 < str.length(); i11++) {
            a0.u(Character.isDigit(str.charAt(i11)), "Port must be numeric: %s", str);
        }
        return new String[]{substring, str.substring(i10)};
    }

    private static boolean b(int i4) {
        return i4 >= 0 && i4 <= 65535;
    }

    public static HostAndPort fromHost(String str) {
        HostAndPort fromString = fromString(str);
        a0.u(!fromString.hasPort(), "Host has a port: %s", str);
        return fromString;
    }

    public static HostAndPort fromParts(String str, int i4) {
        a0.k(b(i4), "Port out of range: %s", i4);
        HostAndPort fromString = fromString(str);
        a0.u(!fromString.hasPort(), "Host has a port: %s", str);
        return new HostAndPort(fromString.f34602a, i4, fromString.f34604c);
    }

    public static HostAndPort fromString(String str) {
        String str2;
        String str3;
        a0.E(str);
        int i4 = -1;
        if (str.startsWith("[")) {
            String[] a10 = a(str);
            str3 = a10[0];
            str2 = a10[1];
        } else {
            int indexOf = str.indexOf(58);
            if (indexOf >= 0) {
                int i10 = indexOf + 1;
                if (str.indexOf(58, i10) == -1) {
                    str3 = str.substring(0, indexOf);
                    str2 = str.substring(i10);
                }
            }
            r3 = indexOf >= 0;
            str2 = null;
            str3 = str;
        }
        if (!h0.d(str2)) {
            a0.u(!str2.startsWith("+"), "Unparseable port number: %s", str);
            try {
                i4 = Integer.parseInt(str2);
                a0.u(b(i4), "Port number out of range: %s", str);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException("Unparseable port number: " + str);
            }
        }
        return new HostAndPort(str3, i4, r3);
    }

    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HostAndPort) {
            HostAndPort hostAndPort = (HostAndPort) obj;
            return w.a(this.f34602a, hostAndPort.f34602a) && this.f34603b == hostAndPort.f34603b;
        }
        return false;
    }

    public String getHost() {
        return this.f34602a;
    }

    public int getPort() {
        a0.g0(hasPort());
        return this.f34603b;
    }

    public int getPortOrDefault(int i4) {
        return hasPort() ? this.f34603b : i4;
    }

    public boolean hasPort() {
        return this.f34603b >= 0;
    }

    public int hashCode() {
        return w.b(this.f34602a, Integer.valueOf(this.f34603b));
    }

    public HostAndPort requireBracketsForIPv6() {
        a0.u(!this.f34604c, "Possible bracketless IPv6 literal: %s", this.f34602a);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f34602a.length() + 8);
        if (this.f34602a.indexOf(58) >= 0) {
            sb.append('[');
            sb.append(this.f34602a);
            sb.append(']');
        } else {
            sb.append(this.f34602a);
        }
        if (hasPort()) {
            sb.append(':');
            sb.append(this.f34603b);
        }
        return sb.toString();
    }

    public HostAndPort withDefaultPort(int i4) {
        a0.d(b(i4));
        return hasPort() ? this : new HostAndPort(this.f34602a, i4, this.f34604c);
    }
}
