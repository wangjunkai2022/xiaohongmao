package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes5.dex */
public class HSSPrivateKeyParameters extends LMSKeyParameters implements LMSContextBasedSigner {
    private long index;
    private final long indexLimit;
    private final boolean isShard;
    private List<LMSPrivateKeyParameters> keys;

    /* renamed from: l  reason: collision with root package name */
    private final int f91506l;
    private HSSPublicKeyParameters publicKey;
    private List<LMSSignature> sig;

    public HSSPrivateKeyParameters(int i4, List<LMSPrivateKeyParameters> list, List<LMSSignature> list2, long j4, long j10) {
        super(true);
        this.index = 0L;
        this.f91506l = i4;
        this.keys = Collections.unmodifiableList(list);
        this.sig = Collections.unmodifiableList(list2);
        this.index = j4;
        this.indexLimit = j10;
        this.isShard = false;
        resetKeyToIndex();
    }

    private HSSPrivateKeyParameters(int i4, List<LMSPrivateKeyParameters> list, List<LMSSignature> list2, long j4, long j10, boolean z9) {
        super(true);
        this.index = 0L;
        this.f91506l = i4;
        this.keys = Collections.unmodifiableList(list);
        this.sig = Collections.unmodifiableList(list2);
        this.index = j4;
        this.indexLimit = j10;
        this.isShard = z9;
    }

    public static HSSPrivateKeyParameters getInstance(Object obj) throws IOException {
        DataInputStream dataInputStream;
        if (obj instanceof HSSPrivateKeyParameters) {
            return (HSSPrivateKeyParameters) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream2 = (DataInputStream) obj;
            if (dataInputStream2.readInt() == 0) {
                int readInt = dataInputStream2.readInt();
                long readLong = dataInputStream2.readLong();
                long readLong2 = dataInputStream2.readLong();
                boolean readBoolean = dataInputStream2.readBoolean();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i4 = 0; i4 < readInt; i4++) {
                    arrayList.add(LMSPrivateKeyParameters.getInstance(obj));
                }
                for (int i10 = 0; i10 < readInt - 1; i10++) {
                    arrayList2.add(LMSSignature.getInstance(obj));
                }
                return new HSSPrivateKeyParameters(readInt, arrayList, arrayList2, readLong, readLong2, readBoolean);
            }
            throw new IllegalStateException("unknown version for hss private key");
        } else if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return getInstance(Streams.readAll((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        } else {
            DataInputStream dataInputStream3 = null;
            try {
                dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            } catch (Throwable th) {
                th = th;
            }
            try {
                HSSPrivateKeyParameters hSSPrivateKeyParameters = getInstance(dataInputStream);
                dataInputStream.close();
                return hSSPrivateKeyParameters;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream3 = dataInputStream;
                if (dataInputStream3 != null) {
                    dataInputStream3.close();
                }
                throw th;
            }
        }
    }

    public static HSSPrivateKeyParameters getInstance(byte[] bArr, byte[] bArr2) throws IOException {
        HSSPrivateKeyParameters hSSPrivateKeyParameters = getInstance(bArr);
        hSSPrivateKeyParameters.publicKey = HSSPublicKeyParameters.getInstance(bArr2);
        return hSSPrivateKeyParameters;
    }

    private static HSSPrivateKeyParameters makeCopy(HSSPrivateKeyParameters hSSPrivateKeyParameters) {
        try {
            return getInstance(hSSPrivateKeyParameters.getEncoded());
        } catch (Exception e4) {
            throw new RuntimeException(e4.getMessage(), e4);
        }
    }

    protected Object clone() throws CloneNotSupportedException {
        return makeCopy(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HSSPrivateKeyParameters hSSPrivateKeyParameters = (HSSPrivateKeyParameters) obj;
        if (this.f91506l == hSSPrivateKeyParameters.f91506l && this.isShard == hSSPrivateKeyParameters.isShard && this.indexLimit == hSSPrivateKeyParameters.indexLimit && this.index == hSSPrivateKeyParameters.index && this.keys.equals(hSSPrivateKeyParameters.keys)) {
            return this.sig.equals(hSSPrivateKeyParameters.sig);
        }
        return false;
    }

    public HSSPrivateKeyParameters extractKeyShard(int i4) {
        HSSPrivateKeyParameters makeCopy;
        synchronized (this) {
            long j4 = i4;
            if (getUsagesRemaining() < j4) {
                throw new IllegalArgumentException("usageCount exceeds usages remaining in current leaf");
            }
            long j10 = this.index;
            this.index = j4 + j10;
            makeCopy = makeCopy(new HSSPrivateKeyParameters(this.f91506l, new ArrayList(getKeys()), new ArrayList(getSig()), j10, j10 + j4, true));
            resetKeyToIndex();
        }
        return makeCopy;
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedSigner
    public LMSContext generateLMSContext() {
        LMSPrivateKeyParameters lMSPrivateKeyParameters;
        LMSSignedPubKey[] lMSSignedPubKeyArr;
        int l10 = getL();
        synchronized (this) {
            HSS.rangeTestKeys(this);
            List<LMSPrivateKeyParameters> keys = getKeys();
            List<LMSSignature> sig = getSig();
            int i4 = l10 - 1;
            lMSPrivateKeyParameters = getKeys().get(i4);
            int i10 = 0;
            lMSSignedPubKeyArr = new LMSSignedPubKey[i4];
            while (i10 < i4) {
                int i11 = i10 + 1;
                lMSSignedPubKeyArr[i10] = new LMSSignedPubKey(sig.get(i10), keys.get(i11).getPublicKey());
                i10 = i11;
            }
            incIndex();
        }
        return lMSPrivateKeyParameters.generateLMSContext().withSignedPublicKeys(lMSSignedPubKeyArr);
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedSigner
    public byte[] generateSignature(LMSContext lMSContext) {
        try {
            return HSS.generateSignature(getL(), lMSContext).getEncoded();
        } catch (IOException e4) {
            throw new IllegalStateException("unable to encode signature: " + e4.getMessage(), e4);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSKeyParameters, org.bouncycastle.util.Encodable
    public synchronized byte[] getEncoded() throws IOException {
        Composer bool;
        bool = Composer.compose().u32str(0).u32str(this.f91506l).u64str(this.index).u64str(this.indexLimit).bool(this.isShard);
        for (LMSPrivateKeyParameters lMSPrivateKeyParameters : this.keys) {
            bool.bytes(lMSPrivateKeyParameters);
        }
        for (LMSSignature lMSSignature : this.sig) {
            bool.bytes(lMSSignature);
        }
        return bool.build();
    }

    public synchronized long getIndex() {
        return this.index;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getIndexLimit() {
        return this.indexLimit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized List<LMSPrivateKeyParameters> getKeys() {
        return this.keys;
    }

    public int getL() {
        return this.f91506l;
    }

    public synchronized LMSParameters[] getLMSParameters() {
        LMSParameters[] lMSParametersArr;
        int size = this.keys.size();
        lMSParametersArr = new LMSParameters[size];
        for (int i4 = 0; i4 < size; i4++) {
            LMSPrivateKeyParameters lMSPrivateKeyParameters = this.keys.get(i4);
            lMSParametersArr[i4] = new LMSParameters(lMSPrivateKeyParameters.getSigParameters(), lMSPrivateKeyParameters.getOtsParameters());
        }
        return lMSParametersArr;
    }

    public synchronized HSSPublicKeyParameters getPublicKey() {
        return new HSSPublicKeyParameters(this.f91506l, getRootKey().getPublicKey());
    }

    LMSPrivateKeyParameters getRootKey() {
        return this.keys.get(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized List<LMSSignature> getSig() {
        return this.sig;
    }

    @Override // org.bouncycastle.pqc.crypto.lms.LMSContextBasedSigner
    public long getUsagesRemaining() {
        return this.indexLimit - this.index;
    }

    public int hashCode() {
        long j4 = this.indexLimit;
        long j10 = this.index;
        return (((((((((this.f91506l * 31) + (this.isShard ? 1 : 0)) * 31) + this.keys.hashCode()) * 31) + this.sig.hashCode()) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j10 ^ (j10 >>> 32)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void incIndex() {
        this.index++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isShard() {
        return this.isShard;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replaceConsumedKey(int i4) {
        int i10 = i4 - 1;
        SeedDerive derivationFunction = this.keys.get(i10).getCurrentOTSKey().getDerivationFunction();
        derivationFunction.setJ(-2);
        byte[] bArr = new byte[32];
        derivationFunction.deriveSeed(bArr, true);
        byte[] bArr2 = new byte[32];
        derivationFunction.deriveSeed(bArr2, false);
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr2, 0, bArr3, 0, 16);
        ArrayList arrayList = new ArrayList(this.keys);
        LMSPrivateKeyParameters lMSPrivateKeyParameters = this.keys.get(i4);
        arrayList.set(i4, LMS.generateKeys(lMSPrivateKeyParameters.getSigParameters(), lMSPrivateKeyParameters.getOtsParameters(), 0, bArr3, bArr));
        ArrayList arrayList2 = new ArrayList(this.sig);
        arrayList2.set(i10, LMS.generateSign((LMSPrivateKeyParameters) arrayList.get(i10), ((LMSPrivateKeyParameters) arrayList.get(i4)).getPublicKey().toByteArray()));
        this.keys = Collections.unmodifiableList(arrayList);
        this.sig = Collections.unmodifiableList(arrayList2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00d1, code lost:
        if (r3[r9] == (r4[r9].getIndex() - 1)) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void resetKeyToIndex() {
        /*
            Method dump skipped, instructions count: 350
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.lms.HSSPrivateKeyParameters.resetKeyToIndex():void");
    }

    protected void updateHierarchy(LMSPrivateKeyParameters[] lMSPrivateKeyParametersArr, LMSSignature[] lMSSignatureArr) {
        synchronized (this) {
            this.keys = Collections.unmodifiableList(Arrays.asList(lMSPrivateKeyParametersArr));
            this.sig = Collections.unmodifiableList(Arrays.asList(lMSSignatureArr));
        }
    }
}
