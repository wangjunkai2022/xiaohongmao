package io.sentry.instrumentation.file;

import io.sentry.n0;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;

/* compiled from: SentryFileReader.java */
/* loaded from: classes4.dex */
public final class m extends InputStreamReader {
    public m(@m8.g String str) throws FileNotFoundException {
        super(new h(str));
    }

    public m(@m8.g File file) throws FileNotFoundException {
        super(new h(file));
    }

    public m(@m8.g FileDescriptor fileDescriptor) {
        super(new h(fileDescriptor));
    }

    m(@m8.g File file, @m8.g n0 n0Var) throws FileNotFoundException {
        super(new h(file, n0Var));
    }
}
