package com.fasterxml.jackson.core.io;

import java.io.Writer;

/* compiled from: SegmentedStringWriter.java */
/* loaded from: classes.dex */
public final class i extends Writer {

    /* renamed from: a  reason: collision with root package name */
    private final com.fasterxml.jackson.core.util.j f13966a;

    public i(com.fasterxml.jackson.core.util.a aVar) {
        this.f13966a = new com.fasterxml.jackson.core.util.j(aVar);
    }

    public String a() {
        String l10 = this.f13966a.l();
        this.f13966a.A();
        return l10;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        this.f13966a.c(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i4, int i10) {
        this.f13966a.c(cArr, i4, i10);
    }

    @Override // java.io.Writer
    public void write(int i4) {
        this.f13966a.a((char) i4);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c10) {
        write(c10);
        return this;
    }

    @Override // java.io.Writer
    public void write(String str) {
        this.f13966a.b(str, 0, str.length());
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        this.f13966a.b(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer
    public void write(String str, int i4, int i10) {
        this.f13966a.b(str, i4, i10);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i4, int i10) {
        String charSequence2 = charSequence.subSequence(i4, i10).toString();
        this.f13966a.b(charSequence2, 0, charSequence2.length());
        return this;
    }
}
