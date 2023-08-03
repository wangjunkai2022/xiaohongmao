package org.minidns.dnssec.algorithms;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: JavaSecDigestCalculator.java */
/* loaded from: classes5.dex */
public class e implements org.minidns.dnssec.a {

    /* renamed from: a  reason: collision with root package name */
    private MessageDigest f92745a;

    public e(String str) throws NoSuchAlgorithmException {
        this.f92745a = MessageDigest.getInstance(str);
    }

    @Override // org.minidns.dnssec.a
    public byte[] a(byte[] bArr) {
        return this.f92745a.digest(bArr);
    }
}
