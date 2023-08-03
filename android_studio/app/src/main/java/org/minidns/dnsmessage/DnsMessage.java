package org.minidns.dnsmessage;

import com.google.common.base.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.minidns.edns.Edns;
import org.minidns.record.Record;
import org.minidns.record.h;
import org.minidns.record.p;

/* loaded from: classes5.dex */
public class DnsMessage {

    /* renamed from: w  reason: collision with root package name */
    private static final Logger f92658w = Logger.getLogger(DnsMessage.class.getName());

    /* renamed from: a  reason: collision with root package name */
    public final int f92659a;

    /* renamed from: b  reason: collision with root package name */
    public final OPCODE f92660b;

    /* renamed from: c  reason: collision with root package name */
    public final RESPONSE_CODE f92661c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f92662d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f92663e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f92664f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f92665g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f92666h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f92667i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f92668j;

    /* renamed from: k  reason: collision with root package name */
    public final List<org.minidns.dnsmessage.a> f92669k;

    /* renamed from: l  reason: collision with root package name */
    public final List<Record<? extends h>> f92670l;

    /* renamed from: m  reason: collision with root package name */
    public final List<Record<? extends h>> f92671m;

    /* renamed from: n  reason: collision with root package name */
    public final List<Record<? extends h>> f92672n;

    /* renamed from: o  reason: collision with root package name */
    public final int f92673o;

    /* renamed from: p  reason: collision with root package name */
    private Edns f92674p;

    /* renamed from: q  reason: collision with root package name */
    public final long f92675q;

    /* renamed from: r  reason: collision with root package name */
    private byte[] f92676r;

    /* renamed from: s  reason: collision with root package name */
    private String f92677s;

    /* renamed from: t  reason: collision with root package name */
    private String f92678t;

    /* renamed from: u  reason: collision with root package name */
    private DnsMessage f92679u;

    /* renamed from: v  reason: collision with root package name */
    private transient Integer f92680v;

    /* loaded from: classes5.dex */
    public enum OPCODE {
        QUERY,
        INVERSE_QUERY,
        STATUS,
        UNASSIGNED3,
        NOTIFY,
        UPDATE;
        

        /* renamed from: b  reason: collision with root package name */
        private static final OPCODE[] f92681b = new OPCODE[values().length];

        /* renamed from: a  reason: collision with root package name */
        private final byte f92683a = (byte) ordinal();

        static {
            OPCODE[] values;
            for (OPCODE opcode : values()) {
                OPCODE[] opcodeArr = f92681b;
                if (opcodeArr[opcode.getValue()] == null) {
                    opcodeArr[opcode.getValue()] = opcode;
                } else {
                    throw new IllegalStateException();
                }
            }
        }

        OPCODE() {
        }

        public static OPCODE getOpcode(int i4) throws IllegalArgumentException {
            if (i4 >= 0 && i4 <= 15) {
                OPCODE[] opcodeArr = f92681b;
                if (i4 >= opcodeArr.length) {
                    return null;
                }
                return opcodeArr[i4];
            }
            throw new IllegalArgumentException();
        }

        public byte getValue() {
            return this.f92683a;
        }
    }

    /* loaded from: classes5.dex */
    public enum RESPONSE_CODE {
        NO_ERROR(0),
        FORMAT_ERR(1),
        SERVER_FAIL(2),
        NX_DOMAIN(3),
        NO_IMP(4),
        REFUSED(5),
        YXDOMAIN(6),
        YXRRSET(7),
        NXRRSET(8),
        NOT_AUTH(9),
        NOT_ZONE(10),
        BADVERS_BADSIG(16),
        BADKEY(17),
        BADTIME(18),
        BADMODE(19),
        BADNAME(20),
        BADALG(21),
        BADTRUNC(22),
        BADCOOKIE(23);
        

        /* renamed from: b  reason: collision with root package name */
        private static final Map<Integer, RESPONSE_CODE> f92684b = new HashMap(values().length);

        /* renamed from: a  reason: collision with root package name */
        private final byte f92686a;

        static {
            RESPONSE_CODE[] values;
            for (RESPONSE_CODE response_code : values()) {
                f92684b.put(Integer.valueOf(response_code.f92686a), response_code);
            }
        }

        RESPONSE_CODE(int i4) {
            this.f92686a = (byte) i4;
        }

        public static RESPONSE_CODE getResponseCode(int i4) throws IllegalArgumentException {
            if (i4 >= 0 && i4 <= 65535) {
                return f92684b.get(Integer.valueOf(i4));
            }
            throw new IllegalArgumentException();
        }

        public byte getValue() {
            return this.f92686a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DnsMessage(b bVar) {
        this.f92659a = bVar.f92687a;
        this.f92660b = bVar.f92688b;
        this.f92661c = bVar.f92689c;
        this.f92675q = bVar.f92697k;
        this.f92662d = bVar.f92690d;
        this.f92663e = bVar.f92691e;
        this.f92664f = bVar.f92692f;
        this.f92665g = bVar.f92693g;
        this.f92666h = bVar.f92694h;
        this.f92667i = bVar.f92695i;
        this.f92668j = bVar.f92696j;
        if (bVar.f92698l == null) {
            this.f92669k = Collections.emptyList();
        } else {
            ArrayList arrayList = new ArrayList(bVar.f92698l.size());
            arrayList.addAll(bVar.f92698l);
            this.f92669k = Collections.unmodifiableList(arrayList);
        }
        if (bVar.f92699m == null) {
            this.f92670l = Collections.emptyList();
        } else {
            ArrayList arrayList2 = new ArrayList(bVar.f92699m.size());
            arrayList2.addAll(bVar.f92699m);
            this.f92670l = Collections.unmodifiableList(arrayList2);
        }
        if (bVar.f92700n == null) {
            this.f92671m = Collections.emptyList();
        } else {
            ArrayList arrayList3 = new ArrayList(bVar.f92700n.size());
            arrayList3.addAll(bVar.f92700n);
            this.f92671m = Collections.unmodifiableList(arrayList3);
        }
        if (bVar.f92701o == null && bVar.f92702p == null) {
            this.f92672n = Collections.emptyList();
        } else {
            int size = bVar.f92701o != null ? 0 + bVar.f92701o.size() : 0;
            ArrayList arrayList4 = new ArrayList(bVar.f92702p != null ? size + 1 : size);
            if (bVar.f92701o != null) {
                arrayList4.addAll(bVar.f92701o);
            }
            if (bVar.f92702p != null) {
                Edns g4 = bVar.f92702p.g();
                this.f92674p = g4;
                arrayList4.add(g4.a());
            }
            this.f92672n = Collections.unmodifiableList(arrayList4);
        }
        int n9 = n(this.f92672n);
        this.f92673o = n9;
        if (n9 != -1) {
            do {
                n9++;
                if (n9 >= this.f92672n.size()) {
                    return;
                }
            } while (this.f92672n.get(n9).f92894b != Record.TYPE.OPT);
            throw new IllegalArgumentException("There must be only one OPT pseudo RR in the additional section");
        }
    }

    public static b e() {
        return new b();
    }

    private static int n(List<Record<? extends h>> list) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            if (list.get(i4).f92894b == Record.TYPE.OPT) {
                return i4;
            }
        }
        return -1;
    }

    private byte[] q() {
        byte[] bArr = this.f92676r;
        if (bArr != null) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        int f10 = f();
        try {
            dataOutputStream.writeShort((short) this.f92659a);
            dataOutputStream.writeShort((short) f10);
            List<org.minidns.dnsmessage.a> list = this.f92669k;
            if (list == null) {
                dataOutputStream.writeShort(0);
            } else {
                dataOutputStream.writeShort((short) list.size());
            }
            List<Record<? extends h>> list2 = this.f92670l;
            if (list2 == null) {
                dataOutputStream.writeShort(0);
            } else {
                dataOutputStream.writeShort((short) list2.size());
            }
            List<Record<? extends h>> list3 = this.f92671m;
            if (list3 == null) {
                dataOutputStream.writeShort(0);
            } else {
                dataOutputStream.writeShort((short) list3.size());
            }
            List<Record<? extends h>> list4 = this.f92672n;
            if (list4 == null) {
                dataOutputStream.writeShort(0);
            } else {
                dataOutputStream.writeShort((short) list4.size());
            }
            List<org.minidns.dnsmessage.a> list5 = this.f92669k;
            if (list5 != null) {
                for (org.minidns.dnsmessage.a aVar : list5) {
                    dataOutputStream.write(aVar.c());
                }
            }
            List<Record<? extends h>> list6 = this.f92670l;
            if (list6 != null) {
                for (Record<? extends h> record : list6) {
                    dataOutputStream.write(record.k());
                }
            }
            List<Record<? extends h>> list7 = this.f92671m;
            if (list7 != null) {
                for (Record<? extends h> record2 : list7) {
                    dataOutputStream.write(record2.k());
                }
            }
            List<Record<? extends h>> list8 = this.f92672n;
            if (list8 != null) {
                for (Record<? extends h> record3 : list8) {
                    dataOutputStream.write(record3.k());
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            this.f92676r = byteArray;
            return byteArray;
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    public b a() {
        return new b();
    }

    public DatagramPacket b(InetAddress inetAddress, int i4) {
        byte[] q9 = q();
        return new DatagramPacket(q9, q9.length, inetAddress, i4);
    }

    public DnsMessage c() {
        if (this.f92679u == null) {
            this.f92679u = new DnsMessage(this);
        }
        return this.f92679u;
    }

    public String d() {
        String str = this.f92678t;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(";; ->>HEADER<<-");
        sb.append(" opcode: ");
        sb.append(this.f92660b);
        sb.append(", status: ");
        sb.append(this.f92661c);
        sb.append(", id: ");
        sb.append(this.f92659a);
        sb.append("\n");
        sb.append(";; flags:");
        if (!this.f92662d) {
            sb.append(" qr");
        }
        if (this.f92663e) {
            sb.append(" aa");
        }
        if (this.f92664f) {
            sb.append(" tr");
        }
        if (this.f92665g) {
            sb.append(" rd");
        }
        if (this.f92666h) {
            sb.append(" ra");
        }
        if (this.f92667i) {
            sb.append(" ad");
        }
        if (this.f92668j) {
            sb.append(" cd");
        }
        sb.append("; QUERY: ");
        sb.append(this.f92669k.size());
        sb.append(", ANSWER: ");
        sb.append(this.f92670l.size());
        sb.append(", AUTHORITY: ");
        sb.append(this.f92671m.size());
        sb.append(", ADDITIONAL: ");
        sb.append(this.f92672n.size());
        sb.append("\n\n");
        Iterator<Record<? extends h>> it = this.f92672n.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Edns d4 = Edns.d(it.next());
            if (d4 != null) {
                sb.append(";; OPT PSEUDOSECTION:\n; ");
                sb.append(d4.b());
                break;
            }
        }
        if (this.f92669k.size() != 0) {
            sb.append(";; QUESTION SECTION:\n");
            for (org.minidns.dnsmessage.a aVar : this.f92669k) {
                sb.append(';');
                sb.append(aVar.toString());
                sb.append('\n');
            }
        }
        if (this.f92671m.size() != 0) {
            sb.append("\n;; AUTHORITY SECTION:\n");
            for (Record<? extends h> record : this.f92671m) {
                sb.append(record.toString());
                sb.append('\n');
            }
        }
        if (this.f92670l.size() != 0) {
            sb.append("\n;; ANSWER SECTION:\n");
            for (Record<? extends h> record2 : this.f92670l) {
                sb.append(record2.toString());
                sb.append('\n');
            }
        }
        if (this.f92672n.size() != 0) {
            boolean z9 = false;
            for (Record<? extends h> record3 : this.f92672n) {
                if (record3.f92894b != Record.TYPE.OPT) {
                    if (!z9) {
                        z9 = true;
                        sb.append("\n;; ADDITIONAL SECTION:\n");
                    }
                    sb.append(record3.toString());
                    sb.append('\n');
                }
            }
        }
        if (this.f92675q > 0) {
            sb.append("\n;; WHEN: ");
            sb.append(new Date(this.f92675q).toString());
        }
        String sb2 = sb.toString();
        this.f92678t = sb2;
        return sb2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DnsMessage) {
            if (obj == this) {
                return true;
            }
            return Arrays.equals(q(), ((DnsMessage) obj).q());
        }
        return false;
    }

    int f() {
        int i4 = this.f92662d ? 32768 : 0;
        OPCODE opcode = this.f92660b;
        if (opcode != null) {
            i4 += opcode.getValue() << c.f32106m;
        }
        if (this.f92663e) {
            i4 += 1024;
        }
        if (this.f92664f) {
            i4 += 512;
        }
        if (this.f92665g) {
            i4 += 256;
        }
        if (this.f92666h) {
            i4 += 128;
        }
        if (this.f92667i) {
            i4 += 32;
        }
        if (this.f92668j) {
            i4 += 16;
        }
        RESPONSE_CODE response_code = this.f92661c;
        return response_code != null ? i4 + response_code.getValue() : i4;
    }

    public List<Record<? extends h>> g() {
        ArrayList arrayList = new ArrayList(this.f92670l.size());
        arrayList.addAll(this.f92670l);
        return arrayList;
    }

    public List<Record<? extends h>> h() {
        ArrayList arrayList = new ArrayList(this.f92671m.size());
        arrayList.addAll(this.f92671m);
        return arrayList;
    }

    public int hashCode() {
        if (this.f92680v == null) {
            this.f92680v = Integer.valueOf(Arrays.hashCode(q()));
        }
        return this.f92680v.intValue();
    }

    public List<org.minidns.dnsmessage.a> i() {
        ArrayList arrayList = new ArrayList(this.f92669k.size());
        arrayList.addAll(this.f92669k);
        return arrayList;
    }

    public <D extends h> Set<D> j(org.minidns.dnsmessage.a aVar) {
        if (this.f92661c != RESPONSE_CODE.NO_ERROR) {
            return null;
        }
        HashSet hashSet = new HashSet(this.f92670l.size());
        for (Record<? extends h> record : this.f92670l) {
            if (record.h(aVar) && !hashSet.add(record.c())) {
                Logger logger = f92658w;
                Level level = Level.WARNING;
                logger.log(level, "DnsMessage contains duplicate answers. Record: " + record + "; DnsMessage: " + this);
            }
        }
        return hashSet;
    }

    public Edns k() {
        Edns edns = this.f92674p;
        if (edns != null) {
            return edns;
        }
        Record<p> m9 = m();
        if (m9 == null) {
            return null;
        }
        Edns edns2 = new Edns(m9);
        this.f92674p = edns2;
        return edns2;
    }

    public ByteBuffer l() {
        return ByteBuffer.wrap((byte[]) q().clone());
    }

    public Record<p> m() {
        int i4 = this.f92673o;
        if (i4 == -1) {
            return null;
        }
        return this.f92672n.get(i4);
    }

    public org.minidns.dnsmessage.a o() {
        return this.f92669k.get(0);
    }

    public boolean p() {
        Edns k10 = k();
        if (k10 == null) {
            return false;
        }
        return k10.f92803f;
    }

    public byte[] r() {
        return (byte[]) q().clone();
    }

    public void s(DataOutputStream dataOutputStream) throws IOException {
        byte[] q9 = q();
        dataOutputStream.writeShort(q9.length);
        dataOutputStream.write(q9);
    }

    public String toString() {
        String str = this.f92677s;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder("DnsMessage");
        sb.append('(');
        sb.append(this.f92659a);
        sb.append(' ');
        sb.append(this.f92660b);
        sb.append(' ');
        sb.append(this.f92661c);
        sb.append(' ');
        if (this.f92662d) {
            sb.append("resp[qr=1]");
        } else {
            sb.append("query[qr=0]");
        }
        if (this.f92663e) {
            sb.append(" aa");
        }
        if (this.f92664f) {
            sb.append(" tr");
        }
        if (this.f92665g) {
            sb.append(" rd");
        }
        if (this.f92666h) {
            sb.append(" ra");
        }
        if (this.f92667i) {
            sb.append(" ad");
        }
        if (this.f92668j) {
            sb.append(" cd");
        }
        sb.append(")\n");
        List<org.minidns.dnsmessage.a> list = this.f92669k;
        if (list != null) {
            for (org.minidns.dnsmessage.a aVar : list) {
                sb.append("[Q: ");
                sb.append(aVar);
                sb.append("]\n");
            }
        }
        List<Record<? extends h>> list2 = this.f92670l;
        if (list2 != null) {
            for (Record<? extends h> record : list2) {
                sb.append("[A: ");
                sb.append(record);
                sb.append("]\n");
            }
        }
        List<Record<? extends h>> list3 = this.f92671m;
        if (list3 != null) {
            for (Record<? extends h> record2 : list3) {
                sb.append("[N: ");
                sb.append(record2);
                sb.append("]\n");
            }
        }
        List<Record<? extends h>> list4 = this.f92672n;
        if (list4 != null) {
            for (Record<? extends h> record3 : list4) {
                sb.append("[X: ");
                Edns d4 = Edns.d(record3);
                if (d4 != null) {
                    sb.append(d4.toString());
                } else {
                    sb.append(record3);
                }
                sb.append("]\n");
            }
        }
        if (sb.charAt(sb.length() - 1) == '\n') {
            sb.setLength(sb.length() - 1);
        }
        String sb2 = sb.toString();
        this.f92677s = sb2;
        return sb2;
    }

    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private int f92687a;

        /* renamed from: b  reason: collision with root package name */
        private OPCODE f92688b;

        /* renamed from: c  reason: collision with root package name */
        private RESPONSE_CODE f92689c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f92690d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f92691e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f92692f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f92693g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f92694h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f92695i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f92696j;

        /* renamed from: k  reason: collision with root package name */
        private long f92697k;

        /* renamed from: l  reason: collision with root package name */
        private List<org.minidns.dnsmessage.a> f92698l;

        /* renamed from: m  reason: collision with root package name */
        private List<Record<? extends h>> f92699m;

        /* renamed from: n  reason: collision with root package name */
        private List<Record<? extends h>> f92700n;

        /* renamed from: o  reason: collision with root package name */
        private List<Record<? extends h>> f92701o;

        /* renamed from: p  reason: collision with root package name */
        private Edns.b f92702p;

        public Edns.b A() {
            if (this.f92702p == null) {
                this.f92702p = Edns.c();
            }
            return this.f92702p;
        }

        public b B(Collection<Record<? extends h>> collection) {
            ArrayList arrayList = new ArrayList(collection.size());
            this.f92701o = arrayList;
            arrayList.addAll(collection);
            return this;
        }

        public b C(Collection<Record<? extends h>> collection) {
            ArrayList arrayList = new ArrayList(collection.size());
            this.f92699m = arrayList;
            arrayList.addAll(collection);
            return this;
        }

        public b D(boolean z9) {
            this.f92695i = z9;
            return this;
        }

        public b E(boolean z9) {
            this.f92691e = z9;
            return this;
        }

        @Deprecated
        public b F(boolean z9) {
            this.f92696j = z9;
            return this;
        }

        public b G(boolean z9) {
            this.f92696j = z9;
            return this;
        }

        public b H(int i4) {
            this.f92687a = i4 & 65535;
            return this;
        }

        public b I(Collection<Record<? extends h>> collection) {
            ArrayList arrayList = new ArrayList(collection.size());
            this.f92700n = arrayList;
            arrayList.addAll(collection);
            return this;
        }

        public b J(OPCODE opcode) {
            this.f92688b = opcode;
            return this;
        }

        public b K(boolean z9) {
            this.f92690d = z9;
            return this;
        }

        public b L(org.minidns.dnsmessage.a aVar) {
            ArrayList arrayList = new ArrayList(1);
            this.f92698l = arrayList;
            arrayList.add(aVar);
            return this;
        }

        public b M(List<org.minidns.dnsmessage.a> list) {
            this.f92698l = list;
            return this;
        }

        public b N(long j4) {
            this.f92697k = j4;
            return this;
        }

        public b O(boolean z9) {
            this.f92694h = z9;
            return this;
        }

        public b P(boolean z9) {
            this.f92693g = z9;
            return this;
        }

        public b Q(RESPONSE_CODE response_code) {
            this.f92689c = response_code;
            return this;
        }

        public b R(boolean z9) {
            this.f92692f = z9;
            return this;
        }

        public b q(Record<? extends h> record) {
            if (this.f92701o == null) {
                this.f92701o = new ArrayList();
            }
            this.f92701o.add(record);
            return this;
        }

        public b r(List<Record<? extends h>> list) {
            if (this.f92701o == null) {
                this.f92701o = new ArrayList(list.size());
            }
            this.f92701o.addAll(list);
            return this;
        }

        public b s(Record<? extends h> record) {
            if (this.f92699m == null) {
                this.f92699m = new ArrayList(1);
            }
            this.f92699m.add(record);
            return this;
        }

        public b t(Collection<Record<? extends h>> collection) {
            if (this.f92699m == null) {
                this.f92699m = new ArrayList(collection.size());
            }
            this.f92699m.addAll(collection);
            return this;
        }

        public b u(Record<? extends h> record) {
            if (this.f92700n == null) {
                this.f92700n = new ArrayList(8);
            }
            this.f92700n.add(record);
            return this;
        }

        public b v(org.minidns.dnsmessage.a aVar) {
            if (this.f92698l == null) {
                this.f92698l = new ArrayList(1);
            }
            this.f92698l.add(aVar);
            return this;
        }

        public DnsMessage w() {
            return new DnsMessage(this);
        }

        public void x(DnsMessage dnsMessage) {
            this.f92690d = dnsMessage.f92662d;
            boolean z9 = dnsMessage.f92667i;
            this.f92691e = z9;
            this.f92692f = dnsMessage.f92664f;
            this.f92693g = dnsMessage.f92665g;
            this.f92694h = dnsMessage.f92666h;
            this.f92695i = z9;
            this.f92696j = dnsMessage.f92668j;
        }

        public List<Record<? extends h>> y() {
            List<Record<? extends h>> list = this.f92701o;
            return list == null ? Collections.emptyList() : list;
        }

        public List<Record<? extends h>> z() {
            List<Record<? extends h>> list = this.f92699m;
            return list == null ? Collections.emptyList() : list;
        }

        private b() {
            this.f92688b = OPCODE.QUERY;
            this.f92689c = RESPONSE_CODE.NO_ERROR;
            this.f92697k = -1L;
        }

        private b(DnsMessage dnsMessage) {
            this.f92688b = OPCODE.QUERY;
            this.f92689c = RESPONSE_CODE.NO_ERROR;
            this.f92697k = -1L;
            this.f92687a = dnsMessage.f92659a;
            this.f92688b = dnsMessage.f92660b;
            this.f92689c = dnsMessage.f92661c;
            this.f92690d = dnsMessage.f92662d;
            this.f92691e = dnsMessage.f92663e;
            this.f92692f = dnsMessage.f92664f;
            this.f92693g = dnsMessage.f92665g;
            this.f92694h = dnsMessage.f92666h;
            this.f92695i = dnsMessage.f92667i;
            this.f92696j = dnsMessage.f92668j;
            this.f92697k = dnsMessage.f92675q;
            ArrayList arrayList = new ArrayList(dnsMessage.f92669k.size());
            this.f92698l = arrayList;
            arrayList.addAll(dnsMessage.f92669k);
            ArrayList arrayList2 = new ArrayList(dnsMessage.f92670l.size());
            this.f92699m = arrayList2;
            arrayList2.addAll(dnsMessage.f92670l);
            ArrayList arrayList3 = new ArrayList(dnsMessage.f92671m.size());
            this.f92700n = arrayList3;
            arrayList3.addAll(dnsMessage.f92671m);
            ArrayList arrayList4 = new ArrayList(dnsMessage.f92672n.size());
            this.f92701o = arrayList4;
            arrayList4.addAll(dnsMessage.f92672n);
        }
    }

    public DnsMessage(byte[] bArr) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f92659a = dataInputStream.readUnsignedShort();
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        this.f92662d = ((readUnsignedShort >> 15) & 1) == 1;
        this.f92660b = OPCODE.getOpcode((readUnsignedShort >> 11) & 15);
        this.f92663e = ((readUnsignedShort >> 10) & 1) == 1;
        this.f92664f = ((readUnsignedShort >> 9) & 1) == 1;
        this.f92665g = ((readUnsignedShort >> 8) & 1) == 1;
        this.f92666h = ((readUnsignedShort >> 7) & 1) == 1;
        this.f92667i = ((readUnsignedShort >> 5) & 1) == 1;
        this.f92668j = ((readUnsignedShort >> 4) & 1) == 1;
        this.f92661c = RESPONSE_CODE.getResponseCode(readUnsignedShort & 15);
        this.f92675q = System.currentTimeMillis();
        int readUnsignedShort2 = dataInputStream.readUnsignedShort();
        int readUnsignedShort3 = dataInputStream.readUnsignedShort();
        int readUnsignedShort4 = dataInputStream.readUnsignedShort();
        int readUnsignedShort5 = dataInputStream.readUnsignedShort();
        this.f92669k = new ArrayList(readUnsignedShort2);
        for (int i4 = 0; i4 < readUnsignedShort2; i4++) {
            this.f92669k.add(new org.minidns.dnsmessage.a(dataInputStream, bArr));
        }
        this.f92670l = new ArrayList(readUnsignedShort3);
        for (int i10 = 0; i10 < readUnsignedShort3; i10++) {
            this.f92670l.add(Record.j(dataInputStream, bArr));
        }
        this.f92671m = new ArrayList(readUnsignedShort4);
        for (int i11 = 0; i11 < readUnsignedShort4; i11++) {
            this.f92671m.add(Record.j(dataInputStream, bArr));
        }
        this.f92672n = new ArrayList(readUnsignedShort5);
        for (int i12 = 0; i12 < readUnsignedShort5; i12++) {
            this.f92672n.add(Record.j(dataInputStream, bArr));
        }
        this.f92673o = n(this.f92672n);
    }

    private DnsMessage(DnsMessage dnsMessage) {
        this.f92659a = 0;
        this.f92662d = dnsMessage.f92662d;
        this.f92660b = dnsMessage.f92660b;
        this.f92663e = dnsMessage.f92663e;
        this.f92664f = dnsMessage.f92664f;
        this.f92665g = dnsMessage.f92665g;
        this.f92666h = dnsMessage.f92666h;
        this.f92667i = dnsMessage.f92667i;
        this.f92668j = dnsMessage.f92668j;
        this.f92661c = dnsMessage.f92661c;
        this.f92675q = dnsMessage.f92675q;
        this.f92669k = dnsMessage.f92669k;
        this.f92670l = dnsMessage.f92670l;
        this.f92671m = dnsMessage.f92671m;
        this.f92672n = dnsMessage.f92672n;
        this.f92673o = dnsMessage.f92673o;
    }
}
