package org.minidns.iterative;

import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.mlkit.common.MlKitException;
import com.im.freechat.utils.h;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.logging.Level;
import org.minidns.AbstractDnsClient;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;
import org.minidns.iterative.IterativeClientException;
import org.minidns.record.Record;
import org.minidns.record.l;
import org.minidns.record.s;
import org.minidns.util.MultipleIoException;

/* compiled from: IterativeDnsClient.java */
/* loaded from: classes5.dex */
public class a extends AbstractDnsClient {

    /* renamed from: k  reason: collision with root package name */
    private static final Map<Character, InetAddress> f92866k = new HashMap();

    /* renamed from: l  reason: collision with root package name */
    private static final Map<Character, InetAddress> f92867l = new HashMap();

    /* renamed from: m  reason: collision with root package name */
    protected static final Inet4Address[] f92868m = {Y('a', 198, 41, 0, 4), Y('b', 192, 228, 79, 201), Y('c', 192, 33, 4, 12), Y('d', 199, 7, 91, 13), Y('e', 192, 203, 230, 10), Y('f', 192, 5, 5, 241), Y('g', 192, 112, 36, 4), Y('h', 198, 97, 190, 53), Y('i', 192, 36, 148, 17), Y('j', 192, 58, 128, 30), Y('k', 193, 0, 14, h0.G), Y('l', 199, 7, 83, 42), Y('m', MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, 12, 27, 33)};

    /* renamed from: n  reason: collision with root package name */
    protected static final Inet6Address[] f92869n = {Z('a', 8193, 1283, 47678, 0, 0, 0, 2, 48), Z('b', 8193, h.f43782b, 132, 0, 0, 0, 0, 11), Z('c', 8193, h.f43782b, 2, 0, 0, 0, 0, 12), Z('d', 8193, h.f43782b, 45, 0, 0, 0, 0, 13), Z('f', 8193, h.f43782b, 47, 0, 0, 0, 0, 15), Z('h', 8193, h.f43782b, 1, 0, 0, 0, 0, 83), Z('i', 8193, 2046, 0, 0, 0, 0, 0, 83), Z('j', 8193, 1283, 3111, 0, 0, 0, 2, 48), Z('l', 8193, h.f43782b, 3, 0, 0, 0, 0, 66), Z('m', 8193, 3523, 0, 0, 0, 0, 0, 53)};

    /* renamed from: j  reason: collision with root package name */
    int f92870j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IterativeDnsClient.java */
    /* renamed from: org.minidns.iterative.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class C0828a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f92871a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f92872b;

        static {
            int[] iArr = new int[Record.TYPE.values().length];
            f92872b = iArr;
            try {
                iArr[Record.TYPE.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92872b[Record.TYPE.AAAA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[AbstractDnsClient.IpVersionSetting.values().length];
            f92871a = iArr2;
            try {
                iArr2[AbstractDnsClient.IpVersionSetting.v4only.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92871a[AbstractDnsClient.IpVersionSetting.v6only.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f92871a[AbstractDnsClient.IpVersionSetting.v4v6.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f92871a[AbstractDnsClient.IpVersionSetting.v6v4.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IterativeDnsClient.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final List<InetAddress> f92873a;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IterativeDnsClient.java */
        /* renamed from: org.minidns.iterative.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static class C0829a {

            /* renamed from: a  reason: collision with root package name */
            private final Random f92874a;

            /* renamed from: b  reason: collision with root package name */
            private final List<InetAddress> f92875b;

            /* renamed from: c  reason: collision with root package name */
            private final List<InetAddress> f92876c;

            /* synthetic */ C0829a(Random random, C0828a c0828a) {
                this(random);
            }

            public b c() {
                return new b(this.f92875b, this.f92876c, this.f92874a, null);
            }

            private C0829a(Random random) {
                this.f92875b = new ArrayList(8);
                this.f92876c = new ArrayList(8);
                this.f92874a = random;
            }
        }

        /* synthetic */ b(List list, List list2, Random random, C0828a c0828a) {
            this(list, list2, random);
        }

        private b(List<InetAddress> list, List<InetAddress> list2, Random random) {
            int size;
            int[] iArr = C0828a.f92871a;
            int i4 = iArr[AbstractDnsClient.f92577i.ordinal()];
            if (i4 == 1) {
                size = list.size();
            } else if (i4 != 2) {
                size = list.size() + list2.size();
            } else {
                size = list2.size();
            }
            if (size == 0) {
                this.f92873a = Collections.emptyList();
                return;
            }
            if (AbstractDnsClient.f92577i.f92585v4) {
                Collections.shuffle(list, random);
            }
            if (AbstractDnsClient.f92577i.f92586v6) {
                Collections.shuffle(list2, random);
            }
            ArrayList arrayList = new ArrayList(size);
            int i10 = iArr[AbstractDnsClient.f92577i.ordinal()];
            if (i10 == 1) {
                arrayList.addAll(list);
            } else if (i10 == 2) {
                arrayList.addAll(list2);
            } else if (i10 == 3) {
                arrayList.addAll(list);
                arrayList.addAll(list2);
            } else if (i10 == 4) {
                arrayList.addAll(list2);
                arrayList.addAll(list);
            }
            this.f92873a = Collections.unmodifiableList(arrayList);
        }
    }

    public a() {
        this.f92870j = 128;
    }

    protected static void I(IOException iOException) throws IOException {
        if (iOException instanceof IterativeClientException.LoopDetected) {
            throw iOException;
        }
    }

    private Inet4Address N() {
        Inet4Address[] inet4AddressArr = f92868m;
        return inet4AddressArr[this.f92580c.nextInt(inet4AddressArr.length)];
    }

    private Inet6Address O() {
        Inet6Address[] inet6AddressArr = f92869n;
        return inet6AddressArr[this.f92580c.nextInt(inet6AddressArr.length)];
    }

    public static List<InetAddress> P(char c10) {
        return Q(c10, AbstractDnsClient.f92577i);
    }

    public static List<InetAddress> Q(char c10, AbstractDnsClient.IpVersionSetting ipVersionSetting) {
        InetAddress inetAddress = f92866k.get(Character.valueOf(c10));
        InetAddress inetAddress2 = f92867l.get(Character.valueOf(c10));
        ArrayList arrayList = new ArrayList(2);
        int i4 = C0828a.f92871a[ipVersionSetting.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    if (inetAddress != null) {
                        arrayList.add(inetAddress);
                    }
                    if (inetAddress2 != null) {
                        arrayList.add(inetAddress2);
                    }
                } else if (i4 == 4) {
                    if (inetAddress2 != null) {
                        arrayList.add(inetAddress2);
                    }
                    if (inetAddress != null) {
                        arrayList.add(inetAddress);
                    }
                }
            } else if (inetAddress2 != null) {
                arrayList.add(inetAddress2);
            }
        } else if (inetAddress != null) {
            arrayList.add(inetAddress);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0055 A[EDGE_INSN: B:27:0x0055->B:22:0x0055 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.net.InetAddress[] R(java.util.Collection<? extends org.minidns.record.j> r5, java.util.Collection<? extends org.minidns.record.j> r6) {
        /*
            r0 = 2
            java.net.InetAddress[] r0 = new java.net.InetAddress[r0]
            java.util.Iterator r5 = r5.iterator()
        L7:
            boolean r1 = r5.hasNext()
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            java.lang.Object r1 = r5.next()
            org.minidns.record.j r1 = (org.minidns.record.j) r1
            r4 = r0[r3]
            if (r4 != 0) goto L26
            java.net.InetAddress r4 = r1.g()
            r0[r3] = r4
            boolean r4 = r6.isEmpty()
            if (r4 == 0) goto L26
            goto L7
        L26:
            r5 = r0[r2]
            if (r5 != 0) goto L30
            java.net.InetAddress r5 = r1.g()
            r0[r2] = r5
        L30:
            java.util.Iterator r5 = r6.iterator()
        L34:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L55
            java.lang.Object r6 = r5.next()
            org.minidns.record.j r6 = (org.minidns.record.j) r6
            r1 = r0[r3]
            if (r1 != 0) goto L4b
            java.net.InetAddress r6 = r6.g()
            r0[r3] = r6
            goto L34
        L4b:
            r5 = r0[r2]
            if (r5 != 0) goto L55
            java.net.InetAddress r5 = r6.g()
            r0[r2] = r5
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.iterative.a.R(java.util.Collection, java.util.Collection):java.net.InetAddress[]");
    }

    private static InetAddress S(String str, org.minidns.record.a aVar) {
        try {
            return InetAddress.getByAddress(str, aVar.h());
        } catch (UnknownHostException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static InetAddress T(String str, org.minidns.record.b bVar) {
        try {
            return InetAddress.getByAddress(str, bVar.h());
        } catch (UnknownHostException e4) {
            throw new RuntimeException(e4);
        }
    }

    private b.C0829a U() {
        return new b.C0829a(this.f92580c, null);
    }

    private DnsMessage V(org.minidns.iterative.b bVar, DnsMessage dnsMessage) throws IOException {
        InetAddress inetAddress;
        InetAddress g4;
        DnsName parent = dnsMessage.o().f92704a.getParent();
        int i4 = C0828a.f92871a[this.f92583f.ordinal()];
        if (i4 == 1) {
            inetAddress = null;
            for (org.minidns.record.a aVar : e(parent)) {
                if (inetAddress == null) {
                    inetAddress = aVar.g();
                } else {
                    g4 = aVar.g();
                    break;
                }
            }
            g4 = null;
        } else if (i4 == 2) {
            inetAddress = null;
            for (org.minidns.record.b bVar2 : g(parent)) {
                if (inetAddress == null) {
                    inetAddress = bVar2.g();
                } else {
                    g4 = bVar2.g();
                    break;
                }
            }
            g4 = null;
        } else if (i4 == 3) {
            InetAddress[] R = R(e(parent), g(parent));
            inetAddress = R[0];
            g4 = R[1];
        } else if (i4 == 4) {
            InetAddress[] R2 = R(g(parent), e(parent));
            inetAddress = R2[0];
            g4 = R2[1];
        } else {
            throw new AssertionError();
        }
        if (inetAddress == null) {
            parent = DnsName.ROOT;
            int i10 = C0828a.f92871a[this.f92583f.ordinal()];
            if (i10 == 1) {
                inetAddress = N();
            } else if (i10 == 2) {
                inetAddress = O();
            } else if (i10 == 3) {
                inetAddress = N();
                g4 = O();
            } else if (i10 == 4) {
                inetAddress = O();
                g4 = N();
            }
        }
        LinkedList linkedList = new LinkedList();
        try {
            return W(bVar, dnsMessage, inetAddress, parent);
        } catch (IOException e4) {
            I(e4);
            linkedList.add(e4);
            if (g4 != null) {
                try {
                    return W(bVar, dnsMessage, g4, parent);
                } catch (IOException e10) {
                    linkedList.add(e10);
                    MultipleIoException.throwIfRequired(linkedList);
                    return null;
                }
            }
            MultipleIoException.throwIfRequired(linkedList);
            return null;
        }
    }

    private DnsMessage W(org.minidns.iterative.b bVar, DnsMessage dnsMessage, InetAddress inetAddress, DnsName dnsName) throws IOException {
        b bVar2;
        Record.TYPE type;
        bVar.b(inetAddress, dnsMessage);
        DnsMessage u9 = u(dnsMessage, inetAddress);
        if (u9 == null) {
            return null;
        }
        if (u9.f92663e) {
            return u9;
        }
        org.minidns.a aVar = this.f92581d;
        if (aVar != null) {
            aVar.c(dnsMessage, u9, dnsName);
        }
        List<Record<? extends org.minidns.record.h>> h4 = u9.h();
        LinkedList linkedList = new LinkedList();
        Iterator<Record<? extends org.minidns.record.h>> it = h4.iterator();
        while (it.hasNext()) {
            Record<? extends org.minidns.record.h> next = it.next();
            if (next.f92894b != Record.TYPE.NS) {
                it.remove();
            } else {
                Iterator<InetAddress> it2 = a0(u9, ((l) next.f92898f).f92983c).f92873a.iterator();
                while (it2.hasNext()) {
                    try {
                        return W(bVar, dnsMessage, it2.next(), next.f92893a);
                    } catch (IOException e4) {
                        I(e4);
                        AbstractDnsClient.f92576h.log(Level.FINER, "Exception while recursing", (Throwable) e4);
                        bVar.a();
                        linkedList.add(e4);
                        if (!it2.hasNext()) {
                            it.remove();
                        }
                    }
                }
                continue;
            }
        }
        for (Record<? extends org.minidns.record.h> record : h4) {
            org.minidns.dnsmessage.a o9 = dnsMessage.o();
            DnsName dnsName2 = ((l) record.f92898f).f92983c;
            if (!o9.f92704a.equals(dnsName2) || ((type = o9.f92705b) != Record.TYPE.A && type != Record.TYPE.AAAA)) {
                try {
                    bVar2 = X(bVar, dnsName2);
                } catch (IOException e10) {
                    bVar.a();
                    linkedList.add(e10);
                    bVar2 = null;
                }
                if (bVar2 == null) {
                    continue;
                } else {
                    for (InetAddress inetAddress2 : bVar2.f92873a) {
                        try {
                            return W(bVar, dnsMessage, inetAddress2, record.f92893a);
                        } catch (IOException e11) {
                            bVar.a();
                            linkedList.add(e11);
                        }
                    }
                    continue;
                }
            }
        }
        MultipleIoException.throwIfRequired(linkedList);
        return null;
    }

    private b X(org.minidns.iterative.b bVar, DnsName dnsName) throws IOException {
        b.C0829a U = U();
        if (this.f92583f.f92585v4) {
            org.minidns.dnsmessage.a aVar = new org.minidns.dnsmessage.a(dnsName, Record.TYPE.A);
            DnsMessage V = V(bVar, l(aVar));
            if (V != null) {
                for (Record<? extends org.minidns.record.h> record : V.f92670l) {
                    if (record.h(aVar)) {
                        U.f92875b.add(S(dnsName.ace, (org.minidns.record.a) record.f92898f));
                    } else if (record.f92894b == Record.TYPE.CNAME && record.f92893a.equals(dnsName)) {
                        return X(bVar, ((s) record.f92898f).f92983c);
                    }
                }
            }
        }
        if (this.f92583f.f92586v6) {
            org.minidns.dnsmessage.a aVar2 = new org.minidns.dnsmessage.a(dnsName, Record.TYPE.AAAA);
            DnsMessage V2 = V(bVar, l(aVar2));
            if (V2 != null) {
                for (Record<? extends org.minidns.record.h> record2 : V2.f92670l) {
                    if (record2.h(aVar2)) {
                        U.f92876c.add(T(dnsName.ace, (org.minidns.record.b) record2.f92898f));
                    } else if (record2.f92894b == Record.TYPE.CNAME && record2.f92893a.equals(dnsName)) {
                        return X(bVar, ((s) record2.f92898f).f92983c);
                    }
                }
            }
        }
        return U.c();
    }

    private static Inet4Address Y(char c10, int i4, int i10, int i11, int i12) {
        try {
            Inet4Address inet4Address = (Inet4Address) InetAddress.getByAddress(c10 + ".root-servers.net", new byte[]{(byte) i4, (byte) i10, (byte) i11, (byte) i12});
            f92866k.put(Character.valueOf(c10), inet4Address);
            return inet4Address;
        } catch (UnknownHostException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static Inet6Address Z(char c10, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        try {
            Inet6Address inet6Address = (Inet6Address) InetAddress.getByAddress(c10 + ".root-servers.net", new byte[]{(byte) (i4 >> 8), (byte) i4, (byte) (i10 >> 8), (byte) i10, (byte) (i11 >> 8), (byte) i11, (byte) (i12 >> 8), (byte) i12, (byte) (i13 >> 8), (byte) i13, (byte) (i14 >> 8), (byte) i14, (byte) (i15 >> 8), (byte) i15, (byte) (i16 >> 8), (byte) i16});
            f92867l.put(Character.valueOf(c10), inet6Address);
            return inet6Address;
        } catch (UnknownHostException e4) {
            throw new RuntimeException(e4);
        }
    }

    private b a0(DnsMessage dnsMessage, DnsName dnsName) {
        b.C0829a U = U();
        for (Record<? extends org.minidns.record.h> record : dnsMessage.f92672n) {
            if (record.f92893a.equals(dnsName)) {
                int i4 = C0828a.f92872b[record.f92894b.ordinal()];
                if (i4 == 1) {
                    U.f92875b.add(S(dnsName.ace, (org.minidns.record.a) record.f92898f));
                } else if (i4 == 2) {
                    U.f92876c.add(T(dnsName.ace, (org.minidns.record.b) record.f92898f));
                }
            }
        }
        return U.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.AbstractDnsClient
    public boolean m(org.minidns.dnsmessage.a aVar, DnsMessage dnsMessage) {
        return dnsMessage.f92663e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.AbstractDnsClient
    public DnsMessage.b n(DnsMessage.b bVar) {
        bVar.P(false);
        bVar.A().j(this.f92582e.d());
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.AbstractDnsClient
    public DnsMessage t(DnsMessage.b bVar) throws IOException {
        return V(new org.minidns.iterative.b(this), bVar.w());
    }

    public a(org.minidns.a aVar) {
        super(aVar);
        this.f92870j = 128;
    }
}
