package com.google.common.io;

import java.io.Flushable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Flushables.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f34508a = Logger.getLogger(r.class.getName());

    private r() {
    }

    public static void a(Flushable flushable, boolean z9) throws IOException {
        try {
            flushable.flush();
        } catch (IOException e4) {
            if (z9) {
                f34508a.log(Level.WARNING, "IOException thrown while flushing Flushable.", (Throwable) e4);
                return;
            }
            throw e4;
        }
    }

    public static void b(Flushable flushable) {
        try {
            a(flushable, true);
        } catch (IOException e4) {
            f34508a.log(Level.SEVERE, "IOException should not have been thrown.", (Throwable) e4);
        }
    }
}
