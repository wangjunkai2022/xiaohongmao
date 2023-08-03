package org.aspectj.runtime.internal.cflowstack;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;

/* compiled from: ThreadCounterImpl11.java */
/* loaded from: classes4.dex */
public class b implements org.aspectj.runtime.internal.cflowstack.a {

    /* renamed from: e  reason: collision with root package name */
    private static final int f91045e = 20000;

    /* renamed from: f  reason: collision with root package name */
    private static final int f91046f = 100;

    /* renamed from: b  reason: collision with root package name */
    private Thread f91048b;

    /* renamed from: c  reason: collision with root package name */
    private a f91049c;

    /* renamed from: a  reason: collision with root package name */
    private Hashtable f91047a = new Hashtable();

    /* renamed from: d  reason: collision with root package name */
    private int f91050d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ThreadCounterImpl11.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        protected int f91051a = 0;

        a() {
        }
    }

    private synchronized a e() {
        if (Thread.currentThread() != this.f91048b) {
            Thread currentThread = Thread.currentThread();
            this.f91048b = currentThread;
            a aVar = (a) this.f91047a.get(currentThread);
            this.f91049c = aVar;
            if (aVar == null) {
                a aVar2 = new a();
                this.f91049c = aVar2;
                this.f91047a.put(this.f91048b, aVar2);
            }
            this.f91050d++;
            if (this.f91050d > Math.max(100, 20000 / Math.max(1, this.f91047a.size()))) {
                ArrayList<Thread> arrayList = new ArrayList();
                Enumeration keys = this.f91047a.keys();
                while (keys.hasMoreElements()) {
                    Thread thread = (Thread) keys.nextElement();
                    if (!thread.isAlive()) {
                        arrayList.add(thread);
                    }
                }
                for (Thread thread2 : arrayList) {
                    this.f91047a.remove(thread2);
                }
                this.f91050d = 0;
            }
        }
        return this.f91049c;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.a
    public void a() {
        a e4 = e();
        e4.f91051a--;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.a
    public void b() {
    }

    @Override // org.aspectj.runtime.internal.cflowstack.a
    public void c() {
        e().f91051a++;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.a
    public boolean d() {
        return e().f91051a != 0;
    }
}
