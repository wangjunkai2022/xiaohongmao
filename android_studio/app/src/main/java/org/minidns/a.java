package org.minidns;

import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;

/* compiled from: DnsCache.java */
/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f92596a = 512;

    public final DnsMessage a(DnsMessage dnsMessage) {
        return b(dnsMessage.c());
    }

    protected abstract DnsMessage b(DnsMessage dnsMessage);

    public abstract void c(DnsMessage dnsMessage, DnsMessage dnsMessage2, DnsName dnsName);

    public final void d(DnsMessage dnsMessage, DnsMessage dnsMessage2) {
        e(dnsMessage.c(), dnsMessage2);
    }

    protected abstract void e(DnsMessage dnsMessage, DnsMessage dnsMessage2);
}
