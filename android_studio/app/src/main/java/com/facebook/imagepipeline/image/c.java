package com.facebook.imagepipeline.image;

import com.facebook.imagepipeline.producers.s0;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: CloseableImage.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class c implements Closeable, g {

    /* renamed from: b  reason: collision with root package name */
    private static final String f12494b = "CloseableImage";

    /* renamed from: c  reason: collision with root package name */
    private static final Set<String> f12495c = new HashSet(Arrays.asList(s0.a.f13231m0, s0.a.f13229k0, s0.a.f13230l0, s0.a.f13226h0, s0.a.f13228j0, "bitmap_config", "is_rounded"));

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f12496a = new HashMap();

    @Override // com.facebook.imagepipeline.image.g
    public j a() {
        return h.f12520d;
    }

    public abstract int b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public boolean d() {
        return false;
    }

    protected void finalize() throws Throwable {
        if (isClosed()) {
            return;
        }
        p0.a.q0(f12494b, "finalize: %s %x still open.", getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(this)));
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // com.facebook.imagepipeline.image.f
    public Map<String, Object> getExtras() {
        return this.f12496a;
    }

    public void h(String extra, Object value) {
        if (f12495c.contains(extra)) {
            this.f12496a.put(extra, value);
        }
    }

    public void i(@r7.h Map<String, Object> extras) {
        if (extras == null) {
            return;
        }
        for (String str : f12495c) {
            Object obj = extras.get(str);
            if (obj != null) {
                this.f12496a.put(str, obj);
            }
        }
    }

    public abstract boolean isClosed();
}
