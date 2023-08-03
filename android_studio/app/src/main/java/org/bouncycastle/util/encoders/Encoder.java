package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes5.dex */
public interface Encoder {
    int decode(String str, OutputStream outputStream) throws IOException;

    int decode(byte[] bArr, int i4, int i10, OutputStream outputStream) throws IOException;

    int encode(byte[] bArr, int i4, int i10, OutputStream outputStream) throws IOException;

    int getEncodedLength(int i4);

    int getMaxDecodedLength(int i4);
}
