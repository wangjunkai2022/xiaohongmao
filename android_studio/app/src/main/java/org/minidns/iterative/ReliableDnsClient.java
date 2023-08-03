package org.minidns.iterative;

import org.minidns.AbstractDnsClient;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.source.DnsDataSource;

/* loaded from: classes5.dex */
public class ReliableDnsClient extends AbstractDnsClient {

    /* renamed from: j  reason: collision with root package name */
    private final org.minidns.iterative.a f92860j;

    /* renamed from: k  reason: collision with root package name */
    private final org.minidns.b f92861k;

    /* renamed from: l  reason: collision with root package name */
    private Mode f92862l;

    /* loaded from: classes5.dex */
    public enum Mode {
        recursiveWithIterativeFallback,
        recursiveOnly,
        iterativeOnly
    }

    /* loaded from: classes5.dex */
    class a extends org.minidns.iterative.a {
        a(org.minidns.a aVar) {
            super(aVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.minidns.iterative.a, org.minidns.AbstractDnsClient
        public boolean m(org.minidns.dnsmessage.a aVar, DnsMessage dnsMessage) {
            return ReliableDnsClient.this.m(aVar, dnsMessage) && super.m(aVar, dnsMessage);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.minidns.iterative.a, org.minidns.AbstractDnsClient
        public DnsMessage.b n(DnsMessage.b bVar) {
            return ReliableDnsClient.this.n(super.n(bVar));
        }
    }

    /* loaded from: classes5.dex */
    class b extends org.minidns.b {
        b(org.minidns.a aVar) {
            super(aVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.minidns.AbstractDnsClient
        public boolean m(org.minidns.dnsmessage.a aVar, DnsMessage dnsMessage) {
            return ReliableDnsClient.this.m(aVar, dnsMessage) && super.m(aVar, dnsMessage);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.minidns.b, org.minidns.AbstractDnsClient
        public DnsMessage.b n(DnsMessage.b bVar) {
            return ReliableDnsClient.this.n(super.n(bVar));
        }
    }

    public ReliableDnsClient(org.minidns.a aVar) {
        super(aVar);
        this.f92862l = Mode.recursiveWithIterativeFallback;
        this.f92860j = new a(aVar);
        this.f92861k = new b(aVar);
    }

    @Override // org.minidns.AbstractDnsClient
    public void F(DnsDataSource dnsDataSource) {
        super.F(dnsDataSource);
        this.f92860j.F(dnsDataSource);
        this.f92861k.F(dnsDataSource);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String I(DnsMessage dnsMessage) {
        return null;
    }

    public void J(Mode mode) {
        if (mode != null) {
            this.f92862l = mode;
            return;
        }
        throw new IllegalArgumentException("Mode must not be null.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.AbstractDnsClient
    public boolean m(org.minidns.dnsmessage.a aVar, DnsMessage dnsMessage) {
        return I(dnsMessage) == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.AbstractDnsClient
    public DnsMessage.b n(DnsMessage.b bVar) {
        return bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0030  */
    @Override // org.minidns.AbstractDnsClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected org.minidns.dnsmessage.DnsMessage t(org.minidns.dnsmessage.DnsMessage.b r9) throws java.io.IOException {
        /*
            r8 = this;
            java.util.LinkedList r0 = new java.util.LinkedList
            r0.<init>()
            org.minidns.iterative.ReliableDnsClient$Mode r1 = r8.f92862l
            org.minidns.iterative.ReliableDnsClient$Mode r2 = org.minidns.iterative.ReliableDnsClient.Mode.iterativeOnly
            r3 = 0
            if (r1 == r2) goto L28
            org.minidns.b r1 = r8.f92861k     // Catch: java.io.IOException -> L1f
            org.minidns.dnsmessage.DnsMessage r1 = r1.t(r9)     // Catch: java.io.IOException -> L1f
            if (r1 == 0) goto L24
            java.lang.String r2 = r8.I(r1)     // Catch: java.io.IOException -> L1d
            if (r2 != 0) goto L1b
            return r1
        L1b:
            r3 = r2
            goto L24
        L1d:
            r2 = move-exception
            goto L21
        L1f:
            r2 = move-exception
            r1 = r3
        L21:
            r0.add(r2)
        L24:
            r7 = r3
            r3 = r1
            r1 = r7
            goto L29
        L28:
            r1 = r3
        L29:
            org.minidns.iterative.ReliableDnsClient$Mode r2 = r8.f92862l
            org.minidns.iterative.ReliableDnsClient$Mode r4 = org.minidns.iterative.ReliableDnsClient.Mode.recursiveOnly
            if (r2 != r4) goto L30
            return r3
        L30:
            java.util.logging.Level r2 = java.util.logging.Level.FINE
            java.util.logging.Logger r4 = org.minidns.AbstractDnsClient.f92576h
            boolean r5 = r4.isLoggable(r2)
            if (r5 == 0) goto L96
            org.minidns.iterative.ReliableDnsClient$Mode r5 = r8.f92862l
            org.minidns.iterative.ReliableDnsClient$Mode r6 = org.minidns.iterative.ReliableDnsClient.Mode.iterativeOnly
            if (r5 == r6) goto L96
            java.lang.String r5 = "Resolution fall back to iterative mode because: "
            boolean r6 = r0.isEmpty()
            if (r6 != 0) goto L5d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r5)
            r5 = 0
            java.lang.Object r5 = r0.get(r5)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            goto L8a
        L5d:
            if (r3 != 0) goto L71
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r5)
            java.lang.String r5 = " DnsClient did not return a response"
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            goto L8a
        L71:
            if (r1 == 0) goto L8e
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r5)
            r6.append(r1)
            java.lang.String r1 = ". Response:\n"
            r6.append(r1)
            r6.append(r3)
            java.lang.String r1 = r6.toString()
        L8a:
            r4.log(r2, r1)
            goto L96
        L8e:
            java.lang.AssertionError r9 = new java.lang.AssertionError
            java.lang.String r0 = "This should never been reached"
            r9.<init>(r0)
            throw r9
        L96:
            org.minidns.iterative.a r1 = r8.f92860j     // Catch: java.io.IOException -> L9d
            org.minidns.dnsmessage.DnsMessage r3 = r1.t(r9)     // Catch: java.io.IOException -> L9d
            goto La1
        L9d:
            r9 = move-exception
            r0.add(r9)
        La1:
            if (r3 != 0) goto La6
            org.minidns.util.MultipleIoException.throwIfRequired(r0)
        La6:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.iterative.ReliableDnsClient.t(org.minidns.dnsmessage.DnsMessage$b):org.minidns.dnsmessage.DnsMessage");
    }

    public ReliableDnsClient() {
        this(AbstractDnsClient.f92575g);
    }
}
