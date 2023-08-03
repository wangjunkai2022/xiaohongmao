package com.google.android.play.core.assetpacks;

import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class w1 extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final c3 f31640a = new c3();

    /* renamed from: b  reason: collision with root package name */
    private final File f31641b;

    /* renamed from: c  reason: collision with root package name */
    private final y3 f31642c;

    /* renamed from: d  reason: collision with root package name */
    private long f31643d;

    /* renamed from: e  reason: collision with root package name */
    private long f31644e;

    /* renamed from: f  reason: collision with root package name */
    private FileOutputStream f31645f;

    /* renamed from: g  reason: collision with root package name */
    private e4 f31646g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w1(File file, y3 y3Var) {
        this.f31641b = file;
        this.f31642c = y3Var;
    }

    @Override // java.io.OutputStream
    public final void write(int i4) throws IOException {
        write(new byte[]{(byte) i4}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i4, int i10) throws IOException {
        int min;
        while (i10 > 0) {
            if (this.f31643d == 0 && this.f31644e == 0) {
                int b10 = this.f31640a.b(bArr, i4, i10);
                if (b10 == -1) {
                    return;
                }
                i4 += b10;
                i10 -= b10;
                e4 c10 = this.f31640a.c();
                this.f31646g = c10;
                if (c10.d()) {
                    this.f31643d = 0L;
                    this.f31642c.l(this.f31646g.f(), 0, this.f31646g.f().length);
                    this.f31644e = this.f31646g.f().length;
                } else if (this.f31646g.h() && !this.f31646g.g()) {
                    this.f31642c.j(this.f31646g.f());
                    File file = new File(this.f31641b, this.f31646g.c());
                    file.getParentFile().mkdirs();
                    this.f31643d = this.f31646g.b();
                    this.f31645f = l.b.a(new FileOutputStream(file), file);
                } else {
                    byte[] f10 = this.f31646g.f();
                    this.f31642c.l(f10, 0, f10.length);
                    this.f31643d = this.f31646g.b();
                }
            }
            if (!this.f31646g.g()) {
                if (this.f31646g.d()) {
                    this.f31642c.e(this.f31644e, bArr, i4, i10);
                    this.f31644e += i10;
                    min = i10;
                } else if (this.f31646g.h()) {
                    min = (int) Math.min(i10, this.f31643d);
                    this.f31645f.write(bArr, i4, min);
                    long j4 = this.f31643d - min;
                    this.f31643d = j4;
                    if (j4 == 0) {
                        this.f31645f.close();
                    }
                } else {
                    min = (int) Math.min(i10, this.f31643d);
                    this.f31642c.e((this.f31646g.f().length + this.f31646g.b()) - this.f31643d, bArr, i4, min);
                    this.f31643d -= min;
                }
                i4 += min;
                i10 -= min;
            }
        }
    }
}
