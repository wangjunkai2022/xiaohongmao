package com.squareup.moshi;

import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonValueSource.java */
/* loaded from: classes3.dex */
public final class o implements Source {

    /* renamed from: h  reason: collision with root package name */
    static final ByteString f55660h = ByteString.encodeUtf8("[]{}\"'/#");

    /* renamed from: i  reason: collision with root package name */
    static final ByteString f55661i = ByteString.encodeUtf8("'\\");

    /* renamed from: j  reason: collision with root package name */
    static final ByteString f55662j = ByteString.encodeUtf8("\"\\");

    /* renamed from: k  reason: collision with root package name */
    static final ByteString f55663k = ByteString.encodeUtf8("\r\n");

    /* renamed from: l  reason: collision with root package name */
    static final ByteString f55664l = ByteString.encodeUtf8("*");

    /* renamed from: m  reason: collision with root package name */
    static final ByteString f55665m = ByteString.EMPTY;

    /* renamed from: a  reason: collision with root package name */
    private final BufferedSource f55666a;

    /* renamed from: b  reason: collision with root package name */
    private final Buffer f55667b;

    /* renamed from: c  reason: collision with root package name */
    private final Buffer f55668c;

    /* renamed from: d  reason: collision with root package name */
    private ByteString f55669d;

    /* renamed from: e  reason: collision with root package name */
    private int f55670e;

    /* renamed from: f  reason: collision with root package name */
    private long f55671f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f55672g;

    o(BufferedSource bufferedSource) {
        this(bufferedSource, new Buffer(), f55660h, 0);
    }

    private void a(long j4) throws IOException {
        while (true) {
            long j10 = this.f55671f;
            if (j10 >= j4) {
                return;
            }
            ByteString byteString = this.f55669d;
            ByteString byteString2 = f55665m;
            if (byteString == byteString2) {
                return;
            }
            if (j10 == this.f55667b.size()) {
                if (this.f55671f > 0) {
                    return;
                }
                this.f55666a.require(1L);
            }
            long indexOfElement = this.f55667b.indexOfElement(this.f55669d, this.f55671f);
            if (indexOfElement == -1) {
                this.f55671f = this.f55667b.size();
            } else {
                byte b10 = this.f55667b.getByte(indexOfElement);
                ByteString byteString3 = this.f55669d;
                ByteString byteString4 = f55660h;
                if (byteString3 == byteString4) {
                    if (b10 == 34) {
                        this.f55669d = f55662j;
                        this.f55671f = indexOfElement + 1;
                    } else if (b10 == 35) {
                        this.f55669d = f55663k;
                        this.f55671f = indexOfElement + 1;
                    } else if (b10 == 39) {
                        this.f55669d = f55661i;
                        this.f55671f = indexOfElement + 1;
                    } else if (b10 != 47) {
                        if (b10 != 91) {
                            if (b10 != 93) {
                                if (b10 != 123) {
                                    if (b10 != 125) {
                                    }
                                }
                            }
                            int i4 = this.f55670e - 1;
                            this.f55670e = i4;
                            if (i4 == 0) {
                                this.f55669d = byteString2;
                            }
                            this.f55671f = indexOfElement + 1;
                        }
                        this.f55670e++;
                        this.f55671f = indexOfElement + 1;
                    } else {
                        long j11 = 2 + indexOfElement;
                        this.f55666a.require(j11);
                        long j12 = indexOfElement + 1;
                        byte b11 = this.f55667b.getByte(j12);
                        if (b11 == 47) {
                            this.f55669d = f55663k;
                            this.f55671f = j11;
                        } else if (b11 == 42) {
                            this.f55669d = f55664l;
                            this.f55671f = j11;
                        } else {
                            this.f55671f = j12;
                        }
                    }
                } else if (byteString3 == f55661i || byteString3 == f55662j) {
                    if (b10 == 92) {
                        long j13 = indexOfElement + 2;
                        this.f55666a.require(j13);
                        this.f55671f = j13;
                    } else {
                        if (this.f55670e > 0) {
                            byteString2 = byteString4;
                        }
                        this.f55669d = byteString2;
                        this.f55671f = indexOfElement + 1;
                    }
                } else if (byteString3 == f55664l) {
                    long j14 = 2 + indexOfElement;
                    this.f55666a.require(j14);
                    long j15 = indexOfElement + 1;
                    if (this.f55667b.getByte(j15) == 47) {
                        this.f55671f = j14;
                        this.f55669d = byteString4;
                    } else {
                        this.f55671f = j15;
                    }
                } else if (byteString3 == f55663k) {
                    this.f55671f = indexOfElement + 1;
                    this.f55669d = byteString4;
                } else {
                    throw new AssertionError();
                }
            }
        }
    }

    public void b() throws IOException {
        this.f55672g = true;
        while (this.f55669d != f55665m) {
            a(8192L);
            this.f55666a.skip(this.f55671f);
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f55672g = true;
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j4) throws IOException {
        if (this.f55672g) {
            throw new IllegalStateException("closed");
        }
        if (j4 == 0) {
            return 0L;
        }
        if (!this.f55668c.exhausted()) {
            long read = this.f55668c.read(buffer, j4);
            long j10 = j4 - read;
            if (this.f55667b.exhausted()) {
                return read;
            }
            long read2 = read(buffer, j10);
            return read2 != -1 ? read + read2 : read;
        }
        a(j4);
        long j11 = this.f55671f;
        if (j11 == 0) {
            if (this.f55669d == f55665m) {
                return -1L;
            }
            throw new AssertionError();
        }
        long min = Math.min(j4, j11);
        buffer.write(this.f55667b, min);
        this.f55671f -= min;
        return min;
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.f55666a.timeout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(BufferedSource bufferedSource, Buffer buffer, ByteString byteString, int i4) {
        this.f55671f = 0L;
        this.f55672g = false;
        this.f55666a = bufferedSource;
        this.f55667b = bufferedSource.getBuffer();
        this.f55668c = buffer;
        this.f55669d = byteString;
        this.f55670e = i4;
    }
}
