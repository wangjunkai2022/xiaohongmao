package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import java.util.TreeMap;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.pqc.crypto.xmss.HashTreeAddress;
import org.bouncycastle.pqc.crypto.xmss.LTreeAddress;
import org.bouncycastle.pqc.crypto.xmss.OTSHashAddress;

/* loaded from: classes5.dex */
public final class BDS implements Serializable {
    private static final long serialVersionUID = 1;
    private List<XMSSNode> authenticationPath;
    private int index;

    /* renamed from: k  reason: collision with root package name */
    private int f91564k;
    private Map<Integer, XMSSNode> keep;
    private transient int maxIndex;
    private Map<Integer, LinkedList<XMSSNode>> retain;
    private XMSSNode root;
    private Stack<XMSSNode> stack;
    private final List<BDSTreeHash> treeHashInstances;
    private final int treeHeight;
    private boolean used;
    private transient WOTSPlus wotsPlus;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(BDS bds) {
        this.wotsPlus = new WOTSPlus(bds.wotsPlus.getParams());
        this.treeHeight = bds.treeHeight;
        this.f91564k = bds.f91564k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        for (BDSTreeHash bDSTreeHash : bds.treeHashInstances) {
            this.treeHashInstances.add(bDSTreeHash.clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = bds.maxIndex;
        this.used = bds.used;
    }

    private BDS(BDS bds, int i4, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.wotsPlus = new WOTSPlus(new WOTSPlusParameters(aSN1ObjectIdentifier));
        this.treeHeight = bds.treeHeight;
        this.f91564k = bds.f91564k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        for (BDSTreeHash bDSTreeHash : bds.treeHashInstances) {
            this.treeHashInstances.add(bDSTreeHash.clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = i4;
        this.used = bds.used;
        validate();
    }

    private BDS(BDS bds, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.wotsPlus = new WOTSPlus(new WOTSPlusParameters(aSN1ObjectIdentifier));
        this.treeHeight = bds.treeHeight;
        this.f91564k = bds.f91564k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        for (BDSTreeHash bDSTreeHash : bds.treeHashInstances) {
            this.treeHashInstances.add(bDSTreeHash.clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = bds.maxIndex;
        this.used = bds.used;
        validate();
    }

    private BDS(BDS bds, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        this.wotsPlus = new WOTSPlus(bds.wotsPlus.getParams());
        this.treeHeight = bds.treeHeight;
        this.f91564k = bds.f91564k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        for (BDSTreeHash bDSTreeHash : bds.treeHashInstances) {
            this.treeHashInstances.add(bDSTreeHash.clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = bds.maxIndex;
        this.used = false;
        nextAuthenticationPath(bArr, bArr2, oTSHashAddress);
    }

    private BDS(WOTSPlus wOTSPlus, int i4, int i10, int i11) {
        this.wotsPlus = wOTSPlus;
        this.treeHeight = i4;
        this.maxIndex = i11;
        this.f91564k = i10;
        if (i10 <= i4 && i10 >= 2) {
            int i12 = i4 - i10;
            if (i12 % 2 == 0) {
                this.authenticationPath = new ArrayList();
                this.retain = new TreeMap();
                this.stack = new Stack<>();
                this.treeHashInstances = new ArrayList();
                for (int i13 = 0; i13 < i12; i13++) {
                    this.treeHashInstances.add(new BDSTreeHash(i13));
                }
                this.keep = new TreeMap();
                this.index = 0;
                this.used = false;
                return;
            }
        }
        throw new IllegalArgumentException("illegal value for BDS parameter k");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(XMSSParameters xMSSParameters, int i4, int i10) {
        this(xMSSParameters.getWOTSPlus(), xMSSParameters.getHeight(), xMSSParameters.getK(), i10);
        this.maxIndex = i4;
        this.index = i10;
        this.used = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(XMSSParameters xMSSParameters, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        this(xMSSParameters.getWOTSPlus(), xMSSParameters.getHeight(), xMSSParameters.getK(), (1 << xMSSParameters.getHeight()) - 1);
        initialize(bArr, bArr2, oTSHashAddress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(XMSSParameters xMSSParameters, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress, int i4) {
        this(xMSSParameters.getWOTSPlus(), xMSSParameters.getHeight(), xMSSParameters.getK(), (1 << xMSSParameters.getHeight()) - 1);
        initialize(bArr, bArr2, oTSHashAddress);
        while (this.index < i4) {
            nextAuthenticationPath(bArr, bArr2, oTSHashAddress);
            this.used = false;
        }
    }

    private BDSTreeHash getBDSTreeHashInstanceForUpdate() {
        BDSTreeHash bDSTreeHash = null;
        for (BDSTreeHash bDSTreeHash2 : this.treeHashInstances) {
            if (!bDSTreeHash2.isFinished() && bDSTreeHash2.isInitialized() && (bDSTreeHash == null || bDSTreeHash2.getHeight() < bDSTreeHash.getHeight() || (bDSTreeHash2.getHeight() == bDSTreeHash.getHeight() && bDSTreeHash2.getIndexLeaf() < bDSTreeHash.getIndexLeaf()))) {
                bDSTreeHash = bDSTreeHash2;
            }
        }
        return bDSTreeHash;
    }

    private void initialize(byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        Objects.requireNonNull(oTSHashAddress, "otsHashAddress == null");
        LTreeAddress lTreeAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).build();
        HashTreeAddress hashTreeAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).build();
        for (int i4 = 0; i4 < (1 << this.treeHeight); i4++) {
            oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(i4).withChainAddress(oTSHashAddress.getChainAddress()).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
            WOTSPlus wOTSPlus = this.wotsPlus;
            wOTSPlus.importKeys(wOTSPlus.getWOTSPlusSecretKey(bArr2, oTSHashAddress), bArr);
            WOTSPlusPublicKeyParameters publicKey = this.wotsPlus.getPublicKey(oTSHashAddress);
            lTreeAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(i4).withTreeHeight(lTreeAddress.getTreeHeight()).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(lTreeAddress.getKeyAndMask()).build();
            XMSSNode lTree = XMSSNodeUtil.lTree(this.wotsPlus, publicKey, lTreeAddress);
            hashTreeAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress()).withTreeIndex(i4).withKeyAndMask(hashTreeAddress.getKeyAndMask()).build();
            while (!this.stack.isEmpty() && this.stack.peek().getHeight() == lTree.getHeight()) {
                int height = i4 / (1 << lTree.getHeight());
                if (height == 1) {
                    this.authenticationPath.add(lTree);
                }
                if (height == 3 && lTree.getHeight() < this.treeHeight - this.f91564k) {
                    this.treeHashInstances.get(lTree.getHeight()).setNode(lTree);
                }
                if (height >= 3 && (height & 1) == 1 && lTree.getHeight() >= this.treeHeight - this.f91564k && lTree.getHeight() <= this.treeHeight - 2) {
                    if (this.retain.get(Integer.valueOf(lTree.getHeight())) == null) {
                        LinkedList<XMSSNode> linkedList = new LinkedList<>();
                        linkedList.add(lTree);
                        this.retain.put(Integer.valueOf(lTree.getHeight()), linkedList);
                    } else {
                        this.retain.get(Integer.valueOf(lTree.getHeight())).add(lTree);
                    }
                }
                HashTreeAddress hashTreeAddress2 = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress()).withTreeHeight(hashTreeAddress.getTreeHeight()).withTreeIndex((hashTreeAddress.getTreeIndex() - 1) / 2).withKeyAndMask(hashTreeAddress.getKeyAndMask()).build();
                XMSSNode randomizeHash = XMSSNodeUtil.randomizeHash(this.wotsPlus, this.stack.pop(), lTree, hashTreeAddress2);
                XMSSNode xMSSNode = new XMSSNode(randomizeHash.getHeight() + 1, randomizeHash.getValue());
                hashTreeAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress2.getLayerAddress()).withTreeAddress(hashTreeAddress2.getTreeAddress()).withTreeHeight(hashTreeAddress2.getTreeHeight() + 1).withTreeIndex(hashTreeAddress2.getTreeIndex()).withKeyAndMask(hashTreeAddress2.getKeyAndMask()).build();
                lTree = xMSSNode;
            }
            this.stack.push(lTree);
        }
        this.root = this.stack.pop();
    }

    private void nextAuthenticationPath(byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        List<XMSSNode> list;
        XMSSNode removeFirst;
        Objects.requireNonNull(oTSHashAddress, "otsHashAddress == null");
        if (this.used) {
            throw new IllegalStateException("index already used");
        }
        int i4 = this.index;
        if (i4 > this.maxIndex - 1) {
            throw new IllegalStateException("index out of bounds");
        }
        int calculateTau = XMSSUtil.calculateTau(i4, this.treeHeight);
        if (((this.index >> (calculateTau + 1)) & 1) == 0 && calculateTau < this.treeHeight - 1) {
            this.keep.put(Integer.valueOf(calculateTau), this.authenticationPath.get(calculateTau));
        }
        LTreeAddress lTreeAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).build();
        HashTreeAddress hashTreeAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).build();
        if (calculateTau == 0) {
            oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(this.index).withChainAddress(oTSHashAddress.getChainAddress()).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
            WOTSPlus wOTSPlus = this.wotsPlus;
            wOTSPlus.importKeys(wOTSPlus.getWOTSPlusSecretKey(bArr2, oTSHashAddress), bArr);
            this.authenticationPath.set(0, XMSSNodeUtil.lTree(this.wotsPlus, this.wotsPlus.getPublicKey(oTSHashAddress), (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(this.index).withTreeHeight(lTreeAddress.getTreeHeight()).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(lTreeAddress.getKeyAndMask()).build()));
        } else {
            int i10 = calculateTau - 1;
            WOTSPlus wOTSPlus2 = this.wotsPlus;
            wOTSPlus2.importKeys(wOTSPlus2.getWOTSPlusSecretKey(bArr2, oTSHashAddress), bArr);
            XMSSNode randomizeHash = XMSSNodeUtil.randomizeHash(this.wotsPlus, this.authenticationPath.get(i10), this.keep.get(Integer.valueOf(i10)), (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress()).withTreeHeight(i10).withTreeIndex(this.index >> calculateTau).withKeyAndMask(hashTreeAddress.getKeyAndMask()).build());
            this.authenticationPath.set(calculateTau, new XMSSNode(randomizeHash.getHeight() + 1, randomizeHash.getValue()));
            this.keep.remove(Integer.valueOf(i10));
            for (int i11 = 0; i11 < calculateTau; i11++) {
                if (i11 < this.treeHeight - this.f91564k) {
                    list = this.authenticationPath;
                    removeFirst = this.treeHashInstances.get(i11).getTailNode();
                } else {
                    list = this.authenticationPath;
                    removeFirst = this.retain.get(Integer.valueOf(i11)).removeFirst();
                }
                list.set(i11, removeFirst);
            }
            int min = Math.min(calculateTau, this.treeHeight - this.f91564k);
            for (int i12 = 0; i12 < min; i12++) {
                int i13 = this.index + 1 + ((1 << i12) * 3);
                if (i13 < (1 << this.treeHeight)) {
                    this.treeHashInstances.get(i12).initialize(i13);
                }
            }
        }
        for (int i14 = 0; i14 < ((this.treeHeight - this.f91564k) >> 1); i14++) {
            BDSTreeHash bDSTreeHashInstanceForUpdate = getBDSTreeHashInstanceForUpdate();
            if (bDSTreeHashInstanceForUpdate != null) {
                bDSTreeHashInstanceForUpdate.update(this.stack, this.wotsPlus, bArr, bArr2, oTSHashAddress);
            }
        }
        this.index++;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.maxIndex = objectInputStream.available() != 0 ? objectInputStream.readInt() : (1 << this.treeHeight) - 1;
        int i4 = this.maxIndex;
        if (i4 > (1 << this.treeHeight) - 1 || this.index > i4 + 1 || objectInputStream.available() != 0) {
            throw new IOException("inconsistent BDS data detected");
        }
    }

    private void validate() {
        if (this.authenticationPath == null) {
            throw new IllegalStateException("authenticationPath == null");
        }
        if (this.retain == null) {
            throw new IllegalStateException("retain == null");
        }
        if (this.stack == null) {
            throw new IllegalStateException("stack == null");
        }
        if (this.treeHashInstances == null) {
            throw new IllegalStateException("treeHashInstances == null");
        }
        if (this.keep == null) {
            throw new IllegalStateException("keep == null");
        }
        if (!XMSSUtil.isIndexValid(this.treeHeight, this.index)) {
            throw new IllegalStateException("index in BDS state out of bounds");
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.maxIndex);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<XMSSNode> getAuthenticationPath() {
        ArrayList arrayList = new ArrayList();
        for (XMSSNode xMSSNode : this.authenticationPath) {
            arrayList.add(xMSSNode);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getIndex() {
        return this.index;
    }

    public int getMaxIndex() {
        return this.maxIndex;
    }

    public BDS getNextState(byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        return new BDS(this, bArr, bArr2, oTSHashAddress);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public XMSSNode getRoot() {
        return this.root;
    }

    protected int getTreeHeight() {
        return this.treeHeight;
    }

    boolean isUsed() {
        return this.used;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void markUsed() {
        this.used = true;
    }

    public BDS withMaxIndex(int i4, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return new BDS(this, i4, aSN1ObjectIdentifier);
    }

    public BDS withWOTSDigest(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return new BDS(this, aSN1ObjectIdentifier);
    }
}
