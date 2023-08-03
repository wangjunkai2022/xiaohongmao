package org.bouncycastle.pqc.crypto.sphincsplus;

/* loaded from: classes5.dex */
class IndexedDigest {
    final byte[] digest;
    final int idx_leaf;
    final long idx_tree;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IndexedDigest(long j4, int i4, byte[] bArr) {
        this.idx_tree = j4;
        this.idx_leaf = i4;
        this.digest = bArr;
    }
}
