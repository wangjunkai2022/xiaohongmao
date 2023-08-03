package org.minidns.source;

import java.io.IOException;
import java.net.InetAddress;
import org.minidns.d;
import org.minidns.dnsmessage.DnsMessage;

/* loaded from: classes5.dex */
public abstract class DnsDataSource {

    /* renamed from: c  reason: collision with root package name */
    private org.minidns.a f93002c;

    /* renamed from: a  reason: collision with root package name */
    protected int f93000a = 1024;

    /* renamed from: b  reason: collision with root package name */
    protected int f93001b = 5000;

    /* renamed from: d  reason: collision with root package name */
    private QueryMode f93003d = QueryMode.dontCare;

    /* loaded from: classes5.dex */
    public enum QueryMode {
        dontCare,
        udpTcp,
        tcp
    }

    /* loaded from: classes5.dex */
    public interface a {
        void a(DnsMessage dnsMessage, DnsMessage dnsMessage2);
    }

    protected final void a(DnsMessage dnsMessage, DnsMessage dnsMessage2) {
        org.minidns.a aVar = this.f93002c;
        if (aVar == null) {
            return;
        }
        aVar.d(dnsMessage, dnsMessage2);
    }

    public QueryMode b() {
        return this.f93003d;
    }

    public int c() {
        return this.f93001b;
    }

    public int d() {
        return this.f93000a;
    }

    public abstract DnsMessage e(DnsMessage dnsMessage, InetAddress inetAddress, int i4) throws IOException;

    public d<DnsMessage, IOException> f(DnsMessage dnsMessage, InetAddress inetAddress, int i4, a aVar) {
        d.e eVar = new d.e();
        try {
            eVar.k(e(dnsMessage, inetAddress, i4));
            return eVar;
        } catch (IOException e4) {
            eVar.j(e4);
            return eVar;
        }
    }

    public void g(QueryMode queryMode) {
        if (queryMode != null) {
            this.f93003d = queryMode;
            return;
        }
        throw new IllegalArgumentException();
    }

    public void h(int i4) {
        if (i4 > 0) {
            this.f93001b = i4;
            return;
        }
        throw new IllegalArgumentException("Timeout must be greater than zero");
    }

    public void i(int i4) {
        if (i4 > 0) {
            this.f93000a = i4;
            return;
        }
        throw new IllegalArgumentException("UDP payload size must be greater than zero");
    }
}
