package com.tangxiaolv.telegramgallery.TL;

/* compiled from: TLObject.java */
/* loaded from: classes3.dex */
public class m {

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<j> f56356b = new a();

    /* renamed from: a  reason: collision with root package name */
    public boolean f56357a = false;

    /* compiled from: TLObject.java */
    /* loaded from: classes3.dex */
    class a extends ThreadLocal<j> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public j initialValue() {
            return new j(true);
        }
    }

    public m a(com.tangxiaolv.telegramgallery.TL.a aVar, int i4, boolean z9) {
        return null;
    }

    public void b() {
    }

    public int c() {
        ThreadLocal<j> threadLocal = f56356b;
        j jVar = threadLocal.get();
        jVar.I();
        e(threadLocal.get());
        return jVar.b();
    }

    public void d(com.tangxiaolv.telegramgallery.TL.a aVar, boolean z9) {
    }

    public void e(com.tangxiaolv.telegramgallery.TL.a aVar) {
    }
}
