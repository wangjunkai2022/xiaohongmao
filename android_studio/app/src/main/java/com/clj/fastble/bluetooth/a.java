package com.clj.fastble.bluetooth;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.ConnectException;
import com.clj.fastble.exception.OtherException;
import com.clj.fastble.exception.TimeoutException;
import g0.e;
import g0.f;
import g0.g;
import g0.k;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BleBluetooth.java */
@TargetApi(18)
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private g0.b f9771a;

    /* renamed from: b  reason: collision with root package name */
    private g f9772b;

    /* renamed from: c  reason: collision with root package name */
    private g0.d f9773c;

    /* renamed from: h  reason: collision with root package name */
    private b f9778h;

    /* renamed from: j  reason: collision with root package name */
    private BleDevice f9780j;

    /* renamed from: k  reason: collision with root package name */
    private BluetoothGatt f9781k;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, e> f9774d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private HashMap<String, g0.c> f9775e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private HashMap<String, k> f9776f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private HashMap<String, f> f9777g = new HashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private boolean f9779i = false;

    /* renamed from: l  reason: collision with root package name */
    private c f9782l = new c(Looper.getMainLooper());

    /* renamed from: m  reason: collision with root package name */
    private int f9783m = 0;

    /* renamed from: n  reason: collision with root package name */
    private BluetoothGattCallback f9784n = new C0070a();

    /* compiled from: BleBluetooth.java */
    /* renamed from: com.clj.fastble.bluetooth.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0070a extends BluetoothGattCallback {
        C0070a() {
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            Handler a10;
            Handler a11;
            super.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
            for (Map.Entry entry : a.this.f9774d.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof e) {
                    e eVar = (e) value;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(eVar.b()) && (a11 = eVar.a()) != null) {
                        Message obtainMessage = a11.obtainMessage();
                        obtainMessage.what = 19;
                        obtainMessage.obj = eVar;
                        Bundle bundle = new Bundle();
                        bundle.putByteArray(com.clj.fastble.data.b.f9831m, bluetoothGattCharacteristic.getValue());
                        obtainMessage.setData(bundle);
                        a11.sendMessage(obtainMessage);
                    }
                }
            }
            for (Map.Entry entry2 : a.this.f9775e.entrySet()) {
                Object value2 = entry2.getValue();
                if (value2 instanceof g0.c) {
                    g0.c cVar = (g0.c) value2;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(cVar.b()) && (a10 = cVar.a()) != null) {
                        Message obtainMessage2 = a10.obtainMessage();
                        obtainMessage2.what = 35;
                        obtainMessage2.obj = cVar;
                        Bundle bundle2 = new Bundle();
                        bundle2.putByteArray(com.clj.fastble.data.b.f9836r, bluetoothGattCharacteristic.getValue());
                        obtainMessage2.setData(bundle2);
                        a10.sendMessage(obtainMessage2);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i4) {
            Handler a10;
            super.onCharacteristicRead(bluetoothGatt, bluetoothGattCharacteristic, i4);
            for (Map.Entry entry : a.this.f9777g.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof f) {
                    f fVar = (f) value;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(fVar.b()) && (a10 = fVar.a()) != null) {
                        Message obtainMessage = a10.obtainMessage();
                        obtainMessage.what = 66;
                        obtainMessage.obj = fVar;
                        Bundle bundle = new Bundle();
                        bundle.putInt(com.clj.fastble.data.b.f9844z, i4);
                        bundle.putByteArray(com.clj.fastble.data.b.A, bluetoothGattCharacteristic.getValue());
                        obtainMessage.setData(bundle);
                        a10.sendMessage(obtainMessage);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i4) {
            Handler a10;
            super.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i4);
            for (Map.Entry entry : a.this.f9776f.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof k) {
                    k kVar = (k) value;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(kVar.b()) && (a10 = kVar.a()) != null) {
                        Message obtainMessage = a10.obtainMessage();
                        obtainMessage.what = 50;
                        obtainMessage.obj = kVar;
                        Bundle bundle = new Bundle();
                        bundle.putInt(com.clj.fastble.data.b.f9840v, i4);
                        bundle.putByteArray(com.clj.fastble.data.b.f9841w, bluetoothGattCharacteristic.getValue());
                        obtainMessage.setData(bundle);
                        a10.sendMessage(obtainMessage);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i4, int i10) {
            super.onConnectionStateChange(bluetoothGatt, i4, i10);
            com.clj.fastble.utils.a.c("BluetoothGattCallback：onConnectionStateChange \nstatus: " + i4 + "\nnewState: " + i10 + "\ncurrentThread: " + Thread.currentThread().getId());
            a.this.f9781k = bluetoothGatt;
            a.this.f9782l.removeMessages(7);
            if (i10 == 2) {
                Message obtainMessage = a.this.f9782l.obtainMessage();
                obtainMessage.what = 4;
                a.this.f9782l.sendMessageDelayed(obtainMessage, 500L);
            } else if (i10 == 0) {
                if (a.this.f9778h == b.CONNECT_CONNECTING) {
                    Message obtainMessage2 = a.this.f9782l.obtainMessage();
                    obtainMessage2.what = 1;
                    obtainMessage2.obj = new com.clj.fastble.data.a(i4);
                    a.this.f9782l.sendMessage(obtainMessage2);
                } else if (a.this.f9778h == b.CONNECT_CONNECTED) {
                    Message obtainMessage3 = a.this.f9782l.obtainMessage();
                    obtainMessage3.what = 2;
                    com.clj.fastble.data.a aVar = new com.clj.fastble.data.a(i4);
                    aVar.c(a.this.f9779i);
                    obtainMessage3.obj = aVar;
                    a.this.f9782l.sendMessage(obtainMessage3);
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i4) {
            Handler a10;
            Handler a11;
            super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i4);
            for (Map.Entry entry : a.this.f9774d.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof e) {
                    e eVar = (e) value;
                    if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(eVar.b()) && (a11 = eVar.a()) != null) {
                        Message obtainMessage = a11.obtainMessage();
                        obtainMessage.what = 18;
                        obtainMessage.obj = eVar;
                        Bundle bundle = new Bundle();
                        bundle.putInt(com.clj.fastble.data.b.f9830l, i4);
                        obtainMessage.setData(bundle);
                        a11.sendMessage(obtainMessage);
                    }
                }
            }
            for (Map.Entry entry2 : a.this.f9775e.entrySet()) {
                Object value2 = entry2.getValue();
                if (value2 instanceof g0.c) {
                    g0.c cVar = (g0.c) value2;
                    if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(cVar.b()) && (a10 = cVar.a()) != null) {
                        Message obtainMessage2 = a10.obtainMessage();
                        obtainMessage2.what = 34;
                        obtainMessage2.obj = cVar;
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt(com.clj.fastble.data.b.f9835q, i4);
                        obtainMessage2.setData(bundle2);
                        a10.sendMessage(obtainMessage2);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onMtuChanged(BluetoothGatt bluetoothGatt, int i4, int i10) {
            Handler a10;
            super.onMtuChanged(bluetoothGatt, i4, i10);
            if (a.this.f9773c == null || (a10 = a.this.f9773c.a()) == null) {
                return;
            }
            Message obtainMessage = a10.obtainMessage();
            obtainMessage.what = 98;
            obtainMessage.obj = a.this.f9773c;
            Bundle bundle = new Bundle();
            bundle.putInt(com.clj.fastble.data.b.H, i10);
            bundle.putInt(com.clj.fastble.data.b.I, i4);
            obtainMessage.setData(bundle);
            a10.sendMessage(obtainMessage);
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i4, int i10) {
            Handler a10;
            super.onReadRemoteRssi(bluetoothGatt, i4, i10);
            if (a.this.f9772b == null || (a10 = a.this.f9772b.a()) == null) {
                return;
            }
            Message obtainMessage = a10.obtainMessage();
            obtainMessage.what = 82;
            obtainMessage.obj = a.this.f9772b;
            Bundle bundle = new Bundle();
            bundle.putInt(com.clj.fastble.data.b.D, i10);
            bundle.putInt(com.clj.fastble.data.b.E, i4);
            obtainMessage.setData(bundle);
            a10.sendMessage(obtainMessage);
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i4) {
            super.onServicesDiscovered(bluetoothGatt, i4);
            com.clj.fastble.utils.a.c("BluetoothGattCallback：onServicesDiscovered \nstatus: " + i4 + "\ncurrentThread: " + Thread.currentThread().getId());
            a.this.f9781k = bluetoothGatt;
            if (i4 == 0) {
                Message obtainMessage = a.this.f9782l.obtainMessage();
                obtainMessage.what = 6;
                obtainMessage.obj = new com.clj.fastble.data.a(i4);
                a.this.f9782l.sendMessage(obtainMessage);
                return;
            }
            Message obtainMessage2 = a.this.f9782l.obtainMessage();
            obtainMessage2.what = 5;
            a.this.f9782l.sendMessage(obtainMessage2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BleBluetooth.java */
    /* loaded from: classes.dex */
    public enum b {
        CONNECT_IDLE,
        CONNECT_CONNECTING,
        CONNECT_CONNECTED,
        CONNECT_FAILURE,
        CONNECT_DISCONNECT
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BleBluetooth.java */
    /* loaded from: classes.dex */
    public final class c extends Handler {
        c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    a.this.H();
                    a.this.M();
                    a.this.D();
                    if (a.this.f9783m < com.clj.fastble.a.w().A()) {
                        com.clj.fastble.utils.a.b("Connect fail, try reconnect " + com.clj.fastble.a.w().B() + " Millisecond later");
                        a.l(a.this);
                        Message obtainMessage = a.this.f9782l.obtainMessage();
                        obtainMessage.what = 3;
                        a.this.f9782l.sendMessageDelayed(obtainMessage, com.clj.fastble.a.w().B());
                        return;
                    }
                    a.this.f9783m = 0;
                    a.this.f9778h = b.CONNECT_FAILURE;
                    com.clj.fastble.a.w().y().m(a.this);
                    int a10 = ((com.clj.fastble.data.a) message.obj).a();
                    if (a.this.f9771a != null) {
                        a.this.f9771a.c(a.this.f9780j, new ConnectException(a.this.f9781k, a10));
                        return;
                    }
                    return;
                case 2:
                    a.this.f9778h = b.CONNECT_DISCONNECT;
                    com.clj.fastble.a.w().y().l(a.this);
                    a.this.M();
                    a.this.D();
                    a.this.S();
                    a.this.P();
                    a.this.C();
                    a.this.f9782l.removeCallbacksAndMessages(null);
                    com.clj.fastble.data.a aVar = (com.clj.fastble.data.a) message.obj;
                    boolean b10 = aVar.b();
                    int a11 = aVar.a();
                    if (a.this.f9771a != null) {
                        a.this.f9771a.e(b10, a.this.f9780j, a.this.f9781k, a11);
                        return;
                    }
                    return;
                case 3:
                    a aVar2 = a.this;
                    aVar2.E(aVar2.f9780j, false, a.this.f9771a);
                    return;
                case 4:
                    a.this.f9783m = 0;
                    if (a.this.f9781k != null) {
                        if (a.this.f9781k.discoverServices()) {
                            return;
                        }
                        Message obtainMessage2 = a.this.f9782l.obtainMessage();
                        obtainMessage2.what = 5;
                        a.this.f9782l.sendMessage(obtainMessage2);
                        return;
                    }
                    Message obtainMessage3 = a.this.f9782l.obtainMessage();
                    obtainMessage3.what = 5;
                    a.this.f9782l.sendMessage(obtainMessage3);
                    return;
                case 5:
                    a.this.H();
                    a.this.M();
                    a.this.D();
                    a.this.f9778h = b.CONNECT_FAILURE;
                    com.clj.fastble.a.w().y().m(a.this);
                    if (a.this.f9771a != null) {
                        a.this.f9771a.c(a.this.f9780j, new OtherException("GATT discover services exception occurred!"));
                        return;
                    }
                    return;
                case 6:
                    a.this.f9778h = b.CONNECT_CONNECTED;
                    a.this.f9779i = false;
                    com.clj.fastble.a.w().y().m(a.this);
                    com.clj.fastble.a.w().y().a(a.this);
                    int a12 = ((com.clj.fastble.data.a) message.obj).a();
                    if (a.this.f9771a != null) {
                        a.this.f9771a.d(a.this.f9780j, a.this.f9781k, a12);
                        return;
                    }
                    return;
                case 7:
                    a.this.H();
                    a.this.M();
                    a.this.D();
                    a.this.f9778h = b.CONNECT_FAILURE;
                    com.clj.fastble.a.w().y().m(a.this);
                    if (a.this.f9771a != null) {
                        a.this.f9771a.c(a.this.f9780j, new TimeoutException());
                        return;
                    }
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    }

    public a(BleDevice bleDevice) {
        this.f9780j = bleDevice;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void D() {
        BluetoothGatt bluetoothGatt = this.f9781k;
        if (bluetoothGatt != null) {
            bluetoothGatt.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void H() {
        BluetoothGatt bluetoothGatt = this.f9781k;
        if (bluetoothGatt != null) {
            bluetoothGatt.disconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void M() {
        BluetoothGatt bluetoothGatt;
        try {
            Method method = BluetoothGatt.class.getMethod("refresh", new Class[0]);
            if (method != null && (bluetoothGatt = this.f9781k) != null) {
                boolean booleanValue = ((Boolean) method.invoke(bluetoothGatt, new Object[0])).booleanValue();
                com.clj.fastble.utils.a.c("refreshDeviceCache, is success:  " + booleanValue);
            }
        } catch (Exception e4) {
            com.clj.fastble.utils.a.c("exception occur while refreshing device: " + e4.getMessage());
            e4.printStackTrace();
        }
    }

    static /* synthetic */ int l(a aVar) {
        int i4 = aVar.f9783m;
        aVar.f9783m = i4 + 1;
        return i4;
    }

    public synchronized void A(g gVar) {
        this.f9772b = gVar;
    }

    public synchronized void B(String str, k kVar) {
        this.f9776f.put(str, kVar);
    }

    public synchronized void C() {
        HashMap<String, e> hashMap = this.f9774d;
        if (hashMap != null) {
            hashMap.clear();
        }
        HashMap<String, g0.c> hashMap2 = this.f9775e;
        if (hashMap2 != null) {
            hashMap2.clear();
        }
        HashMap<String, k> hashMap3 = this.f9776f;
        if (hashMap3 != null) {
            hashMap3.clear();
        }
        HashMap<String, f> hashMap4 = this.f9777g;
        if (hashMap4 != null) {
            hashMap4.clear();
        }
    }

    public synchronized BluetoothGatt E(BleDevice bleDevice, boolean z9, g0.b bVar) {
        com.clj.fastble.utils.a.c("connect device: " + bleDevice.getName() + "\nmac: " + bleDevice.getMac() + "\nautoConnect: " + z9 + "\ncurrentThread: " + Thread.currentThread().getId());
        v(bVar);
        this.f9778h = b.CONNECT_CONNECTING;
        if (Build.VERSION.SDK_INT >= 23) {
            this.f9781k = bleDevice.getDevice().connectGatt(com.clj.fastble.a.w().v(), z9, this.f9784n, 2);
        } else {
            this.f9781k = bleDevice.getDevice().connectGatt(com.clj.fastble.a.w().v(), z9, this.f9784n);
        }
        if (this.f9781k != null) {
            g0.b bVar2 = this.f9771a;
            if (bVar2 != null) {
                bVar2.f();
            }
            Message obtainMessage = this.f9782l.obtainMessage();
            obtainMessage.what = 7;
            this.f9782l.sendMessageDelayed(obtainMessage, com.clj.fastble.a.w().t());
        } else {
            H();
            M();
            D();
            this.f9778h = b.CONNECT_FAILURE;
            com.clj.fastble.a.w().y().m(this);
            g0.b bVar3 = this.f9771a;
            if (bVar3 != null) {
                bVar3.c(bleDevice, new OtherException("GATT connect exception occurred!"));
            }
        }
        return this.f9781k;
    }

    public synchronized void F() {
        this.f9778h = b.CONNECT_IDLE;
        H();
        M();
        D();
        N();
        S();
        P();
        C();
        this.f9782l.removeCallbacksAndMessages(null);
    }

    public synchronized void G() {
        this.f9779i = true;
        H();
    }

    public BluetoothGatt I() {
        return this.f9781k;
    }

    public BleDevice J() {
        return this.f9780j;
    }

    public String K() {
        return this.f9780j.getKey();
    }

    public com.clj.fastble.bluetooth.b L() {
        return new com.clj.fastble.bluetooth.b(this);
    }

    public synchronized void N() {
        this.f9771a = null;
    }

    public synchronized void O(String str) {
        if (this.f9775e.containsKey(str)) {
            this.f9775e.remove(str);
        }
    }

    public synchronized void P() {
        this.f9773c = null;
    }

    public synchronized void Q(String str) {
        if (this.f9774d.containsKey(str)) {
            this.f9774d.remove(str);
        }
    }

    public synchronized void R(String str) {
        if (this.f9777g.containsKey(str)) {
            this.f9777g.remove(str);
        }
    }

    public synchronized void S() {
        this.f9772b = null;
    }

    public synchronized void T(String str) {
        if (this.f9776f.containsKey(str)) {
            this.f9776f.remove(str);
        }
    }

    public synchronized void v(g0.b bVar) {
        this.f9771a = bVar;
    }

    public synchronized void w(String str, g0.c cVar) {
        this.f9775e.put(str, cVar);
    }

    public synchronized void x(g0.d dVar) {
        this.f9773c = dVar;
    }

    public synchronized void y(String str, e eVar) {
        this.f9774d.put(str, eVar);
    }

    public synchronized void z(String str, f fVar) {
        this.f9777g.put(str, fVar);
    }
}
