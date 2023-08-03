package org.bouncycastle.asn1;

import com.google.common.base.c;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public abstract class ASN1BitString extends ASN1Primitive implements ASN1String, ASN1BitStringParser {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1BitString.class, 3) { // from class: org.bouncycastle.asn1.ASN1BitString.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitConstructed(ASN1Sequence aSN1Sequence) {
            return aSN1Sequence.toASN1BitString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1BitString.createPrimitive(dEROctetString.getOctets());
        }
    };
    private static final char[] table = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    final byte[] contents;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1BitString(byte b10, int i4) {
        if (i4 > 7 || i4 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.contents = new byte[]{(byte) i4, b10};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1BitString(byte[] bArr, int i4) {
        Objects.requireNonNull(bArr, "'data' cannot be null");
        if (bArr.length == 0 && i4 != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (i4 > 7 || i4 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.contents = Arrays.prepend(bArr, (byte) i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1BitString(byte[] bArr, boolean z9) {
        if (z9) {
            Objects.requireNonNull(bArr, "'contents' cannot be null");
            if (bArr.length < 1) {
                throw new IllegalArgumentException("'contents' cannot be empty");
            }
            int i4 = bArr[0] & 255;
            if (i4 > 0) {
                if (bArr.length < 2) {
                    throw new IllegalArgumentException("zero length data with non-zero pad bits");
                }
                if (i4 > 7) {
                    throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
                }
            }
        }
        this.contents = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1BitString createPrimitive(byte[] bArr) {
        int length = bArr.length;
        if (length >= 1) {
            int i4 = bArr[0] & 255;
            if (i4 > 0) {
                if (i4 > 7 || length < 2) {
                    throw new IllegalArgumentException("invalid pad bits detected");
                }
                byte b10 = bArr[length - 1];
                if (b10 != ((byte) ((255 << i4) & b10))) {
                    return new DLBitString(bArr, false);
                }
            }
            return new DERBitString(bArr, false);
        }
        throw new IllegalArgumentException("truncated BIT STRING detected");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] getBytes(int i4) {
        if (i4 == 0) {
            return new byte[0];
        }
        int i10 = 4;
        for (int i11 = 3; i11 >= 1 && ((255 << (i11 * 8)) & i4) == 0; i11--) {
            i10--;
        }
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) ((i4 >> (i12 * 8)) & 255);
        }
        return bArr;
    }

    public static ASN1BitString getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1BitString)) {
            return (ASN1BitString) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1BitString) {
                return (ASN1BitString) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (ASN1BitString) TYPE.fromByteArray((byte[]) obj);
            } catch (IOException e4) {
                throw new IllegalArgumentException("failed to construct BIT STRING from byte[]: " + e4.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1BitString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1BitString) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int getPadBits(int i4) {
        int i10;
        int i11 = 3;
        while (true) {
            if (i11 < 0) {
                i10 = 0;
                break;
            } else if (i11 != 0) {
                int i12 = i4 >> (i11 * 8);
                if (i12 != 0) {
                    i10 = i12 & 255;
                    break;
                }
                i11--;
            } else if (i4 != 0) {
                i10 = i4 & 255;
                break;
            } else {
                i11--;
            }
        }
        if (i10 == 0) {
            return 0;
        }
        int i13 = 1;
        while (true) {
            i10 <<= 1;
            if ((i10 & 255) == 0) {
                return 8 - i13;
            }
            i13++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1BitString) {
            byte[] bArr = this.contents;
            byte[] bArr2 = ((ASN1BitString) aSN1Primitive).contents;
            int length = bArr.length;
            if (bArr2.length != length) {
                return false;
            }
            if (length == 1) {
                return true;
            }
            int i4 = length - 1;
            for (int i10 = 0; i10 < i4; i10++) {
                if (bArr[i10] != bArr2[i10]) {
                    return false;
                }
            }
            int i11 = 255 << (bArr[0] & 255);
            return ((byte) (bArr[i4] & i11)) == ((byte) (bArr2[i4] & i11));
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getBitStream() throws IOException {
        byte[] bArr = this.contents;
        return new ByteArrayInputStream(bArr, 1, bArr.length - 1);
    }

    public byte[] getBytes() {
        byte[] bArr = this.contents;
        if (bArr.length == 1) {
            return ASN1OctetString.EMPTY_OCTETS;
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, 1, bArr.length);
        int length = copyOfRange.length - 1;
        copyOfRange[length] = (byte) (((byte) (255 << (bArr[0] & 255))) & copyOfRange[length]);
        return copyOfRange;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() {
        return toASN1Primitive();
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getOctetStream() throws IOException {
        int i4 = this.contents[0] & 255;
        if (i4 == 0) {
            return getBitStream();
        }
        throw new IOException("expected octet-aligned bitstring, but found padBits: " + i4);
    }

    public byte[] getOctets() {
        byte[] bArr = this.contents;
        if (bArr[0] == 0) {
            return Arrays.copyOfRange(bArr, 1, bArr.length);
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public int getPadBits() {
        return this.contents[0] & 255;
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        try {
            byte[] encoded = getEncoded();
            StringBuffer stringBuffer = new StringBuffer((encoded.length * 2) + 1);
            stringBuffer.append('#');
            for (int i4 = 0; i4 != encoded.length; i4++) {
                byte b10 = encoded[i4];
                char[] cArr = table;
                stringBuffer.append(cArr[(b10 >>> 4) & 15]);
                stringBuffer.append(cArr[b10 & c.f32110q]);
            }
            return stringBuffer.toString();
        } catch (IOException e4) {
            throw new ASN1ParsingException("Internal error encoding BitString: " + e4.getMessage(), e4);
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        byte[] bArr = this.contents;
        if (bArr.length < 2) {
            return 1;
        }
        int length = bArr.length - 1;
        return (Arrays.hashCode(bArr, 0, length) * 257) ^ ((byte) (bArr[length] & (255 << (bArr[0] & 255))));
    }

    public int intValue() {
        int min = Math.min(5, this.contents.length - 1);
        int i4 = 0;
        for (int i10 = 1; i10 < min; i10++) {
            i4 |= (255 & this.contents[i10]) << ((i10 - 1) * 8);
        }
        if (1 > min || min >= 5) {
            return i4;
        }
        byte[] bArr = this.contents;
        return i4 | ((((byte) (bArr[min] & (255 << (bArr[0] & 255)))) & 255) << ((min - 1) * 8));
    }

    public ASN1BitStringParser parser() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERBitString(this.contents, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLBitString(this.contents, false);
    }

    public String toString() {
        return getString();
    }
}
