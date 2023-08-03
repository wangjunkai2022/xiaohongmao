package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class SerializedString implements com.fasterxml.jackson.core.j, Serializable {

    /* renamed from: f  reason: collision with root package name */
    private static final long f13903f = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final e f13904g = e.k();

    /* renamed from: a  reason: collision with root package name */
    protected final String f13905a;

    /* renamed from: b  reason: collision with root package name */
    protected byte[] f13906b;

    /* renamed from: c  reason: collision with root package name */
    protected byte[] f13907c;

    /* renamed from: d  reason: collision with root package name */
    protected char[] f13908d;

    /* renamed from: e  reason: collision with root package name */
    protected transient String f13909e;

    public SerializedString(String str) {
        if (str != null) {
            this.f13905a = str;
            return;
        }
        throw new IllegalStateException("Null String illegal for SerializedString");
    }

    private void a(ObjectInputStream objectInputStream) throws IOException {
        this.f13909e = objectInputStream.readUTF();
    }

    private void c(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeUTF(this.f13905a);
    }

    @Override // com.fasterxml.jackson.core.j
    public int appendQuoted(char[] cArr, int i4) {
        char[] cArr2 = this.f13908d;
        if (cArr2 == null) {
            cArr2 = f13904g.n(this.f13905a);
            this.f13908d = cArr2;
        }
        int length = cArr2.length;
        if (i4 + length > cArr.length) {
            return -1;
        }
        System.arraycopy(cArr2, 0, cArr, i4, length);
        return length;
    }

    @Override // com.fasterxml.jackson.core.j
    public int appendQuotedUTF8(byte[] bArr, int i4) {
        byte[] bArr2 = this.f13906b;
        if (bArr2 == null) {
            bArr2 = f13904g.o(this.f13905a);
            this.f13906b = bArr2;
        }
        int length = bArr2.length;
        if (i4 + length > bArr.length) {
            return -1;
        }
        System.arraycopy(bArr2, 0, bArr, i4, length);
        return length;
    }

    @Override // com.fasterxml.jackson.core.j
    public int appendUnquoted(char[] cArr, int i4) {
        String str = this.f13905a;
        int length = str.length();
        if (i4 + length > cArr.length) {
            return -1;
        }
        str.getChars(0, length, cArr, i4);
        return length;
    }

    @Override // com.fasterxml.jackson.core.j
    public int appendUnquotedUTF8(byte[] bArr, int i4) {
        byte[] bArr2 = this.f13907c;
        if (bArr2 == null) {
            bArr2 = f13904g.j(this.f13905a);
            this.f13907c = bArr2;
        }
        int length = bArr2.length;
        if (i4 + length > bArr.length) {
            return -1;
        }
        System.arraycopy(bArr2, 0, bArr, i4, length);
        return length;
    }

    @Override // com.fasterxml.jackson.core.j
    public final char[] asQuotedChars() {
        char[] cArr = this.f13908d;
        if (cArr == null) {
            char[] n9 = f13904g.n(this.f13905a);
            this.f13908d = n9;
            return n9;
        }
        return cArr;
    }

    @Override // com.fasterxml.jackson.core.j
    public final byte[] asQuotedUTF8() {
        byte[] bArr = this.f13906b;
        if (bArr == null) {
            byte[] o9 = f13904g.o(this.f13905a);
            this.f13906b = o9;
            return o9;
        }
        return bArr;
    }

    @Override // com.fasterxml.jackson.core.j
    public final byte[] asUnquotedUTF8() {
        byte[] bArr = this.f13907c;
        if (bArr == null) {
            byte[] j4 = f13904g.j(this.f13905a);
            this.f13907c = j4;
            return j4;
        }
        return bArr;
    }

    protected Object b() {
        return new SerializedString(this.f13909e);
    }

    @Override // com.fasterxml.jackson.core.j
    public final int charLength() {
        return this.f13905a.length();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        return this.f13905a.equals(((SerializedString) obj).f13905a);
    }

    @Override // com.fasterxml.jackson.core.j
    public final String getValue() {
        return this.f13905a;
    }

    public final int hashCode() {
        return this.f13905a.hashCode();
    }

    @Override // com.fasterxml.jackson.core.j
    public int putQuotedUTF8(ByteBuffer byteBuffer) {
        byte[] bArr = this.f13906b;
        if (bArr == null) {
            bArr = f13904g.o(this.f13905a);
            this.f13906b = bArr;
        }
        int length = bArr.length;
        if (length > byteBuffer.remaining()) {
            return -1;
        }
        byteBuffer.put(bArr, 0, length);
        return length;
    }

    @Override // com.fasterxml.jackson.core.j
    public int putUnquotedUTF8(ByteBuffer byteBuffer) {
        byte[] bArr = this.f13907c;
        if (bArr == null) {
            bArr = f13904g.j(this.f13905a);
            this.f13907c = bArr;
        }
        int length = bArr.length;
        if (length > byteBuffer.remaining()) {
            return -1;
        }
        byteBuffer.put(bArr, 0, length);
        return length;
    }

    public final String toString() {
        return this.f13905a;
    }

    @Override // com.fasterxml.jackson.core.j
    public int writeQuotedUTF8(OutputStream outputStream) throws IOException {
        byte[] bArr = this.f13906b;
        if (bArr == null) {
            bArr = f13904g.o(this.f13905a);
            this.f13906b = bArr;
        }
        int length = bArr.length;
        outputStream.write(bArr, 0, length);
        return length;
    }

    @Override // com.fasterxml.jackson.core.j
    public int writeUnquotedUTF8(OutputStream outputStream) throws IOException {
        byte[] bArr = this.f13907c;
        if (bArr == null) {
            bArr = f13904g.j(this.f13905a);
            this.f13907c = bArr;
        }
        int length = bArr.length;
        outputStream.write(bArr, 0, length);
        return length;
    }
}
