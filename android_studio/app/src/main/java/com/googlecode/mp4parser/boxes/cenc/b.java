package com.googlecode.mp4parser.boxes.cenc;

import com.google.android.exoplayer2.i;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.util.c;
import com.googlecode.mp4parser.util.n;
import com.mp4parser.iso23001.part7.a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.AbstractList;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;

/* compiled from: CencEncryptingSampleList.java */
/* loaded from: classes2.dex */
public class b extends AbstractList<f> {

    /* renamed from: a  reason: collision with root package name */
    private final String f36608a;

    /* renamed from: b  reason: collision with root package name */
    Cipher f36609b;

    /* renamed from: c  reason: collision with root package name */
    List<com.mp4parser.iso23001.part7.a> f36610c;

    /* renamed from: d  reason: collision with root package name */
    n<Integer, SecretKey> f36611d;

    /* renamed from: e  reason: collision with root package name */
    List<f> f36612e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CencEncryptingSampleList.java */
    /* renamed from: com.googlecode.mp4parser.boxes.cenc.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0286b implements f {

        /* renamed from: f  reason: collision with root package name */
        static final /* synthetic */ boolean f36613f = false;

        /* renamed from: a  reason: collision with root package name */
        private final f f36614a;

        /* renamed from: b  reason: collision with root package name */
        private final com.mp4parser.iso23001.part7.a f36615b;

        /* renamed from: c  reason: collision with root package name */
        private final Cipher f36616c;

        /* renamed from: d  reason: collision with root package name */
        private final SecretKey f36617d;

        /* synthetic */ C0286b(b bVar, f fVar, com.mp4parser.iso23001.part7.a aVar, Cipher cipher, SecretKey secretKey, C0286b c0286b) {
            this(fVar, aVar, cipher, secretKey);
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            ByteBuffer byteBuffer = (ByteBuffer) this.f36614a.a().rewind();
            ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.limit());
            com.mp4parser.iso23001.part7.a aVar = this.f36615b;
            b.this.c(aVar.f47090a, this.f36617d);
            try {
                a.k[] kVarArr = aVar.f47091b;
                if (kVarArr != null) {
                    for (a.k kVar : kVarArr) {
                        byte[] bArr = new byte[kVar.clear()];
                        byteBuffer.get(bArr);
                        allocate.put(bArr);
                        if (kVar.a() > 0) {
                            byte[] bArr2 = new byte[c.a(kVar.a())];
                            byteBuffer.get(bArr2);
                            allocate.put(this.f36616c.update(bArr2));
                        }
                    }
                } else {
                    int limit = byteBuffer.limit();
                    byte[] bArr3 = new byte[limit];
                    byteBuffer.get(bArr3);
                    if (i.F1.equals(b.this.f36608a)) {
                        int i4 = (limit / 16) * 16;
                        allocate.put(this.f36616c.doFinal(bArr3, 0, i4));
                        allocate.put(bArr3, i4, limit - i4);
                    } else if (i.E1.equals(b.this.f36608a)) {
                        allocate.put(this.f36616c.doFinal(bArr3));
                    }
                }
                byteBuffer.rewind();
                allocate.rewind();
                return allocate;
            } catch (BadPaddingException e4) {
                throw new RuntimeException(e4);
            } catch (IllegalBlockSizeException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            a.k[] kVarArr;
            ByteBuffer byteBuffer = (ByteBuffer) this.f36614a.a().rewind();
            b.this.c(this.f36615b.f47090a, this.f36617d);
            try {
                a.k[] kVarArr2 = this.f36615b.f47091b;
                if (kVarArr2 != null && kVarArr2.length > 0) {
                    byte[] bArr = new byte[byteBuffer.limit()];
                    byteBuffer.get(bArr);
                    int i4 = 0;
                    for (a.k kVar : this.f36615b.f47091b) {
                        int clear = i4 + kVar.clear();
                        if (kVar.a() > 0) {
                            this.f36616c.update(bArr, clear, c.a(kVar.a()), bArr, clear);
                            i4 = (int) (clear + kVar.a());
                        } else {
                            i4 = clear;
                        }
                    }
                    writableByteChannel.write(ByteBuffer.wrap(bArr));
                } else {
                    int limit = byteBuffer.limit();
                    byte[] bArr2 = new byte[limit];
                    byteBuffer.get(bArr2);
                    if (i.F1.equals(b.this.f36608a)) {
                        int i10 = (limit / 16) * 16;
                        writableByteChannel.write(ByteBuffer.wrap(this.f36616c.doFinal(bArr2, 0, i10)));
                        writableByteChannel.write(ByteBuffer.wrap(bArr2, i10, limit - i10));
                    } else if (i.E1.equals(b.this.f36608a)) {
                        writableByteChannel.write(ByteBuffer.wrap(this.f36616c.doFinal(bArr2)));
                    }
                }
                byteBuffer.rewind();
            } catch (BadPaddingException e4) {
                throw new RuntimeException(e4);
            } catch (IllegalBlockSizeException e10) {
                throw new RuntimeException(e10);
            } catch (ShortBufferException e11) {
                throw new RuntimeException(e11);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f36614a.getSize();
        }

        private C0286b(f fVar, com.mp4parser.iso23001.part7.a aVar, Cipher cipher, SecretKey secretKey) {
            this.f36614a = fVar;
            this.f36615b = aVar;
            this.f36616c = cipher;
            this.f36617d = secretKey;
        }
    }

    public b(SecretKey secretKey, List<f> list, List<com.mp4parser.iso23001.part7.a> list2) {
        this(new n(0, secretKey), list, list2, i.E1);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: b */
    public f get(int i4) {
        f fVar = this.f36612e.get(i4);
        return this.f36611d.get(Integer.valueOf(i4)) != null ? new C0286b(this, fVar, this.f36610c.get(i4), this.f36609b, this.f36611d.get(Integer.valueOf(i4)), null) : fVar;
    }

    protected void c(byte[] bArr, SecretKey secretKey) {
        try {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.f36609b.init(1, secretKey, new IvParameterSpec(bArr2));
        } catch (InvalidAlgorithmParameterException e4) {
            throw new RuntimeException(e4);
        } catch (InvalidKeyException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f36612e.size();
    }

    public b(n<Integer, SecretKey> nVar, List<f> list, List<com.mp4parser.iso23001.part7.a> list2, String str) {
        new n();
        this.f36610c = list2;
        this.f36611d = nVar;
        this.f36608a = str;
        this.f36612e = list;
        try {
            if (i.E1.equals(str)) {
                this.f36609b = Cipher.getInstance("AES/CTR/NoPadding");
            } else if (i.F1.equals(str)) {
                this.f36609b = Cipher.getInstance("AES/CBC/NoPadding");
            } else {
                throw new RuntimeException("Only cenc & cbc1 is supported as encryptionAlgo");
            }
        } catch (NoSuchAlgorithmException e4) {
            throw new RuntimeException(e4);
        } catch (NoSuchPaddingException e10) {
            throw new RuntimeException(e10);
        }
    }
}
