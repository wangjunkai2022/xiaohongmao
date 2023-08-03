package org.minidns.dnssec;

import org.minidns.record.Record;
import org.minidns.record.h;

/* loaded from: classes5.dex */
public class DnssecValidationFailedException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f92731a = 5413184667629832742L;

    public DnssecValidationFailedException(org.minidns.dnsmessage.a aVar, String str) {
        super("Validation of request to " + aVar + " failed: " + str);
    }

    public DnssecValidationFailedException(String str) {
        super(str);
    }

    public DnssecValidationFailedException(String str, Throwable th) {
        super(str, th);
    }

    public DnssecValidationFailedException(Record<? extends h> record, String str) {
        super("Validation of record " + record + " failed: " + str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public DnssecValidationFailedException(java.util.List<org.minidns.record.Record<? extends org.minidns.record.h>> r3, java.lang.String r4) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Validation of "
            r0.append(r1)
            int r1 = r3.size()
            r0.append(r1)
            java.lang.String r1 = " "
            r0.append(r1)
            r1 = 0
            java.lang.Object r1 = r3.get(r1)
            org.minidns.record.Record r1 = (org.minidns.record.Record) r1
            org.minidns.record.Record$TYPE r1 = r1.f92894b
            r0.append(r1)
            java.lang.String r1 = " record"
            r0.append(r1)
            int r3 = r3.size()
            r1 = 1
            if (r3 <= r1) goto L31
            java.lang.String r3 = "s"
            goto L33
        L31:
            java.lang.String r3 = ""
        L33:
            r0.append(r3)
            java.lang.String r3 = " failed: "
            r0.append(r3)
            r0.append(r4)
            java.lang.String r3 = r0.toString()
            r2.<init>(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.dnssec.DnssecValidationFailedException.<init>(java.util.List, java.lang.String):void");
    }
}
