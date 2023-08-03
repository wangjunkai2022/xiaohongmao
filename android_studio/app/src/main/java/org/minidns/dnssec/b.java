package org.minidns.dnssec;

import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;
import org.minidns.AbstractDnsClient;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;
import org.minidns.dnssec.e;
import org.minidns.iterative.ReliableDnsClient;
import org.minidns.record.Record;
import org.minidns.record.g;
import org.minidns.record.h;
import org.minidns.record.i;
import org.minidns.record.r;

/* compiled from: DnssecClient.java */
/* loaded from: classes5.dex */
public class b extends ReliableDnsClient {

    /* renamed from: q  reason: collision with root package name */
    private static final BigInteger f92748q = new BigInteger("1628686155461064465348252249725010996177649738666492500572664444461532807739744536029771810659241049343994038053541290419968870563183856865780916376571550372513476957870843322273120879361960335192976656756972171258658400305760429696147778001233984421619267530978084631948434496468785021389956803104620471232008587410372348519229650742022804219634190734272506220018657920136902014393834092648785514548876370028925405557661759399901378816916683122474038734912535425670533237815676134840739565610963796427401855723026687073600445461090736240030247906095053875491225879656640052743394090544036297390104110989318819106653199917493");

    /* renamed from: r  reason: collision with root package name */
    private static final DnsName f92749r = DnsName.from("dlv.isc.org");

    /* renamed from: m  reason: collision with root package name */
    private f f92750m;

    /* renamed from: n  reason: collision with root package name */
    private final Map<DnsName, byte[]> f92751n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f92752o;

    /* renamed from: p  reason: collision with root package name */
    private DnsName f92753p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DnssecClient.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f92754a;

        static {
            int[] iArr = new int[Record.TYPE.values().length];
            f92754a = iArr;
            try {
                iArr[Record.TYPE.NSEC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92754a[Record.TYPE.NSEC3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b() {
        this(AbstractDnsClient.f92575g);
    }

    private c N(DnsMessage dnsMessage, Set<e> set) {
        List<Record<? extends h>> list = dnsMessage.f92670l;
        List<Record<? extends h>> list2 = dnsMessage.f92671m;
        List<Record<? extends h>> list3 = dnsMessage.f92672n;
        HashSet hashSet = new HashSet();
        Record.b(hashSet, r.class, list);
        Record.b(hashSet, r.class, list2);
        Record.b(hashSet, r.class, list3);
        DnsMessage.b a10 = dnsMessage.a();
        if (this.f92752o) {
            a10.C(X(list));
            a10.I(X(list2));
            a10.B(X(list3));
        }
        return new c(a10, hashSet, set);
    }

    private static boolean Q(String str, String str2) {
        if (str.equals(str2) || str2.isEmpty()) {
            return true;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        if (split2.length > split.length) {
            return false;
        }
        for (int i4 = 1; i4 <= split2.length; i4++) {
            if (!split2[split2.length - i4].equals(split[split.length - i4])) {
                return false;
            }
        }
        return true;
    }

    private c S(org.minidns.dnsmessage.a aVar, DnsMessage dnsMessage) throws IOException {
        if (dnsMessage == null) {
            return null;
        }
        if (dnsMessage.f92667i) {
            dnsMessage = dnsMessage.a().D(false).w();
        }
        return N(dnsMessage, Y(dnsMessage));
    }

    private static List<Record<? extends h>> X(List<Record<? extends h>> list) {
        if (list.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (Record<? extends h> record : list) {
            if (record.f92894b != Record.TYPE.RRSIG) {
                arrayList.add(record);
            }
        }
        return arrayList;
    }

    private Set<e> Y(DnsMessage dnsMessage) throws IOException {
        if (!dnsMessage.f92670l.isEmpty()) {
            return Z(dnsMessage);
        }
        return a0(dnsMessage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Set<e> Z(DnsMessage dnsMessage) throws IOException {
        boolean z9 = false;
        org.minidns.dnsmessage.a aVar = dnsMessage.f92669k.get(0);
        List<Record<? extends h>> list = dnsMessage.f92670l;
        List<Record<? extends h>> g4 = dnsMessage.g();
        C0824b c02 = c0(aVar, list, g4);
        Set<e> set = c02.f92757c;
        if (set.isEmpty()) {
            HashSet hashSet = new HashSet();
            Iterator<Record<? extends h>> it = g4.iterator();
            while (it.hasNext()) {
                Record<E> g10 = it.next().g(org.minidns.record.f.class);
                if (g10 != 0) {
                    Set<e> b02 = b0(aVar, g10);
                    if (b02.isEmpty()) {
                        z9 = true;
                    } else {
                        hashSet.addAll(b02);
                    }
                    if (!c02.f92756b) {
                        AbstractDnsClient.f92576h.finer("SEP key is not self-signed.");
                    }
                    it.remove();
                }
            }
            if (c02.f92756b && !z9) {
                set.addAll(hashSet);
            }
            if (c02.f92755a && !c02.f92756b) {
                set.add(new e.g(aVar.f92704a.ace));
            }
            if (!g4.isEmpty()) {
                if (g4.size() == list.size()) {
                    set.add(new e.h(aVar));
                } else {
                    throw new DnssecValidationFailedException(aVar, "Only some records are signed!");
                }
            }
            return set;
        }
        return set;
    }

    private Set<e> a0(DnsMessage dnsMessage) throws IOException {
        e h4;
        HashSet hashSet = new HashSet();
        boolean z9 = false;
        org.minidns.dnsmessage.a aVar = dnsMessage.f92669k.get(0);
        List<Record<? extends h>> list = dnsMessage.f92671m;
        DnsName dnsName = null;
        for (Record<? extends h> record : list) {
            if (record.f92894b == Record.TYPE.SOA) {
                dnsName = record.f92893a;
            }
        }
        if (dnsName != null) {
            boolean z10 = false;
            for (Record<? extends h> record2 : list) {
                int i4 = a.f92754a[record2.f92894b.ordinal()];
                if (i4 == 1) {
                    h4 = this.f92750m.h(record2, aVar);
                } else if (i4 == 2) {
                    h4 = this.f92750m.j(dnsName, record2, aVar);
                }
                if (h4 != null) {
                    hashSet.add(h4);
                } else {
                    z10 = true;
                }
                z9 = true;
            }
            if (z9 && !z10) {
                throw new DnssecValidationFailedException(aVar, "Invalid NSEC!");
            }
            List<Record<? extends h>> h10 = dnsMessage.h();
            C0824b c02 = c0(aVar, list, h10);
            if (z10 && c02.f92757c.isEmpty()) {
                hashSet.clear();
            } else {
                hashSet.addAll(c02.f92757c);
            }
            if (h10.isEmpty() || h10.size() == list.size()) {
                return hashSet;
            }
            throw new DnssecValidationFailedException(aVar, "Only some nameserver records are signed!");
        }
        throw new DnssecValidationFailedException(aVar, "NSECs must always match to a SOA");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v6, types: [org.minidns.dnssec.f] */
    /* JADX WARN: Type inference failed for: r2v12, types: [org.minidns.record.i] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [org.minidns.record.i] */
    private Set<e> b0(org.minidns.dnsmessage.a aVar, Record<org.minidns.record.f> record) throws IOException {
        DnsName dnsName;
        c T;
        org.minidns.record.f fVar = record.f92898f;
        HashSet hashSet = new HashSet();
        Set<e> hashSet2 = new HashSet<>();
        if (this.f92751n.containsKey(record.f92893a)) {
            if (fVar.m(this.f92751n.get(record.f92893a))) {
                return hashSet;
            }
            hashSet.add(new e.c(record));
            return hashSet;
        } else if (record.f92893a.isRootLabel()) {
            hashSet.add(new e.f());
            return hashSet;
        } else {
            g gVar = 0;
            gVar = 0;
            c T2 = T(record.f92893a, Record.TYPE.DS);
            if (T2 == null) {
                Logger logger = AbstractDnsClient.f92576h;
                logger.fine("There is no DS record for " + ((Object) record.f92893a) + ", server gives no result");
            } else {
                hashSet.addAll(T2.u());
                Iterator<Record<? extends h>> it = T2.f92670l.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Record g4 = it.next().g(g.class);
                    if (g4 != null) {
                        g gVar2 = (g) g4.f92898f;
                        if (fVar.k() == gVar2.f92941c) {
                            hashSet2 = T2.u();
                            gVar = gVar2;
                            break;
                        }
                    }
                }
                if (gVar == null) {
                    Logger logger2 = AbstractDnsClient.f92576h;
                    logger2.fine("There is no DS record for " + ((Object) record.f92893a) + ", server gives empty result");
                }
            }
            if (gVar == 0 && (dnsName = this.f92753p) != null && !dnsName.isChildOf(record.f92893a) && (T = T(DnsName.from(record.f92893a, this.f92753p), Record.TYPE.DLV)) != null) {
                hashSet.addAll(T.u());
                Iterator<Record<? extends h>> it2 = T.f92670l.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Record g10 = it2.next().g(org.minidns.record.d.class);
                    if (g10 != null && record.f92898f.k() == ((org.minidns.record.d) g10.f92898f).f92941c) {
                        Logger logger3 = AbstractDnsClient.f92576h;
                        logger3.fine("Found DLV for " + ((Object) record.f92893a) + ", awesome.");
                        gVar = (i) g10.f92898f;
                        hashSet2 = T.u();
                        break;
                    }
                }
            }
            if (gVar != 0) {
                e g11 = this.f92750m.g(record, gVar);
                if (g11 != null) {
                    hashSet.add(g11);
                    return hashSet;
                }
                return hashSet2;
            } else if (hashSet.isEmpty()) {
                hashSet.add(new e.i(record.f92893a.ace));
                return hashSet;
            } else {
                return hashSet;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private C0824b c0(org.minidns.dnsmessage.a aVar, Collection<Record<? extends h>> collection, List<Record<? extends h>> list) throws IOException {
        Date date = new Date();
        LinkedList linkedList = new LinkedList();
        C0824b c0824b = new C0824b(this, null);
        ArrayList<Record> arrayList = new ArrayList(list.size());
        for (Record<? extends h> record : list) {
            Record<E> g4 = record.g(r.class);
            if (g4 != 0) {
                r rVar = (r) g4.f92898f;
                if (rVar.f92978h.compareTo(date) >= 0 && rVar.f92979i.compareTo(date) <= 0) {
                    arrayList.add(g4);
                } else {
                    linkedList.add(rVar);
                }
            }
        }
        if (arrayList.isEmpty()) {
            if (!linkedList.isEmpty()) {
                c0824b.f92757c.add(new e.C0825e(aVar, linkedList));
            } else {
                c0824b.f92757c.add(new e.h(aVar));
            }
            return c0824b;
        }
        for (Record record2 : arrayList) {
            r rVar2 = (r) record2.f92898f;
            ArrayList arrayList2 = new ArrayList(collection.size());
            for (Record<? extends h> record3 : collection) {
                if (record3.f92894b == rVar2.f92973c && record3.f92893a.equals(record2.f92893a)) {
                    arrayList2.add(record3);
                }
            }
            c0824b.f92757c.addAll(d0(aVar, rVar2, arrayList2));
            if (aVar.f92704a.equals(rVar2.f92981k) && rVar2.f92973c == Record.TYPE.DNSKEY) {
                Iterator<Record<? extends h>> it = arrayList2.iterator();
                while (it.hasNext()) {
                    it.remove();
                    if (((org.minidns.record.f) it.next().g(org.minidns.record.f.class).f92898f).k() == rVar2.f92980j) {
                        c0824b.f92756b = true;
                    }
                }
                c0824b.f92755a = true;
            }
            if (!Q(record2.f92893a.ace, rVar2.f92981k.ace)) {
                Logger logger = AbstractDnsClient.f92576h;
                logger.finer("Records at " + ((Object) record2.f92893a) + " are cross-signed with a key from " + ((Object) rVar2.f92981k));
            } else {
                list.removeAll(arrayList2);
            }
            list.remove(record2);
        }
        return c0824b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Set<e> d0(org.minidns.dnsmessage.a aVar, r rVar, List<Record<? extends h>> list) throws IOException {
        HashSet hashSet = new HashSet();
        Record.TYPE type = rVar.f92973c;
        Record.TYPE type2 = Record.TYPE.DNSKEY;
        org.minidns.record.f fVar = null;
        if (type == type2) {
            Iterator<Record<? extends h>> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Record<E> g4 = it.next().g(org.minidns.record.f.class);
                if (g4 != 0 && ((org.minidns.record.f) g4.f92898f).k() == rVar.f92980j) {
                    fVar = (org.minidns.record.f) g4.f92898f;
                    break;
                }
            }
        } else if (aVar.f92705b == Record.TYPE.DS && rVar.f92981k.equals(aVar.f92704a)) {
            hashSet.add(new e.i(aVar.f92704a.ace));
            return hashSet;
        } else {
            c T = T(rVar.f92981k, type2);
            if (T != null) {
                hashSet.addAll(T.u());
                for (Record<? extends h> record : T.f92670l) {
                    Record<E> g10 = record.g(org.minidns.record.f.class);
                    if (g10 != 0 && ((org.minidns.record.f) g10.f92898f).k() == rVar.f92980j) {
                        fVar = (org.minidns.record.f) g10.f92898f;
                    }
                }
            } else {
                throw new DnssecValidationFailedException(aVar, "There is no DNSKEY " + ((Object) rVar.f92981k) + ", but it is used");
            }
        }
        if (fVar != null) {
            e f10 = this.f92750m.f(list, rVar, fVar);
            if (f10 != null) {
                hashSet.add(f10);
            }
            return hashSet;
        }
        throw new DnssecValidationFailedException(aVar, list.size() + " " + rVar.f92973c + " record(s) are signed using an unknown key.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.iterative.ReliableDnsClient
    public String I(DnsMessage dnsMessage) {
        return !dnsMessage.p() ? "DNSSEC OK (DO) flag not set in response" : !dnsMessage.f92668j ? "CHECKING DISABLED (CD) flag not set in response" : super.I(dnsMessage);
    }

    public void K(DnsName dnsName, byte[] bArr) {
        this.f92751n.put(dnsName, bArr);
    }

    public void L() {
        this.f92751n.clear();
    }

    public void M(DnsName dnsName) {
        this.f92753p = dnsName;
    }

    public void O() {
        M(null);
    }

    public void P() {
        M(f92749r);
    }

    public boolean R() {
        return this.f92752o;
    }

    public c T(CharSequence charSequence, Record.TYPE type) throws IOException {
        org.minidns.dnsmessage.a aVar = new org.minidns.dnsmessage.a(charSequence, type, Record.CLASS.IN);
        return S(aVar, super.w(aVar));
    }

    public c U(org.minidns.dnsmessage.a aVar) throws IOException {
        return S(aVar, super.w(aVar));
    }

    public void V(DnsName dnsName) {
        this.f92751n.remove(dnsName);
    }

    public void W(boolean z9) {
        this.f92752o = z9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.iterative.ReliableDnsClient, org.minidns.AbstractDnsClient
    public boolean m(org.minidns.dnsmessage.a aVar, DnsMessage dnsMessage) {
        return super.m(aVar, dnsMessage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.iterative.ReliableDnsClient, org.minidns.AbstractDnsClient
    public DnsMessage.b n(DnsMessage.b bVar) {
        bVar.A().j(this.f92582e.d()).h();
        bVar.G(true);
        return super.n(bVar);
    }

    @Override // org.minidns.AbstractDnsClient
    public DnsMessage w(org.minidns.dnsmessage.a aVar) throws IOException {
        return U(aVar);
    }

    public b(org.minidns.a aVar) {
        super(aVar);
        this.f92750m = new f();
        this.f92751n = new ConcurrentHashMap();
        this.f92752o = true;
        K(DnsName.ROOT, f92748q.toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DnssecClient.java */
    /* renamed from: org.minidns.dnssec.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0824b {

        /* renamed from: a  reason: collision with root package name */
        boolean f92755a;

        /* renamed from: b  reason: collision with root package name */
        boolean f92756b;

        /* renamed from: c  reason: collision with root package name */
        Set<e> f92757c;

        private C0824b() {
            this.f92755a = false;
            this.f92756b = false;
            this.f92757c = new HashSet();
        }

        /* synthetic */ C0824b(b bVar, a aVar) {
            this();
        }
    }
}
