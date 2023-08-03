package org.minidns.edns;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;
import org.minidns.record.h;
import org.minidns.record.p;

/* loaded from: classes5.dex */
public class Edns {

    /* renamed from: i  reason: collision with root package name */
    public static final int f92796i = 32768;

    /* renamed from: j  reason: collision with root package name */
    static final /* synthetic */ boolean f92797j = false;

    /* renamed from: a  reason: collision with root package name */
    public final int f92798a;

    /* renamed from: b  reason: collision with root package name */
    public final int f92799b;

    /* renamed from: c  reason: collision with root package name */
    public final int f92800c;

    /* renamed from: d  reason: collision with root package name */
    public final int f92801d;

    /* renamed from: e  reason: collision with root package name */
    public final List<org.minidns.edns.a> f92802e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f92803f;

    /* renamed from: g  reason: collision with root package name */
    private Record<p> f92804g;

    /* renamed from: h  reason: collision with root package name */
    private String f92805h;

    /* loaded from: classes5.dex */
    public enum OptionCode {
        UNKNOWN(-1, c.class),
        NSID(3, org.minidns.edns.b.class);
        

        /* renamed from: a  reason: collision with root package name */
        private static Map<Integer, OptionCode> f92806a = new HashMap(values().length);
        public final int asInt;
        public final Class<? extends org.minidns.edns.a> clazz;

        static {
            OptionCode[] values;
            for (OptionCode optionCode : values()) {
                f92806a.put(Integer.valueOf(optionCode.asInt), optionCode);
            }
        }

        OptionCode(int i4, Class cls) {
            this.asInt = i4;
            this.clazz = cls;
        }

        public static OptionCode from(int i4) {
            OptionCode optionCode = f92806a.get(Integer.valueOf(i4));
            return optionCode == null ? UNKNOWN : optionCode;
        }
    }

    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private int f92808a;

        /* renamed from: b  reason: collision with root package name */
        private int f92809b;

        /* renamed from: c  reason: collision with root package name */
        private int f92810c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f92811d;

        /* renamed from: e  reason: collision with root package name */
        private List<org.minidns.edns.a> f92812e;

        public b f(org.minidns.edns.a aVar) {
            if (this.f92812e == null) {
                this.f92812e = new ArrayList(4);
            }
            this.f92812e.add(aVar);
            return this;
        }

        public Edns g() {
            return new Edns(this);
        }

        public b h() {
            this.f92811d = true;
            return this;
        }

        public b i(boolean z9) {
            this.f92811d = z9;
            return this;
        }

        public b j(int i4) {
            if (i4 <= 65535) {
                this.f92808a = i4;
                return this;
            }
            throw new IllegalArgumentException("UDP payload size must not be greater than 65536, was " + i4);
        }

        private b() {
        }
    }

    public Edns(Record<p> record) {
        this.f92798a = record.f92896d;
        long j4 = record.f92897e;
        this.f92799b = (int) ((j4 >> 8) & 255);
        this.f92800c = (int) ((j4 >> 16) & 255);
        this.f92801d = ((int) j4) & 65535;
        this.f92803f = (j4 & 32768) > 0;
        this.f92802e = record.f92898f.f92971c;
        this.f92804g = record;
    }

    public static b c() {
        return new b();
    }

    public static Edns d(Record<? extends h> record) {
        if (record.f92894b != Record.TYPE.OPT) {
            return null;
        }
        return new Edns((Record<p>) record);
    }

    public Record<p> a() {
        if (this.f92804g == null) {
            this.f92804g = new Record<>(DnsName.ROOT, Record.TYPE.OPT, this.f92798a, this.f92801d | (this.f92799b << 8) | (this.f92800c << 16), new p(this.f92802e));
        }
        return this.f92804g;
    }

    public String b() {
        if (this.f92805h == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("EDNS: version: ");
            sb.append(this.f92800c);
            sb.append(", flags:");
            if (this.f92803f) {
                sb.append(" do");
            }
            sb.append("; udp: ");
            sb.append(this.f92798a);
            if (!this.f92802e.isEmpty()) {
                sb.append('\n');
                Iterator<org.minidns.edns.a> it = this.f92802e.iterator();
                while (it.hasNext()) {
                    org.minidns.edns.a next = it.next();
                    sb.append(next.c());
                    sb.append(": ");
                    sb.append(next.a());
                    if (it.hasNext()) {
                        sb.append('\n');
                    }
                }
            }
            this.f92805h = sb.toString();
        }
        return this.f92805h;
    }

    public <O extends org.minidns.edns.a> O e(OptionCode optionCode) {
        Iterator<org.minidns.edns.a> it = this.f92802e.iterator();
        while (it.hasNext()) {
            O o9 = (O) it.next();
            if (o9.c().equals(optionCode)) {
                return o9;
            }
        }
        return null;
    }

    public String toString() {
        return b();
    }

    public Edns(b bVar) {
        this.f92798a = bVar.f92808a;
        this.f92799b = bVar.f92809b;
        this.f92800c = bVar.f92810c;
        int i4 = bVar.f92811d ? 32768 : 0;
        this.f92803f = bVar.f92811d;
        this.f92801d = i4;
        if (bVar.f92812e != null) {
            this.f92802e = bVar.f92812e;
        } else {
            this.f92802e = Collections.emptyList();
        }
    }
}
