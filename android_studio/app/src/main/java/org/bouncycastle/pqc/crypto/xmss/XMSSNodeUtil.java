package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.HashTreeAddress;
import org.bouncycastle.pqc.crypto.xmss.LTreeAddress;

/* loaded from: classes5.dex */
class XMSSNodeUtil {
    XMSSNodeUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMSSNode lTree(WOTSPlus wOTSPlus, WOTSPlusPublicKeyParameters wOTSPlusPublicKeyParameters, LTreeAddress lTreeAddress) {
        double d4;
        Objects.requireNonNull(wOTSPlusPublicKeyParameters, "publicKey == null");
        Objects.requireNonNull(lTreeAddress, "address == null");
        int len = wOTSPlus.getParams().getLen();
        byte[][] byteArray = wOTSPlusPublicKeyParameters.toByteArray();
        XMSSNode[] xMSSNodeArr = new XMSSNode[byteArray.length];
        for (int i4 = 0; i4 < byteArray.length; i4++) {
            xMSSNodeArr[i4] = new XMSSNode(0, byteArray[i4]);
        }
        LTreeAddress.Builder withKeyAndMask = new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(lTreeAddress.getLTreeAddress()).withTreeHeight(0).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(lTreeAddress.getKeyAndMask());
        while (true) {
            LTreeAddress lTreeAddress2 = (LTreeAddress) withKeyAndMask.build();
            if (len <= 1) {
                return xMSSNodeArr[0];
            }
            int i10 = 0;
            while (true) {
                d4 = len / 2;
                if (i10 >= ((int) Math.floor(d4))) {
                    break;
                }
                lTreeAddress2 = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress2.getLayerAddress()).withTreeAddress(lTreeAddress2.getTreeAddress()).withLTreeAddress(lTreeAddress2.getLTreeAddress()).withTreeHeight(lTreeAddress2.getTreeHeight()).withTreeIndex(i10).withKeyAndMask(lTreeAddress2.getKeyAndMask()).build();
                int i11 = i10 * 2;
                xMSSNodeArr[i10] = randomizeHash(wOTSPlus, xMSSNodeArr[i11], xMSSNodeArr[i11 + 1], lTreeAddress2);
                i10++;
            }
            if (len % 2 == 1) {
                xMSSNodeArr[(int) Math.floor(d4)] = xMSSNodeArr[len - 1];
            }
            len = (int) Math.ceil(len / 2.0d);
            withKeyAndMask = new LTreeAddress.Builder().withLayerAddress(lTreeAddress2.getLayerAddress()).withTreeAddress(lTreeAddress2.getTreeAddress()).withLTreeAddress(lTreeAddress2.getLTreeAddress()).withTreeHeight(lTreeAddress2.getTreeHeight() + 1).withTreeIndex(lTreeAddress2.getTreeIndex()).withKeyAndMask(lTreeAddress2.getKeyAndMask());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMSSNode randomizeHash(WOTSPlus wOTSPlus, XMSSNode xMSSNode, XMSSNode xMSSNode2, XMSSAddress xMSSAddress) {
        Objects.requireNonNull(xMSSNode, "left == null");
        Objects.requireNonNull(xMSSNode2, "right == null");
        if (xMSSNode.getHeight() == xMSSNode2.getHeight()) {
            Objects.requireNonNull(xMSSAddress, "address == null");
            byte[] publicSeed = wOTSPlus.getPublicSeed();
            if (xMSSAddress instanceof LTreeAddress) {
                LTreeAddress lTreeAddress = (LTreeAddress) xMSSAddress;
                xMSSAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(lTreeAddress.getLTreeAddress()).withTreeHeight(lTreeAddress.getTreeHeight()).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(0).build();
            } else if (xMSSAddress instanceof HashTreeAddress) {
                HashTreeAddress hashTreeAddress = (HashTreeAddress) xMSSAddress;
                xMSSAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress()).withTreeHeight(hashTreeAddress.getTreeHeight()).withTreeIndex(hashTreeAddress.getTreeIndex()).withKeyAndMask(0).build();
            }
            byte[] PRF = wOTSPlus.getKhf().PRF(publicSeed, xMSSAddress.toByteArray());
            if (xMSSAddress instanceof LTreeAddress) {
                LTreeAddress lTreeAddress2 = (LTreeAddress) xMSSAddress;
                xMSSAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress2.getLayerAddress()).withTreeAddress(lTreeAddress2.getTreeAddress()).withLTreeAddress(lTreeAddress2.getLTreeAddress()).withTreeHeight(lTreeAddress2.getTreeHeight()).withTreeIndex(lTreeAddress2.getTreeIndex()).withKeyAndMask(1).build();
            } else if (xMSSAddress instanceof HashTreeAddress) {
                HashTreeAddress hashTreeAddress2 = (HashTreeAddress) xMSSAddress;
                xMSSAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress2.getLayerAddress()).withTreeAddress(hashTreeAddress2.getTreeAddress()).withTreeHeight(hashTreeAddress2.getTreeHeight()).withTreeIndex(hashTreeAddress2.getTreeIndex()).withKeyAndMask(1).build();
            }
            byte[] PRF2 = wOTSPlus.getKhf().PRF(publicSeed, xMSSAddress.toByteArray());
            if (xMSSAddress instanceof LTreeAddress) {
                LTreeAddress lTreeAddress3 = (LTreeAddress) xMSSAddress;
                xMSSAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress3.getLayerAddress()).withTreeAddress(lTreeAddress3.getTreeAddress()).withLTreeAddress(lTreeAddress3.getLTreeAddress()).withTreeHeight(lTreeAddress3.getTreeHeight()).withTreeIndex(lTreeAddress3.getTreeIndex()).withKeyAndMask(2).build();
            } else if (xMSSAddress instanceof HashTreeAddress) {
                HashTreeAddress hashTreeAddress3 = (HashTreeAddress) xMSSAddress;
                xMSSAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress3.getLayerAddress()).withTreeAddress(hashTreeAddress3.getTreeAddress()).withTreeHeight(hashTreeAddress3.getTreeHeight()).withTreeIndex(hashTreeAddress3.getTreeIndex()).withKeyAndMask(2).build();
            }
            byte[] PRF3 = wOTSPlus.getKhf().PRF(publicSeed, xMSSAddress.toByteArray());
            int treeDigestSize = wOTSPlus.getParams().getTreeDigestSize();
            byte[] bArr = new byte[treeDigestSize * 2];
            for (int i4 = 0; i4 < treeDigestSize; i4++) {
                bArr[i4] = (byte) (xMSSNode.getValue()[i4] ^ PRF2[i4]);
            }
            for (int i10 = 0; i10 < treeDigestSize; i10++) {
                bArr[i10 + treeDigestSize] = (byte) (xMSSNode2.getValue()[i10] ^ PRF3[i10]);
            }
            return new XMSSNode(xMSSNode.getHeight(), wOTSPlus.getKhf().H(PRF, bArr));
        }
        throw new IllegalStateException("height of both nodes must be equal");
    }
}
