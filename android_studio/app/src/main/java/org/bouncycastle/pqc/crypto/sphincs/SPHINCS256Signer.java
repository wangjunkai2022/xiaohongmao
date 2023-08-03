package org.bouncycastle.pqc.crypto.sphincs;

import com.ksyun.media.player.IMediaPlayer;
import com.qennnsad.aknkaksd.util.a1;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.crypto.sphincs.Tree;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public class SPHINCS256Signer implements MessageSigner {
    private final HashFunctions hashFunctions;
    private byte[] keyData;

    public SPHINCS256Signer(Digest digest, Digest digest2) {
        if (digest.getDigestSize() != 32) {
            throw new IllegalArgumentException("n-digest needs to produce 32 bytes of output");
        }
        if (digest2.getDigestSize() != 64) {
            throw new IllegalArgumentException("2n-digest needs to produce 64 bytes of output");
        }
        this.hashFunctions = new HashFunctions(digest, digest2);
    }

    static void compute_authpath_wots(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i4, Tree.leafaddr leafaddrVar, byte[] bArr3, byte[] bArr4, int i10) {
        Tree.leafaddr leafaddrVar2 = new Tree.leafaddr(leafaddrVar);
        byte[] bArr5 = new byte[2048];
        byte[] bArr6 = new byte[1024];
        byte[] bArr7 = new byte[68608];
        leafaddrVar2.subleaf = 0L;
        while (true) {
            long j4 = leafaddrVar2.subleaf;
            if (j4 >= 32) {
                break;
            }
            Seed.get_seed(hashFunctions, bArr6, (int) (j4 * 32), bArr3, leafaddrVar2);
            leafaddrVar2.subleaf++;
        }
        Wots wots = new Wots();
        leafaddrVar2.subleaf = 0L;
        while (true) {
            long j10 = leafaddrVar2.subleaf;
            if (j10 >= 32) {
                break;
            }
            wots.wots_pkgen(hashFunctions, bArr7, (int) (67 * j10 * 32), bArr6, (int) (j10 * 32), bArr4, 0);
            leafaddrVar2.subleaf++;
        }
        leafaddrVar2.subleaf = 0L;
        while (true) {
            long j11 = leafaddrVar2.subleaf;
            if (j11 >= 32) {
                break;
            }
            Tree.l_tree(hashFunctions, bArr5, (int) ((j11 * 32) + 1024), bArr7, (int) (j11 * 67 * 32), bArr4, 0);
            leafaddrVar2.subleaf++;
        }
        int i11 = 0;
        for (int i12 = 32; i12 > 0; i12 >>>= 1) {
            for (int i13 = 0; i13 < i12; i13 += 2) {
                hashFunctions.hash_2n_n_mask(bArr5, ((i12 >>> 1) * 32) + ((i13 >>> 1) * 32), bArr5, (i12 * 32) + (i13 * 32), bArr4, (i11 + 7) * 2 * 32);
            }
            i11++;
        }
        int i14 = (int) leafaddrVar.subleaf;
        for (int i15 = 0; i15 < i10; i15++) {
            System.arraycopy(bArr5, ((32 >>> i15) * 32) + (((i14 >>> i15) ^ 1) * 32), bArr2, i4 + (i15 * 32), 32);
        }
        System.arraycopy(bArr5, 32, bArr, 0, 32);
    }

    static void validate_authpath(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i4, byte[] bArr3, int i10, byte[] bArr4, int i11) {
        byte[] bArr5 = new byte[64];
        if ((i4 & 1) != 0) {
            for (int i12 = 0; i12 < 32; i12++) {
                bArr5[i12 + 32] = bArr2[i12];
            }
            for (int i13 = 0; i13 < 32; i13++) {
                bArr5[i13] = bArr3[i10 + i13];
            }
        } else {
            for (int i14 = 0; i14 < 32; i14++) {
                bArr5[i14] = bArr2[i14];
            }
            for (int i15 = 0; i15 < 32; i15++) {
                bArr5[i15 + 32] = bArr3[i10 + i15];
            }
        }
        int i16 = i10 + 32;
        int i17 = 0;
        int i18 = i4;
        while (i17 < i11 - 1) {
            int i19 = i18 >>> 1;
            if ((i19 & 1) != 0) {
                hashFunctions.hash_2n_n_mask(bArr5, 32, bArr5, 0, bArr4, (i17 + 7) * 2 * 32);
                for (int i20 = 0; i20 < 32; i20++) {
                    bArr5[i20] = bArr3[i16 + i20];
                }
            } else {
                hashFunctions.hash_2n_n_mask(bArr5, 0, bArr5, 0, bArr4, (i17 + 7) * 2 * 32);
                for (int i21 = 0; i21 < 32; i21++) {
                    bArr5[i21 + 32] = bArr3[i16 + i21];
                }
            }
            i16 += 32;
            i17++;
            i18 = i19;
        }
        hashFunctions.hash_2n_n_mask(bArr, 0, bArr5, 0, bArr4, ((i11 + 7) - 1) * 2 * 32);
    }

    private void zerobytes(byte[] bArr, int i4, int i10) {
        for (int i11 = 0; i11 != i10; i11++) {
            bArr[i4 + i11] = 0;
        }
    }

    byte[] crypto_sign(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[IMediaPlayer.MEDIA_INFO_HARDWARE_DECODE];
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[64];
        long[] jArr = new long[8];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[32];
        byte[] bArr8 = new byte[1024];
        byte[] bArr9 = new byte[1088];
        for (int i4 = 0; i4 < 1088; i4++) {
            bArr9[i4] = bArr2[i4];
        }
        System.arraycopy(bArr9, 1056, bArr3, 40968, 32);
        Digest messageHash = hashFunctions.getMessageHash();
        byte[] bArr10 = new byte[messageHash.getDigestSize()];
        messageHash.update(bArr3, 40968, 32);
        messageHash.update(bArr, 0, bArr.length);
        messageHash.doFinal(bArr10, 0);
        zerobytes(bArr3, 40968, 32);
        for (int i10 = 0; i10 != 8; i10++) {
            jArr[i10] = Pack.littleEndianToLong(bArr10, i10 * 8);
        }
        long j4 = jArr[0] & 1152921504606846975L;
        System.arraycopy(bArr10, 16, bArr4, 0, 32);
        System.arraycopy(bArr4, 0, bArr3, 39912, 32);
        Tree.leafaddr leafaddrVar = new Tree.leafaddr();
        leafaddrVar.level = 11;
        leafaddrVar.subtree = 0L;
        leafaddrVar.subleaf = 0L;
        System.arraycopy(bArr9, 32, bArr3, 39944, 1024);
        Tree.treehash(hashFunctions, bArr3, 40968, 5, bArr9, leafaddrVar, bArr3, 39944);
        Digest messageHash2 = hashFunctions.getMessageHash();
        messageHash2.update(bArr3, 39912, 1088);
        messageHash2.update(bArr, 0, bArr.length);
        messageHash2.doFinal(bArr5, 0);
        Tree.leafaddr leafaddrVar2 = new Tree.leafaddr();
        leafaddrVar2.level = 12;
        leafaddrVar2.subleaf = (int) (j4 & 31);
        leafaddrVar2.subtree = j4 >>> 5;
        for (int i11 = 0; i11 < 32; i11++) {
            bArr3[i11] = bArr4[i11];
        }
        byte[] bArr11 = bArr8;
        System.arraycopy(bArr9, 32, bArr11, 0, 1024);
        for (int i12 = 0; i12 < 8; i12++) {
            bArr3[32 + i12] = (byte) ((j4 >>> (i12 * 8)) & 255);
        }
        Seed.get_seed(hashFunctions, bArr7, 0, bArr9, leafaddrVar2);
        new Horst();
        byte[] bArr12 = bArr9;
        Wots wots = new Wots();
        int horst_sign = 40 + Horst.horst_sign(hashFunctions, bArr3, 40, bArr6, bArr7, bArr11, bArr5);
        int i13 = 0;
        for (int i14 = 12; i13 < i14; i14 = 12) {
            leafaddrVar2.level = i13;
            byte[] bArr13 = bArr12;
            Seed.get_seed(hashFunctions, bArr7, 0, bArr13, leafaddrVar2);
            int i15 = horst_sign;
            int i16 = horst_sign;
            byte[] bArr14 = bArr11;
            wots.wots_sign(hashFunctions, bArr3, i15, bArr6, bArr7, bArr14);
            int i17 = i16 + 2144;
            compute_authpath_wots(hashFunctions, bArr6, bArr3, i17, leafaddrVar2, bArr13, bArr14, 5);
            horst_sign = i17 + a1.f54532a;
            long j10 = leafaddrVar2.subtree;
            leafaddrVar2.subleaf = (int) (j10 & 31);
            leafaddrVar2.subtree = j10 >>> 5;
            i13++;
            bArr12 = bArr13;
            bArr11 = bArr11;
        }
        zerobytes(bArr12, 0, 1088);
        return bArr3;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        return crypto_sign(this.hashFunctions, bArr, this.keyData);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!z9) {
            this.keyData = ((SPHINCSPublicKeyParameters) cipherParameters).getKeyData();
        } else if (cipherParameters instanceof ParametersWithRandom) {
            this.keyData = ((SPHINCSPrivateKeyParameters) ((ParametersWithRandom) cipherParameters).getParameters()).getKeyData();
        } else {
            this.keyData = ((SPHINCSPrivateKeyParameters) cipherParameters).getKeyData();
        }
    }

    boolean verify(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int length = bArr2.length;
        byte[] bArr4 = new byte[2144];
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[IMediaPlayer.MEDIA_INFO_HARDWARE_DECODE];
        byte[] bArr8 = new byte[1056];
        if (length == 41000) {
            byte[] bArr9 = new byte[64];
            for (int i4 = 0; i4 < 1056; i4++) {
                bArr8[i4] = bArr3[i4];
            }
            byte[] bArr10 = new byte[32];
            for (int i10 = 0; i10 < 32; i10++) {
                bArr10[i10] = bArr2[i10];
            }
            System.arraycopy(bArr2, 0, bArr7, 0, IMediaPlayer.MEDIA_INFO_HARDWARE_DECODE);
            Digest messageHash = hashFunctions.getMessageHash();
            messageHash.update(bArr10, 0, 32);
            messageHash.update(bArr8, 0, 1056);
            messageHash.update(bArr, 0, bArr.length);
            messageHash.doFinal(bArr9, 0);
            long j4 = 0;
            for (int i11 = 0; i11 < 8; i11++) {
                j4 ^= (bArr7[32 + i11] & 255) << (i11 * 8);
            }
            new Horst();
            Horst.horst_verify(hashFunctions, bArr6, bArr7, 40, bArr8, bArr9);
            Wots wots = new Wots();
            int i12 = 0;
            int i13 = 13352;
            while (i12 < 12) {
                byte[] bArr11 = bArr8;
                wots.wots_verify(hashFunctions, bArr4, bArr7, i13, bArr6, bArr8);
                int i14 = i13 + 2144;
                Tree.l_tree(hashFunctions, bArr5, 0, bArr4, 0, bArr11, 0);
                byte[] bArr12 = bArr7;
                validate_authpath(hashFunctions, bArr6, bArr5, (int) (31 & j4), bArr12, i14, bArr11, 5);
                j4 >>= 5;
                i13 = i14 + a1.f54532a;
                i12++;
                bArr7 = bArr12;
                bArr8 = bArr11;
            }
            byte[] bArr13 = bArr8;
            boolean z9 = true;
            for (int i15 = 0; i15 < 32; i15++) {
                if (bArr6[i15] != bArr13[i15 + 1024]) {
                    z9 = false;
                }
            }
            return z9;
        }
        throw new IllegalArgumentException("signature wrong size");
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        return verify(this.hashFunctions, bArr, bArr2, this.keyData);
    }
}
