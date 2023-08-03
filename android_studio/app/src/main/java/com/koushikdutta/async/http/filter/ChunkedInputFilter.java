package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.Util;

/* loaded from: classes3.dex */
public class ChunkedInputFilter extends FilteredDataEmitter {

    /* renamed from: h  reason: collision with root package name */
    private int f44904h = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f44905i = 0;

    /* renamed from: j  reason: collision with root package name */
    private State f44906j = State.CHUNK_LEN;

    /* renamed from: k  reason: collision with root package name */
    ByteBufferList f44907k = new ByteBufferList();

    /* renamed from: com.koushikdutta.async.http.filter.ChunkedInputFilter$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44908a;

        static {
            int[] iArr = new int[State.values().length];
            f44908a = iArr;
            try {
                iArr[State.CHUNK_LEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44908a[State.CHUNK_LEN_CR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44908a[State.CHUNK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f44908a[State.CHUNK_CR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f44908a[State.CHUNK_CRLF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f44908a[State.COMPLETE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum State {
        CHUNK_LEN,
        CHUNK_LEN_CR,
        CHUNK_LEN_CRLF,
        CHUNK,
        CHUNK_CR,
        CHUNK_CRLF,
        COMPLETE,
        ERROR
    }

    private boolean w0(char c10, char c11) {
        if (c10 != c11) {
            this.f44906j = State.ERROR;
            v0(new ChunkedDataException(c11 + " was expected, got " + c10));
            return false;
        }
        return true;
    }

    private boolean x0(char c10) {
        return w0(c10, '\r');
    }

    private boolean y0(char c10) {
        return w0(c10, '\n');
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        if (this.f44906j == State.ERROR) {
            byteBufferList.O();
            return;
        }
        while (byteBufferList.P() > 0) {
            try {
                switch (AnonymousClass1.f44908a[this.f44906j.ordinal()]) {
                    case 1:
                        char q9 = byteBufferList.q();
                        if (q9 == '\r') {
                            this.f44906j = State.CHUNK_LEN_CR;
                        } else {
                            int i4 = this.f44904h * 16;
                            this.f44904h = i4;
                            if (q9 >= 'a' && q9 <= 'f') {
                                this.f44904h = i4 + (q9 - 'a') + 10;
                            } else if (q9 >= '0' && q9 <= '9') {
                                this.f44904h = i4 + (q9 - '0');
                            } else if (q9 >= 'A' && q9 <= 'F') {
                                this.f44904h = i4 + (q9 - 'A') + 10;
                            } else {
                                v0(new ChunkedDataException("invalid chunk length: " + q9));
                                return;
                            }
                        }
                        this.f44905i = this.f44904h;
                        break;
                    case 2:
                        if (y0(byteBufferList.q())) {
                            this.f44906j = State.CHUNK;
                            break;
                        } else {
                            return;
                        }
                    case 3:
                        int min = Math.min(this.f44905i, byteBufferList.P());
                        int i10 = this.f44905i - min;
                        this.f44905i = i10;
                        if (i10 == 0) {
                            this.f44906j = State.CHUNK_CR;
                        }
                        if (min != 0) {
                            byteBufferList.k(this.f44907k, min);
                            Util.a(this, this.f44907k);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (x0(byteBufferList.q())) {
                            this.f44906j = State.CHUNK_CRLF;
                            break;
                        } else {
                            return;
                        }
                    case 5:
                        if (y0(byteBufferList.q())) {
                            if (this.f44904h > 0) {
                                this.f44906j = State.CHUNK_LEN;
                            } else {
                                this.f44906j = State.COMPLETE;
                                v0(null);
                            }
                            this.f44904h = 0;
                            break;
                        } else {
                            return;
                        }
                    case 6:
                        return;
                }
            } catch (Exception e4) {
                v0(e4);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.koushikdutta.async.DataEmitterBase
    public void v0(Exception exc) {
        if (exc == null && this.f44906j != State.COMPLETE) {
            exc = new ChunkedDataException("chunked input ended before final chunk");
        }
        super.v0(exc);
    }
}
