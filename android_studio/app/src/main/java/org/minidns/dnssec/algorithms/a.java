package org.minidns.dnssec.algorithms;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.minidns.constants.DnssecConstants;
import org.minidns.dnssec.DnssecValidatorInitializationException;
import org.minidns.dnssec.algorithms.c;
import org.minidns.record.NSEC3;

/* compiled from: AlgorithmMap.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    public static final a f92733e = new a();

    /* renamed from: a  reason: collision with root package name */
    private Logger f92734a = Logger.getLogger(a.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private final Map<DnssecConstants.DigestAlgorithm, org.minidns.dnssec.a> f92735b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<DnssecConstants.SignatureAlgorithm, org.minidns.dnssec.d> f92736c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<NSEC3.HashAlgorithm, org.minidns.dnssec.a> f92737d;

    private a() {
        HashMap hashMap = new HashMap();
        this.f92735b = hashMap;
        HashMap hashMap2 = new HashMap();
        this.f92736c = hashMap2;
        HashMap hashMap3 = new HashMap();
        this.f92737d = hashMap3;
        try {
            hashMap.put(DnssecConstants.DigestAlgorithm.SHA1, new e("SHA-1"));
            hashMap3.put(NSEC3.HashAlgorithm.SHA1, new e("SHA-1"));
            try {
                hashMap.put(DnssecConstants.DigestAlgorithm.SHA256, new e("SHA-256"));
                try {
                    hashMap2.put(DnssecConstants.SignatureAlgorithm.RSAMD5, new g("MD5withRSA"));
                } catch (NoSuchAlgorithmException e4) {
                    this.f92734a.log(Level.FINER, "Platform does not support RSA/MD5", (Throwable) e4);
                }
                try {
                    b bVar = new b("SHA1withDSA");
                    this.f92736c.put(DnssecConstants.SignatureAlgorithm.DSA, bVar);
                    this.f92736c.put(DnssecConstants.SignatureAlgorithm.DSA_NSEC3_SHA1, bVar);
                } catch (NoSuchAlgorithmException e10) {
                    this.f92734a.log(Level.FINE, "Platform does not support DSA/SHA-1", (Throwable) e10);
                }
                try {
                    g gVar = new g("SHA1withRSA");
                    this.f92736c.put(DnssecConstants.SignatureAlgorithm.RSASHA1, gVar);
                    this.f92736c.put(DnssecConstants.SignatureAlgorithm.RSASHA1_NSEC3_SHA1, gVar);
                    try {
                        this.f92736c.put(DnssecConstants.SignatureAlgorithm.RSASHA256, new g("SHA256withRSA"));
                    } catch (NoSuchAlgorithmException e11) {
                        this.f92734a.log(Level.INFO, "Platform does not support RSA/SHA-256", (Throwable) e11);
                    }
                    try {
                        this.f92736c.put(DnssecConstants.SignatureAlgorithm.RSASHA512, new g("SHA512withRSA"));
                    } catch (NoSuchAlgorithmException e12) {
                        this.f92734a.log(Level.INFO, "Platform does not support RSA/SHA-512", (Throwable) e12);
                    }
                    try {
                        this.f92736c.put(DnssecConstants.SignatureAlgorithm.ECC_GOST, new d());
                    } catch (NoSuchAlgorithmException e13) {
                        this.f92734a.log(Level.FINE, "Platform does not support GOST R 34.10-2001", (Throwable) e13);
                    }
                    try {
                        this.f92736c.put(DnssecConstants.SignatureAlgorithm.ECDSAP256SHA256, new c.a());
                    } catch (NoSuchAlgorithmException e14) {
                        this.f92734a.log(Level.INFO, "Platform does not support ECDSA/SHA-256", (Throwable) e14);
                    }
                    try {
                        this.f92736c.put(DnssecConstants.SignatureAlgorithm.ECDSAP384SHA384, new c.b());
                    } catch (NoSuchAlgorithmException e15) {
                        this.f92734a.log(Level.INFO, "Platform does not support ECDSA/SHA-384", (Throwable) e15);
                    }
                } catch (NoSuchAlgorithmException e16) {
                    throw new DnssecValidatorInitializationException("Platform does not support RSA/SHA-1", e16);
                }
            } catch (NoSuchAlgorithmException e17) {
                throw new DnssecValidatorInitializationException("SHA-256 is mandatory", e17);
            }
        } catch (NoSuchAlgorithmException e18) {
            throw new DnssecValidatorInitializationException("SHA-1 is mandatory", e18);
        }
    }

    public org.minidns.dnssec.a a(DnssecConstants.DigestAlgorithm digestAlgorithm) {
        return this.f92735b.get(digestAlgorithm);
    }

    public org.minidns.dnssec.a b(NSEC3.HashAlgorithm hashAlgorithm) {
        return this.f92737d.get(hashAlgorithm);
    }

    public org.minidns.dnssec.d c(DnssecConstants.SignatureAlgorithm signatureAlgorithm) {
        return this.f92736c.get(signatureAlgorithm);
    }
}
