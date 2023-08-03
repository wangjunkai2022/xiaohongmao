package com.facebook.imagepipeline.decoder;

import com.facebook.common.internal.j;
import com.facebook.common.internal.o;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ProgressiveJpegParser.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e {

    /* renamed from: i  reason: collision with root package name */
    private static final int f12473i = 0;

    /* renamed from: j  reason: collision with root package name */
    private static final int f12474j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final int f12475k = 2;

    /* renamed from: l  reason: collision with root package name */
    private static final int f12476l = 3;

    /* renamed from: m  reason: collision with root package name */
    private static final int f12477m = 4;

    /* renamed from: n  reason: collision with root package name */
    private static final int f12478n = 5;

    /* renamed from: o  reason: collision with root package name */
    private static final int f12479o = 6;

    /* renamed from: p  reason: collision with root package name */
    private static final int f12480p = 16384;

    /* renamed from: g  reason: collision with root package name */
    private boolean f12487g;

    /* renamed from: h  reason: collision with root package name */
    private final com.facebook.common.memory.a f12488h;

    /* renamed from: c  reason: collision with root package name */
    private int f12483c = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f12482b = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f12484d = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f12486f = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f12485e = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f12481a = 0;

    public e(com.facebook.common.memory.a byteArrayPool) {
        this.f12488h = (com.facebook.common.memory.a) j.i(byteArrayPool);
    }

    private boolean a(final InputStream inputStream) {
        int read;
        int i4 = this.f12485e;
        while (this.f12481a != 6 && (read = inputStream.read()) != -1) {
            try {
                int i10 = this.f12483c + 1;
                this.f12483c = i10;
                if (this.f12487g) {
                    this.f12481a = 6;
                    this.f12487g = false;
                    return false;
                }
                int i11 = this.f12481a;
                if (i11 != 0) {
                    if (i11 != 1) {
                        if (i11 != 2) {
                            if (i11 != 3) {
                                if (i11 == 4) {
                                    this.f12481a = 5;
                                } else if (i11 != 5) {
                                    j.o(false);
                                } else {
                                    int i12 = ((this.f12482b << 8) + read) - 2;
                                    com.facebook.common.util.e.c(inputStream, i12);
                                    this.f12483c += i12;
                                    this.f12481a = 2;
                                }
                            } else if (read == 255) {
                                this.f12481a = 3;
                            } else if (read == 0) {
                                this.f12481a = 2;
                            } else if (read == 217) {
                                this.f12487g = true;
                                g(i10 - 2);
                                this.f12481a = 2;
                            } else {
                                if (read == 218) {
                                    g(i10 - 2);
                                }
                                if (b(read)) {
                                    this.f12481a = 4;
                                } else {
                                    this.f12481a = 2;
                                }
                            }
                        } else if (read == 255) {
                            this.f12481a = 3;
                        }
                    } else if (read == 216) {
                        this.f12481a = 2;
                    } else {
                        this.f12481a = 6;
                    }
                } else if (read == 255) {
                    this.f12481a = 1;
                } else {
                    this.f12481a = 6;
                }
                this.f12482b = read;
            } catch (IOException e4) {
                o.d(e4);
            }
        }
        return (this.f12481a == 6 || this.f12485e == i4) ? false : true;
    }

    private static boolean b(int markerSecondByte) {
        if (markerSecondByte == 1) {
            return false;
        }
        return ((markerSecondByte >= 208 && markerSecondByte <= 215) || markerSecondByte == 217 || markerSecondByte == 216) ? false : true;
    }

    private void g(int offset) {
        int i4 = this.f12484d;
        if (i4 > 0) {
            this.f12486f = offset;
        }
        this.f12484d = i4 + 1;
        this.f12485e = i4;
    }

    public int c() {
        return this.f12486f;
    }

    public int d() {
        return this.f12485e;
    }

    public boolean e() {
        return this.f12487g;
    }

    public boolean f() {
        return this.f12483c > 1 && this.f12481a != 6;
    }

    public boolean h(final com.facebook.imagepipeline.image.e encodedImage) {
        if (this.f12481a != 6 && encodedImage.H() > this.f12483c) {
            com.facebook.common.memory.f fVar = new com.facebook.common.memory.f(encodedImage.D(), this.f12488h.get(16384), this.f12488h);
            try {
                com.facebook.common.util.e.c(fVar, this.f12483c);
                return a(fVar);
            } catch (IOException e4) {
                o.d(e4);
                return false;
            } finally {
                com.facebook.common.internal.c.b(fVar);
            }
        }
        return false;
    }
}
