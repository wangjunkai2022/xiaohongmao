package com.facebook.imagepipeline.image;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public enum EncodedImageOrigin {
    NOT_SET("not_set"),
    NETWORK("network"),
    DISK("disk"),
    ENCODED_MEM_CACHE("encoded_mem_cache");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f12491a;

    EncodedImageOrigin(String origin) {
        this.f12491a = origin;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f12491a;
    }
}
