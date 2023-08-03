package org.bouncycastle.pqc.crypto.sphincs;

/* loaded from: classes5.dex */
class Tree {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class leafaddr {
        int level;
        long subleaf;
        long subtree;

        public leafaddr() {
        }

        public leafaddr(leafaddr leafaddrVar) {
            this.level = leafaddrVar.level;
            this.subtree = leafaddrVar.subtree;
            this.subleaf = leafaddrVar.subleaf;
        }
    }

    Tree() {
    }

    static void gen_leaf_wots(HashFunctions hashFunctions, byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, leafaddr leafaddrVar) {
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[2144];
        Wots wots = new Wots();
        Seed.get_seed(hashFunctions, bArr4, 0, bArr3, leafaddrVar);
        wots.wots_pkgen(hashFunctions, bArr5, 0, bArr4, 0, bArr2, i10);
        l_tree(hashFunctions, bArr, i4, bArr5, 0, bArr2, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l_tree(HashFunctions hashFunctions, byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, int i11) {
        int i12;
        int i13 = 67;
        for (int i14 = 0; i14 < 7; i14++) {
            int i15 = 0;
            while (true) {
                i12 = i13 >>> 1;
                if (i15 >= i12) {
                    break;
                }
                hashFunctions.hash_2n_n_mask(bArr2, i10 + (i15 * 32), bArr2, i10 + (i15 * 2 * 32), bArr3, i11 + (i14 * 2 * 32));
                i15++;
            }
            if ((i13 & 1) != 0) {
                System.arraycopy(bArr2, i10 + ((i13 - 1) * 32), bArr2, (i12 * 32) + i10, 32);
                i12++;
            }
            i13 = i12;
        }
        System.arraycopy(bArr2, i10, bArr, i4, 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void treehash(HashFunctions hashFunctions, byte[] bArr, int i4, int i10, byte[] bArr2, leafaddr leafaddrVar, byte[] bArr3, int i11) {
        leafaddr leafaddrVar2 = new leafaddr(leafaddrVar);
        int i12 = i10 + 1;
        byte[] bArr4 = new byte[i12 * 32];
        int[] iArr = new int[i12];
        int i13 = 1;
        int i14 = (int) (leafaddrVar2.subleaf + (1 << i10));
        int i15 = 0;
        while (leafaddrVar2.subleaf < i14) {
            gen_leaf_wots(hashFunctions, bArr4, i15 * 32, bArr3, i11, bArr2, leafaddrVar2);
            iArr[i15] = 0;
            int i16 = i15 + i13;
            while (i16 > i13) {
                int i17 = i16 - 1;
                int i18 = i16 - 2;
                if (iArr[i17] == iArr[i18]) {
                    int i19 = i18 * 32;
                    int[] iArr2 = iArr;
                    hashFunctions.hash_2n_n_mask(bArr4, i19, bArr4, i19, bArr3, i11 + ((iArr[i17] + 7) * 2 * 32));
                    iArr2[i18] = iArr2[i18] + 1;
                    i16--;
                    i14 = i14;
                    iArr = iArr2;
                    i13 = 1;
                }
            }
            leafaddrVar2.subleaf++;
            i15 = i16;
            i14 = i14;
            iArr = iArr;
            i13 = 1;
        }
        for (int i20 = 0; i20 < 32; i20++) {
            bArr[i4 + i20] = bArr4[i20];
        }
    }
}
