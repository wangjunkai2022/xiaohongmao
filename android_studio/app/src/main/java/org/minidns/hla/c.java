package org.minidns.hla;

import java.util.Collections;
import java.util.Set;
import org.minidns.MiniDnsException;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnssec.DnssecResultNotAuthenticException;
import org.minidns.dnssec.e;
import org.minidns.record.h;

/* compiled from: ResolverResult.java */
/* loaded from: classes5.dex */
public class c<D extends h> {

    /* renamed from: a  reason: collision with root package name */
    protected final org.minidns.dnsmessage.a f92839a;

    /* renamed from: b  reason: collision with root package name */
    private final DnsMessage.RESPONSE_CODE f92840b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<D> f92841c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f92842d;

    /* renamed from: e  reason: collision with root package name */
    protected final Set<e> f92843e;

    /* renamed from: f  reason: collision with root package name */
    protected final DnsMessage f92844f;

    /* renamed from: g  reason: collision with root package name */
    private ResolutionUnsuccessfulException f92845g;

    /* renamed from: h  reason: collision with root package name */
    private DnssecResultNotAuthenticException f92846h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(org.minidns.dnsmessage.a aVar, DnsMessage dnsMessage, Set<e> set) throws MiniDnsException.NullResultException {
        if (dnsMessage != null) {
            this.f92839a = aVar;
            this.f92840b = dnsMessage.f92661c;
            this.f92844f = dnsMessage;
            Set<D> j4 = dnsMessage.j(aVar);
            if (j4 == null) {
                this.f92841c = Collections.emptySet();
            } else {
                this.f92841c = Collections.unmodifiableSet(j4);
            }
            if (set == null) {
                this.f92843e = null;
                this.f92842d = false;
                return;
            }
            Set<e> unmodifiableSet = Collections.unmodifiableSet(set);
            this.f92843e = unmodifiableSet;
            this.f92842d = unmodifiableSet.isEmpty();
            return;
        }
        throw new MiniDnsException.NullResultException(aVar.a().w());
    }

    public Set<D> a() {
        l();
        return this.f92841c;
    }

    public Set<D> b() {
        return this.f92841c;
    }

    public DnssecResultNotAuthenticException c() {
        if (m() && !this.f92842d) {
            if (this.f92846h == null) {
                this.f92846h = DnssecResultNotAuthenticException.from(h());
            }
            return this.f92846h;
        }
        return null;
    }

    public org.minidns.dnsmessage.a d() {
        return this.f92839a;
    }

    public DnsMessage e() {
        return this.f92844f;
    }

    public ResolutionUnsuccessfulException f() {
        if (m()) {
            return null;
        }
        if (this.f92845g == null) {
            this.f92845g = new ResolutionUnsuccessfulException(this.f92839a, this.f92840b);
        }
        return this.f92845g;
    }

    public DnsMessage.RESPONSE_CODE g() {
        return this.f92840b;
    }

    public Set<e> h() {
        l();
        return this.f92843e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        Set<e> set = this.f92843e;
        return (set == null || set.isEmpty()) ? false : true;
    }

    public boolean j() {
        l();
        return this.f92842d;
    }

    public void k() throws ResolutionUnsuccessfulException {
        ResolutionUnsuccessfulException f10 = f();
        if (f10 != null) {
            throw f10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void l() {
        ResolutionUnsuccessfulException f10 = f();
        if (f10 != null) {
            throw new IllegalStateException("Can not perform operation because the DNS resolution was unsuccessful", f10);
        }
    }

    public boolean m() {
        return this.f92840b == DnsMessage.RESPONSE_CODE.NO_ERROR;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getName());
        sb.append('\n');
        sb.append("Question: ");
        sb.append(this.f92839a);
        sb.append('\n');
        sb.append("Response Code: ");
        sb.append(this.f92840b);
        sb.append('\n');
        if (this.f92840b == DnsMessage.RESPONSE_CODE.NO_ERROR) {
            if (this.f92842d) {
                sb.append("Results verified via DNSSEC\n");
            }
            if (i()) {
                sb.append(this.f92843e);
                sb.append('\n');
            }
            sb.append(this.f92844f.f92670l);
        }
        return sb.toString();
    }
}
