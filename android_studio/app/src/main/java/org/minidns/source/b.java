package org.minidns.source;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import org.minidns.AbstractDnsClient;
import org.minidns.dnsmessage.DnsMessage;

/* compiled from: NetworkDataSourceWithAccounting.java */
/* loaded from: classes5.dex */
public class b extends org.minidns.source.a {

    /* renamed from: g  reason: collision with root package name */
    private final AtomicInteger f93008g = new AtomicInteger();

    /* renamed from: h  reason: collision with root package name */
    private final AtomicInteger f93009h = new AtomicInteger();

    /* renamed from: i  reason: collision with root package name */
    private final AtomicInteger f93010i = new AtomicInteger();

    /* renamed from: j  reason: collision with root package name */
    private final AtomicInteger f93011j = new AtomicInteger();

    /* renamed from: k  reason: collision with root package name */
    private final AtomicInteger f93012k = new AtomicInteger();

    /* renamed from: l  reason: collision with root package name */
    private final AtomicInteger f93013l = new AtomicInteger();

    /* renamed from: m  reason: collision with root package name */
    private final AtomicInteger f93014m = new AtomicInteger();

    /* renamed from: n  reason: collision with root package name */
    private final AtomicInteger f93015n = new AtomicInteger();

    /* renamed from: o  reason: collision with root package name */
    private final AtomicInteger f93016o = new AtomicInteger();

    /* compiled from: NetworkDataSourceWithAccounting.java */
    /* renamed from: org.minidns.source.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0831b {

        /* renamed from: a  reason: collision with root package name */
        public final int f93017a;

        /* renamed from: b  reason: collision with root package name */
        public final int f93018b;

        /* renamed from: c  reason: collision with root package name */
        public final int f93019c;

        /* renamed from: d  reason: collision with root package name */
        public final int f93020d;

        /* renamed from: e  reason: collision with root package name */
        public final int f93021e;

        /* renamed from: f  reason: collision with root package name */
        public final int f93022f;

        /* renamed from: g  reason: collision with root package name */
        public final int f93023g;

        /* renamed from: h  reason: collision with root package name */
        public final int f93024h;

        /* renamed from: i  reason: collision with root package name */
        public final int f93025i;

        /* renamed from: j  reason: collision with root package name */
        public final int f93026j;

        /* renamed from: k  reason: collision with root package name */
        public final int f93027k;

        /* renamed from: l  reason: collision with root package name */
        public final int f93028l;

        /* renamed from: m  reason: collision with root package name */
        private String f93029m;

        private static String a(int i4) {
            return String.format(Locale.US, "%,09d", Integer.valueOf(i4));
        }

        public String toString() {
            String str = this.f93029m;
            if (str != null) {
                return str;
            }
            String str2 = "Stats\t# Successful\t# Failed\tResp. Size\tAvg. Resp. Size\nTotal\t" + a(this.f93017a) + '\t' + a(this.f93020d) + '\t' + a(this.f93018b) + '\t' + a(this.f93019c) + "\nUDP\t" + a(this.f93021e) + '\t' + a(this.f93024h) + '\t' + a(this.f93022f) + '\t' + a(this.f93023g) + "\nTCP\t" + a(this.f93025i) + '\t' + a(this.f93028l) + '\t' + a(this.f93026j) + '\t' + a(this.f93027k) + '\n';
            this.f93029m = str2;
            return str2;
        }

        private C0831b(b bVar) {
            int i4 = bVar.f93008g.get();
            this.f93017a = i4;
            int i10 = bVar.f93009h.get();
            this.f93018b = i10;
            this.f93020d = bVar.f93010i.get();
            int i11 = bVar.f93011j.get();
            this.f93021e = i11;
            int i12 = bVar.f93012k.get();
            this.f93022f = i12;
            this.f93024h = bVar.f93013l.get();
            int i13 = bVar.f93014m.get();
            this.f93025i = i13;
            int i14 = bVar.f93015n.get();
            this.f93026j = i14;
            this.f93028l = bVar.f93016o.get();
            this.f93019c = i4 > 0 ? i10 / i4 : 0;
            this.f93023g = i11 > 0 ? i12 / i11 : 0;
            this.f93027k = i13 > 0 ? i14 / i13 : 0;
        }
    }

    public static b w(AbstractDnsClient abstractDnsClient) {
        DnsDataSource j4 = abstractDnsClient.j();
        if (j4 instanceof b) {
            return (b) j4;
        }
        return null;
    }

    @Override // org.minidns.source.a, org.minidns.source.DnsDataSource
    public DnsMessage e(DnsMessage dnsMessage, InetAddress inetAddress, int i4) throws IOException {
        try {
            DnsMessage e4 = super.e(dnsMessage, inetAddress, i4);
            this.f93008g.incrementAndGet();
            this.f93009h.addAndGet(e4.r().length);
            return e4;
        } catch (IOException e10) {
            this.f93010i.incrementAndGet();
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.source.a
    public DnsMessage l(DnsMessage dnsMessage, InetAddress inetAddress, int i4) throws IOException {
        try {
            DnsMessage l10 = super.l(dnsMessage, inetAddress, i4);
            this.f93014m.incrementAndGet();
            this.f93015n.addAndGet(l10.r().length);
            return l10;
        } catch (IOException e4) {
            this.f93016o.incrementAndGet();
            throw e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.source.a
    public DnsMessage m(DnsMessage dnsMessage, InetAddress inetAddress, int i4) throws IOException {
        try {
            DnsMessage m9 = super.m(dnsMessage, inetAddress, i4);
            this.f93011j.incrementAndGet();
            this.f93012k.addAndGet(m9.r().length);
            return m9;
        } catch (IOException e4) {
            this.f93013l.incrementAndGet();
            throw e4;
        }
    }

    public C0831b x() {
        return new C0831b();
    }
}
