package com.google.android.exoplayer2.util;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

/* loaded from: classes2.dex */
public final class PriorityTaskManager {

    /* renamed from: a  reason: collision with root package name */
    private final Object f27428a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final PriorityQueue<Integer> f27429b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c  reason: collision with root package name */
    private int f27430c = Integer.MIN_VALUE;

    /* loaded from: classes2.dex */
    public static class PriorityTooLowException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public PriorityTooLowException(int r3, int r4) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = 60
                r0.<init>(r1)
                java.lang.String r1 = "Priority too low [priority="
                r0.append(r1)
                r0.append(r3)
                java.lang.String r3 = ", highest="
                r0.append(r3)
                r0.append(r4)
                java.lang.String r3 = "]"
                r0.append(r3)
                java.lang.String r3 = r0.toString()
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException.<init>(int, int):void");
        }
    }

    public void a(int i4) {
        synchronized (this.f27428a) {
            this.f27429b.add(Integer.valueOf(i4));
            this.f27430c = Math.max(this.f27430c, i4);
        }
    }

    public void b(int i4) throws InterruptedException {
        synchronized (this.f27428a) {
            while (this.f27430c != i4) {
                this.f27428a.wait();
            }
        }
    }

    public boolean c(int i4) {
        boolean z9;
        synchronized (this.f27428a) {
            z9 = this.f27430c == i4;
        }
        return z9;
    }

    public void d(int i4) throws PriorityTooLowException {
        synchronized (this.f27428a) {
            if (this.f27430c != i4) {
                throw new PriorityTooLowException(i4, this.f27430c);
            }
        }
    }

    public void e(int i4) {
        synchronized (this.f27428a) {
            this.f27429b.remove(Integer.valueOf(i4));
            this.f27430c = this.f27429b.isEmpty() ? Integer.MIN_VALUE : ((Integer) z0.k(this.f27429b.peek())).intValue();
            this.f27428a.notifyAll();
        }
    }
}
