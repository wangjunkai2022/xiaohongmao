package org.bouncycastle.asn1;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes4.dex */
class DefiniteLengthInputStream extends LimitedInputStream {
    private static final byte[] EMPTY_BYTES = new byte[0];
    private final int _originalLength;
    private int _remaining;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefiniteLengthInputStream(InputStream inputStream, int i4, int i10) {
        super(inputStream, i10);
        if (i4 <= 0) {
            if (i4 < 0) {
                throw new IllegalArgumentException("negative lengths not allowed");
            }
            setParentEofDetect(true);
        }
        this._originalLength = i4;
        this._remaining = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRemaining() {
        return this._remaining;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this._remaining == 0) {
            return -1;
        }
        int read = this._in.read();
        if (read >= 0) {
            int i4 = this._remaining - 1;
            this._remaining = i4;
            if (i4 == 0) {
                setParentEofDetect(true);
            }
            return read;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        int i11 = this._remaining;
        if (i11 == 0) {
            return -1;
        }
        int read = this._in.read(bArr, i4, Math.min(i10, i11));
        if (read >= 0) {
            int i12 = this._remaining - read;
            this._remaining = i12;
            if (i12 == 0) {
                setParentEofDetect(true);
            }
            return read;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void readAllIntoByteArray(byte[] bArr) throws IOException {
        int i4 = this._remaining;
        if (i4 != bArr.length) {
            throw new IllegalArgumentException("buffer length not right for data");
        }
        if (i4 == 0) {
            return;
        }
        int limit = getLimit();
        int i10 = this._remaining;
        if (i10 >= limit) {
            throw new IOException("corrupted stream - out of bounds length found: " + this._remaining + " >= " + limit);
        }
        int readFully = i10 - Streams.readFully(this._in, bArr, 0, bArr.length);
        this._remaining = readFully;
        if (readFully == 0) {
            setParentEofDetect(true);
            return;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] toByteArray() throws IOException {
        if (this._remaining == 0) {
            return EMPTY_BYTES;
        }
        int limit = getLimit();
        int i4 = this._remaining;
        if (i4 >= limit) {
            throw new IOException("corrupted stream - out of bounds length found: " + this._remaining + " >= " + limit);
        }
        byte[] bArr = new byte[i4];
        int readFully = i4 - Streams.readFully(this._in, bArr, 0, i4);
        this._remaining = readFully;
        if (readFully == 0) {
            setParentEofDetect(true);
            return bArr;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }
}
