package org.bouncycastle.util.encoders;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.Strings;

/* loaded from: classes5.dex */
public class Base64 {
    private static final Encoder encoder = new Base64Encoder();

    public static int decode(String str, OutputStream outputStream) throws IOException {
        return encoder.decode(str, outputStream);
    }

    public static int decode(byte[] bArr, int i4, int i10, OutputStream outputStream) {
        try {
            return encoder.decode(bArr, i4, i10, outputStream);
        } catch (Exception e4) {
            throw new DecoderException("unable to decode base64 data: " + e4.getMessage(), e4);
        }
    }

    public static byte[] decode(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((str.length() / 4) * 3);
        try {
            encoder.decode(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e4) {
            throw new DecoderException("unable to decode base64 string: " + e4.getMessage(), e4);
        }
    }

    public static byte[] decode(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((bArr.length / 4) * 3);
        try {
            encoder.decode(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e4) {
            throw new DecoderException("unable to decode base64 data: " + e4.getMessage(), e4);
        }
    }

    public static int encode(byte[] bArr, int i4, int i10, OutputStream outputStream) throws IOException {
        return encoder.encode(bArr, i4, i10, outputStream);
    }

    public static int encode(byte[] bArr, OutputStream outputStream) throws IOException {
        return encoder.encode(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public static byte[] encode(byte[] bArr, int i4, int i10) {
        Encoder encoder2 = encoder;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(encoder2.getEncodedLength(i10));
        try {
            encoder2.encode(bArr, i4, i10, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e4) {
            throw new EncoderException("exception encoding base64 string: " + e4.getMessage(), e4);
        }
    }

    public static String toBase64String(byte[] bArr) {
        return toBase64String(bArr, 0, bArr.length);
    }

    public static String toBase64String(byte[] bArr, int i4, int i10) {
        return Strings.fromByteArray(encode(bArr, i4, i10));
    }
}
