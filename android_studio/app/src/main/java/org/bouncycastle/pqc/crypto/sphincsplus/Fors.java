package org.bouncycastle.pqc.crypto.sphincsplus;

import java.util.LinkedList;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
class Fors {
    SPHINCSPlusEngine engine;
    private final WotsPlus wots;

    public Fors(SPHINCSPlusEngine sPHINCSPlusEngine) {
        this.engine = sPHINCSPlusEngine;
        this.wots = new WotsPlus(sPHINCSPlusEngine);
    }

    static int[] message_to_idxs(byte[] bArr, int i4, int i10) {
        int[] iArr = new int[i4];
        int i11 = 0;
        for (int i12 = 0; i12 < i4; i12++) {
            iArr[i12] = 0;
            for (int i13 = 0; i13 < i10; i13++) {
                iArr[i12] = iArr[i12] ^ (((bArr[i11 >> 3] >> (i11 & 7)) & 1) << i13);
                i11++;
            }
        }
        return iArr;
    }

    public byte[] pkFromSig(SIG_FORS[] sig_forsArr, byte[] bArr, byte[] bArr2, ADRS adrs) {
        int i4 = 2;
        byte[][] bArr3 = new byte[2];
        SPHINCSPlusEngine sPHINCSPlusEngine = this.engine;
        int i10 = sPHINCSPlusEngine.K;
        byte[][] bArr4 = new byte[i10];
        int i11 = sPHINCSPlusEngine.T;
        int[] message_to_idxs = message_to_idxs(bArr, i10, sPHINCSPlusEngine.A);
        int i12 = 0;
        while (i12 < this.engine.K) {
            int i13 = message_to_idxs[i12];
            byte[] sk = sig_forsArr[i12].getSK();
            adrs.setTreeHeight(0);
            int i14 = (i12 * i11) + i13;
            adrs.setTreeIndex(i14);
            bArr3[0] = this.engine.F(bArr2, adrs, sk);
            byte[][] authPath = sig_forsArr[i12].getAuthPath();
            adrs.setTreeIndex(i14);
            int i15 = 0;
            while (i15 < this.engine.A) {
                int i16 = i15 + 1;
                adrs.setTreeHeight(i16);
                if ((i13 / (1 << i15)) % i4 == 0) {
                    adrs.setTreeIndex(adrs.getTreeIndex() / i4);
                    bArr3[1] = this.engine.H(bArr2, adrs, bArr3[0], authPath[i15]);
                } else {
                    adrs.setTreeIndex((adrs.getTreeIndex() - 1) / 2);
                    bArr3[1] = this.engine.H(bArr2, adrs, authPath[i15], bArr3[0]);
                }
                bArr3[0] = bArr3[1];
                i15 = i16;
                i4 = 2;
            }
            bArr4[i12] = bArr3[0];
            i12++;
            i4 = 2;
        }
        ADRS adrs2 = new ADRS(adrs);
        adrs2.setType(4);
        adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
        return this.engine.T_l(bArr2, adrs2, Arrays.concatenate(bArr4));
    }

    byte[] pkGen(byte[] bArr, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        byte[][] bArr3 = new byte[this.engine.K];
        int i4 = 0;
        while (true) {
            SPHINCSPlusEngine sPHINCSPlusEngine = this.engine;
            if (i4 >= sPHINCSPlusEngine.K) {
                adrs2.setType(4);
                adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
                return this.engine.T_l(bArr2, adrs2, Arrays.concatenate(bArr3));
            }
            bArr3[i4] = treehash(bArr, i4 * sPHINCSPlusEngine.T, sPHINCSPlusEngine.A, bArr2, adrs);
            i4++;
        }
    }

    public SIG_FORS[] sign(byte[] bArr, byte[] bArr2, byte[] bArr3, ADRS adrs) {
        Fors fors = this;
        SPHINCSPlusEngine sPHINCSPlusEngine = fors.engine;
        int[] message_to_idxs = message_to_idxs(bArr, sPHINCSPlusEngine.K, sPHINCSPlusEngine.A);
        SPHINCSPlusEngine sPHINCSPlusEngine2 = fors.engine;
        SIG_FORS[] sig_forsArr = new SIG_FORS[sPHINCSPlusEngine2.K];
        int i4 = sPHINCSPlusEngine2.T;
        int i10 = 0;
        int i11 = 0;
        while (i11 < fors.engine.K) {
            int i12 = message_to_idxs[i11];
            adrs.setTreeHeight(i10);
            int i13 = i11 * i4;
            adrs.setTreeIndex(i13 + i12);
            byte[] PRF = fors.engine.PRF(bArr2, adrs);
            byte[][] bArr4 = new byte[fors.engine.A];
            int i14 = 0;
            while (i14 < fors.engine.A) {
                int i15 = 1 << i14;
                int i16 = i14;
                byte[][] bArr5 = bArr4;
                bArr5[i16] = treehash(bArr2, i13 + ((1 ^ (i12 / i15)) * i15), i14, bArr3, adrs);
                i14 = i16 + 1;
                PRF = PRF;
                bArr4 = bArr5;
                fors = this;
            }
            sig_forsArr[i11] = new SIG_FORS(PRF, bArr4);
            i11++;
            i10 = 0;
            fors = this;
        }
        return sig_forsArr;
    }

    byte[] treehash(byte[] bArr, int i4, int i10, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        LinkedList linkedList = new LinkedList();
        int i11 = 1 << i10;
        if (i4 % i11 != 0) {
            return null;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            adrs2.setTreeHeight(0);
            int i13 = i4 + i12;
            adrs2.setTreeIndex(i13);
            byte[] F = this.engine.F(bArr2, adrs2, this.engine.PRF(bArr, adrs2));
            adrs2.setTreeHeight(1);
            adrs2.setTreeIndex(i13);
            while (!linkedList.isEmpty() && ((NodeEntry) linkedList.get(0)).nodeHeight == adrs2.getTreeHeight()) {
                adrs2.setTreeIndex((adrs2.getTreeIndex() - 1) / 2);
                F = this.engine.H(bArr2, adrs2, ((NodeEntry) linkedList.remove(0)).nodeValue, F);
                adrs2.setTreeHeight(adrs2.getTreeHeight() + 1);
            }
            linkedList.add(0, new NodeEntry(F, adrs2.getTreeHeight()));
        }
        return ((NodeEntry) linkedList.get(0)).nodeValue;
    }
}
