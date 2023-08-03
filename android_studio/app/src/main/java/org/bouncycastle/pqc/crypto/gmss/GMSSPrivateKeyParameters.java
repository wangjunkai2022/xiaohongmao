package org.bouncycastle.pqc.crypto.gmss;

import java.lang.reflect.Array;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.crypto.gmss.util.WinternitzOTSignature;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public class GMSSPrivateKeyParameters extends GMSSKeyParameters {
    private int[] K;
    private byte[][][] currentAuthPaths;
    private Vector[][] currentRetain;
    private byte[][] currentRootSig;
    private byte[][] currentSeeds;
    private Vector[] currentStack;
    private Treehash[][] currentTreehash;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSRandom gmssRandom;
    private int[] heightOfTrees;
    private int[] index;
    private byte[][][] keep;
    private int mdLength;
    private Digest messDigestTrees;
    private int[] minTreehash;
    private byte[][][] nextAuthPaths;
    private GMSSLeaf[] nextNextLeaf;
    private GMSSRootCalc[] nextNextRoot;
    private byte[][] nextNextSeeds;
    private Vector[][] nextRetain;
    private byte[][] nextRoot;
    private GMSSRootSig[] nextRootSig;
    private Vector[] nextStack;
    private Treehash[][] nextTreehash;
    private int numLayer;
    private int[] numLeafs;
    private int[] otsIndex;
    private GMSSLeaf[] upperLeaf;
    private GMSSLeaf[] upperTreehashLeaf;
    private boolean used;

    private GMSSPrivateKeyParameters(GMSSPrivateKeyParameters gMSSPrivateKeyParameters) {
        super(true, gMSSPrivateKeyParameters.getParameters());
        this.used = false;
        this.index = Arrays.clone(gMSSPrivateKeyParameters.index);
        this.currentSeeds = Arrays.clone(gMSSPrivateKeyParameters.currentSeeds);
        this.nextNextSeeds = Arrays.clone(gMSSPrivateKeyParameters.nextNextSeeds);
        this.currentAuthPaths = Arrays.clone(gMSSPrivateKeyParameters.currentAuthPaths);
        this.nextAuthPaths = Arrays.clone(gMSSPrivateKeyParameters.nextAuthPaths);
        this.currentTreehash = gMSSPrivateKeyParameters.currentTreehash;
        this.nextTreehash = gMSSPrivateKeyParameters.nextTreehash;
        this.currentStack = gMSSPrivateKeyParameters.currentStack;
        this.nextStack = gMSSPrivateKeyParameters.nextStack;
        this.currentRetain = gMSSPrivateKeyParameters.currentRetain;
        this.nextRetain = gMSSPrivateKeyParameters.nextRetain;
        this.keep = Arrays.clone(gMSSPrivateKeyParameters.keep);
        this.nextNextLeaf = gMSSPrivateKeyParameters.nextNextLeaf;
        this.upperLeaf = gMSSPrivateKeyParameters.upperLeaf;
        this.upperTreehashLeaf = gMSSPrivateKeyParameters.upperTreehashLeaf;
        this.minTreehash = gMSSPrivateKeyParameters.minTreehash;
        this.gmssPS = gMSSPrivateKeyParameters.gmssPS;
        this.nextRoot = Arrays.clone(gMSSPrivateKeyParameters.nextRoot);
        this.nextNextRoot = gMSSPrivateKeyParameters.nextNextRoot;
        this.currentRootSig = gMSSPrivateKeyParameters.currentRootSig;
        this.nextRootSig = gMSSPrivateKeyParameters.nextRootSig;
        this.digestProvider = gMSSPrivateKeyParameters.digestProvider;
        this.heightOfTrees = gMSSPrivateKeyParameters.heightOfTrees;
        this.otsIndex = gMSSPrivateKeyParameters.otsIndex;
        this.K = gMSSPrivateKeyParameters.K;
        this.numLayer = gMSSPrivateKeyParameters.numLayer;
        this.messDigestTrees = gMSSPrivateKeyParameters.messDigestTrees;
        this.mdLength = gMSSPrivateKeyParameters.mdLength;
        this.gmssRandom = gMSSPrivateKeyParameters.gmssRandom;
        this.numLeafs = gMSSPrivateKeyParameters.numLeafs;
    }

    public GMSSPrivateKeyParameters(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] iArr2, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, GMSSDigestProvider gMSSDigestProvider) {
        super(true, gMSSParameters);
        this.used = false;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTrees = digest;
        this.mdLength = digest.getDigestSize();
        this.gmssPS = gMSSParameters;
        this.otsIndex = gMSSParameters.getWinternitzParameter();
        this.K = gMSSParameters.getK();
        this.heightOfTrees = gMSSParameters.getHeightOfTrees();
        int numOfLayers = this.gmssPS.getNumOfLayers();
        this.numLayer = numOfLayers;
        if (iArr == null) {
            this.index = new int[numOfLayers];
            for (int i4 = 0; i4 < this.numLayer; i4++) {
                this.index[i4] = 0;
            }
        } else {
            this.index = iArr;
        }
        this.currentSeeds = bArr;
        this.nextNextSeeds = bArr2;
        this.currentAuthPaths = Arrays.clone(bArr3);
        this.nextAuthPaths = bArr4;
        int i10 = 2;
        if (bArr5 == null) {
            this.keep = new byte[this.numLayer][];
            int i11 = 0;
            while (i11 < this.numLayer) {
                this.keep[i11] = (byte[][]) Array.newInstance(byte.class, (int) Math.floor(this.heightOfTrees[i11] / i10), this.mdLength);
                i11++;
                i10 = 2;
            }
        } else {
            this.keep = bArr5;
        }
        if (vectorArr == null) {
            this.currentStack = new Vector[this.numLayer];
            for (int i12 = 0; i12 < this.numLayer; i12++) {
                this.currentStack[i12] = new Vector();
            }
        } else {
            this.currentStack = vectorArr;
        }
        if (vectorArr2 == null) {
            this.nextStack = new Vector[this.numLayer - 1];
            int i13 = 0;
            for (int i14 = 1; i13 < this.numLayer - i14; i14 = 1) {
                this.nextStack[i13] = new Vector();
                i13++;
            }
        } else {
            this.nextStack = vectorArr2;
        }
        this.currentTreehash = treehashArr;
        this.nextTreehash = treehashArr2;
        this.currentRetain = vectorArr3;
        this.nextRetain = vectorArr4;
        this.nextRoot = bArr6;
        this.digestProvider = gMSSDigestProvider;
        if (gMSSRootCalcArr == null) {
            this.nextNextRoot = new GMSSRootCalc[this.numLayer - 1];
            int i15 = 0;
            for (int i16 = 1; i15 < this.numLayer - i16; i16 = 1) {
                int i17 = i15 + 1;
                this.nextNextRoot[i15] = new GMSSRootCalc(this.heightOfTrees[i17], this.K[i17], this.digestProvider);
                i15 = i17;
            }
        } else {
            this.nextNextRoot = gMSSRootCalcArr;
        }
        this.currentRootSig = bArr7;
        this.numLeafs = new int[this.numLayer];
        for (int i18 = 0; i18 < this.numLayer; i18++) {
            this.numLeafs[i18] = 1 << this.heightOfTrees[i18];
        }
        this.gmssRandom = new GMSSRandom(this.messDigestTrees);
        int i19 = this.numLayer;
        if (i19 <= 1) {
            this.nextNextLeaf = new GMSSLeaf[0];
        } else if (gMSSLeafArr == null) {
            this.nextNextLeaf = new GMSSLeaf[i19 - 2];
            int i20 = 0;
            while (i20 < this.numLayer - 2) {
                int i21 = i20 + 1;
                this.nextNextLeaf[i20] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[i21], this.numLeafs[i20 + 2], this.nextNextSeeds[i20]);
                i20 = i21;
            }
        } else {
            this.nextNextLeaf = gMSSLeafArr;
        }
        if (gMSSLeafArr2 == null) {
            this.upperLeaf = new GMSSLeaf[this.numLayer - 1];
            int i22 = 0;
            for (int i23 = 1; i22 < this.numLayer - i23; i23 = 1) {
                int i24 = i22 + 1;
                this.upperLeaf[i22] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[i22], this.numLeafs[i24], this.currentSeeds[i22]);
                i22 = i24;
            }
        } else {
            this.upperLeaf = gMSSLeafArr2;
        }
        if (gMSSLeafArr3 == null) {
            this.upperTreehashLeaf = new GMSSLeaf[this.numLayer - 1];
            int i25 = 0;
            for (int i26 = 1; i25 < this.numLayer - i26; i26 = 1) {
                int i27 = i25 + 1;
                this.upperTreehashLeaf[i25] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[i25], this.numLeafs[i27]);
                i25 = i27;
            }
        } else {
            this.upperTreehashLeaf = gMSSLeafArr3;
        }
        if (iArr2 == null) {
            this.minTreehash = new int[this.numLayer - 1];
            int i28 = 0;
            for (int i29 = 1; i28 < this.numLayer - i29; i29 = 1) {
                this.minTreehash[i28] = -1;
                i28++;
            }
        } else {
            this.minTreehash = iArr2;
        }
        int i30 = this.mdLength;
        byte[] bArr8 = new byte[i30];
        byte[] bArr9 = new byte[i30];
        if (gMSSRootSigArr != null) {
            this.nextRootSig = gMSSRootSigArr;
            return;
        }
        this.nextRootSig = new GMSSRootSig[this.numLayer - 1];
        int i31 = 0;
        while (i31 < this.numLayer - 1) {
            System.arraycopy(bArr[i31], 0, bArr8, 0, this.mdLength);
            this.gmssRandom.nextSeed(bArr8);
            byte[] nextSeed = this.gmssRandom.nextSeed(bArr8);
            int i32 = i31 + 1;
            this.nextRootSig[i31] = new GMSSRootSig(gMSSDigestProvider.get(), this.otsIndex[i31], this.heightOfTrees[i32]);
            this.nextRootSig[i31].initSign(nextSeed, bArr6[i31]);
            i31 = i32;
        }
    }

    public GMSSPrivateKeyParameters(byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][] bArr5, byte[][] bArr6, GMSSParameters gMSSParameters, GMSSDigestProvider gMSSDigestProvider) {
        this(null, bArr, bArr2, bArr3, bArr4, null, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, null, null, null, null, bArr5, null, bArr6, null, gMSSParameters, gMSSDigestProvider);
    }

    private void computeAuthPaths(int i4) {
        int i10;
        int i11;
        byte[] bArr;
        int i12 = this.index[i4];
        int i13 = this.heightOfTrees[i4];
        int i14 = this.K[i4];
        int i15 = 0;
        while (true) {
            i10 = i13 - i14;
            if (i15 >= i10) {
                break;
            }
            this.currentTreehash[i4][i15].updateNextSeed(this.gmssRandom);
            i15++;
        }
        int heightOfPhi = heightOfPhi(i12);
        byte[] bArr2 = new byte[this.mdLength];
        byte[] nextSeed = this.gmssRandom.nextSeed(this.currentSeeds[i4]);
        int i16 = (i12 >>> (heightOfPhi + 1)) & 1;
        int i17 = this.mdLength;
        byte[] bArr3 = new byte[i17];
        int i18 = i13 - 1;
        if (heightOfPhi < i18 && i16 == 0) {
            System.arraycopy(this.currentAuthPaths[i4][heightOfPhi], 0, bArr3, 0, i17);
        }
        int i19 = this.mdLength;
        byte[] bArr4 = new byte[i19];
        if (heightOfPhi == 0) {
            if (i4 == this.numLayer - 1) {
                bArr = new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i4]).getPublicKey();
            } else {
                byte[] bArr5 = new byte[i19];
                System.arraycopy(this.currentSeeds[i4], 0, bArr5, 0, i19);
                this.gmssRandom.nextSeed(bArr5);
                byte[] leaf = this.upperLeaf[i4].getLeaf();
                this.upperLeaf[i4].initLeafCalc(bArr5);
                bArr = leaf;
            }
            System.arraycopy(bArr, 0, this.currentAuthPaths[i4][0], 0, this.mdLength);
        } else {
            int i20 = i19 << 1;
            byte[] bArr6 = new byte[i20];
            System.arraycopy(this.currentAuthPaths[i4][heightOfPhi - 1], 0, bArr6, 0, i19);
            byte[] bArr7 = this.keep[i4][(int) Math.floor(i11 / 2)];
            int i21 = this.mdLength;
            System.arraycopy(bArr7, 0, bArr6, i21, i21);
            this.messDigestTrees.update(bArr6, 0, i20);
            this.currentAuthPaths[i4][heightOfPhi] = new byte[this.messDigestTrees.getDigestSize()];
            this.messDigestTrees.doFinal(this.currentAuthPaths[i4][heightOfPhi], 0);
            for (int i22 = 0; i22 < heightOfPhi; i22++) {
                if (i22 < i10) {
                    if (this.currentTreehash[i4][i22].wasFinished()) {
                        System.arraycopy(this.currentTreehash[i4][i22].getFirstNode(), 0, this.currentAuthPaths[i4][i22], 0, this.mdLength);
                        this.currentTreehash[i4][i22].destroy();
                    } else {
                        System.err.println("Treehash (" + i4 + "," + i22 + ") not finished when needed in AuthPathComputation");
                    }
                }
                if (i22 < i18 && i22 >= i10) {
                    int i23 = i22 - i10;
                    if (this.currentRetain[i4][i23].size() > 0) {
                        System.arraycopy(this.currentRetain[i4][i23].lastElement(), 0, this.currentAuthPaths[i4][i22], 0, this.mdLength);
                        Vector[][] vectorArr = this.currentRetain;
                        vectorArr[i4][i23].removeElementAt(vectorArr[i4][i23].size() - 1);
                    }
                }
                if (i22 < i10 && ((1 << i22) * 3) + i12 < this.numLeafs[i4]) {
                    this.currentTreehash[i4][i22].initialize();
                }
            }
        }
        if (heightOfPhi < i18 && i16 == 0) {
            System.arraycopy(bArr3, 0, this.keep[i4][(int) Math.floor(heightOfPhi / 2)], 0, this.mdLength);
        }
        if (i4 != this.numLayer - 1) {
            this.minTreehash[i4] = getMinTreehashIndex(i4);
            return;
        }
        for (int i24 = 1; i24 <= i10 / 2; i24++) {
            int minTreehashIndex = getMinTreehashIndex(i4);
            if (minTreehashIndex >= 0) {
                try {
                    byte[] bArr8 = new byte[this.mdLength];
                    System.arraycopy(this.currentTreehash[i4][minTreehashIndex].getSeedActive(), 0, bArr8, 0, this.mdLength);
                    this.currentTreehash[i4][minTreehashIndex].update(this.gmssRandom, new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr8), this.digestProvider.get(), this.otsIndex[i4]).getPublicKey());
                } catch (Exception e4) {
                    System.out.println(e4);
                }
            }
        }
    }

    private int getMinTreehashIndex(int i4) {
        int i10 = -1;
        for (int i11 = 0; i11 < this.heightOfTrees[i4] - this.K[i4]; i11++) {
            if (this.currentTreehash[i4][i11].wasInitialized() && !this.currentTreehash[i4][i11].wasFinished() && (i10 == -1 || this.currentTreehash[i4][i11].getLowestNodeHeight() < this.currentTreehash[i4][i10].getLowestNodeHeight())) {
                i10 = i11;
            }
        }
        return i10;
    }

    private int heightOfPhi(int i4) {
        if (i4 == 0) {
            return -1;
        }
        int i10 = 0;
        int i11 = 1;
        while (i4 % i11 == 0) {
            i11 *= 2;
            i10++;
        }
        return i10 - 1;
    }

    private void nextKey(int i4) {
        int i10 = this.numLayer;
        if (i4 == i10 - 1) {
            int[] iArr = this.index;
            iArr[i4] = iArr[i4] + 1;
        }
        if (this.index[i4] != this.numLeafs[i4]) {
            updateKey(i4);
        } else if (i10 != 1) {
            nextTree(i4);
            this.index[i4] = 0;
        }
    }

    private void nextTree(int i4) {
        if (i4 > 0) {
            int[] iArr = this.index;
            int i10 = i4 - 1;
            iArr[i10] = iArr[i10] + 1;
            int i11 = i4;
            boolean z9 = true;
            do {
                i11--;
                if (this.index[i11] < this.numLeafs[i11]) {
                    z9 = false;
                }
                if (!z9) {
                    break;
                }
            } while (i11 > 0);
            if (z9) {
                return;
            }
            this.gmssRandom.nextSeed(this.currentSeeds[i4]);
            this.nextRootSig[i10].updateSign();
            if (i4 > 1) {
                GMSSLeaf[] gMSSLeafArr = this.nextNextLeaf;
                int i12 = i10 - 1;
                gMSSLeafArr[i12] = gMSSLeafArr[i12].nextLeaf();
            }
            GMSSLeaf[] gMSSLeafArr2 = this.upperLeaf;
            gMSSLeafArr2[i10] = gMSSLeafArr2[i10].nextLeaf();
            if (this.minTreehash[i10] >= 0) {
                GMSSLeaf[] gMSSLeafArr3 = this.upperTreehashLeaf;
                gMSSLeafArr3[i10] = gMSSLeafArr3[i10].nextLeaf();
                try {
                    this.currentTreehash[i10][this.minTreehash[i10]].update(this.gmssRandom, this.upperTreehashLeaf[i10].getLeaf());
                    this.currentTreehash[i10][this.minTreehash[i10]].wasFinished();
                } catch (Exception e4) {
                    System.out.println(e4);
                }
            }
            updateNextNextAuthRoot(i4);
            this.currentRootSig[i10] = this.nextRootSig[i10].getSig();
            for (int i13 = 0; i13 < this.heightOfTrees[i4] - this.K[i4]; i13++) {
                Treehash[] treehashArr = this.currentTreehash[i4];
                Treehash[][] treehashArr2 = this.nextTreehash;
                treehashArr[i13] = treehashArr2[i10][i13];
                treehashArr2[i10][i13] = this.nextNextRoot[i10].getTreehash()[i13];
            }
            for (int i14 = 0; i14 < this.heightOfTrees[i4]; i14++) {
                System.arraycopy(this.nextAuthPaths[i10][i14], 0, this.currentAuthPaths[i4][i14], 0, this.mdLength);
                System.arraycopy(this.nextNextRoot[i10].getAuthPath()[i14], 0, this.nextAuthPaths[i10][i14], 0, this.mdLength);
            }
            for (int i15 = 0; i15 < this.K[i4] - 1; i15++) {
                Vector[] vectorArr = this.currentRetain[i4];
                Vector[][] vectorArr2 = this.nextRetain;
                vectorArr[i15] = vectorArr2[i10][i15];
                vectorArr2[i10][i15] = this.nextNextRoot[i10].getRetain()[i15];
            }
            Vector[] vectorArr3 = this.currentStack;
            Vector[] vectorArr4 = this.nextStack;
            vectorArr3[i4] = vectorArr4[i10];
            vectorArr4[i10] = this.nextNextRoot[i10].getStack();
            this.nextRoot[i10] = this.nextNextRoot[i10].getRoot();
            int i16 = this.mdLength;
            byte[] bArr = new byte[i16];
            byte[] bArr2 = new byte[i16];
            System.arraycopy(this.currentSeeds[i10], 0, bArr2, 0, i16);
            this.gmssRandom.nextSeed(bArr2);
            this.gmssRandom.nextSeed(bArr2);
            this.nextRootSig[i10].initSign(this.gmssRandom.nextSeed(bArr2), this.nextRoot[i10]);
            nextKey(i10);
        }
    }

    private void updateKey(int i4) {
        computeAuthPaths(i4);
        if (i4 > 0) {
            if (i4 > 1) {
                GMSSLeaf[] gMSSLeafArr = this.nextNextLeaf;
                int i10 = (i4 - 1) - 1;
                gMSSLeafArr[i10] = gMSSLeafArr[i10].nextLeaf();
            }
            GMSSLeaf[] gMSSLeafArr2 = this.upperLeaf;
            int i11 = i4 - 1;
            gMSSLeafArr2[i11] = gMSSLeafArr2[i11].nextLeaf();
            int floor = (int) Math.floor((getNumLeafs(i4) * 2) / (this.heightOfTrees[i11] - this.K[i11]));
            int[] iArr = this.index;
            if (iArr[i4] % floor == 1) {
                if (iArr[i4] > 1 && this.minTreehash[i11] >= 0) {
                    try {
                        this.currentTreehash[i11][this.minTreehash[i11]].update(this.gmssRandom, this.upperTreehashLeaf[i11].getLeaf());
                        this.currentTreehash[i11][this.minTreehash[i11]].wasFinished();
                    } catch (Exception e4) {
                        System.out.println(e4);
                    }
                }
                this.minTreehash[i11] = getMinTreehashIndex(i11);
                int[] iArr2 = this.minTreehash;
                if (iArr2[i11] >= 0) {
                    this.upperTreehashLeaf[i11] = new GMSSLeaf(this.digestProvider.get(), this.otsIndex[i11], floor, this.currentTreehash[i11][iArr2[i11]].getSeedActive());
                    GMSSLeaf[] gMSSLeafArr3 = this.upperTreehashLeaf;
                    gMSSLeafArr3[i11] = gMSSLeafArr3[i11].nextLeaf();
                }
            } else if (this.minTreehash[i11] >= 0) {
                GMSSLeaf[] gMSSLeafArr4 = this.upperTreehashLeaf;
                gMSSLeafArr4[i11] = gMSSLeafArr4[i11].nextLeaf();
            }
            this.nextRootSig[i11].updateSign();
            if (this.index[i4] == 1) {
                this.nextNextRoot[i11].initialize(new Vector());
            }
            updateNextNextAuthRoot(i4);
        }
    }

    private void updateNextNextAuthRoot(int i4) {
        byte[] bArr = new byte[this.mdLength];
        int i10 = i4 - 1;
        byte[] nextSeed = this.gmssRandom.nextSeed(this.nextNextSeeds[i10]);
        if (i4 == this.numLayer - 1) {
            this.nextNextRoot[i10].update(this.nextNextSeeds[i10], new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i4]).getPublicKey());
            return;
        }
        this.nextNextRoot[i10].update(this.nextNextSeeds[i10], this.nextNextLeaf[i10].getLeaf());
        this.nextNextLeaf[i10].initLeafCalc(this.nextNextSeeds[i10]);
    }

    public byte[][][] getCurrentAuthPaths() {
        return Arrays.clone(this.currentAuthPaths);
    }

    public byte[][] getCurrentSeeds() {
        return Arrays.clone(this.currentSeeds);
    }

    public int getIndex(int i4) {
        return this.index[i4];
    }

    public int[] getIndex() {
        return this.index;
    }

    public GMSSDigestProvider getName() {
        return this.digestProvider;
    }

    public int getNumLeafs(int i4) {
        return this.numLeafs[i4];
    }

    public byte[] getSubtreeRootSig(int i4) {
        return this.currentRootSig[i4];
    }

    public boolean isUsed() {
        return this.used;
    }

    public void markUsed() {
        this.used = true;
    }

    public GMSSPrivateKeyParameters nextKey() {
        GMSSPrivateKeyParameters gMSSPrivateKeyParameters = new GMSSPrivateKeyParameters(this);
        gMSSPrivateKeyParameters.nextKey(this.gmssPS.getNumOfLayers() - 1);
        return gMSSPrivateKeyParameters;
    }
}
