package com.iab.omid.library.giphy.walking.a;

import com.iab.omid.library.giphy.walking.a.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f39441a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f39442b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f39443c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f39444d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f39441a = linkedBlockingQueue;
        this.f39442b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void b() {
        b poll = this.f39443c.poll();
        this.f39444d = poll;
        if (poll != null) {
            poll.c(this.f39442b);
        }
    }

    @Override // com.iab.omid.library.giphy.walking.a.b.a
    public void a(b bVar) {
        this.f39444d = null;
        b();
    }

    public void c(b bVar) {
        bVar.a(this);
        this.f39443c.add(bVar);
        if (this.f39444d == null) {
            b();
        }
    }
}
