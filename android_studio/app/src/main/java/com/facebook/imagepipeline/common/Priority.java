package com.facebook.imagepipeline.common;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public enum Priority {
    LOW,
    MEDIUM,
    HIGH;

    public static Priority getHigherPriority(Priority priority1, Priority priority2) {
        return priority1.ordinal() > priority2.ordinal() ? priority1 : priority2;
    }
}
