package org.minidns.dnssec;

import java.util.Collections;
import java.util.List;
import org.minidns.constants.DnssecConstants;
import org.minidns.record.Record;
import org.minidns.record.r;

/* compiled from: UnverifiedReason.java */
/* loaded from: classes5.dex */
public abstract class e {

    /* compiled from: UnverifiedReason.java */
    /* loaded from: classes5.dex */
    public static class a extends e {

        /* renamed from: a  reason: collision with root package name */
        private final int f92761a;

        /* renamed from: b  reason: collision with root package name */
        private final String f92762b;

        /* renamed from: c  reason: collision with root package name */
        private final Exception f92763c;

        /* renamed from: d  reason: collision with root package name */
        private final Record<? extends org.minidns.record.h> f92764d;

        public a(DnssecConstants.DigestAlgorithm digestAlgorithm, String str, Record<? extends org.minidns.record.h> record, Exception exc) {
            this.f92761a = digestAlgorithm.value;
            this.f92762b = str;
            this.f92764d = record;
            this.f92763c = exc;
        }

        @Override // org.minidns.dnssec.e
        public String a() {
            return this.f92762b + " algorithm " + this.f92761a + " threw exception while verifying " + ((Object) this.f92764d.f92893a) + ": " + this.f92763c;
        }
    }

    /* compiled from: UnverifiedReason.java */
    /* loaded from: classes5.dex */
    public static class b extends e {

        /* renamed from: a  reason: collision with root package name */
        private final String f92765a;

        /* renamed from: b  reason: collision with root package name */
        private final Record.TYPE f92766b;

        /* renamed from: c  reason: collision with root package name */
        private final Record<? extends org.minidns.record.h> f92767c;

        public b(byte b10, Record.TYPE type, Record<? extends org.minidns.record.h> record) {
            this.f92765a = Integer.toString(b10 & 255);
            this.f92766b = type;
            this.f92767c = record;
        }

        @Override // org.minidns.dnssec.e
        public String a() {
            return this.f92766b.name() + " algorithm " + this.f92765a + " required to verify " + ((Object) this.f92767c.f92893a) + " is unknown or not supported by platform";
        }
    }

    /* compiled from: UnverifiedReason.java */
    /* loaded from: classes5.dex */
    public static class c extends e {

        /* renamed from: a  reason: collision with root package name */
        private final Record<org.minidns.record.f> f92768a;

        public c(Record<org.minidns.record.f> record) {
            this.f92768a = record;
        }

        @Override // org.minidns.dnssec.e
        public String a() {
            return "Zone " + this.f92768a.f92893a.ace + " is in list of known SEPs, but DNSKEY from response mismatches!";
        }
    }

    /* compiled from: UnverifiedReason.java */
    /* loaded from: classes5.dex */
    public static class d extends e {

        /* renamed from: a  reason: collision with root package name */
        private final org.minidns.dnsmessage.a f92769a;

        /* renamed from: b  reason: collision with root package name */
        private final Record<? extends org.minidns.record.h> f92770b;

        public d(org.minidns.dnsmessage.a aVar, Record<? extends org.minidns.record.h> record) {
            this.f92769a = aVar;
            this.f92770b = record;
        }

        @Override // org.minidns.dnssec.e
        public String a() {
            return "NSEC " + ((Object) this.f92770b.f92893a) + " does nat match question for " + this.f92769a.f92705b + " at " + ((Object) this.f92769a.f92704a);
        }
    }

    /* compiled from: UnverifiedReason.java */
    /* renamed from: org.minidns.dnssec.e$e  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0825e extends e {

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ boolean f92771c = false;

        /* renamed from: a  reason: collision with root package name */
        private final org.minidns.dnsmessage.a f92772a;

        /* renamed from: b  reason: collision with root package name */
        private final List<r> f92773b;

        public C0825e(org.minidns.dnsmessage.a aVar, List<r> list) {
            this.f92772a = aVar;
            this.f92773b = Collections.unmodifiableList(list);
        }

        @Override // org.minidns.dnssec.e
        public String a() {
            return "No currently active signatures were attached to answer on question for " + this.f92772a.f92705b + " at " + ((Object) this.f92772a.f92704a);
        }

        public List<r> b() {
            return this.f92773b;
        }
    }

    /* compiled from: UnverifiedReason.java */
    /* loaded from: classes5.dex */
    public static class f extends e {
        @Override // org.minidns.dnssec.e
        public String a() {
            return "No secure entry point was found for the root zone (\"Did you forget to configure a root SEP?\")";
        }
    }

    /* compiled from: UnverifiedReason.java */
    /* loaded from: classes5.dex */
    public static class g extends e {

        /* renamed from: a  reason: collision with root package name */
        private final String f92774a;

        public g(String str) {
            this.f92774a = str;
        }

        @Override // org.minidns.dnssec.e
        public String a() {
            return "No secure entry point was found for zone " + this.f92774a;
        }
    }

    /* compiled from: UnverifiedReason.java */
    /* loaded from: classes5.dex */
    public static class h extends e {

        /* renamed from: a  reason: collision with root package name */
        private final org.minidns.dnsmessage.a f92775a;

        public h(org.minidns.dnsmessage.a aVar) {
            this.f92775a = aVar;
        }

        @Override // org.minidns.dnssec.e
        public String a() {
            return "No signatures were attached to answer on question for " + this.f92775a.f92705b + " at " + ((Object) this.f92775a.f92704a);
        }
    }

    /* compiled from: UnverifiedReason.java */
    /* loaded from: classes5.dex */
    public static class i extends e {

        /* renamed from: a  reason: collision with root package name */
        private final String f92776a;

        public i(String str) {
            this.f92776a = str;
        }

        @Override // org.minidns.dnssec.e
        public String a() {
            return "No trust anchor was found for zone " + this.f92776a + ". Try enabling DLV";
        }
    }

    public abstract String a();

    public boolean equals(Object obj) {
        return (obj instanceof e) && ((e) obj).a().equals(a());
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return a();
    }
}
