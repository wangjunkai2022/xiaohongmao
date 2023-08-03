package org.minidns.iterative;

import java.net.InetAddress;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.iterative.IterativeClientException;

/* compiled from: ResolutionState.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f92877d = false;

    /* renamed from: a  reason: collision with root package name */
    private final a f92878a;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<InetAddress, Set<org.minidns.dnsmessage.a>> f92879b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private int f92880c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f92878a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f92880c--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(InetAddress inetAddress, DnsMessage dnsMessage) throws IterativeClientException.LoopDetected, IterativeClientException.MaxIterativeStepsReached {
        org.minidns.dnsmessage.a o9 = dnsMessage.o();
        if (!this.f92879b.containsKey(inetAddress)) {
            this.f92879b.put(inetAddress, new HashSet());
        } else if (this.f92879b.get(inetAddress).contains(o9)) {
            throw new IterativeClientException.LoopDetected();
        }
        int i4 = this.f92880c + 1;
        this.f92880c = i4;
        if (i4 <= this.f92878a.f92870j) {
            this.f92879b.get(inetAddress).add(o9);
            return;
        }
        throw new IterativeClientException.MaxIterativeStepsReached();
    }
}
