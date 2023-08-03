package com.facebook.common.internal;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Closeables.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class c {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final Logger f10975a = Logger.getLogger(c.class.getName());

    private c() {
    }

    public static void a(@r7.h Closeable closeable, boolean swallowIOException) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e4) {
            if (swallowIOException) {
                f10975a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e4);
                return;
            }
            throw e4;
        }
    }

    public static void b(@r7.h InputStream inputStream) {
        try {
            a(inputStream, true);
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    public static void c(@r7.h Reader reader) {
        try {
            a(reader, true);
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }
}
