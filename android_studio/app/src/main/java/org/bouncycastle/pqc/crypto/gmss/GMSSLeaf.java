package org.bouncycastle.pqc.crypto.gmss;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes5.dex */
public class GMSSLeaf {
    private byte[] concHashs;
    private GMSSRandom gmssRandom;

    /* renamed from: i  reason: collision with root package name */
    private int f91498i;

    /* renamed from: j  reason: collision with root package name */
    private int f91499j;
    private int keysize;
    private byte[] leaf;
    private int mdsize;
    private Digest messDigestOTS;
    byte[] privateKeyOTS;
    private byte[] seed;
    private int steps;
    private int two_power_w;

    /* renamed from: w  reason: collision with root package name */
    private int f91500w;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GMSSLeaf(Digest digest, int i4, int i10) {
        int digestSize;
        int ceil;
        int ceil2;
        int i11;
        this.f91500w = i4;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.mdsize = this.messDigestOTS.getDigestSize();
        double d4 = i4;
        this.keysize = ((int) Math.ceil((digestSize << 3) / d4)) + ((int) Math.ceil(getLog((ceil << i4) + 1) / d4));
        this.two_power_w = 1 << i4;
        this.steps = (int) Math.ceil(((((i11 - 1) * ceil2) + 1) + ceil2) / i10);
        int i12 = this.mdsize;
        this.seed = new byte[i12];
        this.leaf = new byte[i12];
        this.privateKeyOTS = new byte[i12];
        this.concHashs = new byte[i12 * this.keysize];
    }

    public GMSSLeaf(Digest digest, int i4, int i10, byte[] bArr) {
        int digestSize;
        int ceil;
        int ceil2;
        int i11;
        this.f91500w = i4;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.mdsize = this.messDigestOTS.getDigestSize();
        double d4 = i4;
        this.keysize = ((int) Math.ceil((digestSize << 3) / d4)) + ((int) Math.ceil(getLog((ceil << i4) + 1) / d4));
        this.two_power_w = 1 << i4;
        this.steps = (int) Math.ceil(((((i11 - 1) * ceil2) + 1) + ceil2) / i10);
        int i12 = this.mdsize;
        this.seed = new byte[i12];
        this.leaf = new byte[i12];
        this.privateKeyOTS = new byte[i12];
        this.concHashs = new byte[i12 * this.keysize];
        initLeafCalc(bArr);
    }

    public GMSSLeaf(Digest digest, byte[][] bArr, int[] iArr) {
        this.f91498i = iArr[0];
        this.f91499j = iArr[1];
        this.steps = iArr[2];
        this.f91500w = iArr[3];
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        int ceil = (int) Math.ceil((digestSize << 3) / this.f91500w);
        this.keysize = ceil + ((int) Math.ceil(getLog((ceil << this.f91500w) + 1) / this.f91500w));
        this.two_power_w = 1 << this.f91500w;
        this.privateKeyOTS = bArr[0];
        this.seed = bArr[1];
        this.concHashs = bArr[2];
        this.leaf = bArr[3];
    }

    private GMSSLeaf(GMSSLeaf gMSSLeaf) {
        this.messDigestOTS = gMSSLeaf.messDigestOTS;
        this.mdsize = gMSSLeaf.mdsize;
        this.keysize = gMSSLeaf.keysize;
        this.gmssRandom = gMSSLeaf.gmssRandom;
        this.leaf = Arrays.clone(gMSSLeaf.leaf);
        this.concHashs = Arrays.clone(gMSSLeaf.concHashs);
        this.f91498i = gMSSLeaf.f91498i;
        this.f91499j = gMSSLeaf.f91499j;
        this.two_power_w = gMSSLeaf.two_power_w;
        this.f91500w = gMSSLeaf.f91500w;
        this.steps = gMSSLeaf.steps;
        this.seed = Arrays.clone(gMSSLeaf.seed);
        this.privateKeyOTS = Arrays.clone(gMSSLeaf.privateKeyOTS);
    }

    private int getLog(int i4) {
        int i10 = 1;
        int i11 = 2;
        while (i11 < i4) {
            i11 <<= 1;
            i10++;
        }
        return i10;
    }

    private void updateLeafCalc() {
        byte[] bArr = new byte[this.messDigestOTS.getDigestSize()];
        for (int i4 = 0; i4 < this.steps + 10000; i4++) {
            int i10 = this.f91498i;
            if (i10 == this.keysize && this.f91499j == this.two_power_w - 1) {
                Digest digest = this.messDigestOTS;
                byte[] bArr2 = this.concHashs;
                digest.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
                this.leaf = bArr3;
                this.messDigestOTS.doFinal(bArr3, 0);
                return;
            }
            if (i10 == 0 || this.f91499j == this.two_power_w - 1) {
                this.f91498i = i10 + 1;
                this.f91499j = 0;
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else {
                Digest digest2 = this.messDigestOTS;
                byte[] bArr4 = this.privateKeyOTS;
                digest2.update(bArr4, 0, bArr4.length);
                this.privateKeyOTS = bArr;
                this.messDigestOTS.doFinal(bArr, 0);
                int i11 = this.f91499j + 1;
                this.f91499j = i11;
                if (i11 == this.two_power_w - 1) {
                    byte[] bArr5 = this.privateKeyOTS;
                    byte[] bArr6 = this.concHashs;
                    int i12 = this.mdsize;
                    System.arraycopy(bArr5, 0, bArr6, (this.f91498i - 1) * i12, i12);
                }
            }
        }
        throw new IllegalStateException("unable to updateLeaf in steps: " + this.steps + " " + this.f91498i + " " + this.f91499j);
    }

    public byte[] getLeaf() {
        return Arrays.clone(this.leaf);
    }

    public byte[][] getStatByte() {
        return new byte[][]{this.privateKeyOTS, this.seed, this.concHashs, this.leaf};
    }

    public int[] getStatInt() {
        return new int[]{this.f91498i, this.f91499j, this.steps, this.f91500w};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initLeafCalc(byte[] bArr) {
        this.f91498i = 0;
        this.f91499j = 0;
        byte[] bArr2 = new byte[this.mdsize];
        System.arraycopy(bArr, 0, bArr2, 0, this.seed.length);
        this.seed = this.gmssRandom.nextSeed(bArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GMSSLeaf nextLeaf() {
        GMSSLeaf gMSSLeaf = new GMSSLeaf(this);
        gMSSLeaf.updateLeafCalc();
        return gMSSLeaf;
    }

    public String toString() {
        StringBuilder sb;
        String str = "";
        for (int i4 = 0; i4 < 4; i4++) {
            str = str + getStatInt()[i4] + " ";
        }
        String str2 = str + " " + this.mdsize + " " + this.keysize + " " + this.two_power_w + " ";
        byte[][] statByte = getStatByte();
        for (int i10 = 0; i10 < 4; i10++) {
            if (statByte[i10] != null) {
                sb = new StringBuilder();
                sb.append(str2);
                sb.append(new String(Hex.encode(statByte[i10])));
                sb.append(" ");
            } else {
                sb = new StringBuilder();
                sb.append(str2);
                sb.append("null ");
            }
            str2 = sb.toString();
        }
        return str2;
    }
}
