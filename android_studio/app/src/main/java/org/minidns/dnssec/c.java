package org.minidns.dnssec;

import java.util.Collections;
import java.util.Set;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.record.Record;
import org.minidns.record.r;

/* compiled from: DnssecMessage.java */
/* loaded from: classes5.dex */
public class c extends DnsMessage {

    /* renamed from: x  reason: collision with root package name */
    private final Set<Record<r>> f92759x;

    /* renamed from: y  reason: collision with root package name */
    private final Set<e> f92760y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(DnsMessage.b bVar, Set<Record<r>> set, Set<e> set2) {
        super(bVar.D(set2 == null || set2.isEmpty()));
        this.f92759x = Collections.unmodifiableSet(set);
        this.f92760y = set2 == null ? Collections.emptySet() : Collections.unmodifiableSet(set2);
    }

    public Set<Record<r>> t() {
        return this.f92759x;
    }

    public Set<e> u() {
        return this.f92760y;
    }
}
