package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes4.dex */
public class DHKDFParameters implements DerivationParameters {
    private ASN1ObjectIdentifier algorithm;
    private byte[] extraInfo;
    private int keySize;

    /* renamed from: z  reason: collision with root package name */
    private byte[] f91174z;

    public DHKDFParameters(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i4, byte[] bArr) {
        this(aSN1ObjectIdentifier, i4, bArr, null);
    }

    public DHKDFParameters(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i4, byte[] bArr, byte[] bArr2) {
        this.algorithm = aSN1ObjectIdentifier;
        this.keySize = i4;
        this.f91174z = bArr;
        this.extraInfo = bArr2;
    }

    public ASN1ObjectIdentifier getAlgorithm() {
        return this.algorithm;
    }

    public byte[] getExtraInfo() {
        return this.extraInfo;
    }

    public int getKeySize() {
        return this.keySize;
    }

    public byte[] getZ() {
        return this.f91174z;
    }
}
