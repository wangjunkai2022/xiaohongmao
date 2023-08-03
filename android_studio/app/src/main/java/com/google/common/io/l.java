package com.google.common.io;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Closeables.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class l {
    @h3.d

    /* renamed from: a  reason: collision with root package name */
    static final Logger f34479a = Logger.getLogger(l.class.getName());

    private l() {
    }

    public static void a(@NullableDecl Closeable closeable, boolean z9) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e4) {
            if (z9) {
                f34479a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e4);
                return;
            }
            throw e4;
        }
    }

    public static void b(@NullableDecl InputStream inputStream) {
        try {
            a(inputStream, true);
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    public static void c(@NullableDecl Reader reader) {
        try {
            a(reader, true);
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }
}
