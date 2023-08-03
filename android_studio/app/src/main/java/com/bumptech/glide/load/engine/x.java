package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: ResourceRecycler.java */
/* loaded from: classes.dex */
class x {

    /* renamed from: a  reason: collision with root package name */
    private boolean f9003a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f9004b = new Handler(Looper.getMainLooper(), new a());

    /* compiled from: ResourceRecycler.java */
    /* loaded from: classes.dex */
    private static final class a implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        static final int f9005a = 1;

        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((u) message.obj).recycle();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(u<?> uVar, boolean z9) {
        if (!this.f9003a && !z9) {
            this.f9003a = true;
            uVar.recycle();
            this.f9003a = false;
        }
        this.f9004b.obtainMessage(1, uVar).sendToTarget();
    }
}
