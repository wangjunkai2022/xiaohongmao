package org.bouncycastle.pqc.crypto.sphincsplus;

import java.util.LinkedList;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
class HT {
    SPHINCSPlusEngine engine;
    final byte[] htPubKey;
    private final byte[] pkSeed;
    private final byte[] skSeed;
    WotsPlus wots;

    public HT(SPHINCSPlusEngine sPHINCSPlusEngine, byte[] bArr, byte[] bArr2) {
        this.skSeed = bArr;
        this.pkSeed = bArr2;
        this.engine = sPHINCSPlusEngine;
        this.wots = new WotsPlus(sPHINCSPlusEngine);
        ADRS adrs = new ADRS();
        adrs.setLayerAddress(sPHINCSPlusEngine.D - 1);
        adrs.setTreeAddress(0L);
        if (bArr != null) {
            this.htPubKey = xmss_PKgen(bArr, bArr2, adrs);
        } else {
            this.htPubKey = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] sign(byte[] bArr, long j4, int i4) {
        long j10 = j4;
        ADRS adrs = new ADRS();
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j10);
        SIG_XMSS xmss_sign = xmss_sign(bArr, this.skSeed, i4, this.pkSeed, adrs);
        int i10 = this.engine.D;
        SIG_XMSS[] sig_xmssArr = new SIG_XMSS[i10];
        sig_xmssArr[0] = xmss_sign;
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j10);
        byte[] xmss_pkFromSig = xmss_pkFromSig(i4, xmss_sign, bArr, this.pkSeed, adrs);
        int i11 = 1;
        while (true) {
            SPHINCSPlusEngine sPHINCSPlusEngine = this.engine;
            if (i11 >= sPHINCSPlusEngine.D) {
                break;
            }
            int i12 = sPHINCSPlusEngine.H_PRIME;
            int i13 = (int) (((1 << i12) - 1) & j10);
            j10 >>>= i12;
            adrs.setLayerAddress(i11);
            adrs.setTreeAddress(j10);
            SIG_XMSS xmss_sign2 = xmss_sign(xmss_pkFromSig, this.skSeed, i13, this.pkSeed, adrs);
            sig_xmssArr[i11] = xmss_sign2;
            if (i11 < this.engine.D - 1) {
                xmss_pkFromSig = xmss_pkFromSig(i13, xmss_sign2, xmss_pkFromSig, this.pkSeed, adrs);
            }
            i11++;
        }
        byte[][] bArr2 = new byte[i10];
        for (int i14 = 0; i14 != i10; i14++) {
            bArr2[i14] = Arrays.concatenate(sig_xmssArr[i14].sig, Arrays.concatenate(sig_xmssArr[i14].auth));
        }
        return Arrays.concatenate(bArr2);
    }

    byte[] treehash(byte[] bArr, int i4, int i10, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        LinkedList linkedList = new LinkedList();
        int i11 = 1 << i10;
        if (i4 % i11 != 0) {
            return null;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            adrs2.setType(0);
            int i13 = i4 + i12;
            adrs2.setKeyPairAddress(i13);
            byte[] pkGen = this.wots.pkGen(bArr, bArr2, adrs2);
            adrs2.setType(2);
            adrs2.setTreeHeight(1);
            adrs2.setTreeIndex(i13);
            while (!linkedList.isEmpty() && ((NodeEntry) linkedList.get(0)).nodeHeight == adrs2.getTreeHeight()) {
                adrs2.setTreeIndex((adrs2.getTreeIndex() - 1) / 2);
                pkGen = this.engine.H(bArr2, adrs2, ((NodeEntry) linkedList.remove(0)).nodeValue, pkGen);
                adrs2.setTreeHeight(adrs2.getTreeHeight() + 1);
            }
            linkedList.add(0, new NodeEntry(pkGen, adrs2.getTreeHeight()));
        }
        return ((NodeEntry) linkedList.get(0)).nodeValue;
    }

    public boolean verify(byte[] bArr, SIG_XMSS[] sig_xmssArr, byte[] bArr2, long j4, int i4, byte[] bArr3) {
        ADRS adrs = new ADRS();
        SIG_XMSS sig_xmss = sig_xmssArr[0];
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j4);
        byte[] xmss_pkFromSig = xmss_pkFromSig(i4, sig_xmss, bArr, bArr2, adrs);
        int i10 = 1;
        while (true) {
            SPHINCSPlusEngine sPHINCSPlusEngine = this.engine;
            if (i10 >= sPHINCSPlusEngine.D) {
                return Arrays.areEqual(bArr3, xmss_pkFromSig);
            }
            int i11 = sPHINCSPlusEngine.H_PRIME;
            j4 >>>= i11;
            SIG_XMSS sig_xmss2 = sig_xmssArr[i10];
            adrs.setLayerAddress(i10);
            adrs.setTreeAddress(j4);
            xmss_pkFromSig = xmss_pkFromSig((int) (((1 << i11) - 1) & j4), sig_xmss2, xmss_pkFromSig, bArr2, adrs);
            i10++;
        }
    }

    byte[] xmss_PKgen(byte[] bArr, byte[] bArr2, ADRS adrs) {
        return treehash(bArr, 0, this.engine.H_PRIME, bArr2, adrs);
    }

    byte[] xmss_pkFromSig(int i4, SIG_XMSS sig_xmss, byte[] bArr, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        int i10 = 0;
        adrs2.setType(0);
        adrs2.setKeyPairAddress(i4);
        byte[] wOTSSig = sig_xmss.getWOTSSig();
        byte[][] xmssauth = sig_xmss.getXMSSAUTH();
        byte[] pkFromSig = this.wots.pkFromSig(wOTSSig, bArr, bArr2, adrs2);
        adrs2.setType(2);
        adrs2.setTreeIndex(i4);
        while (i10 < this.engine.H_PRIME) {
            int i11 = i10 + 1;
            adrs2.setTreeHeight(i11);
            if ((i4 / (1 << i10)) % 2 == 0) {
                adrs2.setTreeIndex(adrs2.getTreeIndex() / 2);
                pkFromSig = this.engine.H(bArr2, adrs2, pkFromSig, xmssauth[i10]);
            } else {
                adrs2.setTreeIndex((adrs2.getTreeIndex() - 1) / 2);
                pkFromSig = this.engine.H(bArr2, adrs2, xmssauth[i10], pkFromSig);
            }
            i10 = i11;
        }
        return pkFromSig;
    }

    SIG_XMSS xmss_sign(byte[] bArr, byte[] bArr2, int i4, byte[] bArr3, ADRS adrs) {
        byte[][] bArr4 = new byte[this.engine.H_PRIME];
        for (int i10 = 0; i10 < this.engine.H_PRIME; i10++) {
            int i11 = 1 << i10;
            bArr4[i10] = treehash(bArr2, (1 ^ (i4 / i11)) * i11, i10, bArr3, adrs);
        }
        ADRS adrs2 = new ADRS(adrs);
        adrs2.setType(0);
        adrs2.setKeyPairAddress(i4);
        return new SIG_XMSS(this.wots.sign(bArr, bArr2, bArr3, adrs2), bArr4);
    }
}
