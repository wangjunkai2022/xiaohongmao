package org.bouncycastle.pqc.crypto.gmss;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class Treehash {
    private byte[] firstNode;
    private int firstNodeHeight;
    private Vector heightOfNodes;
    private boolean isFinished;
    private boolean isInitialized;
    private int maxHeight;
    private Digest messDigestTree;
    private byte[] seedActive;
    private boolean seedInitialized;
    private byte[] seedNext;
    private int tailLength;
    private Vector tailStack;

    public Treehash(Vector vector, int i4, Digest digest) {
        this.tailStack = vector;
        this.maxHeight = i4;
        this.firstNode = null;
        this.isInitialized = false;
        this.isFinished = false;
        this.seedInitialized = false;
        this.messDigestTree = digest;
        this.seedNext = new byte[digest.getDigestSize()];
        this.seedActive = new byte[this.messDigestTree.getDigestSize()];
    }

    public Treehash(Digest digest, byte[][] bArr, int[] iArr) {
        this.messDigestTree = digest;
        this.maxHeight = iArr[0];
        this.tailLength = iArr[1];
        this.firstNodeHeight = iArr[2];
        if (iArr[3] == 1) {
            this.isFinished = true;
        } else {
            this.isFinished = false;
        }
        if (iArr[4] == 1) {
            this.isInitialized = true;
        } else {
            this.isInitialized = false;
        }
        if (iArr[5] == 1) {
            this.seedInitialized = true;
        } else {
            this.seedInitialized = false;
        }
        this.heightOfNodes = new Vector();
        for (int i4 = 0; i4 < this.tailLength; i4++) {
            this.heightOfNodes.addElement(Integers.valueOf(iArr[i4 + 6]));
        }
        this.firstNode = bArr[0];
        this.seedActive = bArr[1];
        this.seedNext = bArr[2];
        this.tailStack = new Vector();
        for (int i10 = 0; i10 < this.tailLength; i10++) {
            this.tailStack.addElement(bArr[i10 + 3]);
        }
    }

    public void destroy() {
        this.isInitialized = false;
        this.isFinished = false;
        this.firstNode = null;
        this.tailLength = 0;
        this.firstNodeHeight = -1;
    }

    public byte[] getFirstNode() {
        return this.firstNode;
    }

    public int getFirstNodeHeight() {
        return this.firstNode == null ? this.maxHeight : this.firstNodeHeight;
    }

    public int getLowestNodeHeight() {
        return this.firstNode == null ? this.maxHeight : this.tailLength == 0 ? this.firstNodeHeight : Math.min(this.firstNodeHeight, ((Integer) this.heightOfNodes.lastElement()).intValue());
    }

    public byte[] getSeedActive() {
        return this.seedActive;
    }

    public byte[][] getStatByte() {
        byte[][] bArr = (byte[][]) Array.newInstance(byte.class, this.tailLength + 3, this.messDigestTree.getDigestSize());
        bArr[0] = this.firstNode;
        bArr[1] = this.seedActive;
        bArr[2] = this.seedNext;
        for (int i4 = 0; i4 < this.tailLength; i4++) {
            bArr[i4 + 3] = (byte[]) this.tailStack.elementAt(i4);
        }
        return bArr;
    }

    public int[] getStatInt() {
        int i4 = this.tailLength;
        int[] iArr = new int[i4 + 6];
        iArr[0] = this.maxHeight;
        iArr[1] = i4;
        iArr[2] = this.firstNodeHeight;
        if (this.isFinished) {
            iArr[3] = 1;
        } else {
            iArr[3] = 0;
        }
        if (this.isInitialized) {
            iArr[4] = 1;
        } else {
            iArr[4] = 0;
        }
        if (this.seedInitialized) {
            iArr[5] = 1;
        } else {
            iArr[5] = 0;
        }
        for (int i10 = 0; i10 < this.tailLength; i10++) {
            iArr[i10 + 6] = ((Integer) this.heightOfNodes.elementAt(i10)).intValue();
        }
        return iArr;
    }

    public Vector getTailStack() {
        return this.tailStack;
    }

    public void initialize() {
        if (!this.seedInitialized) {
            throw new IllegalStateException("Seed " + this.maxHeight + " not initialized");
        }
        this.heightOfNodes = new Vector();
        this.tailLength = 0;
        this.firstNode = null;
        this.firstNodeHeight = -1;
        this.isInitialized = true;
        System.arraycopy(this.seedNext, 0, this.seedActive, 0, this.messDigestTree.getDigestSize());
    }

    public void initializeSeed(byte[] bArr) {
        System.arraycopy(bArr, 0, this.seedNext, 0, this.messDigestTree.getDigestSize());
        this.seedInitialized = true;
    }

    public void setFirstNode(byte[] bArr) {
        if (!this.isInitialized) {
            initialize();
        }
        this.firstNode = bArr;
        this.firstNodeHeight = this.maxHeight;
        this.isFinished = true;
    }

    public String toString() {
        StringBuilder sb;
        String str = "Treehash    : ";
        for (int i4 = 0; i4 < this.tailLength + 6; i4++) {
            str = str + getStatInt()[i4] + " ";
        }
        for (int i10 = 0; i10 < this.tailLength + 3; i10++) {
            if (getStatByte()[i10] != null) {
                sb = new StringBuilder();
                sb.append(str);
                sb.append(new String(Hex.encode(getStatByte()[i10])));
                sb.append(" ");
            } else {
                sb = new StringBuilder();
                sb.append(str);
                sb.append("null ");
            }
            str = sb.toString();
        }
        return str + "  " + this.messDigestTree.getDigestSize();
    }

    public void update(GMSSRandom gMSSRandom, byte[] bArr) {
        PrintStream printStream;
        String str;
        if (this.isFinished) {
            printStream = System.err;
            str = "No more update possible for treehash instance!";
        } else if (this.isInitialized) {
            byte[] bArr2 = new byte[this.messDigestTree.getDigestSize()];
            gMSSRandom.nextSeed(this.seedActive);
            if (this.firstNode == null) {
                this.firstNode = bArr;
                this.firstNodeHeight = 0;
            } else {
                int i4 = 0;
                while (this.tailLength > 0 && i4 == ((Integer) this.heightOfNodes.lastElement()).intValue()) {
                    int digestSize = this.messDigestTree.getDigestSize() << 1;
                    byte[] bArr3 = new byte[digestSize];
                    System.arraycopy(this.tailStack.lastElement(), 0, bArr3, 0, this.messDigestTree.getDigestSize());
                    Vector vector = this.tailStack;
                    vector.removeElementAt(vector.size() - 1);
                    Vector vector2 = this.heightOfNodes;
                    vector2.removeElementAt(vector2.size() - 1);
                    System.arraycopy(bArr, 0, bArr3, this.messDigestTree.getDigestSize(), this.messDigestTree.getDigestSize());
                    this.messDigestTree.update(bArr3, 0, digestSize);
                    bArr = new byte[this.messDigestTree.getDigestSize()];
                    this.messDigestTree.doFinal(bArr, 0);
                    i4++;
                    this.tailLength--;
                }
                this.tailStack.addElement(bArr);
                this.heightOfNodes.addElement(Integers.valueOf(i4));
                this.tailLength++;
                if (((Integer) this.heightOfNodes.lastElement()).intValue() == this.firstNodeHeight) {
                    int digestSize2 = this.messDigestTree.getDigestSize() << 1;
                    byte[] bArr4 = new byte[digestSize2];
                    System.arraycopy(this.firstNode, 0, bArr4, 0, this.messDigestTree.getDigestSize());
                    System.arraycopy(this.tailStack.lastElement(), 0, bArr4, this.messDigestTree.getDigestSize(), this.messDigestTree.getDigestSize());
                    Vector vector3 = this.tailStack;
                    vector3.removeElementAt(vector3.size() - 1);
                    Vector vector4 = this.heightOfNodes;
                    vector4.removeElementAt(vector4.size() - 1);
                    this.messDigestTree.update(bArr4, 0, digestSize2);
                    byte[] bArr5 = new byte[this.messDigestTree.getDigestSize()];
                    this.firstNode = bArr5;
                    this.messDigestTree.doFinal(bArr5, 0);
                    this.firstNodeHeight++;
                    this.tailLength = 0;
                }
            }
            if (this.firstNodeHeight == this.maxHeight) {
                this.isFinished = true;
                return;
            }
            return;
        } else {
            printStream = System.err;
            str = "Treehash instance not initialized before update";
        }
        printStream.println(str);
    }

    public void updateNextSeed(GMSSRandom gMSSRandom) {
        gMSSRandom.nextSeed(this.seedNext);
    }

    public boolean wasFinished() {
        return this.isFinished;
    }

    public boolean wasInitialized() {
        return this.isInitialized;
    }
}
