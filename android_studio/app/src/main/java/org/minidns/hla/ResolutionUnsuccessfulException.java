package org.minidns.hla;

import org.minidns.MiniDnsException;
import org.minidns.dnsmessage.DnsMessage;

/* loaded from: classes5.dex */
public class ResolutionUnsuccessfulException extends MiniDnsException {

    /* renamed from: b  reason: collision with root package name */
    private static final long f92829b = 1;
    public final org.minidns.dnsmessage.a question;
    public final DnsMessage.RESPONSE_CODE responseCode;

    public ResolutionUnsuccessfulException(org.minidns.dnsmessage.a aVar, DnsMessage.RESPONSE_CODE response_code) {
        super("Asking for " + aVar + " yielded an error response " + response_code);
        this.question = aVar;
        this.responseCode = response_code;
    }
}
