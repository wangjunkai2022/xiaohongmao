package org.minidns;

import java.io.IOException;
import java.net.InetAddress;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.minidns.d;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;
import org.minidns.record.h;
import org.minidns.record.l;
import org.minidns.source.DnsDataSource;

/* loaded from: classes5.dex */
public abstract class AbstractDnsClient {

    /* renamed from: g  reason: collision with root package name */
    protected static final org.minidns.cache.c f92575g = new org.minidns.cache.c();

    /* renamed from: h  reason: collision with root package name */
    protected static final Logger f92576h = Logger.getLogger(AbstractDnsClient.class.getName());

    /* renamed from: i  reason: collision with root package name */
    protected static IpVersionSetting f92577i = IpVersionSetting.v4v6;

    /* renamed from: a  reason: collision with root package name */
    private final DnsDataSource.a f92578a;

    /* renamed from: b  reason: collision with root package name */
    protected final Random f92579b;

    /* renamed from: c  reason: collision with root package name */
    protected final Random f92580c;

    /* renamed from: d  reason: collision with root package name */
    protected final org.minidns.a f92581d;

    /* renamed from: e  reason: collision with root package name */
    protected DnsDataSource f92582e;

    /* renamed from: f  reason: collision with root package name */
    protected IpVersionSetting f92583f;

    /* loaded from: classes5.dex */
    public enum IpVersionSetting {
        v4only(true, false),
        v6only(false, true),
        v4v6(true, true),
        v6v4(true, true);
        

        /* renamed from: v4  reason: collision with root package name */
        public final boolean f92585v4;

        /* renamed from: v6  reason: collision with root package name */
        public final boolean f92586v6;

        IpVersionSetting(boolean z9, boolean z10) {
            this.f92585v4 = z9;
            this.f92586v6 = z10;
        }
    }

    /* loaded from: classes5.dex */
    class a implements DnsDataSource.a {
        a() {
        }

        @Override // org.minidns.source.DnsDataSource.a
        public void a(DnsMessage dnsMessage, DnsMessage dnsMessage2) {
            org.minidns.dnsmessage.a o9 = dnsMessage.o();
            AbstractDnsClient abstractDnsClient = AbstractDnsClient.this;
            if (abstractDnsClient.f92581d == null || !abstractDnsClient.m(o9, dnsMessage2)) {
                return;
            }
            AbstractDnsClient.this.f92581d.d(dnsMessage.c(), dnsMessage2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f92588a;

        static {
            int[] iArr = new int[Record.TYPE.values().length];
            f92588a = iArr;
            try {
                iArr[Record.TYPE.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92588a[Record.TYPE.AAAA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDnsClient(org.minidns.a aVar) {
        SecureRandom secureRandom;
        this.f92578a = new a();
        this.f92580c = new Random();
        this.f92582e = new org.minidns.source.a();
        this.f92583f = f92577i;
        try {
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
        } catch (NoSuchAlgorithmException unused) {
            secureRandom = new SecureRandom();
        }
        this.f92579b = secureRandom;
        this.f92581d = aVar;
    }

    public static void G(IpVersionSetting ipVersionSetting) {
        if (ipVersionSetting != null) {
            f92577i = ipVersionSetting;
            return;
        }
        throw new IllegalArgumentException();
    }

    private <D extends h> Set<D> c(DnsName dnsName, Record.TYPE type) {
        Collection d4;
        Set<l> h4 = h(dnsName);
        if (h4.isEmpty()) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(h4.size() * 3);
        for (l lVar : h4) {
            int i4 = b.f92588a[type.ordinal()];
            if (i4 == 1) {
                d4 = d(lVar.f92983c);
            } else if (i4 == 2) {
                d4 = f(lVar.f92983c);
            } else {
                throw new AssertionError();
            }
            hashSet.addAll(d4);
        }
        return hashSet;
    }

    private <D extends h> Set<D> i(DnsName dnsName, Record.TYPE type) {
        org.minidns.dnsmessage.a aVar = new org.minidns.dnsmessage.a(dnsName, type);
        DnsMessage a10 = this.f92581d.a(l(aVar));
        if (a10 == null) {
            return Collections.emptySet();
        }
        return a10.j(aVar);
    }

    public final d<DnsMessage, IOException> A(CharSequence charSequence, Record.TYPE type) {
        return E(new org.minidns.dnsmessage.a(charSequence, type, Record.CLASS.IN));
    }

    protected d<DnsMessage, IOException> B(DnsMessage.b bVar) {
        d.e eVar = new d.e();
        try {
            eVar.k(t(bVar));
            return eVar;
        } catch (IOException e4) {
            eVar.j(e4);
            return eVar;
        }
    }

    public final d<DnsMessage, IOException> C(DnsMessage dnsMessage, InetAddress inetAddress) {
        return D(dnsMessage, inetAddress, 53);
    }

    public final d<DnsMessage, IOException> D(DnsMessage dnsMessage, InetAddress inetAddress, int i4) {
        org.minidns.a aVar = this.f92581d;
        DnsMessage a10 = aVar == null ? null : aVar.a(dnsMessage);
        if (a10 != null) {
            return d.f(a10);
        }
        f92576h.log(Level.FINE, "Asynchronusly asking {0} on {1} for {2} with:\n{3}", new Object[]{inetAddress, Integer.valueOf(i4), dnsMessage.o(), dnsMessage});
        return this.f92582e.f(dnsMessage, inetAddress, i4, this.f92578a);
    }

    public final d<DnsMessage, IOException> E(org.minidns.dnsmessage.a aVar) {
        return B(a(aVar));
    }

    public void F(DnsDataSource dnsDataSource) {
        if (dnsDataSource != null) {
            this.f92582e = dnsDataSource;
            return;
        }
        throw new IllegalArgumentException();
    }

    public void H(IpVersionSetting ipVersionSetting) {
        if (ipVersionSetting != null) {
            this.f92583f = ipVersionSetting;
            return;
        }
        throw new IllegalArgumentException();
    }

    final DnsMessage.b a(org.minidns.dnsmessage.a aVar) {
        DnsMessage.b e4 = DnsMessage.e();
        e4.L(aVar);
        e4.H(this.f92579b.nextInt());
        return n(e4);
    }

    public org.minidns.a b() {
        return this.f92581d;
    }

    public Set<org.minidns.record.a> d(DnsName dnsName) {
        return i(dnsName, Record.TYPE.A);
    }

    public Set<org.minidns.record.a> e(DnsName dnsName) {
        return c(dnsName, Record.TYPE.A);
    }

    public Set<org.minidns.record.b> f(DnsName dnsName) {
        return i(dnsName, Record.TYPE.AAAA);
    }

    public Set<org.minidns.record.b> g(DnsName dnsName) {
        return c(dnsName, Record.TYPE.AAAA);
    }

    public Set<l> h(DnsName dnsName) {
        return i(dnsName, Record.TYPE.NS);
    }

    public DnsDataSource j() {
        return this.f92582e;
    }

    public IpVersionSetting k() {
        return this.f92583f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DnsMessage l(org.minidns.dnsmessage.a aVar) {
        return a(aVar).w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean m(org.minidns.dnsmessage.a aVar, DnsMessage dnsMessage) {
        for (Record<? extends h> record : dnsMessage.f92670l) {
            if (record.h(aVar)) {
                return true;
            }
        }
        return false;
    }

    protected abstract DnsMessage.b n(DnsMessage.b bVar);

    public final DnsMessage o(CharSequence charSequence, Record.TYPE type) throws IOException {
        return w(new org.minidns.dnsmessage.a(charSequence, type, Record.CLASS.IN));
    }

    public DnsMessage p(String str, Record.TYPE type, InetAddress inetAddress) throws IOException {
        return x(new org.minidns.dnsmessage.a(str, type, Record.CLASS.IN), inetAddress);
    }

    public final DnsMessage q(String str, Record.TYPE type, Record.CLASS r42) throws IOException {
        return w(new org.minidns.dnsmessage.a(str, type, r42));
    }

    public DnsMessage r(String str, Record.TYPE type, Record.CLASS r42, InetAddress inetAddress) throws IOException {
        return x(new org.minidns.dnsmessage.a(str, type, r42), inetAddress);
    }

    public DnsMessage s(String str, Record.TYPE type, Record.CLASS r42, InetAddress inetAddress, int i4) throws IOException {
        return y(new org.minidns.dnsmessage.a(str, type, r42), inetAddress, i4);
    }

    protected abstract DnsMessage t(DnsMessage.b bVar) throws IOException;

    public final DnsMessage u(DnsMessage dnsMessage, InetAddress inetAddress) throws IOException {
        return v(dnsMessage, inetAddress, 53);
    }

    public final DnsMessage v(DnsMessage dnsMessage, InetAddress inetAddress, int i4) throws IOException {
        org.minidns.a aVar = this.f92581d;
        DnsMessage a10 = aVar == null ? null : aVar.a(dnsMessage);
        if (a10 != null) {
            return a10;
        }
        org.minidns.dnsmessage.a o9 = dnsMessage.o();
        Level level = Level.FINE;
        Logger logger = f92576h;
        logger.log(level, "Asking {0} on {1} for {2} with:\n{3}", new Object[]{inetAddress, Integer.valueOf(i4), o9, dnsMessage});
        try {
            DnsMessage e4 = this.f92582e.e(dnsMessage, inetAddress, i4);
            if (e4 != null) {
                logger.log(level, "Response from {0} on {1} for {2}:\n{3}", new Object[]{inetAddress, Integer.valueOf(i4), o9, e4});
            } else {
                Level level2 = Level.SEVERE;
                logger.log(level2, "NULL response from " + inetAddress + " on " + i4 + " for " + o9);
            }
            if (e4 == null) {
                return null;
            }
            this.f92578a.a(dnsMessage, e4);
            return e4;
        } catch (IOException e10) {
            f92576h.log(level, "IOException {0} on {1} while resolving {2}: {3}", new Object[]{inetAddress, Integer.valueOf(i4), o9, e10});
            throw e10;
        }
    }

    public DnsMessage w(org.minidns.dnsmessage.a aVar) throws IOException {
        return t(a(aVar));
    }

    public DnsMessage x(org.minidns.dnsmessage.a aVar, InetAddress inetAddress) throws IOException {
        return y(aVar, inetAddress, 53);
    }

    public final DnsMessage y(org.minidns.dnsmessage.a aVar, InetAddress inetAddress, int i4) throws IOException {
        return v(l(aVar), inetAddress, i4);
    }

    public final DnsMessage z(DnsName dnsName, Record.TYPE type) throws IOException {
        return w(new org.minidns.dnsmessage.a(dnsName, type, Record.CLASS.IN));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDnsClient() {
        this(f92575g);
    }
}
