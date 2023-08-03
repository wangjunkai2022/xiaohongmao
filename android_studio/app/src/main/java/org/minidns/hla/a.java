package org.minidns.hla;

import java.io.IOException;
import org.minidns.MiniDnsException;
import org.minidns.dnsname.DnsName;
import org.minidns.iterative.ReliableDnsClient;
import org.minidns.record.Record;
import org.minidns.record.h;

/* compiled from: DnssecResolverApi.java */
/* loaded from: classes5.dex */
public class a extends b {

    /* renamed from: f  reason: collision with root package name */
    public static final a f92833f = new a();

    /* renamed from: c  reason: collision with root package name */
    private final org.minidns.dnssec.b f92834c;

    /* renamed from: d  reason: collision with root package name */
    private final org.minidns.dnssec.b f92835d;

    /* renamed from: e  reason: collision with root package name */
    private final org.minidns.dnssec.b f92836e;

    /* compiled from: DnssecResolverApi.java */
    /* renamed from: org.minidns.hla.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0827a implements org.minidns.cache.d {
        C0827a() {
        }

        @Override // org.minidns.cache.d
        public org.minidns.a a() {
            return new org.minidns.cache.c();
        }
    }

    public a() {
        this(new C0827a());
    }

    private static <D extends h> c<D> t(org.minidns.dnsmessage.a aVar, org.minidns.dnssec.c cVar) throws MiniDnsException.NullResultException {
        return new c<>(aVar, cVar, cVar.u());
    }

    @Override // org.minidns.hla.b
    public <D extends h> c<D> c(org.minidns.dnsmessage.a aVar) throws IOException {
        return t(aVar, this.f92834c.U(aVar));
    }

    public org.minidns.dnssec.b p() {
        return this.f92834c;
    }

    public <D extends h> c<D> q(String str, Class<D> cls) throws IOException {
        return s(DnsName.from(str), cls);
    }

    public <D extends h> c<D> r(org.minidns.dnsmessage.a aVar) throws IOException {
        org.minidns.dnssec.c U = this.f92836e.U(aVar);
        if (U == null || !U.f92667i) {
            U = this.f92835d.U(aVar);
        }
        return t(aVar, U);
    }

    public <D extends h> c<D> s(DnsName dnsName, Class<D> cls) throws IOException {
        return r(new org.minidns.dnsmessage.a(dnsName, Record.TYPE.getType(cls)));
    }

    public a(org.minidns.cache.d dVar) {
        this(new org.minidns.dnssec.b(dVar.a()), dVar);
    }

    private a(org.minidns.dnssec.b bVar, org.minidns.cache.d dVar) {
        super(bVar);
        this.f92834c = bVar;
        org.minidns.dnssec.b bVar2 = new org.minidns.dnssec.b(dVar.a());
        this.f92835d = bVar2;
        bVar2.J(ReliableDnsClient.Mode.iterativeOnly);
        org.minidns.dnssec.b bVar3 = new org.minidns.dnssec.b(dVar.a());
        this.f92836e = bVar3;
        bVar3.J(ReliableDnsClient.Mode.recursiveOnly);
    }
}
