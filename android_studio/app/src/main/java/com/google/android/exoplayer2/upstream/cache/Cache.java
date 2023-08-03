package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.io.IOException;
import java.util.NavigableSet;
import java.util.Set;

/* loaded from: classes2.dex */
public interface Cache {

    /* renamed from: a  reason: collision with root package name */
    public static final long f27025a = -1;

    /* loaded from: classes2.dex */
    public static class CacheException extends IOException {
        public CacheException(String str) {
            super(str);
        }

        public CacheException(Throwable th) {
            super(th);
        }

        public CacheException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* loaded from: classes2.dex */
    public interface a {
        void a(Cache cache, j jVar);

        void d(Cache cache, j jVar);

        void e(Cache cache, j jVar, j jVar2);
    }

    @WorkerThread
    File a(String str, long j4, long j10) throws CacheException;

    p b(String str);

    @WorkerThread
    void c(String str, q qVar) throws CacheException;

    long d(String str, long j4, long j10);

    @Nullable
    @WorkerThread
    j e(String str, long j4, long j10) throws CacheException;

    long f(String str, long j4, long j10);

    Set<String> g();

    long getUid();

    long h();

    void i(j jVar);

    @WorkerThread
    void j(j jVar);

    @WorkerThread
    j k(String str, long j4, long j10) throws InterruptedException, CacheException;

    @WorkerThread
    void l(File file, long j4) throws CacheException;

    @WorkerThread
    void m(String str);

    boolean n(String str, long j4, long j10);

    NavigableSet<j> o(String str, a aVar);

    NavigableSet<j> p(String str);

    void q(String str, a aVar);

    @WorkerThread
    void release();
}
