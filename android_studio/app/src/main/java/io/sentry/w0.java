package io.sentry;

import io.sentry.protocol.Contexts;
import io.sentry.protocol.TransactionNameSource;
import java.util.List;
import m8.a;

/* compiled from: ITransaction.java */
/* loaded from: classes4.dex */
public interface w0 extends v0 {
    @a.c
    void B(@m8.g String str, @m8.g Object obj);

    void C();

    void D(@m8.g String str);

    @m8.h
    o5 I();

    @a.c
    void f(@m8.g String str, @m8.g TransactionNameSource transactionNameSource);

    @m8.h
    Boolean g();

    @m8.g
    String getName();

    @m8.h
    Boolean j();

    @a.c
    @m8.g
    Contexts l();

    @m8.g
    io.sentry.protocol.n m();

    @m8.g
    TransactionNameSource p();

    @m8.g
    @m8.k
    List<e5> x();

    @m8.h
    e5 z();
}
