package com.google.common.io;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CharStreams.java */
@h3.c
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final int f34477a = 2048;

    /* compiled from: CharStreams.java */
    /* loaded from: classes2.dex */
    private static final class a extends Writer {

        /* renamed from: a  reason: collision with root package name */
        private static final a f34478a = new a();

        private a() {
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(char c10) {
            return this;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return "CharStreams.nullWriter()";
        }

        @Override // java.io.Writer
        public void write(int i4) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
            com.google.common.base.a0.E(cArr);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i4, int i10) {
            com.google.common.base.a0.f0(i4, i10 + i4, cArr.length);
        }

        @Override // java.io.Writer
        public void write(String str) {
            com.google.common.base.a0.E(str);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            return this;
        }

        @Override // java.io.Writer
        public void write(String str, int i4, int i10) {
            com.google.common.base.a0.f0(i4, i10 + i4, str.length());
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i4, int i10) {
            com.google.common.base.a0.f0(i4, i10, charSequence.length());
            return this;
        }
    }

    private k() {
    }

    @h3.a
    public static Writer a(Appendable appendable) {
        if (appendable instanceof Writer) {
            return (Writer) appendable;
        }
        return new com.google.common.io.a(appendable);
    }

    @CanIgnoreReturnValue
    public static long b(Readable readable, Appendable appendable) throws IOException {
        if (readable instanceof Reader) {
            if (appendable instanceof StringBuilder) {
                return c((Reader) readable, (StringBuilder) appendable);
            }
            return d((Reader) readable, a(appendable));
        }
        com.google.common.base.a0.E(readable);
        com.google.common.base.a0.E(appendable);
        long j4 = 0;
        CharBuffer e4 = e();
        while (readable.read(e4) != -1) {
            e4.flip();
            appendable.append(e4);
            j4 += e4.remaining();
            e4.clear();
        }
        return j4;
    }

    @CanIgnoreReturnValue
    static long c(Reader reader, StringBuilder sb) throws IOException {
        com.google.common.base.a0.E(reader);
        com.google.common.base.a0.E(sb);
        char[] cArr = new char[2048];
        long j4 = 0;
        while (true) {
            int read = reader.read(cArr);
            if (read == -1) {
                return j4;
            }
            sb.append(cArr, 0, read);
            j4 += read;
        }
    }

    @CanIgnoreReturnValue
    static long d(Reader reader, Writer writer) throws IOException {
        com.google.common.base.a0.E(reader);
        com.google.common.base.a0.E(writer);
        char[] cArr = new char[2048];
        long j4 = 0;
        while (true) {
            int read = reader.read(cArr);
            if (read == -1) {
                return j4;
            }
            writer.write(cArr, 0, read);
            j4 += read;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharBuffer e() {
        return CharBuffer.allocate(2048);
    }

    @CanIgnoreReturnValue
    @h3.a
    public static long f(Readable readable) throws IOException {
        CharBuffer e4 = e();
        long j4 = 0;
        while (true) {
            long read = readable.read(e4);
            if (read == -1) {
                return j4;
            }
            j4 += read;
            e4.clear();
        }
    }

    @h3.a
    public static Writer g() {
        return a.f34478a;
    }

    @CanIgnoreReturnValue
    @h3.a
    public static <T> T h(Readable readable, t<T> tVar) throws IOException {
        String b10;
        com.google.common.base.a0.E(readable);
        com.google.common.base.a0.E(tVar);
        u uVar = new u(readable);
        do {
            b10 = uVar.b();
            if (b10 == null) {
                break;
            }
        } while (tVar.b(b10));
        return tVar.a();
    }

    @h3.a
    public static List<String> i(Readable readable) throws IOException {
        ArrayList arrayList = new ArrayList();
        u uVar = new u(readable);
        while (true) {
            String b10 = uVar.b();
            if (b10 == null) {
                return arrayList;
            }
            arrayList.add(b10);
        }
    }

    @h3.a
    public static void j(Reader reader, long j4) throws IOException {
        com.google.common.base.a0.E(reader);
        while (j4 > 0) {
            long skip = reader.skip(j4);
            if (skip == 0) {
                throw new EOFException();
            }
            j4 -= skip;
        }
    }

    public static String k(Readable readable) throws IOException {
        return l(readable).toString();
    }

    private static StringBuilder l(Readable readable) throws IOException {
        StringBuilder sb = new StringBuilder();
        if (readable instanceof Reader) {
            c((Reader) readable, sb);
        } else {
            b(readable, sb);
        }
        return sb;
    }
}
