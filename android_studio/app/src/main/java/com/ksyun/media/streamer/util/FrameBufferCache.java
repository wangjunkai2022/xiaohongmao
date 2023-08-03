package com.ksyun.media.streamer.util;

import android.util.Log;
import android.util.SparseIntArray;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class FrameBufferCache {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46716a = "FrameBufferCache";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f46717b = false;

    /* renamed from: c  reason: collision with root package name */
    private int f46718c;

    /* renamed from: d  reason: collision with root package name */
    private int f46719d;

    /* renamed from: e  reason: collision with root package name */
    private int f46720e = 0;

    /* renamed from: f  reason: collision with root package name */
    private BlockingQueue<ByteBuffer> f46721f;

    /* renamed from: g  reason: collision with root package name */
    private final SparseIntArray f46722g;

    public FrameBufferCache(int i4, int i10) {
        this.f46718c = i4;
        this.f46719d = i10;
        if (i4 == 0) {
            this.f46721f = new LinkedBlockingQueue();
        } else {
            this.f46721f = new ArrayBlockingQueue(i4);
        }
        this.f46722g = new SparseIntArray();
    }

    private int a(ByteBuffer byteBuffer) {
        return System.identityHashCode(byteBuffer);
    }

    public void add(ByteBuffer byteBuffer) {
        this.f46721f.add(byteBuffer);
        synchronized (this.f46722g) {
            this.f46722g.delete(a(byteBuffer));
        }
    }

    public void clear() {
        this.f46721f.clear();
        synchronized (this.f46722g) {
            this.f46722g.clear();
        }
    }

    public boolean offer(ByteBuffer byteBuffer) {
        boolean offer = this.f46721f.offer(byteBuffer);
        synchronized (this.f46722g) {
            this.f46722g.delete(a(byteBuffer));
        }
        if (!offer) {
            Log.e(f46716a, "offered extra invalid buffer!");
        }
        return offer;
    }

    public ByteBuffer poll(int i4) {
        return poll(i4, 0L);
    }

    public boolean ref(ByteBuffer byteBuffer) {
        synchronized (this.f46722g) {
            int a10 = a(byteBuffer);
            if (this.f46722g.get(a10, -1) == -1) {
                Log.e(f46716a, "try to ref unknown ByteBuffer " + a(byteBuffer));
                return false;
            }
            this.f46722g.put(a10, this.f46722g.get(a10) + 1);
            return true;
        }
    }

    public ByteBuffer take(int i4) {
        return poll(i4, -1L);
    }

    public boolean unref(ByteBuffer byteBuffer) {
        synchronized (this.f46722g) {
            int a10 = a(byteBuffer);
            if (this.f46722g.get(a10, -1) == -1) {
                Log.e(f46716a, "try to unref unknown ByteBuffer " + a(byteBuffer));
                return false;
            }
            int i4 = this.f46722g.get(a10) - 1;
            if (i4 == 0) {
                offer(byteBuffer);
            } else {
                this.f46722g.put(a10, i4);
            }
            return true;
        }
    }

    public ByteBuffer poll(int i4, long j4) {
        ByteBuffer byteBuffer;
        int i10;
        if (this.f46721f.isEmpty() && ((i10 = this.f46718c) == 0 || this.f46720e < i10)) {
            int i11 = this.f46719d;
            if (i4 > i11) {
                do {
                    i11 *= 2;
                } while (i11 < i4);
                byteBuffer = ByteBuffer.allocateDirect(i11);
                byteBuffer.order(ByteOrder.nativeOrder());
                this.f46720e++;
            } else {
                byteBuffer = ByteBuffer.allocateDirect(i11);
                byteBuffer.order(ByteOrder.nativeOrder());
                this.f46720e++;
            }
        } else {
            try {
                if (j4 == -1) {
                    byteBuffer = this.f46721f.take();
                } else {
                    byteBuffer = this.f46721f.poll(j4, TimeUnit.MILLISECONDS);
                }
            } catch (Exception unused) {
                Log.d(f46716a, "get cache buffer interrupted");
                byteBuffer = null;
            }
        }
        if (byteBuffer != null) {
            if (i4 > byteBuffer.capacity()) {
                int capacity = byteBuffer.capacity();
                do {
                    capacity *= 2;
                } while (capacity < i4);
                Log.d(f46716a, "realloc buffer size from " + byteBuffer.capacity() + " to " + capacity);
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(capacity);
                allocateDirect.order(ByteOrder.nativeOrder());
                byteBuffer = allocateDirect;
            }
            byteBuffer.clear();
        }
        synchronized (this.f46722g) {
            this.f46722g.put(a(byteBuffer), 1);
        }
        return byteBuffer;
    }
}
