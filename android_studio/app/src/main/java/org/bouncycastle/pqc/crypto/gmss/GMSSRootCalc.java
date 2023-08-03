package org.bouncycastle.pqc.crypto.gmss;

import java.lang.reflect.Array;
import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class GMSSRootCalc {
    private byte[][] AuthPath;
    private int K;
    private GMSSDigestProvider digestProvider;
    private int heightOfNextSeed;
    private Vector heightOfNodes;
    private int heightOfTree;
    private int[] index;
    private int indexForNextSeed;
    private boolean isFinished;
    private boolean isInitialized;
    private int mdLength;
    private Digest messDigestTree;
    private Vector[] retain;
    private byte[] root;
    private Vector tailStack;
    private Treehash[] treehash;

    public GMSSRootCalc(int i4, int i10, GMSSDigestProvider gMSSDigestProvider) {
        this.heightOfTree = i4;
        this.digestProvider = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTree = digest;
        int digestSize = digest.getDigestSize();
        this.mdLength = digestSize;
        this.K = i10;
        this.index = new int[i4];
        int[] iArr = {i4, digestSize};
        this.AuthPath = (byte[][]) Array.newInstance(byte.class, iArr);
        this.root = new byte[this.mdLength];
        this.retain = new Vector[this.K - 1];
        for (int i11 = 0; i11 < i10 - 1; i11++) {
            this.retain[i11] = new Vector();
        }
    }

    public byte[][] getAuthPath() {
        return GMSSUtils.clone(this.AuthPath);
    }

    public Vector[] getRetain() {
        return GMSSUtils.clone(this.retain);
    }

    public byte[] getRoot() {
        return Arrays.clone(this.root);
    }

    public Vector getStack() {
        Vector vector = new Vector();
        Enumeration elements = this.tailStack.elements();
        while (elements.hasMoreElements()) {
            vector.addElement(elements.nextElement());
        }
        return vector;
    }

    public byte[][] getStatByte() {
        Vector vector = this.tailStack;
        int size = vector == null ? 0 : vector.size();
        byte[][] bArr = (byte[][]) Array.newInstance(byte.class, this.heightOfTree + 1 + size, 64);
        bArr[0] = this.root;
        int i4 = 0;
        while (i4 < this.heightOfTree) {
            int i10 = i4 + 1;
            bArr[i10] = this.AuthPath[i4];
            i4 = i10;
        }
        for (int i11 = 0; i11 < size; i11++) {
            bArr[this.heightOfTree + 1 + i11] = (byte[]) this.tailStack.elementAt(i11);
        }
        return bArr;
    }

    public int[] getStatInt() {
        Vector vector = this.tailStack;
        int size = vector == null ? 0 : vector.size();
        int i4 = this.heightOfTree;
        int[] iArr = new int[i4 + 8 + size];
        iArr[0] = i4;
        iArr[1] = this.mdLength;
        iArr[2] = this.K;
        iArr[3] = this.indexForNextSeed;
        iArr[4] = this.heightOfNextSeed;
        if (this.isFinished) {
            iArr[5] = 1;
        } else {
            iArr[5] = 0;
        }
        if (this.isInitialized) {
            iArr[6] = 1;
        } else {
            iArr[6] = 0;
        }
        iArr[7] = size;
        for (int i10 = 0; i10 < this.heightOfTree; i10++) {
            iArr[i10 + 8] = this.index[i10];
        }
        for (int i11 = 0; i11 < size; i11++) {
            iArr[this.heightOfTree + 8 + i11] = ((Integer) this.heightOfNodes.elementAt(i11)).intValue();
        }
        return iArr;
    }

    public Treehash[] getTreehash() {
        return GMSSUtils.clone(this.treehash);
    }

    public void initialize(Vector vector) {
        int i4;
        this.treehash = new Treehash[this.heightOfTree - this.K];
        int i10 = 0;
        while (true) {
            i4 = this.heightOfTree;
            if (i10 >= i4 - this.K) {
                break;
            }
            this.treehash[i10] = new Treehash(vector, i10, this.digestProvider.get());
            i10++;
        }
        this.index = new int[i4];
        this.AuthPath = (byte[][]) Array.newInstance(byte.class, i4, this.mdLength);
        this.root = new byte[this.mdLength];
        this.tailStack = new Vector();
        this.heightOfNodes = new Vector();
        this.isInitialized = true;
        this.isFinished = false;
        for (int i11 = 0; i11 < this.heightOfTree; i11++) {
            this.index[i11] = -1;
        }
        this.retain = new Vector[this.K - 1];
        for (int i12 = 0; i12 < this.K - 1; i12++) {
            this.retain[i12] = new Vector();
        }
        this.indexForNextSeed = 3;
        this.heightOfNextSeed = 0;
    }

    public void initializeTreehashSeed(byte[] bArr, int i4) {
        this.treehash[i4].initializeSeed(bArr);
    }

    public String toString() {
        Vector vector = this.tailStack;
        int size = vector == null ? 0 : vector.size();
        String str = "";
        for (int i4 = 0; i4 < this.heightOfTree + 8 + size; i4++) {
            str = str + getStatInt()[i4] + " ";
        }
        for (int i10 = 0; i10 < this.heightOfTree + 1 + size; i10++) {
            str = str + new String(Hex.encode(getStatByte()[i10])) + " ";
        }
        return str + "  " + this.digestProvider.get().getDigestSize();
    }

    public void update(byte[] bArr) {
        if (this.isFinished) {
            System.out.print("Too much updates for Tree!!");
        } else if (!this.isInitialized) {
            System.err.println("GMSSRootCalc not initialized!");
        } else {
            int[] iArr = this.index;
            iArr[0] = iArr[0] + 1;
            if (iArr[0] == 1) {
                System.arraycopy(bArr, 0, this.AuthPath[0], 0, this.mdLength);
            } else if (iArr[0] == 3 && this.heightOfTree > this.K) {
                this.treehash[0].setFirstNode(bArr);
            }
            int[] iArr2 = this.index;
            if ((iArr2[0] - 3) % 2 == 0 && iArr2[0] >= 3 && this.heightOfTree == this.K) {
                this.retain[0].insertElementAt(bArr, 0);
            }
            if (this.index[0] == 0) {
                this.tailStack.addElement(bArr);
                this.heightOfNodes.addElement(Integers.valueOf(0));
                return;
            }
            int i4 = this.mdLength;
            byte[] bArr2 = new byte[i4];
            int i10 = i4 << 1;
            byte[] bArr3 = new byte[i10];
            System.arraycopy(bArr, 0, bArr2, 0, i4);
            int i11 = 0;
            while (this.tailStack.size() > 0 && i11 == ((Integer) this.heightOfNodes.lastElement()).intValue()) {
                System.arraycopy(this.tailStack.lastElement(), 0, bArr3, 0, this.mdLength);
                Vector vector = this.tailStack;
                vector.removeElementAt(vector.size() - 1);
                Vector vector2 = this.heightOfNodes;
                vector2.removeElementAt(vector2.size() - 1);
                int i12 = this.mdLength;
                System.arraycopy(bArr2, 0, bArr3, i12, i12);
                this.messDigestTree.update(bArr3, 0, i10);
                bArr2 = new byte[this.messDigestTree.getDigestSize()];
                this.messDigestTree.doFinal(bArr2, 0);
                i11++;
                if (i11 < this.heightOfTree) {
                    int[] iArr3 = this.index;
                    iArr3[i11] = iArr3[i11] + 1;
                    if (iArr3[i11] == 1) {
                        System.arraycopy(bArr2, 0, this.AuthPath[i11], 0, this.mdLength);
                    }
                    if (i11 >= this.heightOfTree - this.K) {
                        if (i11 == 0) {
                            System.out.println("M���P");
                        }
                        int[] iArr4 = this.index;
                        if ((iArr4[i11] - 3) % 2 == 0 && iArr4[i11] >= 3) {
                            this.retain[i11 - (this.heightOfTree - this.K)].insertElementAt(bArr2, 0);
                        }
                    } else if (this.index[i11] == 3) {
                        this.treehash[i11].setFirstNode(bArr2);
                    }
                }
            }
            this.tailStack.addElement(bArr2);
            this.heightOfNodes.addElement(Integers.valueOf(i11));
            if (i11 == this.heightOfTree) {
                this.isFinished = true;
                this.isInitialized = false;
                this.root = (byte[]) this.tailStack.lastElement();
            }
        }
    }

    public void update(byte[] bArr, byte[] bArr2) {
        int i4 = this.heightOfNextSeed;
        if (i4 < this.heightOfTree - this.K && this.indexForNextSeed - 2 == this.index[0]) {
            initializeTreehashSeed(bArr, i4);
            this.heightOfNextSeed++;
            this.indexForNextSeed *= 2;
        }
        update(bArr2);
    }

    public boolean wasFinished() {
        return this.isFinished;
    }

    public boolean wasInitialized() {
        return this.isInitialized;
    }
}
