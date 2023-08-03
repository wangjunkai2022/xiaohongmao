package org.minidns;

import java.io.IOException;
import org.minidns.dnsmessage.DnsMessage;

/* loaded from: classes5.dex */
public abstract class MiniDnsException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f92589a = 1;

    /* loaded from: classes5.dex */
    public static class IdMismatch extends MiniDnsException {

        /* renamed from: d  reason: collision with root package name */
        private static final long f92590d = 1;

        /* renamed from: e  reason: collision with root package name */
        static final /* synthetic */ boolean f92591e = false;

        /* renamed from: b  reason: collision with root package name */
        private final DnsMessage f92592b;

        /* renamed from: c  reason: collision with root package name */
        private final DnsMessage f92593c;

        public IdMismatch(DnsMessage dnsMessage, DnsMessage dnsMessage2) {
            super(a(dnsMessage, dnsMessage2));
            this.f92592b = dnsMessage;
            this.f92593c = dnsMessage2;
        }

        private static String a(DnsMessage dnsMessage, DnsMessage dnsMessage2) {
            return "The response's ID doesn't matches the request ID. Request: " + dnsMessage.f92659a + ". Response: " + dnsMessage2.f92659a;
        }

        public DnsMessage getRequest() {
            return this.f92592b;
        }

        public DnsMessage getResponse() {
            return this.f92593c;
        }
    }

    /* loaded from: classes5.dex */
    public static class NullResultException extends MiniDnsException {

        /* renamed from: c  reason: collision with root package name */
        private static final long f92594c = 1;

        /* renamed from: b  reason: collision with root package name */
        private final DnsMessage f92595b;

        public NullResultException(DnsMessage dnsMessage) {
            super("The request yielded a 'null' result while resolving.");
            this.f92595b = dnsMessage;
        }

        public DnsMessage getRequest() {
            return this.f92595b;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MiniDnsException(String str) {
        super(str);
    }
}
