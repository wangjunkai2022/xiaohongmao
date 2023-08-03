package org.bouncycastle.util.encoders;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.Strings;

/* loaded from: classes5.dex */
public class Hex {
    private static final HexEncoder encoder = new HexEncoder();

    public static int decode(String str, OutputStream outputStream) throws IOException {
        return encoder.decode(str, outputStream);
    }

    public static byte[] decode(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.decode(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e4) {
            throw new DecoderException("exception decoding Hex string: " + e4.getMessage(), e4);
        }
    }

    public static byte[] decode(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.decode(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e4) {
            throw new DecoderException("exception decoding Hex data: " + e4.getMessage(), e4);
        }
    }

    public static byte[] decodeStrict(String str) {
        try {
            return encoder.decodeStrict(str, 0, str.length());
        } catch (Exception e4) {
            throw new DecoderException("exception decoding Hex string: " + e4.getMessage(), e4);
        }
    }

    public static byte[] decodeStrict(String str, int i4, int i10) {
        try {
            return encoder.decodeStrict(str, i4, i10);
        } catch (Exception e4) {
            throw new DecoderException("exception decoding Hex string: " + e4.getMessage(), e4);
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
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.encode(bArr, i4, i10, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e4) {
            throw new EncoderException("exception encoding Hex string: " + e4.getMessage(), e4);
        }
    }

    public static String toHexString(byte[] bArr) {
        return toHexString(bArr, 0, bArr.length);
    }

    public static String toHexString(byte[] bArr, int i4, int i10) {
        return Strings.fromByteArray(encode(bArr, i4, i10));
    }
}
