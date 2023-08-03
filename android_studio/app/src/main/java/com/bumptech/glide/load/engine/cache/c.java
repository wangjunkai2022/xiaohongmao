package com.bumptech.glide.load.engine.cache;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: DiskCacheWriteLocker.java */
/* loaded from: classes.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f8694a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final b f8695b = new b();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiskCacheWriteLocker.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Lock f8696a = new ReentrantLock();

        /* renamed from: b  reason: collision with root package name */
        int f8697b;

        a() {
        }
    }

    /* compiled from: DiskCacheWriteLocker.java */
    /* loaded from: classes.dex */
    private static class b {

        /* renamed from: b  reason: collision with root package name */
        private static final int f8698b = 10;

        /* renamed from: a  reason: collision with root package name */
        private final Queue<a> f8699a = new ArrayDeque();

        b() {
        }

        a a() {
            a poll;
            synchronized (this.f8699a) {
                poll = this.f8699a.poll();
            }
            return poll == null ? new a() : poll;
        }

        void b(a aVar) {
            synchronized (this.f8699a) {
                if (this.f8699a.size() < 10) {
                    this.f8699a.offer(aVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        a aVar;
        synchronized (this) {
            aVar = this.f8694a.get(str);
            if (aVar == null) {
                aVar = this.f8695b.a();
                this.f8694a.put(str, aVar);
            }
            aVar.f8697b++;
        }
        aVar.f8696a.lock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        a aVar;
        synchronized (this) {
            aVar = (a) com.bumptech.glide.util.m.d(this.f8694a.get(str));
            int i4 = aVar.f8697b;
            if (i4 >= 1) {
                int i10 = i4 - 1;
                aVar.f8697b = i10;
                if (i10 == 0) {
                    a remove = this.f8694a.remove(str);
                    if (remove.equals(aVar)) {
                        this.f8695b.b(remove);
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                    }
                }
            } else {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f8697b);
            }
        }
        aVar.f8696a.unlock();
    }
}
