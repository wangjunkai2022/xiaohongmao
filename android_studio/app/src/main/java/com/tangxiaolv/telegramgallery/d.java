package com.tangxiaolv.telegramgallery;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.CountDownLatch;

/* compiled from: DispatchQueue.java */
/* loaded from: classes3.dex */
public class d extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private volatile Handler f56715a = null;

    /* renamed from: b  reason: collision with root package name */
    private CountDownLatch f56716b = new CountDownLatch(1);

    public d(String str) {
        setName(str);
        start();
    }

    private void e(Message message, int i4) {
        try {
            this.f56716b.await();
            if (i4 <= 0) {
                this.f56715a.sendMessage(message);
            } else {
                this.f56715a.sendMessageDelayed(message, i4);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void a(Runnable runnable) {
        try {
            this.f56716b.await();
            this.f56715a.removeCallbacks(runnable);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void b() {
        try {
            this.f56716b.await();
            this.f56715a.removeCallbacksAndMessages(null);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void c(Runnable runnable) {
        d(runnable, 0L);
    }

    public void d(Runnable runnable, long j4) {
        try {
            this.f56716b.await();
            if (j4 <= 0) {
                this.f56715a.post(runnable);
            } else {
                this.f56715a.postDelayed(runnable, j4);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f56715a = new Handler();
        this.f56716b.countDown();
        Looper.loop();
    }
}
