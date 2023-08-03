package org.bouncycastle.pqc.crypto.sphincsplus;

/* loaded from: classes5.dex */
class NodeEntry {
    final int nodeHeight;
    final byte[] nodeValue;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NodeEntry(byte[] bArr, int i4) {
        this.nodeValue = bArr;
        this.nodeHeight = i4;
    }
}
