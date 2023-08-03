package com.koushikdutta.async.http.server;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class BoundaryEmitter extends FilteredDataEmitter {

    /* renamed from: h  reason: collision with root package name */
    private byte[] f45037h;

    /* renamed from: i  reason: collision with root package name */
    int f45038i = 2;

    protected void A0() {
    }

    public void B0(String str) {
        this.f45037h = ("\r\n--" + str).getBytes();
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        if (this.f45038i > 0) {
            ByteBuffer y9 = ByteBufferList.y(this.f45037h.length);
            y9.put(this.f45037h, 0, this.f45038i);
            y9.flip();
            byteBufferList.e(y9);
            this.f45038i = 0;
        }
        int P = byteBufferList.P();
        byte[] bArr = new byte[P];
        byteBufferList.l(bArr);
        int i4 = 0;
        int i10 = 0;
        while (i4 < P) {
            int i11 = this.f45038i;
            if (i11 >= 0) {
                byte b10 = bArr[i4];
                byte[] bArr2 = this.f45037h;
                if (b10 == bArr2[i11]) {
                    int i12 = i11 + 1;
                    this.f45038i = i12;
                    if (i12 == bArr2.length) {
                        this.f45038i = -1;
                    }
                } else if (i11 > 0) {
                    i4 -= i11;
                    this.f45038i = 0;
                }
            } else if (i11 == -1) {
                if (bArr[i4] == 13) {
                    this.f45038i = -4;
                    int length = (i4 - i10) - this.f45037h.length;
                    if (i10 != 0 || length != 0) {
                        ByteBuffer put = ByteBufferList.y(length).put(bArr, i10, length);
                        put.flip();
                        ByteBufferList byteBufferList2 = new ByteBufferList();
                        byteBufferList2.b(put);
                        super.s(this, byteBufferList2);
                    }
                    A0();
                } else if (bArr[i4] == 45) {
                    this.f45038i = -2;
                } else {
                    v0(new MimeEncodingException("Invalid multipart/form-data. Expected \r or -"));
                    return;
                }
            } else if (i11 == -2) {
                if (bArr[i4] == 45) {
                    this.f45038i = -3;
                } else {
                    v0(new MimeEncodingException("Invalid multipart/form-data. Expected -"));
                    return;
                }
            } else if (i11 == -3) {
                if (bArr[i4] == 13) {
                    this.f45038i = -4;
                    int i13 = i4 - i10;
                    ByteBuffer put2 = ByteBufferList.y((i13 - this.f45037h.length) - 2).put(bArr, i10, (i13 - this.f45037h.length) - 2);
                    put2.flip();
                    ByteBufferList byteBufferList3 = new ByteBufferList();
                    byteBufferList3.b(put2);
                    super.s(this, byteBufferList3);
                    z0();
                } else {
                    v0(new MimeEncodingException("Invalid multipart/form-data. Expected \r"));
                    return;
                }
            } else if (i11 == -4) {
                if (bArr[i4] == 10) {
                    i10 = i4 + 1;
                    this.f45038i = 0;
                } else {
                    v0(new MimeEncodingException("Invalid multipart/form-data. Expected \n"));
                }
            } else {
                v0(new MimeEncodingException("Invalid multipart/form-data. Unknown state?"));
            }
            i4++;
        }
        if (i10 < P) {
            int max = (P - i10) - Math.max(this.f45038i, 0);
            ByteBuffer put3 = ByteBufferList.y(max).put(bArr, i10, max);
            put3.flip();
            ByteBufferList byteBufferList4 = new ByteBufferList();
            byteBufferList4.b(put3);
            super.s(this, byteBufferList4);
        }
    }

    public String w0() {
        byte[] bArr = this.f45037h;
        if (bArr == null) {
            return null;
        }
        return new String(bArr, 4, bArr.length - 4);
    }

    public String x0() {
        return y0() + "--\r\n";
    }

    public String y0() {
        byte[] bArr = this.f45037h;
        return new String(bArr, 2, bArr.length - 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z0() {
    }
}
