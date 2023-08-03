package org.bouncycastle.asn1.x9;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;

/* loaded from: classes4.dex */
public class X9IntegerConverter {
    public int getByteLength(ECCurve eCCurve) {
        return (eCCurve.getFieldSize() + 7) / 8;
    }

    public int getByteLength(ECFieldElement eCFieldElement) {
        return (eCFieldElement.getFieldSize() + 7) / 8;
    }

    public byte[] integerToBytes(BigInteger bigInteger, int i4) {
        byte[] byteArray = bigInteger.toByteArray();
        if (i4 < byteArray.length) {
            byte[] bArr = new byte[i4];
            System.arraycopy(byteArray, byteArray.length - i4, bArr, 0, i4);
            return bArr;
        } else if (i4 > byteArray.length) {
            byte[] bArr2 = new byte[i4];
            System.arraycopy(byteArray, 0, bArr2, i4 - byteArray.length, byteArray.length);
            return bArr2;
        } else {
            return byteArray;
        }
    }
}
