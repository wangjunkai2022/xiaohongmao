package io.sentry.transport;

import io.sentry.l3;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: ITransport.java */
/* loaded from: classes4.dex */
public interface q extends Closeable {
    void e(long j4);

    void j0(@m8.g l3 l3Var) throws IOException;

    void w(@m8.g l3 l3Var, @m8.g io.sentry.b0 b0Var) throws IOException;
}
