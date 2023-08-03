package com.google.common.io;

import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MultiReader.java */
@h3.c
/* loaded from: classes2.dex */
class y extends Reader {

    /* renamed from: a  reason: collision with root package name */
    private final Iterator<? extends j> f34520a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private Reader f34521b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(Iterator<? extends j> it) throws IOException {
        this.f34520a = it;
        a();
    }

    private void a() throws IOException {
        close();
        if (this.f34520a.hasNext()) {
            this.f34521b = this.f34520a.next().m();
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Reader reader = this.f34521b;
        if (reader != null) {
            try {
                reader.close();
            } finally {
                this.f34521b = null;
            }
        }
    }

    @Override // java.io.Reader
    public int read(@NullableDecl char[] cArr, int i4, int i10) throws IOException {
        Reader reader = this.f34521b;
        if (reader == null) {
            return -1;
        }
        int read = reader.read(cArr, i4, i10);
        if (read == -1) {
            a();
            return read(cArr, i4, i10);
        }
        return read;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        Reader reader = this.f34521b;
        return reader != null && reader.ready();
    }

    @Override // java.io.Reader
    public long skip(long j4) throws IOException {
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        com.google.common.base.a0.e(i4 >= 0, "n is negative");
        if (i4 > 0) {
            while (true) {
                Reader reader = this.f34521b;
                if (reader == null) {
                    break;
                }
                long skip = reader.skip(j4);
                if (skip > 0) {
                    return skip;
                }
                a();
            }
        }
        return 0L;
    }
}
