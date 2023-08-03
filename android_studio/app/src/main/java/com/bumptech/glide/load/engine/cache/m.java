package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.util.o;
import com.bumptech.glide.util.pool.a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: SafeKeyGenerator.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.util.j<com.bumptech.glide.load.c, String> f8743a = new com.bumptech.glide.util.j<>(1000);

    /* renamed from: b  reason: collision with root package name */
    private final Pools.Pool<b> f8744b = com.bumptech.glide.util.pool.a.e(10, new a());

    /* compiled from: SafeKeyGenerator.java */
    /* loaded from: classes.dex */
    class a implements a.d<b> {
        a() {
        }

        @Override // com.bumptech.glide.util.pool.a.d
        /* renamed from: b */
        public b a() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e4) {
                throw new RuntimeException(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SafeKeyGenerator.java */
    /* loaded from: classes.dex */
    public static final class b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        final MessageDigest f8746a;

        /* renamed from: b  reason: collision with root package name */
        private final com.bumptech.glide.util.pool.c f8747b = com.bumptech.glide.util.pool.c.a();

        b(MessageDigest messageDigest) {
            this.f8746a = messageDigest;
        }

        @Override // com.bumptech.glide.util.pool.a.f
        @NonNull
        public com.bumptech.glide.util.pool.c d() {
            return this.f8747b;
        }
    }

    private String a(com.bumptech.glide.load.c cVar) {
        b bVar = (b) com.bumptech.glide.util.m.d(this.f8744b.acquire());
        try {
            cVar.b(bVar.f8746a);
            return o.z(bVar.f8746a.digest());
        } finally {
            this.f8744b.release(bVar);
        }
    }

    public String b(com.bumptech.glide.load.c cVar) {
        String i4;
        synchronized (this.f8743a) {
            i4 = this.f8743a.i(cVar);
        }
        if (i4 == null) {
            i4 = a(cVar);
        }
        synchronized (this.f8743a) {
            this.f8743a.m(cVar, i4);
        }
        return i4;
    }
}
