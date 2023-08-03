package org.minidns;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;
import org.minidns.record.h;

/* compiled from: RrSet.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public final DnsName f92820a;

    /* renamed from: b  reason: collision with root package name */
    public final Record.TYPE f92821b;

    /* renamed from: c  reason: collision with root package name */
    public final Record.CLASS f92822c;

    /* renamed from: d  reason: collision with root package name */
    public final Set<Record<? extends h>> f92823d;

    /* compiled from: RrSet.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: e  reason: collision with root package name */
        static final /* synthetic */ boolean f92824e = false;

        /* renamed from: a  reason: collision with root package name */
        private DnsName f92825a;

        /* renamed from: b  reason: collision with root package name */
        private Record.TYPE f92826b;

        /* renamed from: c  reason: collision with root package name */
        private Record.CLASS f92827c;

        /* renamed from: d  reason: collision with root package name */
        Set<Record<? extends h>> f92828d;

        public boolean a(Record<? extends h> record) {
            if (d(record)) {
                b(record);
                return true;
            }
            return false;
        }

        public b b(Record<? extends h> record) {
            if (this.f92825a == null) {
                this.f92825a = record.f92893a;
                this.f92826b = record.f92894b;
                this.f92827c = record.f92895c;
            } else if (!d(record)) {
                throw new IllegalArgumentException("Can not add " + record + " to RRSet " + ((Object) this.f92825a) + ' ' + this.f92826b + ' ' + this.f92827c);
            }
            this.f92828d.add(record);
            return this;
        }

        public f c() {
            DnsName dnsName = this.f92825a;
            if (dnsName != null) {
                return new f(dnsName, this.f92826b, this.f92827c, this.f92828d);
            }
            throw new IllegalStateException();
        }

        public boolean d(Record<? extends h> record) {
            DnsName dnsName = this.f92825a;
            if (dnsName == null) {
                return true;
            }
            return dnsName.equals(record.f92893a) && this.f92826b == record.f92894b && this.f92827c == record.f92895c;
        }

        private b() {
            this.f92828d = new LinkedHashSet(8);
        }
    }

    public static b a() {
        return new b();
    }

    private f(DnsName dnsName, Record.TYPE type, Record.CLASS r32, Set<Record<? extends h>> set) {
        this.f92820a = dnsName;
        this.f92821b = type;
        this.f92822c = r32;
        this.f92823d = Collections.unmodifiableSet(set);
    }
}
