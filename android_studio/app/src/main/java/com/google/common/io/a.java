package com.google.common.io;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AppendableWriter.java */
@h3.c
/* loaded from: classes2.dex */
class a extends Writer {

    /* renamed from: a  reason: collision with root package name */
    private final Appendable f34432a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f34433b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Appendable appendable) {
        this.f34432a = (Appendable) com.google.common.base.a0.E(appendable);
    }

    private void a() throws IOException {
        if (this.f34433b) {
            throw new IOException("Cannot write to a closed writer.");
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f34433b = true;
        Appendable appendable = this.f34432a;
        if (appendable instanceof Closeable) {
            ((Closeable) appendable).close();
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        a();
        Appendable appendable = this.f34432a;
        if (appendable instanceof Flushable) {
            ((Flushable) appendable).flush();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i4, int i10) throws IOException {
        a();
        this.f34432a.append(new String(cArr, i4, i10));
    }

    @Override // java.io.Writer
    public void write(int i4) throws IOException {
        a();
        this.f34432a.append((char) i4);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c10) throws IOException {
        a();
        this.f34432a.append(c10);
        return this;
    }

    @Override // java.io.Writer
    public void write(@NullableDecl String str) throws IOException {
        a();
        this.f34432a.append(str);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@NullableDecl CharSequence charSequence) throws IOException {
        a();
        this.f34432a.append(charSequence);
        return this;
    }

    @Override // java.io.Writer
    public void write(@NullableDecl String str, int i4, int i10) throws IOException {
        a();
        this.f34432a.append(str, i4, i10 + i4);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@NullableDecl CharSequence charSequence, int i4, int i10) throws IOException {
        a();
        this.f34432a.append(charSequence, i4, i10);
        return this;
    }
}
