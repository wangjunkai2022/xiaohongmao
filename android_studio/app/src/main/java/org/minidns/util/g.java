package org.minidns.util;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.regex.Pattern;
import org.minidns.dnsname.DnsName;

/* compiled from: InetAddressUtil.java */
/* loaded from: classes5.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f93037a = Pattern.compile("\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f93038b = Pattern.compile("(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))");

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f93039c = false;

    public static Inet4Address a(CharSequence charSequence) {
        try {
            InetAddress byName = InetAddress.getByName(charSequence.toString());
            if (byName instanceof Inet4Address) {
                return (Inet4Address) byName;
            }
            throw new IllegalArgumentException();
        } catch (UnknownHostException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    public static Inet6Address b(CharSequence charSequence) {
        try {
            InetAddress byName = InetAddress.getByName(charSequence.toString());
            if (byName instanceof Inet6Address) {
                return (Inet6Address) byName;
            }
            throw new IllegalArgumentException();
        } catch (UnknownHostException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    public static boolean c(CharSequence charSequence) {
        return e(charSequence) || d(charSequence);
    }

    public static boolean d(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        return f93037a.matcher(charSequence).matches();
    }

    public static boolean e(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        return f93038b.matcher(charSequence).matches();
    }

    public static DnsName f(Inet4Address inet4Address) {
        return DnsName.from(inet4Address.getHostAddress().split("\\."));
    }

    public static DnsName g(Inet6Address inet6Address) {
        String[] split = inet6Address.getHostAddress().split(":");
        String[] strArr = new String[32];
        int i4 = 0;
        for (int length = split.length - 1; length >= 0; length--) {
            String str = split[length];
            int length2 = 4 - str.length();
            int i10 = 0;
            while (i10 < length2) {
                strArr[i4] = "0";
                i10++;
                i4++;
            }
            int i11 = 0;
            while (i11 < str.length()) {
                strArr[i4] = Character.toString(str.charAt(i11));
                i11++;
                i4++;
            }
        }
        return DnsName.from(strArr);
    }
}
