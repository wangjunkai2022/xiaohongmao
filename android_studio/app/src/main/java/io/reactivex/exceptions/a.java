package io.reactivex.exceptions;

import io.reactivex.internal.util.g;
import m7.e;

/* compiled from: Exceptions.java */
/* loaded from: classes3.dex */
public final class a {
    private a() {
        throw new IllegalStateException("No instances!");
    }

    @e
    public static RuntimeException a(@e Throwable th) {
        throw g.f(th);
    }

    public static void b(@e Throwable th) {
        if (!(th instanceof VirtualMachineError)) {
            if (!(th instanceof ThreadDeath)) {
                if (th instanceof LinkageError) {
                    throw ((LinkageError) th);
                }
                return;
            }
            throw ((ThreadDeath) th);
        }
        throw ((VirtualMachineError) th);
    }
}
