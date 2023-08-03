package org.minidns;

import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.minidns.AbstractDnsClient;
import org.minidns.d;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.util.MultipleIoException;
import org.minidns.util.g;
import org.minidns.util.k;

/* compiled from: DnsClient.java */
/* loaded from: classes5.dex */
public class b extends AbstractDnsClient {

    /* renamed from: n  reason: collision with root package name */
    static final List<org.minidns.dnsserverlookup.d> f92597n = new CopyOnWriteArrayList();

    /* renamed from: o  reason: collision with root package name */
    static final Set<Inet4Address> f92598o;

    /* renamed from: p  reason: collision with root package name */
    static final Set<Inet6Address> f92599p;

    /* renamed from: q  reason: collision with root package name */
    private static final Set<String> f92600q;

    /* renamed from: r  reason: collision with root package name */
    static final /* synthetic */ boolean f92601r = false;

    /* renamed from: j  reason: collision with root package name */
    private final Set<InetAddress> f92602j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f92603k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f92604l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f92605m;

    /* compiled from: DnsClient.java */
    /* loaded from: classes5.dex */
    class a implements k<DnsMessage> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d.e f92606a;

        a(d.e eVar) {
            this.f92606a = eVar;
        }

        @Override // org.minidns.util.k
        /* renamed from: a */
        public void onSuccess(DnsMessage dnsMessage) {
            this.f92606a.k(dnsMessage);
        }
    }

    /* compiled from: DnsClient.java */
    /* renamed from: org.minidns.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0821b implements org.minidns.util.e<IOException> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f92608a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f92609b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d.e f92610c;

        C0821b(List list, List list2, d.e eVar) {
            this.f92608a = list;
            this.f92609b = list2;
            this.f92610c = eVar;
        }

        @Override // org.minidns.util.e
        /* renamed from: b */
        public void a(IOException iOException) {
            this.f92608a.add(iOException);
            if (this.f92608a.size() == this.f92609b.size()) {
                this.f92610c.j(MultipleIoException.toIOException(this.f92608a));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DnsClient.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f92612a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f92613b;

        static {
            int[] iArr = new int[DnsMessage.RESPONSE_CODE.values().length];
            f92613b = iArr;
            try {
                iArr[DnsMessage.RESPONSE_CODE.NO_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92613b[DnsMessage.RESPONSE_CODE.NX_DOMAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[AbstractDnsClient.IpVersionSetting.values().length];
            f92612a = iArr2;
            try {
                iArr2[AbstractDnsClient.IpVersionSetting.v4v6.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92612a[AbstractDnsClient.IpVersionSetting.v6v4.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f92612a[AbstractDnsClient.IpVersionSetting.v4only.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f92612a[AbstractDnsClient.IpVersionSetting.v6only.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        f92598o = copyOnWriteArraySet;
        f92599p = new CopyOnWriteArraySet();
        J(org.minidns.dnsserverlookup.b.f92782d);
        J(org.minidns.dnsserverlookup.c.f92785d);
        J(org.minidns.dnsserverlookup.e.f92787d);
        try {
            copyOnWriteArraySet.add(g.a("8.8.8.8"));
        } catch (IllegalArgumentException e4) {
            AbstractDnsClient.f92576h.log(Level.WARNING, "Could not add static IPv4 DNS Server", (Throwable) e4);
        }
        try {
            f92599p.add(g.b("[2001:4860:4860::8888]"));
        } catch (IllegalArgumentException e10) {
            AbstractDnsClient.f92576h.log(Level.WARNING, "Could not add static IPv6 DNS Server", (Throwable) e10);
        }
        f92600q = Collections.newSetFromMap(new ConcurrentHashMap(4));
    }

    public b() {
        this.f92602j = Collections.newSetFromMap(new ConcurrentHashMap(4));
        this.f92603k = false;
        this.f92604l = false;
        this.f92605m = true;
    }

    public static boolean I(String str) {
        return f92600q.add(str);
    }

    public static void J(org.minidns.dnsserverlookup.d dVar) {
        if (!dVar.H()) {
            Logger logger = AbstractDnsClient.f92576h;
            logger.fine("Not adding " + dVar.getName() + " as it is not available.");
            return;
        }
        List<org.minidns.dnsserverlookup.d> list = f92597n;
        synchronized (list) {
            ArrayList arrayList = new ArrayList(list.size() + 1);
            arrayList.addAll(list);
            arrayList.add(dVar);
            Collections.sort(arrayList);
            list.clear();
            list.addAll(arrayList);
        }
    }

    public static List<String> K() {
        List<String> list = null;
        for (org.minidns.dnsserverlookup.d dVar : f92597n) {
            List<String> j4 = dVar.j();
            if (j4 != null) {
                Iterator<String> it = j4.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (!g.c(next)) {
                        Logger logger = AbstractDnsClient.f92576h;
                        logger.warning("The DNS server lookup mechanism '" + dVar.getName() + "' returned an invalid non-IP address result: '" + next + "'");
                        it.remove();
                    } else if (f92600q.contains(next)) {
                        Logger logger2 = AbstractDnsClient.f92576h;
                        logger2.fine("The DNS server lookup mechanism '" + dVar.getName() + "' returned a blacklisted result: '" + next + "'");
                        it.remove();
                    }
                }
                if (!j4.isEmpty()) {
                    return j4;
                }
                Logger logger3 = AbstractDnsClient.f92576h;
                logger3.warning("The DNS server lookup mechanism '" + dVar.getName() + "' returned not a single valid IP address after sanitazion");
            }
            list = j4;
        }
        return list;
    }

    public static List<InetAddress> L() {
        List<String> K = K();
        if (K == null) {
            return new ArrayList();
        }
        AbstractDnsClient.IpVersionSetting ipVersionSetting = AbstractDnsClient.f92577i;
        ArrayList arrayList = ipVersionSetting.f92585v4 ? new ArrayList(K.size()) : null;
        ArrayList arrayList2 = ipVersionSetting.f92586v6 ? new ArrayList(K.size()) : null;
        for (String str : K) {
            try {
                InetAddress byName = InetAddress.getByName(str);
                if (byName instanceof Inet4Address) {
                    if (ipVersionSetting.f92585v4) {
                        arrayList.add((Inet4Address) byName);
                    }
                } else if (byName instanceof Inet6Address) {
                    if (ipVersionSetting.f92586v6) {
                        arrayList2.add((Inet6Address) byName);
                    }
                } else {
                    throw new AssertionError("The address '" + byName + "' is neither of type Inet(4|6)Address");
                }
            } catch (UnknownHostException e4) {
                Logger logger = AbstractDnsClient.f92576h;
                Level level = Level.SEVERE;
                logger.log(level, "Could not transform '" + str + "' to InetAddress", (Throwable) e4);
            }
        }
        LinkedList linkedList = new LinkedList();
        int i4 = c.f92612a[ipVersionSetting.ordinal()];
        if (i4 == 1) {
            linkedList.addAll(arrayList);
            linkedList.addAll(arrayList2);
        } else if (i4 == 2) {
            linkedList.addAll(arrayList2);
            linkedList.addAll(arrayList);
        } else if (i4 == 3) {
            linkedList.addAll(arrayList);
        } else if (i4 == 4) {
            linkedList.addAll(arrayList2);
        }
        return linkedList;
    }

    private List<InetAddress> O() {
        InetAddress M;
        InetAddress N;
        List<InetAddress> L = L();
        InetAddress[] inetAddressArr = new InetAddress[2];
        if (this.f92605m) {
            int i4 = c.f92612a[this.f92583f.ordinal()];
            InetAddress inetAddress = null;
            if (i4 == 1) {
                inetAddress = N();
                M = M();
            } else if (i4 != 2) {
                if (i4 == 3) {
                    N = N();
                } else if (i4 != 4) {
                    M = null;
                } else {
                    N = M();
                }
                inetAddress = N;
                M = null;
            } else {
                inetAddress = M();
                M = N();
            }
            inetAddressArr[0] = inetAddress;
            inetAddressArr[1] = M;
        }
        for (int i10 = 0; i10 < 2; i10++) {
            InetAddress inetAddress2 = inetAddressArr[i10];
            if (inetAddress2 != null) {
                L.add(inetAddress2);
            }
        }
        return L;
    }

    public static boolean S(String str) {
        return f92600q.remove(str);
    }

    public static boolean T(org.minidns.dnsserverlookup.d dVar) {
        boolean remove;
        List<org.minidns.dnsserverlookup.d> list = f92597n;
        synchronized (list) {
            remove = list.remove(dVar);
        }
        return remove;
    }

    @Override // org.minidns.AbstractDnsClient
    protected d<DnsMessage, IOException> B(DnsMessage.b bVar) {
        DnsMessage w9 = n(bVar).w();
        org.minidns.a aVar = this.f92581d;
        DnsMessage a10 = aVar == null ? null : aVar.a(w9);
        if (a10 != null) {
            return d.f(a10);
        }
        List<InetAddress> O = O();
        d.e eVar = new d.e();
        List synchronizedList = Collections.synchronizedList(new ArrayList(O.size()));
        Iterator<InetAddress> it = O.iterator();
        while (it.hasNext()) {
            InetAddress next = it.next();
            if (this.f92602j.contains(next)) {
                it.remove();
                Logger logger = AbstractDnsClient.f92576h;
                logger.finer("Skipping " + next + " because it was marked as \"recursion not available\"");
            }
        }
        ArrayList<d> arrayList = new ArrayList(O.size());
        Iterator<InetAddress> it2 = O.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            InetAddress next2 = it2.next();
            if (eVar.isDone()) {
                for (d dVar : arrayList) {
                    dVar.cancel(true);
                }
            } else {
                d<DnsMessage, IOException> C = C(w9, next2);
                C.b(new a(eVar));
                C.a(new C0821b(synchronizedList, O, eVar));
                arrayList.add(C);
            }
        }
        return eVar;
    }

    public InetAddress M() {
        return (InetAddress) org.minidns.util.d.a(f92599p, this.f92580c);
    }

    public InetAddress N() {
        return (InetAddress) org.minidns.util.d.a(f92598o, this.f92580c);
    }

    public boolean P() {
        return this.f92603k;
    }

    public boolean Q() {
        return this.f92604l;
    }

    public boolean R() {
        return this.f92605m;
    }

    public void U(boolean z9) {
        this.f92603k = z9;
    }

    public void V(boolean z9) {
        this.f92604l = z9;
    }

    public void W(boolean z9) {
        this.f92605m = z9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.AbstractDnsClient
    public DnsMessage.b n(DnsMessage.b bVar) {
        bVar.P(true);
        bVar.A().j(this.f92582e.d()).i(this.f92603k);
        return bVar;
    }

    @Override // org.minidns.AbstractDnsClient
    public DnsMessage t(DnsMessage.b bVar) throws IOException {
        int i4;
        DnsMessage w9 = n(bVar).w();
        org.minidns.a aVar = this.f92581d;
        DnsMessage a10 = aVar == null ? null : aVar.a(w9);
        if (a10 != null) {
            return a10;
        }
        List<InetAddress> O = O();
        ArrayList arrayList = new ArrayList(O.size());
        for (InetAddress inetAddress : O) {
            if (this.f92602j.contains(inetAddress)) {
                AbstractDnsClient.f92576h.finer("Skipping " + inetAddress + " because it was marked as \"recursion not available\"");
            } else {
                try {
                    DnsMessage u9 = u(w9, inetAddress);
                    if (u9 != null) {
                        if (!u9.f92666h) {
                            if (this.f92602j.add(inetAddress)) {
                                AbstractDnsClient.f92576h.warning("The DNS server " + inetAddress + " returned a response without the \"recursion available\" (RA) flag set. This likely indicates a misconfiguration because the server is not suitable for DNS resolution");
                            }
                        } else if (this.f92604l || (i4 = c.f92613b[u9.f92661c.ordinal()]) == 1 || i4 == 2) {
                            return u9;
                        } else {
                            String str = "Response from " + inetAddress + " asked for " + w9.o() + " with error code: " + u9.f92661c + '.';
                            Logger logger = AbstractDnsClient.f92576h;
                            if (!logger.isLoggable(Level.FINE)) {
                                str = str + "\n" + u9;
                            }
                            logger.warning(str);
                        }
                    }
                } catch (IOException e4) {
                    arrayList.add(e4);
                }
            }
        }
        MultipleIoException.throwIfRequired(arrayList);
        return null;
    }

    public b(org.minidns.a aVar) {
        super(aVar);
        this.f92602j = Collections.newSetFromMap(new ConcurrentHashMap(4));
        this.f92603k = false;
        this.f92604l = false;
        this.f92605m = true;
    }
}
