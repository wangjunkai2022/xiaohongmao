package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public class ASN1OutputStream {
    private OutputStream os;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1OutputStream(OutputStream outputStream) {
        this.os = outputStream;
    }

    public static ASN1OutputStream create(OutputStream outputStream) {
        return new ASN1OutputStream(outputStream);
    }

    public static ASN1OutputStream create(OutputStream outputStream, String str) {
        return str.equals(ASN1Encoding.DER) ? new DEROutputStream(outputStream) : str.equals(ASN1Encoding.DL) ? new DLOutputStream(outputStream) : new ASN1OutputStream(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getLengthOfDL(int i4) {
        if (i4 < 128) {
            return 1;
        }
        int i10 = 2;
        while (true) {
            i4 >>>= 8;
            if (i4 == 0) {
                return i10;
            }
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getLengthOfEncodingDL(boolean z9, int i4) {
        return (z9 ? 1 : 0) + getLengthOfDL(i4) + i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getLengthOfIdentifier(int i4) {
        if (i4 < 31) {
            return 1;
        }
        int i10 = 2;
        while (true) {
            i4 >>>= 7;
            if (i4 == 0) {
                return i10;
            }
            i10++;
        }
    }

    public void close() throws IOException {
        this.os.close();
    }

    public void flush() throws IOException {
        this.os.flush();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void flushInternal() throws IOException {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DEROutputStream getDERSubStream() {
        return new DEROutputStream(this.os);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DLOutputStream getDLSubStream() {
        return new DLOutputStream(this.os);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void write(int i4) throws IOException {
        this.os.write(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void write(byte[] bArr, int i4, int i10) throws IOException {
        this.os.write(bArr, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeDL(int i4) throws IOException {
        if (i4 < 128) {
            write(i4);
            return;
        }
        int i10 = 5;
        byte[] bArr = new byte[5];
        do {
            i10--;
            bArr[i10] = (byte) i4;
            i4 >>>= 8;
        } while (i4 != 0);
        int i11 = 5 - i10;
        int i12 = i10 - 1;
        bArr[i12] = (byte) (i11 | 128);
        write(bArr, i12, i11 + 1);
    }

    void writeElements(ASN1Encodable[] aSN1EncodableArr) throws IOException {
        for (ASN1Encodable aSN1Encodable : aSN1EncodableArr) {
            aSN1Encodable.toASN1Primitive().encode(this, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeEncodingDL(boolean z9, int i4, byte b10) throws IOException {
        writeIdentifier(z9, i4);
        writeDL(1);
        write(b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeEncodingDL(boolean z9, int i4, byte b10, byte[] bArr, int i10, int i11) throws IOException {
        writeIdentifier(z9, i4);
        writeDL(i11 + 1);
        write(b10);
        write(bArr, i10, i11);
    }

    final void writeEncodingDL(boolean z9, int i4, int i10, byte[] bArr) throws IOException {
        writeIdentifier(z9, i4, i10);
        writeDL(bArr.length);
        write(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeEncodingDL(boolean z9, int i4, byte[] bArr) throws IOException {
        writeIdentifier(z9, i4);
        writeDL(bArr.length);
        write(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeEncodingDL(boolean z9, int i4, byte[] bArr, int i10, int i11) throws IOException {
        writeIdentifier(z9, i4);
        writeDL(i11);
        write(bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeEncodingDL(boolean z9, int i4, byte[] bArr, int i10, int i11, byte b10) throws IOException {
        writeIdentifier(z9, i4);
        writeDL(i11 + 1);
        write(bArr, i10, i11);
        write(b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeEncodingIL(boolean z9, int i4, ASN1Encodable[] aSN1EncodableArr) throws IOException {
        writeIdentifier(z9, i4);
        write(128);
        writeElements(aSN1EncodableArr);
        write(0);
        write(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeIdentifier(boolean z9, int i4) throws IOException {
        if (z9) {
            write(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeIdentifier(boolean z9, int i4, int i10) throws IOException {
        if (z9) {
            if (i10 < 31) {
                write(i4 | i10);
                return;
            }
            byte[] bArr = new byte[6];
            int i11 = 5;
            bArr[5] = (byte) (i10 & 127);
            while (i10 > 127) {
                i10 >>>= 7;
                i11--;
                bArr[i11] = (byte) ((i10 & 127) | 128);
            }
            int i12 = i11 - 1;
            bArr[i12] = (byte) (31 | i4);
            write(bArr, i12, 6 - i12);
        }
    }

    public final void writeObject(ASN1Encodable aSN1Encodable) throws IOException {
        if (aSN1Encodable == null) {
            throw new IOException("null object detected");
        }
        writePrimitive(aSN1Encodable.toASN1Primitive(), true);
        flushInternal();
    }

    public final void writeObject(ASN1Primitive aSN1Primitive) throws IOException {
        if (aSN1Primitive == null) {
            throw new IOException("null object detected");
        }
        writePrimitive(aSN1Primitive, true);
        flushInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writePrimitive(ASN1Primitive aSN1Primitive, boolean z9) throws IOException {
        aSN1Primitive.encode(this, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writePrimitives(ASN1Primitive[] aSN1PrimitiveArr) throws IOException {
        for (ASN1Primitive aSN1Primitive : aSN1PrimitiveArr) {
            aSN1Primitive.encode(this, true);
        }
    }
}
