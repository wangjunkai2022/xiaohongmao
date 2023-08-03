package org.bouncycastle.asn1.x509;

import java.io.IOException;
import java.util.StringTokenizer;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.util.IPAddress;

/* loaded from: classes4.dex */
public class GeneralName extends ASN1Object implements ASN1Choice {
    public static final int dNSName = 2;
    public static final int directoryName = 4;
    public static final int ediPartyName = 5;
    public static final int iPAddress = 7;
    public static final int otherName = 0;
    public static final int registeredID = 8;
    public static final int rfc822Name = 1;
    public static final int uniformResourceIdentifier = 6;
    public static final int x400Address = 3;
    private ASN1Encodable obj;
    private int tag;

    public GeneralName(int i4, String str) {
        ASN1Encodable dERIA5String;
        this.tag = i4;
        if (i4 == 1 || i4 == 2 || i4 == 6) {
            dERIA5String = new DERIA5String(str);
        } else if (i4 == 8) {
            dERIA5String = new ASN1ObjectIdentifier(str);
        } else if (i4 != 4) {
            if (i4 != 7) {
                throw new IllegalArgumentException("can't process String for tag: " + i4);
            }
            byte[] generalNameEncoding = toGeneralNameEncoding(str);
            if (generalNameEncoding == null) {
                throw new IllegalArgumentException("IP Address is invalid");
            }
            this.obj = new DEROctetString(generalNameEncoding);
            return;
        } else {
            dERIA5String = new X500Name(str);
        }
        this.obj = dERIA5String;
    }

    public GeneralName(int i4, ASN1Encodable aSN1Encodable) {
        this.obj = aSN1Encodable;
        this.tag = i4;
    }

    public GeneralName(X500Name x500Name) {
        this.obj = x500Name;
        this.tag = 4;
    }

    public GeneralName(X509Name x509Name) {
        this.obj = X500Name.getInstance(x509Name);
        this.tag = 4;
    }

    private void copyInts(int[] iArr, byte[] bArr, int i4) {
        for (int i10 = 0; i10 != iArr.length; i10++) {
            int i11 = i10 * 2;
            bArr[i11 + i4] = (byte) (iArr[i10] >> 8);
            bArr[i11 + 1 + i4] = (byte) iArr[i10];
        }
    }

    public static GeneralName getInstance(Object obj) {
        if (obj == null || (obj instanceof GeneralName)) {
            return (GeneralName) obj;
        }
        if (!(obj instanceof ASN1TaggedObject)) {
            if (obj instanceof byte[]) {
                try {
                    return getInstance(ASN1Primitive.fromByteArray((byte[]) obj));
                } catch (IOException unused) {
                    throw new IllegalArgumentException("unable to parse encoded general name");
                }
            }
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) obj;
        int tagNo = aSN1TaggedObject.getTagNo();
        switch (tagNo) {
            case 0:
            case 3:
            case 5:
                return new GeneralName(tagNo, ASN1Sequence.getInstance(aSN1TaggedObject, false));
            case 1:
            case 2:
            case 6:
                return new GeneralName(tagNo, ASN1IA5String.getInstance(aSN1TaggedObject, false));
            case 4:
                return new GeneralName(tagNo, X500Name.getInstance(aSN1TaggedObject, true));
            case 7:
                return new GeneralName(tagNo, ASN1OctetString.getInstance(aSN1TaggedObject, false));
            case 8:
                return new GeneralName(tagNo, ASN1ObjectIdentifier.getInstance(aSN1TaggedObject, false));
            default:
                throw new IllegalArgumentException("unknown tag: " + tagNo);
        }
    }

    public static GeneralName getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return getInstance(ASN1TaggedObject.getInstance(aSN1TaggedObject, true));
    }

    private void parseIPv4(String str, byte[] bArr, int i4) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "./");
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            bArr[i10 + i4] = (byte) Integer.parseInt(stringTokenizer.nextToken());
            i10++;
        }
    }

    private void parseIPv4Mask(String str, byte[] bArr, int i4) {
        int parseInt = Integer.parseInt(str);
        for (int i10 = 0; i10 != parseInt; i10++) {
            int i11 = (i10 / 8) + i4;
            bArr[i11] = (byte) (bArr[i11] | (1 << (7 - (i10 % 8))));
        }
    }

    private int[] parseIPv6(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ":", true);
        int[] iArr = new int[8];
        if (str.charAt(0) == ':' && str.charAt(1) == ':') {
            stringTokenizer.nextToken();
        }
        int i4 = -1;
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.equals(":")) {
                iArr[i10] = 0;
                int i11 = i10;
                i10++;
                i4 = i11;
            } else if (nextToken.indexOf(46) < 0) {
                int i12 = i10 + 1;
                iArr[i10] = Integer.parseInt(nextToken, 16);
                if (stringTokenizer.hasMoreTokens()) {
                    stringTokenizer.nextToken();
                }
                i10 = i12;
            } else {
                StringTokenizer stringTokenizer2 = new StringTokenizer(nextToken, ".");
                int i13 = i10 + 1;
                iArr[i10] = (Integer.parseInt(stringTokenizer2.nextToken()) << 8) | Integer.parseInt(stringTokenizer2.nextToken());
                i10 = i13 + 1;
                iArr[i13] = Integer.parseInt(stringTokenizer2.nextToken()) | (Integer.parseInt(stringTokenizer2.nextToken()) << 8);
            }
        }
        if (i10 != 8) {
            int i14 = i10 - i4;
            int i15 = 8 - i14;
            System.arraycopy(iArr, i4, iArr, i15, i14);
            while (i4 != i15) {
                iArr[i4] = 0;
                i4++;
            }
        }
        return iArr;
    }

    private int[] parseMask(String str) {
        int[] iArr = new int[8];
        int parseInt = Integer.parseInt(str);
        for (int i4 = 0; i4 != parseInt; i4++) {
            int i10 = i4 / 16;
            iArr[i10] = iArr[i10] | (1 << (15 - (i4 % 16)));
        }
        return iArr;
    }

    private byte[] toGeneralNameEncoding(String str) {
        if (IPAddress.isValidIPv6WithNetmask(str) || IPAddress.isValidIPv6(str)) {
            int indexOf = str.indexOf(47);
            if (indexOf < 0) {
                byte[] bArr = new byte[16];
                copyInts(parseIPv6(str), bArr, 0);
                return bArr;
            }
            byte[] bArr2 = new byte[32];
            copyInts(parseIPv6(str.substring(0, indexOf)), bArr2, 0);
            String substring = str.substring(indexOf + 1);
            copyInts(substring.indexOf(58) > 0 ? parseIPv6(substring) : parseMask(substring), bArr2, 16);
            return bArr2;
        } else if (IPAddress.isValidIPv4WithNetmask(str) || IPAddress.isValidIPv4(str)) {
            int indexOf2 = str.indexOf(47);
            if (indexOf2 < 0) {
                byte[] bArr3 = new byte[4];
                parseIPv4(str, bArr3, 0);
                return bArr3;
            }
            byte[] bArr4 = new byte[8];
            parseIPv4(str.substring(0, indexOf2), bArr4, 0);
            String substring2 = str.substring(indexOf2 + 1);
            if (substring2.indexOf(46) > 0) {
                parseIPv4(substring2, bArr4, 4);
            } else {
                parseIPv4Mask(substring2, bArr4, 4);
            }
            return bArr4;
        } else {
            return null;
        }
    }

    public ASN1Encodable getName() {
        return this.obj;
    }

    public int getTagNo() {
        return this.tag;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        int i4 = this.tag;
        return new DERTaggedObject(i4 == 4, i4, this.obj);
    }

    public String toString() {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.tag);
        stringBuffer.append(": ");
        int i4 = this.tag;
        if (i4 != 1 && i4 != 2) {
            if (i4 == 4) {
                string = X500Name.getInstance(this.obj).toString();
            } else if (i4 != 6) {
                string = this.obj.toString();
            }
            stringBuffer.append(string);
            return stringBuffer.toString();
        }
        string = ASN1IA5String.getInstance(this.obj).getString();
        stringBuffer.append(string);
        return stringBuffer.toString();
    }
}
