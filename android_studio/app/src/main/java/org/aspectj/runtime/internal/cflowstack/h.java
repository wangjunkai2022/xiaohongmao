package org.aspectj.runtime.internal.cflowstack;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Stack;

/* compiled from: ThreadStackImpl11.java */
/* loaded from: classes4.dex */
public class h implements c {

    /* renamed from: e  reason: collision with root package name */
    private static final int f91053e = 20000;

    /* renamed from: f  reason: collision with root package name */
    private static final int f91054f = 100;

    /* renamed from: b  reason: collision with root package name */
    private Thread f91056b;

    /* renamed from: c  reason: collision with root package name */
    private Stack f91057c;

    /* renamed from: a  reason: collision with root package name */
    private Hashtable f91055a = new Hashtable();

    /* renamed from: d  reason: collision with root package name */
    private int f91058d = 0;

    @Override // org.aspectj.runtime.internal.cflowstack.c
    public synchronized Stack a() {
        if (Thread.currentThread() != this.f91056b) {
            Thread currentThread = Thread.currentThread();
            this.f91056b = currentThread;
            Stack stack = (Stack) this.f91055a.get(currentThread);
            this.f91057c = stack;
            if (stack == null) {
                Stack stack2 = new Stack();
                this.f91057c = stack2;
                this.f91055a.put(this.f91056b, stack2);
            }
            this.f91058d++;
            if (this.f91058d > Math.max(100, 20000 / Math.max(1, this.f91055a.size()))) {
                Stack stack3 = new Stack();
                Enumeration keys = this.f91055a.keys();
                while (keys.hasMoreElements()) {
                    Thread thread = (Thread) keys.nextElement();
                    if (!thread.isAlive()) {
                        stack3.push(thread);
                    }
                }
                Enumeration elements = stack3.elements();
                while (elements.hasMoreElements()) {
                    this.f91055a.remove((Thread) elements.nextElement());
                }
                this.f91058d = 0;
            }
        }
        return this.f91057c;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.c
    public void b() {
    }
}
