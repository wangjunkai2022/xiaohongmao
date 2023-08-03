package org.minidns.hla;

import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import org.minidns.AbstractDnsClient;
import org.minidns.dnsname.DnsName;
import org.minidns.iterative.ReliableDnsClient;
import org.minidns.record.Record;
import org.minidns.record.h;
import org.minidns.record.q;
import org.minidns.record.u;
import org.minidns.util.g;

/* compiled from: ResolverApi.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    public static final b f92837b = new b(new ReliableDnsClient());

    /* renamed from: a  reason: collision with root package name */
    private final AbstractDnsClient f92838a;

    public b(AbstractDnsClient abstractDnsClient) {
        this.f92838a = abstractDnsClient;
    }

    public final AbstractDnsClient a() {
        return this.f92838a;
    }

    public final <D extends h> c<D> b(String str, Class<D> cls) throws IOException {
        return d(DnsName.from(str), cls);
    }

    public <D extends h> c<D> c(org.minidns.dnsmessage.a aVar) throws IOException {
        return new c<>(aVar, this.f92838a.w(aVar), null);
    }

    public final <D extends h> c<D> d(DnsName dnsName, Class<D> cls) throws IOException {
        return c(new org.minidns.dnsmessage.a(dnsName, Record.TYPE.getType(cls)));
    }

    public d e(String str) throws IOException {
        return f(DnsName.from(str));
    }

    public d f(DnsName dnsName) throws IOException {
        return new d(d(dnsName, u.class), this);
    }

    public d g(DnsName dnsName, DnsName dnsName2, DnsName dnsName3) throws IOException {
        return f(DnsName.from(dnsName, dnsName2, dnsName3));
    }

    public d h(SrvService srvService, SrvProto srvProto, String str) throws IOException {
        return g(srvService.dnsName, srvProto.dnsName, DnsName.from(str));
    }

    public d i(SrvService srvService, SrvProto srvProto, DnsName dnsName) throws IOException {
        return g(srvService.dnsName, srvProto.dnsName, dnsName);
    }

    public d j(SrvType srvType, String str) throws IOException {
        return i(srvType.service, srvType.proto, DnsName.from(str));
    }

    public d k(SrvType srvType, DnsName dnsName) throws IOException {
        return i(srvType.service, srvType.proto, dnsName);
    }

    public c<q> l(CharSequence charSequence) throws IOException {
        return o(InetAddress.getByName(charSequence.toString()));
    }

    public c<q> m(Inet4Address inet4Address) throws IOException {
        return d(DnsName.from(g.f(inet4Address), DnsName.IN_ADDR_ARPA), q.class);
    }

    public c<q> n(Inet6Address inet6Address) throws IOException {
        return d(DnsName.from(g.g(inet6Address), DnsName.IP6_ARPA), q.class);
    }

    public c<q> o(InetAddress inetAddress) throws IOException {
        if (inetAddress instanceof Inet4Address) {
            return m((Inet4Address) inetAddress);
        }
        if (inetAddress instanceof Inet6Address) {
            return n((Inet6Address) inetAddress);
        }
        throw new IllegalArgumentException("The given InetAddress '" + inetAddress + "' is neither of type Inet4Address or Inet6Address");
    }
}
