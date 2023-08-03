package com.google.common.io;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;

/* compiled from: CharSink.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class i {
    public Writer a() throws IOException {
        Writer b10 = b();
        return b10 instanceof BufferedWriter ? (BufferedWriter) b10 : new BufferedWriter(b10);
    }

    public abstract Writer b() throws IOException;

    public void c(CharSequence charSequence) throws IOException {
        com.google.common.base.a0.E(charSequence);
        try {
            Writer writer = (Writer) m.a().b(b());
            writer.append(charSequence);
            writer.flush();
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long d(Readable readable) throws IOException {
        com.google.common.base.a0.E(readable);
        try {
            Writer writer = (Writer) m.a().b(b());
            long b10 = k.b(readable, writer);
            writer.flush();
            return b10;
        } finally {
        }
    }

    public void e(Iterable<? extends CharSequence> iterable) throws IOException {
        f(iterable, System.getProperty("line.separator"));
    }

    public void f(Iterable<? extends CharSequence> iterable, String str) throws IOException {
        com.google.common.base.a0.E(iterable);
        com.google.common.base.a0.E(str);
        try {
            Writer writer = (Writer) m.a().b(a());
            for (CharSequence charSequence : iterable) {
                writer.append(charSequence).append((CharSequence) str);
            }
            writer.flush();
        } finally {
        }
    }
}
