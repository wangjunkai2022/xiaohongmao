package org.bouncycastle.crypto.util;

import com.facebook.imagepipeline.memory.c;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.SHA512tDigest;
import org.bouncycastle.crypto.digests.SHAKEDigest;

/* loaded from: classes4.dex */
public final class DigestFactory {
    private static final Map cloneMap;

    /* loaded from: classes4.dex */
    private interface Cloner {
        Digest createClone(Digest digest);
    }

    static {
        HashMap hashMap = new HashMap();
        cloneMap = hashMap;
        hashMap.put(createMD5().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.1
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new MD5Digest((MD5Digest) digest);
            }
        });
        hashMap.put(createSHA1().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.2
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new MD5Digest((MD5Digest) digest);
            }
        });
        hashMap.put(createSHA224().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.3
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHA224Digest((SHA224Digest) digest);
            }
        });
        hashMap.put(createSHA256().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.4
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHA256Digest((SHA256Digest) digest);
            }
        });
        hashMap.put(createSHA384().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.5
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHA384Digest((SHA384Digest) digest);
            }
        });
        hashMap.put(createSHA512().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.6
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHA512Digest((SHA512Digest) digest);
            }
        });
        hashMap.put(createSHA3_224().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.7
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHA3Digest((SHA3Digest) digest);
            }
        });
        hashMap.put(createSHA3_256().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.8
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHA3Digest((SHA3Digest) digest);
            }
        });
        hashMap.put(createSHA3_384().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.9
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHA3Digest((SHA3Digest) digest);
            }
        });
        hashMap.put(createSHA3_512().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.10
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHA3Digest((SHA3Digest) digest);
            }
        });
        hashMap.put(createSHAKE128().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.11
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHAKEDigest((SHAKEDigest) digest);
            }
        });
        hashMap.put(createSHAKE256().getAlgorithmName(), new Cloner() { // from class: org.bouncycastle.crypto.util.DigestFactory.12
            @Override // org.bouncycastle.crypto.util.DigestFactory.Cloner
            public Digest createClone(Digest digest) {
                return new SHAKEDigest((SHAKEDigest) digest);
            }
        });
    }

    public static Digest cloneDigest(Digest digest) {
        return ((Cloner) cloneMap.get(digest.getAlgorithmName())).createClone(digest);
    }

    public static Digest createMD5() {
        return new MD5Digest();
    }

    public static Digest createSHA1() {
        return new SHA1Digest();
    }

    public static Digest createSHA224() {
        return new SHA224Digest();
    }

    public static Digest createSHA256() {
        return new SHA256Digest();
    }

    public static Digest createSHA384() {
        return new SHA384Digest();
    }

    public static Digest createSHA3_224() {
        return new SHA3Digest(224);
    }

    public static Digest createSHA3_256() {
        return new SHA3Digest(256);
    }

    public static Digest createSHA3_384() {
        return new SHA3Digest((int) c.f12563b);
    }

    public static Digest createSHA3_512() {
        return new SHA3Digest(512);
    }

    public static Digest createSHA512() {
        return new SHA512Digest();
    }

    public static Digest createSHA512_224() {
        return new SHA512tDigest(224);
    }

    public static Digest createSHA512_256() {
        return new SHA512tDigest(256);
    }

    public static Digest createSHAKE128() {
        return new SHAKEDigest(128);
    }

    public static Digest createSHAKE256() {
        return new SHAKEDigest(256);
    }
}
