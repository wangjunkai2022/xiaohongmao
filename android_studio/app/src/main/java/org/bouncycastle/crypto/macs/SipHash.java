package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class SipHash implements Mac {

    /* renamed from: c  reason: collision with root package name */
    protected final int f91273c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f91274d;

    /* renamed from: k0  reason: collision with root package name */
    protected long f91275k0;

    /* renamed from: k1  reason: collision with root package name */
    protected long f91276k1;

    /* renamed from: m  reason: collision with root package name */
    protected long f91277m;

    /* renamed from: v0  reason: collision with root package name */
    protected long f91278v0;

    /* renamed from: v1  reason: collision with root package name */
    protected long f91279v1;

    /* renamed from: v2  reason: collision with root package name */
    protected long f91280v2;

    /* renamed from: v3  reason: collision with root package name */
    protected long f91281v3;
    protected int wordCount;
    protected int wordPos;

    public SipHash() {
        this.f91277m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f91273c = 2;
        this.f91274d = 4;
    }

    public SipHash(int i4, int i10) {
        this.f91277m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f91273c = i4;
        this.f91274d = i10;
    }

    protected static long rotateLeft(long j4, int i4) {
        return (j4 >>> (-i4)) | (j4 << i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applySipRounds(int i4) {
        long j4 = this.f91278v0;
        long j10 = this.f91279v1;
        long j11 = this.f91280v2;
        long j12 = this.f91281v3;
        for (int i10 = 0; i10 < i4; i10++) {
            long j13 = j4 + j10;
            long j14 = j11 + j12;
            long rotateLeft = rotateLeft(j10, 13) ^ j13;
            long rotateLeft2 = rotateLeft(j12, 16) ^ j14;
            long j15 = j14 + rotateLeft;
            j4 = rotateLeft(j13, 32) + rotateLeft2;
            j10 = rotateLeft(rotateLeft, 17) ^ j15;
            j12 = rotateLeft(rotateLeft2, 21) ^ j4;
            j11 = rotateLeft(j15, 32);
        }
        this.f91278v0 = j4;
        this.f91279v1 = j10;
        this.f91280v2 = j11;
        this.f91281v3 = j12;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        Pack.longToLittleEndian(doFinal(), bArr, i4);
        return 8;
    }

    public long doFinal() throws DataLengthException, IllegalStateException {
        int i4;
        this.f91277m = ((this.f91277m >>> ((7 - this.wordPos) << 3)) >>> 8) | ((((this.wordCount << 3) + i4) & 255) << 56);
        processMessageWord();
        this.f91280v2 ^= 255;
        applySipRounds(this.f91274d);
        long j4 = ((this.f91278v0 ^ this.f91279v1) ^ this.f91280v2) ^ this.f91281v3;
        reset();
        return j4;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash-" + this.f91273c + "-" + this.f91274d;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("'params' must be an instance of KeyParameter");
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("'params' must be a 128-bit key");
        }
        this.f91275k0 = Pack.littleEndianToLong(key, 0);
        this.f91276k1 = Pack.littleEndianToLong(key, 8);
        reset();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processMessageWord() {
        this.wordCount++;
        this.f91281v3 ^= this.f91277m;
        applySipRounds(this.f91273c);
        this.f91278v0 ^= this.f91277m;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        long j4 = this.f91275k0;
        this.f91278v0 = 8317987319222330741L ^ j4;
        long j10 = this.f91276k1;
        this.f91279v1 = 7237128888997146477L ^ j10;
        this.f91280v2 = j4 ^ 7816392313619706465L;
        this.f91281v3 = 8387220255154660723L ^ j10;
        this.f91277m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException {
        this.f91277m = (this.f91277m >>> 8) | ((b10 & 255) << 56);
        int i4 = this.wordPos + 1;
        this.wordPos = i4;
        if (i4 == 8) {
            processMessageWord();
            this.wordPos = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalStateException {
        int i11 = i10 & (-8);
        int i12 = this.wordPos;
        int i13 = 0;
        if (i12 == 0) {
            while (i13 < i11) {
                this.f91277m = Pack.littleEndianToLong(bArr, i4 + i13);
                processMessageWord();
                i13 += 8;
            }
            while (i13 < i10) {
                long j4 = this.f91277m >>> 8;
                this.f91277m = j4;
                this.f91277m = j4 | ((bArr[i4 + i13] & 255) << 56);
                i13++;
            }
            this.wordPos = i10 - i11;
            return;
        }
        int i14 = i12 << 3;
        int i15 = 0;
        while (i15 < i11) {
            long littleEndianToLong = Pack.littleEndianToLong(bArr, i4 + i15);
            this.f91277m = (this.f91277m >>> (-i14)) | (littleEndianToLong << i14);
            processMessageWord();
            this.f91277m = littleEndianToLong;
            i15 += 8;
        }
        while (i15 < i10) {
            long j10 = this.f91277m >>> 8;
            this.f91277m = j10;
            this.f91277m = j10 | ((bArr[i4 + i15] & 255) << 56);
            int i16 = this.wordPos + 1;
            this.wordPos = i16;
            if (i16 == 8) {
                processMessageWord();
                this.wordPos = 0;
            }
            i15++;
        }
    }
}
