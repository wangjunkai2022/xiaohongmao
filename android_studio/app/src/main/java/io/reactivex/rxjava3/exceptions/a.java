package io.reactivex.rxjava3.exceptions;

import io.reactivex.rxjava3.internal.util.g;
import p7.e;

/* compiled from: Exceptions.java */
/* loaded from: classes4.dex */
public final class a {
    private a() {
        throw new IllegalStateException("No instances!");
    }

    @e
    public static RuntimeException a(@e Throwable t9) {
        throw g.i(t9);
    }

    public static void b(@e Throwable t9) {
        if (!(t9 instanceof VirtualMachineError)) {
            if (!(t9 instanceof ThreadDeath)) {
                if (t9 instanceof LinkageError) {
                    throw ((LinkageError) t9);
                }
                return;
            }
            throw ((ThreadDeath) t9);
        }
        throw ((VirtualMachineError) t9);
    }
}
