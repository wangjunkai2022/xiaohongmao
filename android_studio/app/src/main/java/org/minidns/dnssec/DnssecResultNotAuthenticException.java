package org.minidns.dnssec;

import java.util.Collections;
import java.util.Set;
import org.minidns.MiniDnsException;

/* loaded from: classes5.dex */
public class DnssecResultNotAuthenticException extends MiniDnsException {

    /* renamed from: c  reason: collision with root package name */
    private static final long f92729c = 1;

    /* renamed from: b  reason: collision with root package name */
    private final Set<e> f92730b;

    private DnssecResultNotAuthenticException(String str, Set<e> set) {
        super(str);
        if (!set.isEmpty()) {
            this.f92730b = Collections.unmodifiableSet(set);
            return;
        }
        throw new IllegalArgumentException();
    }

    public static DnssecResultNotAuthenticException from(Set<e> set) {
        StringBuilder sb = new StringBuilder();
        sb.append("DNSSEC result not authentic. Reasons: ");
        for (e eVar : set) {
            sb.append(eVar);
            sb.append('.');
        }
        return new DnssecResultNotAuthenticException(sb.toString(), set);
    }

    public Set<e> getUnverifiedReasons() {
        return this.f92730b;
    }
}
