package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: MemoryChunkUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class x {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(final int offset, final int count, final int memorySize) {
        return Math.min(Math.max(0, memorySize - offset), count);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(final int offset, final int otherLength, final int otherOffset, final int count, final int memorySize) {
        com.facebook.common.internal.j.d(Boolean.valueOf(count >= 0));
        com.facebook.common.internal.j.d(Boolean.valueOf(offset >= 0));
        com.facebook.common.internal.j.d(Boolean.valueOf(otherOffset >= 0));
        com.facebook.common.internal.j.d(Boolean.valueOf(offset + count <= memorySize));
        com.facebook.common.internal.j.d(Boolean.valueOf(otherOffset + count <= otherLength));
    }
}
