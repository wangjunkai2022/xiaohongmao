package com.fasterxml.jackson.core.format;

import com.fasterxml.jackson.core.JsonFactory;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: InputAccessor.java */
/* loaded from: classes.dex */
public interface c {
    boolean a() throws IOException;

    byte nextByte() throws IOException;

    void reset();

    /* compiled from: InputAccessor.java */
    /* loaded from: classes.dex */
    public static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        protected final InputStream f13875a;

        /* renamed from: b  reason: collision with root package name */
        protected final byte[] f13876b;

        /* renamed from: c  reason: collision with root package name */
        protected final int f13877c;

        /* renamed from: d  reason: collision with root package name */
        protected int f13878d;

        /* renamed from: e  reason: collision with root package name */
        protected int f13879e;

        public a(InputStream inputStream, byte[] bArr) {
            this.f13875a = inputStream;
            this.f13876b = bArr;
            this.f13877c = 0;
            this.f13879e = 0;
            this.f13878d = 0;
        }

        @Override // com.fasterxml.jackson.core.format.c
        public boolean a() throws IOException {
            int read;
            int i4 = this.f13879e;
            if (i4 < this.f13878d) {
                return true;
            }
            InputStream inputStream = this.f13875a;
            if (inputStream == null) {
                return false;
            }
            byte[] bArr = this.f13876b;
            int length = bArr.length - i4;
            if (length >= 1 && (read = inputStream.read(bArr, i4, length)) > 0) {
                this.f13878d += read;
                return true;
            }
            return false;
        }

        public b b(JsonFactory jsonFactory, MatchStrength matchStrength) {
            InputStream inputStream = this.f13875a;
            byte[] bArr = this.f13876b;
            int i4 = this.f13877c;
            return new b(inputStream, bArr, i4, this.f13878d - i4, jsonFactory, matchStrength);
        }

        @Override // com.fasterxml.jackson.core.format.c
        public byte nextByte() throws IOException {
            if (this.f13879e >= this.f13878d && !a()) {
                throw new EOFException("Failed auto-detect: could not read more than " + this.f13879e + " bytes (max buffer size: " + this.f13876b.length + ")");
            }
            byte[] bArr = this.f13876b;
            int i4 = this.f13879e;
            this.f13879e = i4 + 1;
            return bArr[i4];
        }

        @Override // com.fasterxml.jackson.core.format.c
        public void reset() {
            this.f13879e = this.f13877c;
        }

        public a(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        public a(byte[] bArr, int i4, int i10) {
            this.f13875a = null;
            this.f13876b = bArr;
            this.f13879e = i4;
            this.f13877c = i4;
            this.f13878d = i4 + i10;
        }
    }
}
