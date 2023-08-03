package io.sentry.instrumentation.file;

import io.sentry.n0;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.OutputStreamWriter;

/* compiled from: SentryFileWriter.java */
/* loaded from: classes4.dex */
public final class n extends OutputStreamWriter {
    public n(@m8.g String str) throws FileNotFoundException {
        super(new l(str));
    }

    public n(@m8.g String str, boolean z9) throws FileNotFoundException {
        super(new l(str, z9));
    }

    public n(@m8.g File file) throws FileNotFoundException {
        super(new l(file));
    }

    public n(@m8.g File file, boolean z9) throws FileNotFoundException {
        super(new l(file, z9));
    }

    public n(@m8.g FileDescriptor fileDescriptor) {
        super(new l(fileDescriptor));
    }

    n(@m8.g File file, boolean z9, @m8.g n0 n0Var) throws FileNotFoundException {
        super(new l(file, z9, n0Var));
    }
}
