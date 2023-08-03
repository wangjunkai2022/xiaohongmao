package com.auth0.jwt.algorithms;

import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: CryptoHelper.java */
/* loaded from: classes.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte f7040a = 46;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public byte[] a(String str, PrivateKey privateKey, byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        Signature signature = Signature.getInstance(str);
        signature.initSign(privateKey);
        signature.update(bArr);
        return signature.sign();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] b(String str, PrivateKey privateKey, byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        Signature signature = Signature.getInstance(str);
        signature.initSign(privateKey);
        signature.update(bArr);
        signature.update(f7040a);
        signature.update(bArr2);
        return signature.sign();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public byte[] c(String str, byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance(str);
        mac.init(new SecretKeySpec(bArr, str));
        return mac.doFinal(bArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] d(String str, byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance(str);
        mac.init(new SecretKeySpec(bArr, str));
        mac.update(bArr2);
        mac.update(f7040a);
        return mac.doFinal(bArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(String str, PublicKey publicKey, String str2, String str3, byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        return g(str, publicKey, str2.getBytes(StandardCharsets.UTF_8), str3.getBytes(StandardCharsets.UTF_8), bArr);
    }

    @Deprecated
    boolean f(String str, PublicKey publicKey, byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        Signature signature = Signature.getInstance(str);
        signature.initVerify(publicKey);
        signature.update(bArr);
        return signature.verify(bArr2);
    }

    boolean g(String str, PublicKey publicKey, byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        Signature signature = Signature.getInstance(str);
        signature.initVerify(publicKey);
        signature.update(bArr);
        signature.update(f7040a);
        signature.update(bArr2);
        return signature.verify(bArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h(String str, byte[] bArr, String str2, String str3, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        return j(str, bArr, str2.getBytes(StandardCharsets.UTF_8), str3.getBytes(StandardCharsets.UTF_8), bArr2);
    }

    @Deprecated
    boolean i(String str, byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchAlgorithmException, InvalidKeyException {
        return MessageDigest.isEqual(c(str, bArr, bArr2), bArr3);
    }

    boolean j(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws NoSuchAlgorithmException, InvalidKeyException {
        return MessageDigest.isEqual(d(str, bArr, bArr2, bArr3), bArr4);
    }
}
