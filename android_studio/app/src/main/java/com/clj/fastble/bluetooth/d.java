package com.clj.fastble.bluetooth;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.clj.fastble.exception.BleException;
import com.clj.fastble.exception.OtherException;
import g0.k;
import java.util.LinkedList;
import java.util.Queue;

/* compiled from: SplitWriter.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private HandlerThread f9803a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f9804b;

    /* renamed from: c  reason: collision with root package name */
    private com.clj.fastble.bluetooth.a f9805c;

    /* renamed from: d  reason: collision with root package name */
    private String f9806d;

    /* renamed from: e  reason: collision with root package name */
    private String f9807e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f9808f;

    /* renamed from: g  reason: collision with root package name */
    private int f9809g;

    /* renamed from: h  reason: collision with root package name */
    private k f9810h;

    /* renamed from: i  reason: collision with root package name */
    private Queue<byte[]> f9811i;

    /* renamed from: j  reason: collision with root package name */
    private int f9812j;

    /* compiled from: SplitWriter.java */
    /* loaded from: classes.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 51) {
                d.this.j();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplitWriter.java */
    /* loaded from: classes.dex */
    public class b extends k {
        b() {
        }

        @Override // g0.k
        public void e(BleException bleException) {
            if (d.this.f9810h != null) {
                k kVar = d.this.f9810h;
                kVar.e(new OtherException("exception occur while writing: " + bleException.getDescription()));
            }
        }

        @Override // g0.k
        public void f(int i4, int i10, byte[] bArr) {
            int size = d.this.f9812j - d.this.f9811i.size();
            if (d.this.f9810h != null) {
                d.this.f9810h.f(size, d.this.f9812j, bArr);
            }
            if (Looper.myLooper() != null && Looper.myLooper() == Looper.getMainLooper()) {
                d.this.j();
                return;
            }
            d.this.f9804b.sendMessage(d.this.f9804b.obtainMessage(51));
        }
    }

    public d() {
        HandlerThread handlerThread = new HandlerThread("splitWriter");
        this.f9803a = handlerThread;
        handlerThread.start();
        this.f9804b = new a(this.f9803a.getLooper());
    }

    private void f() {
        this.f9803a.quit();
        this.f9804b.removeCallbacksAndMessages(null);
    }

    private static Queue<byte[]> g(byte[] bArr, int i4) {
        byte[] bArr2;
        if (i4 > 20) {
            com.clj.fastble.utils.a.d("Be careful: split count beyond 20! Ensure MTU higher than 23!");
        }
        LinkedList linkedList = new LinkedList();
        if (bArr != null) {
            int i10 = 0;
            do {
                int length = bArr.length - i10;
                byte[] bArr3 = new byte[length];
                System.arraycopy(bArr, i10, bArr3, 0, bArr.length - i10);
                if (length <= i4) {
                    bArr2 = new byte[length];
                    System.arraycopy(bArr3, 0, bArr2, 0, length);
                    i10 += length;
                } else {
                    bArr2 = new byte[i4];
                    System.arraycopy(bArr, i10, bArr2, 0, i4);
                    i10 += i4;
                }
                linkedList.offer(bArr2);
            } while (i10 < bArr.length);
            return linkedList;
        }
        return linkedList;
    }

    private void h() {
        byte[] bArr = this.f9808f;
        if (bArr != null) {
            int i4 = this.f9809g;
            if (i4 >= 1) {
                Queue<byte[]> g4 = g(bArr, i4);
                this.f9811i = g4;
                this.f9812j = g4.size();
                j();
                return;
            }
            throw new IllegalArgumentException("split count should higher than 0!");
        }
        throw new IllegalArgumentException("data is Null!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f9811i.peek() == null) {
            f();
            return;
        }
        this.f9805c.L().w(this.f9806d, this.f9807e).x(this.f9811i.poll(), new b(), this.f9807e);
    }

    public void i(com.clj.fastble.bluetooth.a aVar, String str, String str2, byte[] bArr, k kVar) {
        this.f9805c = aVar;
        this.f9806d = str;
        this.f9807e = str2;
        this.f9808f = bArr;
        this.f9809g = com.clj.fastble.a.w().E();
        this.f9810h = kVar;
        h();
    }
}
