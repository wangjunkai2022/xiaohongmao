package com.clj.fastble.scan;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.clj.fastble.data.BleDevice;
import g0.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: BleScanPresenter.java */
@TargetApi(18)
/* loaded from: classes.dex */
public abstract class a implements BluetoothAdapter.LeScanCallback {

    /* renamed from: a  reason: collision with root package name */
    private String[] f9852a;

    /* renamed from: b  reason: collision with root package name */
    private String f9853b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9854c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9855d;

    /* renamed from: e  reason: collision with root package name */
    private long f9856e;

    /* renamed from: f  reason: collision with root package name */
    private j f9857f;

    /* renamed from: g  reason: collision with root package name */
    private List<BleDevice> f9858g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private Handler f9859h = new Handler(Looper.getMainLooper());

    /* renamed from: i  reason: collision with root package name */
    private HandlerThread f9860i;

    /* renamed from: j  reason: collision with root package name */
    private Handler f9861j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f9862k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BleScanPresenter.java */
    /* renamed from: com.clj.fastble.scan.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0071a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BleDevice f9863a;

        RunnableC0071a(BleDevice bleDevice) {
            this.f9863a = bleDevice;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.j(this.f9863a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BleScanPresenter.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.clj.fastble.scan.c.b().g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BleScanPresenter.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BleDevice f9866a;

        c(BleDevice bleDevice) {
            this.f9866a = bleDevice;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.m(this.f9866a);
        }
    }

    /* compiled from: BleScanPresenter.java */
    /* loaded from: classes.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.clj.fastble.scan.c.b().g();
        }
    }

    /* compiled from: BleScanPresenter.java */
    /* loaded from: classes.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f9869a;

        e(boolean z9) {
            this.f9869a = z9;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.l(this.f9869a);
        }
    }

    /* compiled from: BleScanPresenter.java */
    /* loaded from: classes.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.k(aVar.f9858g);
        }
    }

    /* compiled from: BleScanPresenter.java */
    /* loaded from: classes.dex */
    private static final class g extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<a> f9872a;

        g(Looper looper, a aVar) {
            super(looper);
            this.f9872a = new WeakReference<>(aVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            BleDevice bleDevice;
            a aVar = this.f9872a.get();
            if (aVar == null || message.what != 0 || (bleDevice = (BleDevice) message.obj) == null) {
                return;
            }
            aVar.f(bleDevice);
        }
    }

    private void c(BleDevice bleDevice) {
        int i4;
        String[] strArr;
        if (TextUtils.isEmpty(this.f9853b) && ((strArr = this.f9852a) == null || strArr.length < 1)) {
            d(bleDevice);
        } else if (TextUtils.isEmpty(this.f9853b) || this.f9853b.equalsIgnoreCase(bleDevice.getMac())) {
            String[] strArr2 = this.f9852a;
            if (strArr2 != null && strArr2.length > 0) {
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                String[] strArr3 = this.f9852a;
                int length = strArr3.length;
                while (i4 < length) {
                    String str = strArr3[i4];
                    String name = bleDevice.getName();
                    if (name == null) {
                        name = "";
                    }
                    if (this.f9854c) {
                        i4 = name.contains(str) ? 0 : i4 + 1;
                        atomicBoolean.set(true);
                    } else {
                        if (!name.equals(str)) {
                        }
                        atomicBoolean.set(true);
                    }
                }
                if (!atomicBoolean.get()) {
                    return;
                }
            }
            d(bleDevice);
        }
    }

    private void d(BleDevice bleDevice) {
        if (this.f9855d) {
            com.clj.fastble.utils.a.c("devices detected  ------  name:" + bleDevice.getName() + "  mac:" + bleDevice.getMac() + "  Rssi:" + bleDevice.getRssi() + "  scanRecord:" + com.clj.fastble.utils.b.k(bleDevice.getScanRecord()));
            this.f9858g.add(bleDevice);
            this.f9859h.post(new b());
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (BleDevice bleDevice2 : this.f9858g) {
            if (bleDevice2.getDevice().equals(bleDevice.getDevice())) {
                atomicBoolean.set(true);
            }
        }
        if (atomicBoolean.get()) {
            return;
        }
        com.clj.fastble.utils.a.c("device detected  ------  name: " + bleDevice.getName() + "  mac: " + bleDevice.getMac() + "  Rssi: " + bleDevice.getRssi() + "  scanRecord: " + com.clj.fastble.utils.b.l(bleDevice.getScanRecord(), true));
        this.f9858g.add(bleDevice);
        this.f9859h.post(new c(bleDevice));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(BleDevice bleDevice) {
        this.f9859h.post(new RunnableC0071a(bleDevice));
        c(bleDevice);
    }

    public j e() {
        return this.f9857f;
    }

    public boolean g() {
        return this.f9855d;
    }

    public final void h(boolean z9) {
        this.f9858g.clear();
        o();
        if (z9 && this.f9856e > 0) {
            this.f9859h.postDelayed(new d(), this.f9856e);
        }
        this.f9859h.post(new e(z9));
    }

    public final void i() {
        this.f9862k = false;
        this.f9860i.quit();
        o();
        this.f9859h.post(new f());
    }

    public abstract void j(BleDevice bleDevice);

    public abstract void k(List<BleDevice> list);

    public abstract void l(boolean z9);

    public abstract void m(BleDevice bleDevice);

    public void n(String[] strArr, String str, boolean z9, boolean z10, long j4, j jVar) {
        this.f9852a = strArr;
        this.f9853b = str;
        this.f9854c = z9;
        this.f9855d = z10;
        this.f9856e = j4;
        this.f9857f = jVar;
        HandlerThread handlerThread = new HandlerThread(a.class.getSimpleName());
        this.f9860i = handlerThread;
        handlerThread.start();
        this.f9861j = new g(this.f9860i.getLooper(), this);
        this.f9862k = true;
    }

    public final void o() {
        this.f9859h.removeCallbacksAndMessages(null);
        this.f9861j.removeCallbacksAndMessages(null);
    }

    @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
    public void onLeScan(BluetoothDevice bluetoothDevice, int i4, byte[] bArr) {
        if (bluetoothDevice != null && this.f9862k) {
            Message obtainMessage = this.f9861j.obtainMessage();
            obtainMessage.what = 0;
            obtainMessage.obj = new BleDevice(bluetoothDevice, i4, bArr, System.currentTimeMillis());
            this.f9861j.sendMessage(obtainMessage);
        }
    }
}
