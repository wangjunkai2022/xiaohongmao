package com.facebook.imageformat;

import com.facebook.common.internal.j;
import com.facebook.common.internal.o;
import com.facebook.imageformat.c;
import com.facebook.infer.annotation.Nullsafe;
import io.sentry.instrumentation.file.h;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import r7.h;

/* compiled from: ImageFormatChecker.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d {

    /* renamed from: d  reason: collision with root package name */
    private static d f11813d;

    /* renamed from: a  reason: collision with root package name */
    private int f11814a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private List<c.a> f11815b;

    /* renamed from: c  reason: collision with root package name */
    private final a f11816c = new a();

    private d() {
        i();
    }

    public static c b(final InputStream is) throws IOException {
        return e().a(is);
    }

    public static c c(String filename) {
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = h.b.d(new FileInputStream(filename), filename);
            return b(fileInputStream);
        } catch (IOException unused) {
            return c.f11810c;
        } finally {
            com.facebook.common.internal.c.b(fileInputStream);
        }
    }

    public static c d(final InputStream is) {
        try {
            return b(is);
        } catch (IOException e4) {
            throw o.d(e4);
        }
    }

    public static synchronized d e() {
        d dVar;
        synchronized (d.class) {
            if (f11813d == null) {
                f11813d = new d();
            }
            dVar = f11813d;
        }
        return dVar;
    }

    private static int f(int maxHeaderLength, final InputStream is, final byte[] imageHeaderBytes) throws IOException {
        j.i(is);
        j.i(imageHeaderBytes);
        j.d(Boolean.valueOf(imageHeaderBytes.length >= maxHeaderLength));
        if (is.markSupported()) {
            try {
                is.mark(maxHeaderLength);
                return com.facebook.common.internal.b.b(is, imageHeaderBytes, 0, maxHeaderLength);
            } finally {
                is.reset();
            }
        }
        return com.facebook.common.internal.b.b(is, imageHeaderBytes, 0, maxHeaderLength);
    }

    private void i() {
        this.f11814a = this.f11816c.b();
        List<c.a> list = this.f11815b;
        if (list != null) {
            for (c.a aVar : list) {
                this.f11814a = Math.max(this.f11814a, aVar.b());
            }
        }
    }

    public c a(final InputStream is) throws IOException {
        j.i(is);
        int i4 = this.f11814a;
        byte[] bArr = new byte[i4];
        int f10 = f(i4, is, bArr);
        c a10 = this.f11816c.a(bArr, f10);
        if (a10 == null || a10 == c.f11810c) {
            List<c.a> list = this.f11815b;
            if (list != null) {
                for (c.a aVar : list) {
                    c a11 = aVar.a(bArr, f10);
                    if (a11 != null && a11 != c.f11810c) {
                        return a11;
                    }
                }
            }
            return c.f11810c;
        }
        return a10;
    }

    public void g(@r7.h List<c.a> customImageFormatCheckers) {
        this.f11815b = customImageFormatCheckers;
        i();
    }

    public void h(boolean useNewOrder) {
        this.f11816c.k(useNewOrder);
    }
}
