package org.bouncycastle.util.io.pem;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Base64;

/* loaded from: classes5.dex */
public class PemWriter extends BufferedWriter {
    private static final int LINE_LENGTH = 64;
    private char[] buf;
    private final int nlLength;

    public PemWriter(Writer writer) {
        super(writer);
        this.buf = new char[64];
        String lineSeparator = Strings.lineSeparator();
        this.nlLength = lineSeparator != null ? lineSeparator.length() : 2;
    }

    private void writeEncoded(byte[] bArr) throws IOException {
        char[] cArr;
        int i4;
        byte[] encode = Base64.encode(bArr);
        int i10 = 0;
        while (i10 < encode.length) {
            int i11 = 0;
            while (true) {
                cArr = this.buf;
                if (i11 != cArr.length && (i4 = i10 + i11) < encode.length) {
                    cArr[i11] = (char) encode[i4];
                    i11++;
                }
            }
            write(cArr, 0, i11);
            newLine();
            i10 += this.buf.length;
        }
    }

    private void writePostEncapsulationBoundary(String str) throws IOException {
        write("-----END " + str + "-----");
        newLine();
    }

    private void writePreEncapsulationBoundary(String str) throws IOException {
        write("-----BEGIN " + str + "-----");
        newLine();
    }

    public int getOutputSize(PemObject pemObject) {
        int length = ((pemObject.getType().length() + 10 + this.nlLength) * 2) + 6 + 4;
        if (!pemObject.getHeaders().isEmpty()) {
            for (PemHeader pemHeader : pemObject.getHeaders()) {
                length += pemHeader.getName().length() + 2 + pemHeader.getValue().length() + this.nlLength;
            }
            length += this.nlLength;
        }
        int length2 = ((pemObject.getContent().length + 2) / 3) * 4;
        return length + length2 + ((((length2 + 64) - 1) / 64) * this.nlLength);
    }

    public void writeObject(PemObjectGenerator pemObjectGenerator) throws IOException {
        PemObject generate = pemObjectGenerator.generate();
        writePreEncapsulationBoundary(generate.getType());
        if (!generate.getHeaders().isEmpty()) {
            for (PemHeader pemHeader : generate.getHeaders()) {
                write(pemHeader.getName());
                write(": ");
                write(pemHeader.getValue());
                newLine();
            }
            newLine();
        }
        writeEncoded(generate.getContent());
        writePostEncapsulationBoundary(generate.getType());
    }
}
