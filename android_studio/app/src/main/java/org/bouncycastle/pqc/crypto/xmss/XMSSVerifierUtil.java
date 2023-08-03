package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.HashTreeAddress;
import org.bouncycastle.pqc.crypto.xmss.LTreeAddress;

/* loaded from: classes5.dex */
class XMSSVerifierUtil {
    XMSSVerifierUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMSSNode getRootNodeFromSignature(WOTSPlus wOTSPlus, int i4, byte[] bArr, XMSSReducedSignature xMSSReducedSignature, OTSHashAddress oTSHashAddress, int i10) {
        if (bArr.length == wOTSPlus.getParams().getTreeDigestSize()) {
            Objects.requireNonNull(xMSSReducedSignature, "signature == null");
            Objects.requireNonNull(oTSHashAddress, "otsHashAddress == null");
            HashTreeAddress hashTreeAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withTreeIndex(oTSHashAddress.getOTSAddress()).build();
            XMSSNode[] xMSSNodeArr = new XMSSNode[2];
            xMSSNodeArr[0] = XMSSNodeUtil.lTree(wOTSPlus, wOTSPlus.getPublicKeyFromSignature(bArr, xMSSReducedSignature.getWOTSPlusSignature(), oTSHashAddress), (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withLTreeAddress(oTSHashAddress.getOTSAddress()).build());
            for (int i11 = 0; i11 < i4; i11++) {
                HashTreeAddress hashTreeAddress2 = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress()).withTreeHeight(i11).withTreeIndex(hashTreeAddress.getTreeIndex()).withKeyAndMask(hashTreeAddress.getKeyAndMask()).build();
                if (Math.floor(i10 / (1 << i11)) % 2.0d == 0.0d) {
                    hashTreeAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress2.getLayerAddress()).withTreeAddress(hashTreeAddress2.getTreeAddress()).withTreeHeight(hashTreeAddress2.getTreeHeight()).withTreeIndex(hashTreeAddress2.getTreeIndex() / 2).withKeyAndMask(hashTreeAddress2.getKeyAndMask()).build();
                    xMSSNodeArr[1] = XMSSNodeUtil.randomizeHash(wOTSPlus, xMSSNodeArr[0], xMSSReducedSignature.getAuthPath().get(i11), hashTreeAddress);
                    xMSSNodeArr[1] = new XMSSNode(xMSSNodeArr[1].getHeight() + 1, xMSSNodeArr[1].getValue());
                } else {
                    hashTreeAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress2.getLayerAddress()).withTreeAddress(hashTreeAddress2.getTreeAddress()).withTreeHeight(hashTreeAddress2.getTreeHeight()).withTreeIndex((hashTreeAddress2.getTreeIndex() - 1) / 2).withKeyAndMask(hashTreeAddress2.getKeyAndMask()).build();
                    xMSSNodeArr[1] = XMSSNodeUtil.randomizeHash(wOTSPlus, xMSSReducedSignature.getAuthPath().get(i11), xMSSNodeArr[0], hashTreeAddress);
                    xMSSNodeArr[1] = new XMSSNode(xMSSNodeArr[1].getHeight() + 1, xMSSNodeArr[1].getValue());
                }
                xMSSNodeArr[0] = xMSSNodeArr[1];
            }
            return xMSSNodeArr[0];
        }
        throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
    }
}
