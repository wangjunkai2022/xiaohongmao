package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class CramerShoupCiphertext {

    /* renamed from: e  reason: collision with root package name */
    BigInteger f91226e;

    /* renamed from: u1  reason: collision with root package name */
    BigInteger f91227u1;

    /* renamed from: u2  reason: collision with root package name */
    BigInteger f91228u2;

    /* renamed from: v  reason: collision with root package name */
    BigInteger f91229v;

    public CramerShoupCiphertext() {
    }

    public CramerShoupCiphertext(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f91227u1 = bigInteger;
        this.f91228u2 = bigInteger2;
        this.f91226e = bigInteger3;
        this.f91229v = bigInteger4;
    }

    public CramerShoupCiphertext(byte[] bArr) {
        int bigEndianToInt = Pack.bigEndianToInt(bArr, 0) + 4;
        this.f91227u1 = new BigInteger(Arrays.copyOfRange(bArr, 4, bigEndianToInt));
        int bigEndianToInt2 = Pack.bigEndianToInt(bArr, bigEndianToInt);
        int i4 = bigEndianToInt + 4;
        int i10 = bigEndianToInt2 + i4;
        this.f91228u2 = new BigInteger(Arrays.copyOfRange(bArr, i4, i10));
        int bigEndianToInt3 = Pack.bigEndianToInt(bArr, i10);
        int i11 = i10 + 4;
        int i12 = bigEndianToInt3 + i11;
        this.f91226e = new BigInteger(Arrays.copyOfRange(bArr, i11, i12));
        int bigEndianToInt4 = Pack.bigEndianToInt(bArr, i12);
        int i13 = i12 + 4;
        this.f91229v = new BigInteger(Arrays.copyOfRange(bArr, i13, bigEndianToInt4 + i13));
    }

    public BigInteger getE() {
        return this.f91226e;
    }

    public BigInteger getU1() {
        return this.f91227u1;
    }

    public BigInteger getU2() {
        return this.f91228u2;
    }

    public BigInteger getV() {
        return this.f91229v;
    }

    public void setE(BigInteger bigInteger) {
        this.f91226e = bigInteger;
    }

    public void setU1(BigInteger bigInteger) {
        this.f91227u1 = bigInteger;
    }

    public void setU2(BigInteger bigInteger) {
        this.f91228u2 = bigInteger;
    }

    public void setV(BigInteger bigInteger) {
        this.f91229v = bigInteger;
    }

    public byte[] toByteArray() {
        byte[] byteArray = this.f91227u1.toByteArray();
        int length = byteArray.length;
        byte[] byteArray2 = this.f91228u2.toByteArray();
        int length2 = byteArray2.length;
        byte[] byteArray3 = this.f91226e.toByteArray();
        int length3 = byteArray3.length;
        byte[] byteArray4 = this.f91229v.toByteArray();
        int length4 = byteArray4.length;
        byte[] bArr = new byte[length + length2 + length3 + length4 + 16];
        Pack.intToBigEndian(length, bArr, 0);
        System.arraycopy(byteArray, 0, bArr, 4, length);
        int i4 = length + 4;
        Pack.intToBigEndian(length2, bArr, i4);
        int i10 = i4 + 4;
        System.arraycopy(byteArray2, 0, bArr, i10, length2);
        int i11 = i10 + length2;
        Pack.intToBigEndian(length3, bArr, i11);
        int i12 = i11 + 4;
        System.arraycopy(byteArray3, 0, bArr, i12, length3);
        int i13 = i12 + length3;
        Pack.intToBigEndian(length4, bArr, i13);
        System.arraycopy(byteArray4, 0, bArr, i13 + 4, length4);
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("u1: " + this.f91227u1.toString());
        stringBuffer.append("\nu2: " + this.f91228u2.toString());
        stringBuffer.append("\ne: " + this.f91226e.toString());
        stringBuffer.append("\nv: " + this.f91229v.toString());
        return stringBuffer.toString();
    }
}
