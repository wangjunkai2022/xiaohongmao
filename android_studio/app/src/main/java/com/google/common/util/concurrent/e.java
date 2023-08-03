package com.google.common.util.concurrent;

import sun.misc.Unsafe;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class e {
    public static /* synthetic */ boolean a(Unsafe unsafe, Object obj, long j4, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j4, obj2, obj3)) {
            if (unsafe.getObject(obj, j4) != obj2) {
                return false;
            }
        }
        return true;
    }
}
