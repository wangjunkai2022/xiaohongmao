package org.minidns.record;

import androidx.recyclerview.widget.ItemTouchHelper;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;
import org.minidns.record.h;

/* loaded from: classes5.dex */
public final class Record<D extends h> {

    /* renamed from: a  reason: collision with root package name */
    public final DnsName f92893a;

    /* renamed from: b  reason: collision with root package name */
    public final TYPE f92894b;

    /* renamed from: c  reason: collision with root package name */
    public final CLASS f92895c;

    /* renamed from: d  reason: collision with root package name */
    public final int f92896d;

    /* renamed from: e  reason: collision with root package name */
    public final long f92897e;

    /* renamed from: f  reason: collision with root package name */
    public final D f92898f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f92899g;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f92900h;

    /* renamed from: i  reason: collision with root package name */
    private transient Integer f92901i;

    /* loaded from: classes5.dex */
    public enum CLASS {
        IN(1),
        CH(3),
        HS(4),
        NONE(254),
        ANY(255);
        

        /* renamed from: b  reason: collision with root package name */
        private static final HashMap<Integer, CLASS> f92902b = new HashMap<>();

        /* renamed from: a  reason: collision with root package name */
        private final int f92904a;

        static {
            CLASS[] values;
            for (CLASS r32 : values()) {
                f92902b.put(Integer.valueOf(r32.getValue()), r32);
            }
        }

        CLASS(int i4) {
            this.f92904a = i4;
        }

        public static CLASS getClass(int i4) {
            return f92902b.get(Integer.valueOf(i4));
        }

        public int getValue() {
            return this.f92904a;
        }
    }

    /* loaded from: classes5.dex */
    public enum TYPE {
        UNKNOWN(-1),
        A(1, org.minidns.record.a.class),
        NS(2, l.class),
        MD(3),
        MF(4),
        CNAME(5, c.class),
        SOA(6, t.class),
        MB(7),
        MG(8),
        MR(9),
        NULL(10),
        WKS(11),
        PTR(12, q.class),
        HINFO(13),
        MINFO(14),
        MX(15, k.class),
        TXT(16, v.class),
        RP(17),
        AFSDB(18),
        X25(19),
        ISDN(20),
        RT(21),
        NSAP(22),
        NSAP_PTR(23),
        SIG(24),
        KEY(25),
        PX(26),
        GPOS(27),
        AAAA(28, b.class),
        LOC(29),
        NXT(30),
        EID(31),
        NIMLOC(32),
        SRV(33, u.class),
        ATMA(34),
        NAPTR(35),
        KX(36),
        CERT(37),
        A6(38),
        DNAME(39, e.class),
        SINK(40),
        OPT(41, p.class),
        APL(42),
        DS(43, g.class),
        SSHFP(44),
        IPSECKEY(45),
        RRSIG(46, r.class),
        NSEC(47, n.class),
        DNSKEY(48, f.class),
        DHCID(49),
        NSEC3(50, NSEC3.class),
        NSEC3PARAM(51, m.class),
        TLSA(52, TLSA.class),
        HIP(55),
        NINFO(56),
        RKEY(57),
        TALINK(58),
        CDS(59),
        CDNSKEY(60),
        OPENPGPKEY(61, o.class),
        CSYNC(62),
        SPF(99),
        UINFO(100),
        UID(101),
        GID(102),
        UNSPEC(103),
        NID(104),
        L32(105),
        L64(106),
        LP(107),
        EUI48(108),
        EUI64(109),
        TKEY(249),
        TSIG(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION),
        IXFR(251),
        AXFR(252),
        MAILB(253),
        MAILA(254),
        ANY(255),
        URI(256),
        CAA(257),
        TA(32768),
        DLV(32769, d.class);
        

        /* renamed from: c  reason: collision with root package name */
        private static final Map<Integer, TYPE> f92905c = new HashMap();

        /* renamed from: d  reason: collision with root package name */
        private static final Map<Class<?>, TYPE> f92906d = new HashMap();

        /* renamed from: a  reason: collision with root package name */
        private final int f92908a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f92909b;

        static {
            TYPE[] values;
            for (TYPE type : values()) {
                f92905c.put(Integer.valueOf(type.getValue()), type);
                Class<?> cls = type.f92909b;
                if (cls != null) {
                    f92906d.put(cls, type);
                }
            }
        }

        TYPE(int i4) {
            this(i4, null);
        }

        public static TYPE getType(int i4) {
            TYPE type = f92905c.get(Integer.valueOf(i4));
            return type == null ? UNKNOWN : type;
        }

        public <D extends h> Class<D> getDataClass() {
            return (Class<D>) this.f92909b;
        }

        public int getValue() {
            return this.f92908a;
        }

        TYPE(int i4, Class cls) {
            this.f92908a = i4;
            this.f92909b = cls;
        }

        public static <D extends h> TYPE getType(Class<D> cls) {
            return f92906d.get(cls);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f92910a;

        static {
            int[] iArr = new int[TYPE.values().length];
            f92910a = iArr;
            try {
                iArr[TYPE.SOA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92910a[TYPE.SRV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92910a[TYPE.MX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92910a[TYPE.AAAA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f92910a[TYPE.A.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f92910a[TYPE.NS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f92910a[TYPE.CNAME.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f92910a[TYPE.DNAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f92910a[TYPE.PTR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f92910a[TYPE.TXT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f92910a[TYPE.OPT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f92910a[TYPE.DNSKEY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f92910a[TYPE.RRSIG.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f92910a[TYPE.DS.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f92910a[TYPE.NSEC.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f92910a[TYPE.NSEC3.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f92910a[TYPE.NSEC3PARAM.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f92910a[TYPE.TLSA.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f92910a[TYPE.OPENPGPKEY.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f92910a[TYPE.DLV.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f92910a[TYPE.UNKNOWN.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    public Record(DnsName dnsName, TYPE type, CLASS r13, long j4, D d4, boolean z9) {
        this(dnsName, type, r13, r13.getValue() + (z9 ? 32768 : 0), j4, d4, z9);
    }

    public static <E extends h> List<Record<E>> a(Class<E> cls, Collection<Record<? extends h>> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        b(arrayList, cls, collection);
        return arrayList;
    }

    public static <E extends h> void b(Collection<Record<E>> collection, Class<E> cls, Collection<Record<? extends h>> collection2) {
        for (Record<? extends h> record : collection2) {
            Record<E> g4 = record.g(cls);
            if (g4 != null) {
                collection.add(g4);
            }
        }
    }

    public static Record<h> j(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        h g4;
        DnsName parse = DnsName.parse(dataInputStream, bArr);
        TYPE type = TYPE.getType(dataInputStream.readUnsignedShort());
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        CLASS r32 = CLASS.getClass(readUnsignedShort & 32767);
        boolean z9 = (32768 & readUnsignedShort) > 0;
        long readUnsignedShort2 = (dataInputStream.readUnsignedShort() << 16) + dataInputStream.readUnsignedShort();
        int readUnsignedShort3 = dataInputStream.readUnsignedShort();
        switch (a.f92910a[type.ordinal()]) {
            case 1:
                g4 = t.g(dataInputStream, bArr);
                break;
            case 2:
                g4 = u.h(dataInputStream, bArr);
                break;
            case 3:
                g4 = k.g(dataInputStream, bArr);
                break;
            case 4:
                g4 = b.i(dataInputStream);
                break;
            case 5:
                g4 = org.minidns.record.a.i(dataInputStream);
                break;
            case 6:
                g4 = l.h(dataInputStream, bArr);
                break;
            case 7:
                g4 = c.h(dataInputStream, bArr);
                break;
            case 8:
                g4 = e.h(dataInputStream, bArr);
                break;
            case 9:
                g4 = q.h(dataInputStream, bArr);
                break;
            case 10:
                g4 = v.k(dataInputStream, readUnsignedShort3);
                break;
            case 11:
                g4 = p.g(dataInputStream, readUnsignedShort3);
                break;
            case 12:
                g4 = f.n(dataInputStream, readUnsignedShort3);
                break;
            case 13:
                g4 = r.g(dataInputStream, bArr, readUnsignedShort3);
                break;
            case 14:
                g4 = g.l(dataInputStream, readUnsignedShort3);
                break;
            case 15:
                g4 = n.h(dataInputStream, bArr, readUnsignedShort3);
                break;
            case 16:
                g4 = NSEC3.h(dataInputStream, readUnsignedShort3);
                break;
            case 17:
                g4 = m.h(dataInputStream);
                break;
            case 18:
                g4 = TLSA.m(dataInputStream, readUnsignedShort3);
                break;
            case 19:
                g4 = o.i(dataInputStream, readUnsignedShort3);
                break;
            case 20:
                g4 = d.l(dataInputStream, readUnsignedShort3);
                break;
            default:
                g4 = w.g(dataInputStream, readUnsignedShort3, type);
                break;
        }
        return new Record<>(parse, type, r32, readUnsignedShort, readUnsignedShort2, g4, z9);
    }

    public D c() {
        return this.f92898f;
    }

    public org.minidns.dnsmessage.a d() {
        int i4 = a.f92910a[this.f92894b.ordinal()];
        if (i4 != 11) {
            if (i4 != 13) {
                return new org.minidns.dnsmessage.a(this.f92893a, this.f92894b, this.f92895c);
            }
            return new org.minidns.dnsmessage.a(this.f92893a, ((r) this.f92898f).f92973c, this.f92895c);
        }
        return null;
    }

    public DnsMessage.b e() {
        org.minidns.dnsmessage.a d4 = d();
        if (d4 == null) {
            return null;
        }
        return d4.a();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Record) {
            if (obj == this) {
                return true;
            }
            Record record = (Record) obj;
            return this.f92893a.equals(record.f92893a) && this.f92894b == record.f92894b && this.f92895c == record.f92895c && this.f92898f.equals(record.f92898f);
        }
        return false;
    }

    public long f() {
        return this.f92897e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends h> Record<E> g(Class<E> cls) {
        if (this.f92894b.f92909b == cls) {
            return this;
        }
        return null;
    }

    public boolean h(org.minidns.dnsmessage.a aVar) {
        CLASS r02;
        TYPE type = aVar.f92705b;
        return (type == this.f92894b || type == TYPE.ANY) && ((r02 = aVar.f92706c) == this.f92895c || r02 == CLASS.ANY) && aVar.f92704a.equals(this.f92893a);
    }

    public int hashCode() {
        if (this.f92901i == null) {
            this.f92901i = Integer.valueOf(((((((this.f92893a.hashCode() + 37) * 37) + this.f92894b.hashCode()) * 37) + this.f92895c.hashCode()) * 37) + this.f92898f.hashCode());
        }
        return this.f92901i.intValue();
    }

    public boolean i() {
        return this.f92899g;
    }

    public byte[] k() {
        if (this.f92900h == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(this.f92893a.size() + 8 + this.f92898f.b());
            try {
                l(new DataOutputStream(byteArrayOutputStream));
                this.f92900h = byteArrayOutputStream.toByteArray();
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }
        return (byte[]) this.f92900h.clone();
    }

    public void l(DataOutputStream dataOutputStream) throws IOException {
        if (this.f92898f != null) {
            this.f92893a.writeToStream(dataOutputStream);
            dataOutputStream.writeShort(this.f92894b.getValue());
            dataOutputStream.writeShort(this.f92896d);
            dataOutputStream.writeInt((int) this.f92897e);
            dataOutputStream.writeShort(this.f92898f.b());
            this.f92898f.f(dataOutputStream);
            return;
        }
        throw new IllegalStateException("Empty Record has no byte representation");
    }

    public String toString() {
        return this.f92893a.getRawAce() + ".\t" + this.f92897e + '\t' + this.f92895c + '\t' + this.f92894b + '\t' + this.f92898f;
    }

    public Record(String str, TYPE type, CLASS r11, long j4, D d4, boolean z9) {
        this(DnsName.from(str), type, r11, j4, d4, z9);
    }

    public Record(String str, TYPE type, int i4, long j4, D d4) {
        this(DnsName.from(str), type, CLASS.NONE, i4, j4, d4, false);
    }

    public Record(DnsName dnsName, TYPE type, int i4, long j4, D d4) {
        this(dnsName, type, CLASS.NONE, i4, j4, d4, false);
    }

    private Record(DnsName dnsName, TYPE type, CLASS r32, int i4, long j4, D d4, boolean z9) {
        this.f92893a = dnsName;
        this.f92894b = type;
        this.f92895c = r32;
        this.f92896d = i4;
        this.f92897e = j4;
        this.f92898f = d4;
        this.f92899g = z9;
    }
}
