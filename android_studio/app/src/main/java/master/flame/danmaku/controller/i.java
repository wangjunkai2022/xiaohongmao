package master.flame.danmaku.controller;

/* compiled from: UpdateThread.java */
/* loaded from: classes4.dex */
public class i extends Thread {

    /* renamed from: a  reason: collision with root package name */
    volatile boolean f87137a;

    public i(String str) {
        super(str);
    }

    public boolean a() {
        return this.f87137a;
    }

    public void b() {
        this.f87137a = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
    }
}
