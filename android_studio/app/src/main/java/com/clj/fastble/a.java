package com.clj.fastble;

import android.annotation.TargetApi;
import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.content.Context;
import android.os.Looper;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.data.BleScanState;
import com.clj.fastble.exception.OtherException;
import g0.d;
import g0.e;
import g0.f;
import g0.g;
import g0.h;
import g0.i;
import g0.k;
import java.util.List;

/* compiled from: BleManager.java */
@TargetApi(18)
/* loaded from: classes.dex */
public class a {

    /* renamed from: l  reason: collision with root package name */
    public static final int f9747l = 10000;

    /* renamed from: m  reason: collision with root package name */
    private static final int f9748m = 7;

    /* renamed from: n  reason: collision with root package name */
    private static final int f9749n = 5000;

    /* renamed from: o  reason: collision with root package name */
    private static final int f9750o = 0;

    /* renamed from: p  reason: collision with root package name */
    private static final int f9751p = 5000;

    /* renamed from: q  reason: collision with root package name */
    private static final int f9752q = 23;

    /* renamed from: r  reason: collision with root package name */
    private static final int f9753r = 512;

    /* renamed from: s  reason: collision with root package name */
    private static final int f9754s = 20;

    /* renamed from: t  reason: collision with root package name */
    private static final int f9755t = 10000;

    /* renamed from: a  reason: collision with root package name */
    private Application f9756a;

    /* renamed from: b  reason: collision with root package name */
    private com.clj.fastble.scan.b f9757b;

    /* renamed from: c  reason: collision with root package name */
    private BluetoothAdapter f9758c;

    /* renamed from: d  reason: collision with root package name */
    private com.clj.fastble.bluetooth.c f9759d;

    /* renamed from: e  reason: collision with root package name */
    private BluetoothManager f9760e;

    /* renamed from: f  reason: collision with root package name */
    private int f9761f = 7;

    /* renamed from: g  reason: collision with root package name */
    private int f9762g = 5000;

    /* renamed from: h  reason: collision with root package name */
    private int f9763h = 0;

    /* renamed from: i  reason: collision with root package name */
    private long f9764i = 5000;

    /* renamed from: j  reason: collision with root package name */
    private int f9765j = 20;

    /* renamed from: k  reason: collision with root package name */
    private long f9766k = 10000;

    /* compiled from: BleManager.java */
    /* renamed from: com.clj.fastble.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0069a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f9767a = new a();

        private C0069a() {
        }
    }

    public static a w() {
        return C0069a.f9767a;
    }

    public int A() {
        return this.f9763h;
    }

    public long B() {
        return this.f9764i;
    }

    public com.clj.fastble.scan.b C() {
        return this.f9757b;
    }

    public BleScanState D() {
        return com.clj.fastble.scan.c.b().c();
    }

    public int E() {
        return this.f9765j;
    }

    public void F(BleDevice bleDevice, String str, String str2, g0.c cVar) {
        if (cVar != null) {
            com.clj.fastble.bluetooth.a f10 = this.f9759d.f(bleDevice);
            if (f10 == null) {
                cVar.f(new OtherException("This device not connect!"));
                return;
            } else {
                f10.L().w(str, str2).c(cVar, str2);
                return;
            }
        }
        throw new IllegalArgumentException("BleIndicateCallback can not be Null!");
    }

    public void G(Application application) {
        if (this.f9756a != null || application == null) {
            return;
        }
        this.f9756a = application;
        if (L()) {
            this.f9760e = (BluetoothManager) this.f9756a.getSystemService("bluetooth");
        }
        this.f9758c = BluetoothAdapter.getDefaultAdapter();
        this.f9759d = new com.clj.fastble.bluetooth.c();
        this.f9757b = new com.clj.fastble.scan.b();
    }

    public void H(com.clj.fastble.scan.b bVar) {
        this.f9757b = bVar;
    }

    public boolean I() {
        BluetoothAdapter bluetoothAdapter = this.f9758c;
        return bluetoothAdapter != null && bluetoothAdapter.isEnabled();
    }

    public boolean J(BleDevice bleDevice) {
        return u(bleDevice) == 2;
    }

    public boolean K(String str) {
        for (BleDevice bleDevice : m()) {
            if (bleDevice != null && bleDevice.getMac().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean L() {
        return this.f9756a.getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.bluetooth_le");
    }

    public void M(BleDevice bleDevice, String str, String str2, e eVar) {
        if (eVar != null) {
            com.clj.fastble.bluetooth.a f10 = this.f9759d.f(bleDevice);
            if (f10 == null) {
                eVar.f(new OtherException("This device not connect!"));
                return;
            } else {
                f10.L().w(str, str2).d(eVar, str2);
                return;
            }
        }
        throw new IllegalArgumentException("BleNotifyCallback can not be Null!");
    }

    public void N(BleDevice bleDevice, String str, String str2, f fVar) {
        if (fVar != null) {
            com.clj.fastble.bluetooth.a f10 = this.f9759d.f(bleDevice);
            if (f10 == null) {
                fVar.e(new OtherException("This device is not connected!"));
                return;
            } else {
                f10.L().w(str, str2).o(fVar, str2);
                return;
            }
        }
        throw new IllegalArgumentException("BleReadCallback can not be Null!");
    }

    public void O(BleDevice bleDevice, g gVar) {
        if (gVar != null) {
            com.clj.fastble.bluetooth.a f10 = this.f9759d.f(bleDevice);
            if (f10 == null) {
                gVar.e(new OtherException("This device is not connected!"));
                return;
            } else {
                f10.L().q(gVar);
                return;
            }
        }
        throw new IllegalArgumentException("BleRssiCallback can not be Null!");
    }

    public void P(BleDevice bleDevice) {
        com.clj.fastble.bluetooth.a n9 = n(bleDevice);
        if (n9 != null) {
            n9.N();
        }
    }

    public void Q(BleDevice bleDevice, String str) {
        com.clj.fastble.bluetooth.a n9 = n(bleDevice);
        if (n9 != null) {
            n9.O(str);
        }
    }

    public void R(BleDevice bleDevice) {
        com.clj.fastble.bluetooth.a n9 = n(bleDevice);
        if (n9 != null) {
            n9.P();
        }
    }

    public void S(BleDevice bleDevice, String str) {
        com.clj.fastble.bluetooth.a n9 = n(bleDevice);
        if (n9 != null) {
            n9.Q(str);
        }
    }

    public void T(BleDevice bleDevice, String str) {
        com.clj.fastble.bluetooth.a n9 = n(bleDevice);
        if (n9 != null) {
            n9.R(str);
        }
    }

    public void U(BleDevice bleDevice) {
        com.clj.fastble.bluetooth.a n9 = n(bleDevice);
        if (n9 != null) {
            n9.S();
        }
    }

    public void V(BleDevice bleDevice, String str) {
        com.clj.fastble.bluetooth.a n9 = n(bleDevice);
        if (n9 != null) {
            n9.T(str);
        }
    }

    public void W(i iVar) {
        if (iVar != null) {
            if (!I()) {
                com.clj.fastble.utils.a.b("Bluetooth not enable!");
                iVar.a(false);
                return;
            }
            com.clj.fastble.scan.c.b().d(this.f9757b.j(), this.f9757b.h(), this.f9757b.g(), this.f9757b.l(), this.f9757b.i(), iVar);
            return;
        }
        throw new IllegalArgumentException("BleScanCallback can not be Null!");
    }

    public void X(h hVar) {
        if (hVar != null) {
            if (!I()) {
                com.clj.fastble.utils.a.b("Bluetooth not enable!");
                hVar.a(false);
                return;
            }
            com.clj.fastble.scan.c.b().e(this.f9757b.j(), this.f9757b.h(), this.f9757b.g(), this.f9757b.l(), this.f9757b.i(), hVar);
            return;
        }
        throw new IllegalArgumentException("BleScanAndConnectCallback can not be Null!");
    }

    public a Y(long j4) {
        if (j4 <= 0) {
            j4 = 100;
        }
        this.f9766k = j4;
        return this;
    }

    public a Z(int i4) {
        if (i4 > 7) {
            i4 = 7;
        }
        this.f9761f = i4;
        return this;
    }

    public void a() {
        com.clj.fastble.scan.c.b().g();
    }

    public void a0(BleDevice bleDevice, int i4, d dVar) {
        if (dVar == null) {
            throw new IllegalArgumentException("BleMtuChangedCallback can not be Null!");
        }
        if (i4 > 512) {
            com.clj.fastble.utils.a.b("requiredMtu should lower than 512 !");
            dVar.f(new OtherException("requiredMtu should lower than 512 !"));
        } else if (i4 < 23) {
            com.clj.fastble.utils.a.b("requiredMtu should higher than 23 !");
            dVar.f(new OtherException("requiredMtu should higher than 23 !"));
        } else {
            com.clj.fastble.bluetooth.a f10 = this.f9759d.f(bleDevice);
            if (f10 == null) {
                dVar.f(new OtherException("This device is not connected!"));
            } else {
                f10.L().u(i4, dVar);
            }
        }
    }

    public void b(BleDevice bleDevice) {
        com.clj.fastble.bluetooth.a n9 = n(bleDevice);
        if (n9 != null) {
            n9.C();
        }
    }

    public a b0(int i4) {
        this.f9762g = i4;
        return this;
    }

    public BluetoothGatt c(BleDevice bleDevice, g0.b bVar) {
        if (bVar != null) {
            if (!I()) {
                com.clj.fastble.utils.a.b("Bluetooth not enable!");
                bVar.c(bleDevice, new OtherException("Bluetooth not enable!"));
                return null;
            }
            if (Looper.myLooper() == null || Looper.myLooper() != Looper.getMainLooper()) {
                com.clj.fastble.utils.a.d("Be careful: currentThread is not MainThread!");
            }
            if (bleDevice != null && bleDevice.getDevice() != null) {
                return this.f9759d.b(bleDevice).E(bleDevice, this.f9757b.k(), bVar);
            }
            bVar.c(bleDevice, new OtherException("Not Found Device Exception Occurred!"));
            return null;
        }
        throw new IllegalArgumentException("BleGattCallback can not be Null!");
    }

    public a c0(int i4) {
        return d0(i4, 5000L);
    }

    public BluetoothGatt d(String str, g0.b bVar) {
        return c(new BleDevice(o().getRemoteDevice(str), 0, null, 0L), bVar);
    }

    public a d0(int i4, long j4) {
        if (i4 > 10) {
            i4 = 10;
        }
        if (j4 < 0) {
            j4 = 0;
        }
        this.f9763h = i4;
        this.f9764i = j4;
        return this;
    }

    public BleDevice e(BluetoothDevice bluetoothDevice) {
        return new BleDevice(bluetoothDevice);
    }

    public a e0(int i4) {
        this.f9765j = i4;
        return this;
    }

    @TargetApi(21)
    public BleDevice f(ScanResult scanResult) {
        if (scanResult != null) {
            BluetoothDevice device = scanResult.getDevice();
            int rssi = scanResult.getRssi();
            ScanRecord scanRecord = scanResult.getScanRecord();
            return new BleDevice(device, rssi, scanRecord != null ? scanRecord.getBytes() : null, scanResult.getTimestampNanos());
        }
        throw new IllegalArgumentException("scanResult can not be Null!");
    }

    public boolean f0(BleDevice bleDevice, String str, String str2) {
        com.clj.fastble.bluetooth.a f10 = this.f9759d.f(bleDevice);
        if (f10 == null) {
            return false;
        }
        boolean a10 = f10.L().w(str, str2).a();
        if (a10) {
            f10.O(str2);
        }
        return a10;
    }

    public void g() {
        com.clj.fastble.bluetooth.c cVar = this.f9759d;
        if (cVar != null) {
            cVar.c();
        }
    }

    public boolean g0(BleDevice bleDevice, String str, String str2) {
        com.clj.fastble.bluetooth.a f10 = this.f9759d.f(bleDevice);
        if (f10 == null) {
            return false;
        }
        boolean b10 = f10.L().w(str, str2).b();
        if (b10) {
            f10.Q(str2);
        }
        return b10;
    }

    public void h() {
        BluetoothAdapter bluetoothAdapter = this.f9758c;
        if (bluetoothAdapter == null || !bluetoothAdapter.isEnabled()) {
            return;
        }
        this.f9758c.disable();
    }

    public void h0(BleDevice bleDevice, String str, String str2, byte[] bArr, k kVar) {
        i0(bleDevice, str, str2, bArr, true, kVar);
    }

    public void i(BleDevice bleDevice) {
        com.clj.fastble.bluetooth.c cVar = this.f9759d;
        if (cVar != null) {
            cVar.d(bleDevice);
        }
    }

    public void i0(BleDevice bleDevice, String str, String str2, byte[] bArr, boolean z9, k kVar) {
        if (kVar == null) {
            throw new IllegalArgumentException("BleWriteCallback can not be Null!");
        }
        if (bArr == null) {
            com.clj.fastble.utils.a.b("data is Null!");
            kVar.e(new OtherException("data is Null!"));
            return;
        }
        if (bArr.length > 20 && !z9) {
            com.clj.fastble.utils.a.d("Be careful: data's length beyond 20! Ensure MTU higher than 23, or use spilt write!");
        }
        com.clj.fastble.bluetooth.a f10 = this.f9759d.f(bleDevice);
        if (f10 == null) {
            kVar.e(new OtherException("This device not connect!"));
        } else if (z9 && bArr.length > 20) {
            new com.clj.fastble.bluetooth.d().i(f10, str, str2, bArr, kVar);
        } else {
            f10.L().w(str, str2).x(bArr, kVar, str2);
        }
    }

    public void j() {
        com.clj.fastble.bluetooth.c cVar = this.f9759d;
        if (cVar != null) {
            cVar.e();
        }
    }

    public void k() {
        BluetoothAdapter bluetoothAdapter = this.f9758c;
        if (bluetoothAdapter != null) {
            bluetoothAdapter.enable();
        }
    }

    public a l(boolean z9) {
        com.clj.fastble.utils.a.f9893a = z9;
        return this;
    }

    public List<BleDevice> m() {
        com.clj.fastble.bluetooth.c cVar = this.f9759d;
        if (cVar == null) {
            return null;
        }
        return cVar.h();
    }

    public com.clj.fastble.bluetooth.a n(BleDevice bleDevice) {
        com.clj.fastble.bluetooth.c cVar = this.f9759d;
        if (cVar != null) {
            return cVar.f(bleDevice);
        }
        return null;
    }

    public BluetoothAdapter o() {
        return this.f9758c;
    }

    public BluetoothGatt p(BleDevice bleDevice) {
        com.clj.fastble.bluetooth.a n9 = n(bleDevice);
        if (n9 != null) {
            return n9.I();
        }
        return null;
    }

    public List<BluetoothGattCharacteristic> q(BluetoothGattService bluetoothGattService) {
        return bluetoothGattService.getCharacteristics();
    }

    public List<BluetoothGattService> r(BleDevice bleDevice) {
        BluetoothGatt p9 = p(bleDevice);
        if (p9 != null) {
            return p9.getServices();
        }
        return null;
    }

    public BluetoothManager s() {
        return this.f9760e;
    }

    public long t() {
        return this.f9766k;
    }

    public int u(BleDevice bleDevice) {
        if (bleDevice != null) {
            return this.f9760e.getConnectionState(bleDevice.getDevice(), 7);
        }
        return 0;
    }

    public Context v() {
        return this.f9756a;
    }

    public int x() {
        return this.f9761f;
    }

    public com.clj.fastble.bluetooth.c y() {
        return this.f9759d;
    }

    public int z() {
        return this.f9762g;
    }
}
