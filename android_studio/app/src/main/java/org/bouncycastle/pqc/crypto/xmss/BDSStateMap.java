package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.pqc.crypto.xmss.OTSHashAddress;
import org.bouncycastle.util.Integers;

/* loaded from: classes5.dex */
public class BDSStateMap implements Serializable {
    private static final long serialVersionUID = -3464451825208522308L;
    private final Map<Integer, BDS> bdsState = new TreeMap();
    private transient long maxIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDSStateMap(long j4) {
        this.maxIndex = j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDSStateMap(BDSStateMap bDSStateMap, long j4) {
        for (Integer num : bDSStateMap.bdsState.keySet()) {
            this.bdsState.put(num, new BDS(bDSStateMap.bdsState.get(num)));
        }
        this.maxIndex = j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDSStateMap(XMSSMTParameters xMSSMTParameters, long j4, byte[] bArr, byte[] bArr2) {
        this.maxIndex = (1 << xMSSMTParameters.getHeight()) - 1;
        for (long j10 = 0; j10 < j4; j10++) {
            updateState(xMSSMTParameters, j10, bArr, bArr2);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.maxIndex = objectInputStream.available() != 0 ? objectInputStream.readLong() : 0L;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(this.maxIndex);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS get(int i4) {
        return this.bdsState.get(Integers.valueOf(i4));
    }

    public long getMaxIndex() {
        return this.maxIndex;
    }

    public boolean isEmpty() {
        return this.bdsState.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void put(int i4, BDS bds) {
        this.bdsState.put(Integers.valueOf(i4), bds);
    }

    BDS update(int i4, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        return this.bdsState.put(Integers.valueOf(i4), this.bdsState.get(Integers.valueOf(i4)).getNextState(bArr, bArr2, oTSHashAddress));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateState(XMSSMTParameters xMSSMTParameters, long j4, byte[] bArr, byte[] bArr2) {
        XMSSParameters xMSSParameters = xMSSMTParameters.getXMSSParameters();
        int height = xMSSParameters.getHeight();
        long treeIndex = XMSSUtil.getTreeIndex(j4, height);
        int leafIndex = XMSSUtil.getLeafIndex(j4, height);
        OTSHashAddress oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withTreeAddress(treeIndex).withOTSAddress(leafIndex).build();
        int i4 = (1 << height) - 1;
        if (leafIndex < i4) {
            if (get(0) == null || leafIndex == 0) {
                put(0, new BDS(xMSSParameters, bArr, bArr2, oTSHashAddress));
            }
            update(0, bArr, bArr2, oTSHashAddress);
        }
        for (int i10 = 1; i10 < xMSSMTParameters.getLayers(); i10++) {
            int leafIndex2 = XMSSUtil.getLeafIndex(treeIndex, height);
            treeIndex = XMSSUtil.getTreeIndex(treeIndex, height);
            OTSHashAddress oTSHashAddress2 = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(i10).withTreeAddress(treeIndex).withOTSAddress(leafIndex2).build();
            if (this.bdsState.get(Integer.valueOf(i10)) == null || XMSSUtil.isNewBDSInitNeeded(j4, height, i10)) {
                this.bdsState.put(Integer.valueOf(i10), new BDS(xMSSParameters, bArr, bArr2, oTSHashAddress2));
            }
            if (leafIndex2 < i4 && XMSSUtil.isNewAuthenticationPathNeeded(j4, height, i10)) {
                update(i10, bArr, bArr2, oTSHashAddress2);
            }
        }
    }

    public BDSStateMap withWOTSDigest(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        BDSStateMap bDSStateMap = new BDSStateMap(this.maxIndex);
        for (Integer num : this.bdsState.keySet()) {
            bDSStateMap.bdsState.put(num, this.bdsState.get(num).withWOTSDigest(aSN1ObjectIdentifier));
        }
        return bDSStateMap;
    }
}
