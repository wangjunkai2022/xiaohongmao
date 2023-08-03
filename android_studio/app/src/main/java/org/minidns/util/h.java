package org.minidns.util;

import org.minidns.dnsname.DnsName;

/* compiled from: NameUtil.java */
/* loaded from: classes5.dex */
public final class h {
    public static boolean a(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2) || DnsName.from(str).compareTo(DnsName.from(str2)) == 0;
    }
}
