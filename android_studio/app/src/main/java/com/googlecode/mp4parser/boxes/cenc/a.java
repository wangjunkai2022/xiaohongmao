package com.googlecode.mp4parser.boxes.cenc;

import com.google.android.exoplayer2.i;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.authoring.g;
import com.googlecode.mp4parser.util.c;
import com.googlecode.mp4parser.util.n;
import com.mp4parser.iso23001.part7.a;
import java.nio.ByteBuffer;
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
import javax.crypto.spec.IvParameterSpec;

/* compiled from: CencDecryptingSampleList.java */
/* loaded from: classes2.dex */
public class a extends AbstractList<f> {

    /* renamed from: a  reason: collision with root package name */
    List<com.mp4parser.iso23001.part7.a> f36604a;

    /* renamed from: b  reason: collision with root package name */
    n<Integer, SecretKey> f36605b;

    /* renamed from: c  reason: collision with root package name */
    List<f> f36606c;

    /* renamed from: d  reason: collision with root package name */
    String f36607d;

    public a(SecretKey secretKey, List<f> list, List<com.mp4parser.iso23001.part7.a> list2) {
        this(new n(0, secretKey), list, list2, i.E1);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public f get(int i4) {
        f fVar;
        if (this.f36605b.get(Integer.valueOf(i4)) != null) {
            ByteBuffer a10 = this.f36606c.get(i4).a();
            a10.rewind();
            ByteBuffer allocate = ByteBuffer.allocate(a10.limit());
            com.mp4parser.iso23001.part7.a aVar = this.f36604a.get(i4);
            Cipher b10 = b(this.f36605b.get(Integer.valueOf(i4)), aVar.f47090a);
            try {
                a.k[] kVarArr = aVar.f47091b;
                if (kVarArr != null && kVarArr.length > 0) {
                    for (a.k kVar : kVarArr) {
                        int clear = kVar.clear();
                        int a11 = c.a(kVar.a());
                        byte[] bArr = new byte[clear];
                        a10.get(bArr);
                        allocate.put(bArr);
                        if (a11 > 0) {
                            byte[] bArr2 = new byte[a11];
                            a10.get(bArr2);
                            allocate.put(b10.update(bArr2));
                        }
                    }
                    if (a10.remaining() > 0) {
                        System.err.println("Decrypted sample but still data remaining: " + fVar.getSize());
                    }
                    allocate.put(b10.doFinal());
                } else {
                    int limit = a10.limit();
                    byte[] bArr3 = new byte[limit];
                    a10.get(bArr3);
                    if (i.F1.equals(this.f36607d)) {
                        int i10 = (limit / 16) * 16;
                        allocate.put(b10.doFinal(bArr3, 0, i10));
                        allocate.put(bArr3, i10, limit - i10);
                    } else if (i.E1.equals(this.f36607d)) {
                        allocate.put(b10.doFinal(bArr3));
                    }
                }
                a10.rewind();
                allocate.rewind();
                return new g(allocate);
            } catch (BadPaddingException e4) {
                throw new RuntimeException(e4);
            } catch (IllegalBlockSizeException e10) {
                throw new RuntimeException(e10);
            }
        }
        return this.f36606c.get(i4);
    }

    Cipher b(SecretKey secretKey, byte[] bArr) {
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        try {
            if (i.E1.equals(this.f36607d)) {
                Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
                cipher.init(2, secretKey, new IvParameterSpec(bArr2));
                return cipher;
            } else if (i.F1.equals(this.f36607d)) {
                Cipher cipher2 = Cipher.getInstance("AES/CBC/NoPadding");
                cipher2.init(2, secretKey, new IvParameterSpec(bArr2));
                return cipher2;
            } else {
                throw new RuntimeException("Only cenc & cbc1 is supported as encryptionAlgo");
            }
        } catch (InvalidAlgorithmParameterException e4) {
            throw new RuntimeException(e4);
        } catch (InvalidKeyException e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new RuntimeException(e11);
        } catch (NoSuchPaddingException e12) {
            throw new RuntimeException(e12);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f36606c.size();
    }

    public a(n<Integer, SecretKey> nVar, List<f> list, List<com.mp4parser.iso23001.part7.a> list2, String str) {
        new n();
        this.f36604a = list2;
        this.f36605b = nVar;
        this.f36606c = list;
        this.f36607d = str;
    }
}
