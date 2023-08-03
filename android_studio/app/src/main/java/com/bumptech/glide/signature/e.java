package com.bumptech.glide.signature;

import androidx.annotation.NonNull;
import com.bumptech.glide.util.m;
import java.security.MessageDigest;

/* compiled from: ObjectKey.java */
/* loaded from: classes.dex */
public final class e implements com.bumptech.glide.load.c {

    /* renamed from: c  reason: collision with root package name */
    private final Object f9689c;

    public e(@NonNull Object obj) {
        this.f9689c = m.d(obj);
    }

    @Override // com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.f9689c.toString().getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // com.bumptech.glide.load.c
    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f9689c.equals(((e) obj).f9689c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.c
    public int hashCode() {
        return this.f9689c.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f9689c + '}';
    }
}
