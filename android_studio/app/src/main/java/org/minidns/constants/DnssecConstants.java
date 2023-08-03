package org.minidns.constants;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class DnssecConstants {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Byte, SignatureAlgorithm> f92623a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Byte, DigestAlgorithm> f92624b = new HashMap();

    /* loaded from: classes5.dex */
    public enum DigestAlgorithm {
        SHA1(1, "SHA-1"),
        SHA256(2, "SHA-256"),
        GOST(3, "GOST R 34.11-94"),
        SHA384(4, "SHA-384");
        
        public final String description;
        public final byte value;

        DigestAlgorithm(int i4, String str) {
            if (i4 >= 0 && i4 <= 255) {
                byte b10 = (byte) i4;
                this.value = b10;
                this.description = str;
                DnssecConstants.f92624b.put(Byte.valueOf(b10), this);
                return;
            }
            throw new IllegalArgumentException();
        }

        public static DigestAlgorithm forByte(byte b10) {
            return (DigestAlgorithm) DnssecConstants.f92624b.get(Byte.valueOf(b10));
        }
    }

    /* loaded from: classes5.dex */
    public enum SignatureAlgorithm {
        RSAMD5(1, "RSA/MD5"),
        DH(2, "Diffie-Hellman"),
        DSA(3, "DSA/SHA1"),
        RSASHA1(5, "RSA/SHA-1"),
        DSA_NSEC3_SHA1(6, "DSA_NSEC3-SHA1"),
        RSASHA1_NSEC3_SHA1(7, "RSASHA1-NSEC3-SHA1"),
        RSASHA256(8, "RSA/SHA-256"),
        RSASHA512(10, "RSA/SHA-512"),
        ECC_GOST(12, "GOST R 34.10-2001"),
        ECDSAP256SHA256(13, "ECDSA Curve P-256 with SHA-256"),
        ECDSAP384SHA384(14, "ECDSA Curve P-384 with SHA-384"),
        INDIRECT(252, "Reserved for Indirect Keys"),
        PRIVATEDNS(253, "private algorithm"),
        PRIVATEOID(254, "private algorithm oid");
        
        public final String description;
        public final byte number;

        SignatureAlgorithm(int i4, String str) {
            if (i4 >= 0 && i4 <= 255) {
                byte b10 = (byte) i4;
                this.number = b10;
                this.description = str;
                DnssecConstants.f92623a.put(Byte.valueOf(b10), this);
                return;
            }
            throw new IllegalArgumentException();
        }

        public static SignatureAlgorithm forByte(byte b10) {
            return (SignatureAlgorithm) DnssecConstants.f92623a.get(Byte.valueOf(b10));
        }
    }

    private DnssecConstants() {
    }
}
