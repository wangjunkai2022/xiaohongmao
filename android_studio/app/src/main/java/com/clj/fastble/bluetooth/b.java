package com.clj.fastble.bluetooth;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.clj.fastble.exception.GattException;
import com.clj.fastble.exception.OtherException;
import com.clj.fastble.exception.TimeoutException;
import g0.e;
import g0.f;
import g0.g;
import g0.k;
import java.util.UUID;

/* compiled from: BleConnector.java */
@TargetApi(18)
/* loaded from: classes.dex */
public class b {

    /* renamed from: f  reason: collision with root package name */
    private static final String f9793f = "00002902-0000-1000-8000-00805f9b34fb";

    /* renamed from: a  reason: collision with root package name */
    private BluetoothGatt f9794a;

    /* renamed from: b  reason: collision with root package name */
    private BluetoothGattService f9795b;

    /* renamed from: c  reason: collision with root package name */
    private BluetoothGattCharacteristic f9796c;

    /* renamed from: d  reason: collision with root package name */
    private com.clj.fastble.bluetooth.a f9797d;

    /* renamed from: e  reason: collision with root package name */
    private Handler f9798e = new a(Looper.getMainLooper());

    /* compiled from: BleConnector.java */
    /* loaded from: classes.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i4 = message.what;
            if (i4 == 49) {
                k kVar = (k) message.obj;
                if (kVar != null) {
                    kVar.e(new TimeoutException());
                }
            } else if (i4 == 50) {
                b.this.y();
                k kVar2 = (k) message.obj;
                Bundle data = message.getData();
                int i10 = data.getInt(com.clj.fastble.data.b.f9840v);
                byte[] byteArray = data.getByteArray(com.clj.fastble.data.b.f9841w);
                if (kVar2 != null) {
                    if (i10 == 0) {
                        kVar2.f(1, 1, byteArray);
                    } else {
                        kVar2.e(new GattException(i10));
                    }
                }
            } else if (i4 == 65) {
                f fVar = (f) message.obj;
                if (fVar != null) {
                    fVar.e(new TimeoutException());
                }
            } else if (i4 == 66) {
                b.this.p();
                f fVar2 = (f) message.obj;
                Bundle data2 = message.getData();
                int i11 = data2.getInt(com.clj.fastble.data.b.f9844z);
                byte[] byteArray2 = data2.getByteArray(com.clj.fastble.data.b.A);
                if (fVar2 != null) {
                    if (i11 == 0) {
                        fVar2.f(byteArray2);
                    } else {
                        fVar2.e(new GattException(i11));
                    }
                }
            } else if (i4 == 81) {
                g gVar = (g) message.obj;
                if (gVar != null) {
                    gVar.e(new TimeoutException());
                }
            } else if (i4 == 82) {
                b.this.r();
                g gVar2 = (g) message.obj;
                Bundle data3 = message.getData();
                int i12 = data3.getInt(com.clj.fastble.data.b.D);
                int i13 = data3.getInt(com.clj.fastble.data.b.E);
                if (gVar2 != null) {
                    if (i12 == 0) {
                        gVar2.f(i13);
                    } else {
                        gVar2.e(new GattException(i12));
                    }
                }
            } else if (i4 == 97) {
                g0.d dVar = (g0.d) message.obj;
                if (dVar != null) {
                    dVar.f(new TimeoutException());
                }
            } else if (i4 != 98) {
                switch (i4) {
                    case 17:
                        e eVar = (e) message.obj;
                        if (eVar != null) {
                            eVar.f(new TimeoutException());
                            return;
                        }
                        return;
                    case 18:
                        b.this.n();
                        e eVar2 = (e) message.obj;
                        int i14 = message.getData().getInt(com.clj.fastble.data.b.f9830l);
                        if (eVar2 != null) {
                            if (i14 == 0) {
                                eVar2.g();
                                return;
                            } else {
                                eVar2.f(new GattException(i14));
                                return;
                            }
                        }
                        return;
                    case 19:
                        e eVar3 = (e) message.obj;
                        byte[] byteArray3 = message.getData().getByteArray(com.clj.fastble.data.b.f9831m);
                        if (eVar3 != null) {
                            eVar3.e(byteArray3);
                            return;
                        }
                        return;
                    default:
                        switch (i4) {
                            case 33:
                                g0.c cVar = (g0.c) message.obj;
                                if (cVar != null) {
                                    cVar.f(new TimeoutException());
                                    return;
                                }
                                return;
                            case 34:
                                b.this.l();
                                g0.c cVar2 = (g0.c) message.obj;
                                int i15 = message.getData().getInt(com.clj.fastble.data.b.f9835q);
                                if (cVar2 != null) {
                                    if (i15 == 0) {
                                        cVar2.g();
                                        return;
                                    } else {
                                        cVar2.f(new GattException(i15));
                                        return;
                                    }
                                }
                                return;
                            case 35:
                                g0.c cVar3 = (g0.c) message.obj;
                                byte[] byteArray4 = message.getData().getByteArray(com.clj.fastble.data.b.f9836r);
                                if (cVar3 != null) {
                                    cVar3.e(byteArray4);
                                    return;
                                }
                                return;
                            default:
                                return;
                        }
                }
            } else {
                b.this.m();
                g0.d dVar2 = (g0.d) message.obj;
                Bundle data4 = message.getData();
                int i16 = data4.getInt(com.clj.fastble.data.b.H);
                int i17 = data4.getInt(com.clj.fastble.data.b.I);
                if (dVar2 != null) {
                    if (i16 == 0) {
                        dVar2.e(i17);
                    } else {
                        dVar2.f(new GattException(i16));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(com.clj.fastble.bluetooth.a aVar) {
        this.f9797d = aVar;
        this.f9794a = aVar.I();
    }

    private UUID e(String str) {
        if (str == null) {
            return null;
        }
        return UUID.fromString(str);
    }

    private void f(g0.c cVar, String str) {
        if (cVar != null) {
            l();
            cVar.d(str);
            cVar.c(this.f9798e);
            this.f9797d.w(str, cVar);
            Handler handler = this.f9798e;
            handler.sendMessageDelayed(handler.obtainMessage(33, cVar), com.clj.fastble.a.w().z());
        }
    }

    private void g(e eVar, String str) {
        if (eVar != null) {
            n();
            eVar.d(str);
            eVar.c(this.f9798e);
            this.f9797d.y(str, eVar);
            Handler handler = this.f9798e;
            handler.sendMessageDelayed(handler.obtainMessage(17, eVar), com.clj.fastble.a.w().z());
        }
    }

    private void h(f fVar, String str) {
        if (fVar != null) {
            p();
            fVar.d(str);
            fVar.c(this.f9798e);
            this.f9797d.z(str, fVar);
            Handler handler = this.f9798e;
            handler.sendMessageDelayed(handler.obtainMessage(65, fVar), com.clj.fastble.a.w().z());
        }
    }

    private void i(k kVar, String str) {
        if (kVar != null) {
            y();
            kVar.d(str);
            kVar.c(this.f9798e);
            this.f9797d.B(str, kVar);
            Handler handler = this.f9798e;
            handler.sendMessageDelayed(handler.obtainMessage(49, kVar), com.clj.fastble.a.w().z());
        }
    }

    private void j(g gVar) {
        if (gVar != null) {
            r();
            gVar.c(this.f9798e);
            this.f9797d.A(gVar);
            Handler handler = this.f9798e;
            handler.sendMessageDelayed(handler.obtainMessage(81, gVar), com.clj.fastble.a.w().z());
        }
    }

    private void k(g0.d dVar) {
        if (dVar != null) {
            m();
            dVar.c(this.f9798e);
            this.f9797d.x(dVar);
            Handler handler = this.f9798e;
            handler.sendMessageDelayed(handler.obtainMessage(97, dVar), com.clj.fastble.a.w().z());
        }
    }

    private boolean s(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z9, g0.c cVar) {
        byte[] bArr;
        if (bluetoothGatt != null && bluetoothGattCharacteristic != null) {
            if (!bluetoothGatt.setCharacteristicNotification(bluetoothGattCharacteristic, z9)) {
                l();
                if (cVar != null) {
                    cVar.f(new OtherException("gatt setCharacteristicNotification fail"));
                }
                return false;
            }
            BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(e(f9793f));
            if (descriptor == null) {
                l();
                if (cVar != null) {
                    cVar.f(new OtherException("descriptor equals null"));
                }
                return false;
            }
            if (z9) {
                bArr = BluetoothGattDescriptor.ENABLE_INDICATION_VALUE;
            } else {
                bArr = BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE;
            }
            descriptor.setValue(bArr);
            boolean writeDescriptor = bluetoothGatt.writeDescriptor(descriptor);
            if (!writeDescriptor) {
                l();
                if (cVar != null) {
                    cVar.f(new OtherException("gatt writeDescriptor fail"));
                }
            }
            return writeDescriptor;
        }
        l();
        if (cVar != null) {
            cVar.f(new OtherException("gatt or characteristic equal null"));
        }
        return false;
    }

    private boolean t(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z9, e eVar) {
        byte[] bArr;
        if (bluetoothGatt != null && bluetoothGattCharacteristic != null) {
            if (!bluetoothGatt.setCharacteristicNotification(bluetoothGattCharacteristic, z9)) {
                n();
                if (eVar != null) {
                    eVar.f(new OtherException("gatt setCharacteristicNotification fail"));
                }
                return false;
            }
            BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(e(f9793f));
            if (descriptor == null) {
                n();
                if (eVar != null) {
                    eVar.f(new OtherException("descriptor equals null"));
                }
                return false;
            }
            if (z9) {
                bArr = BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE;
            } else {
                bArr = BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE;
            }
            descriptor.setValue(bArr);
            boolean writeDescriptor = bluetoothGatt.writeDescriptor(descriptor);
            if (!writeDescriptor) {
                n();
                if (eVar != null) {
                    eVar.f(new OtherException("gatt writeDescriptor fail"));
                }
            }
            return writeDescriptor;
        }
        n();
        if (eVar != null) {
            eVar.f(new OtherException("gatt or characteristic equal null"));
        }
        return false;
    }

    private b v(UUID uuid, UUID uuid2) {
        BluetoothGatt bluetoothGatt;
        if (uuid != null && (bluetoothGatt = this.f9794a) != null) {
            this.f9795b = bluetoothGatt.getService(uuid);
        }
        BluetoothGattService bluetoothGattService = this.f9795b;
        if (bluetoothGattService != null && uuid2 != null) {
            this.f9796c = bluetoothGattService.getCharacteristic(uuid2);
        }
        return this;
    }

    public boolean a() {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f9796c;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() | 16) <= 0) {
            return false;
        }
        return s(this.f9794a, this.f9796c, false, null);
    }

    public boolean b() {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f9796c;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() | 16) <= 0) {
            return false;
        }
        return t(this.f9794a, this.f9796c, false, null);
    }

    public void c(g0.c cVar, String str) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f9796c;
        if (bluetoothGattCharacteristic != null && (bluetoothGattCharacteristic.getProperties() | 16) > 0) {
            f(cVar, str);
            s(this.f9794a, this.f9796c, true, cVar);
        } else if (cVar != null) {
            cVar.f(new OtherException("this characteristic not support indicate!"));
        }
    }

    public void d(e eVar, String str) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f9796c;
        if (bluetoothGattCharacteristic != null && (bluetoothGattCharacteristic.getProperties() | 16) > 0) {
            g(eVar, str);
            t(this.f9794a, this.f9796c, true, eVar);
        } else if (eVar != null) {
            eVar.f(new OtherException("this characteristic not support notify!"));
        }
    }

    public void l() {
        this.f9798e.removeMessages(33);
    }

    public void m() {
        this.f9798e.removeMessages(97);
    }

    public void n() {
        this.f9798e.removeMessages(17);
    }

    public void o(f fVar, String str) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f9796c;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() & 2) <= 0) {
            if (fVar != null) {
                fVar.e(new OtherException("this characteristic not support read!"));
                return;
            }
            return;
        }
        h(fVar, str);
        if (this.f9794a.readCharacteristic(this.f9796c)) {
            return;
        }
        p();
        if (fVar != null) {
            fVar.e(new OtherException("gatt readCharacteristic fail"));
        }
    }

    public void p() {
        this.f9798e.removeMessages(65);
    }

    public void q(g gVar) {
        j(gVar);
        if (this.f9794a.readRemoteRssi()) {
            return;
        }
        r();
        if (gVar != null) {
            gVar.e(new OtherException("gatt readRemoteRssi fail"));
        }
    }

    public void r() {
        this.f9798e.removeMessages(81);
    }

    public void u(int i4, g0.d dVar) {
        k(dVar);
        if (this.f9794a.requestMtu(i4)) {
            return;
        }
        m();
        if (dVar != null) {
            dVar.f(new OtherException("gatt requestMtu fail"));
        }
    }

    public b w(String str, String str2) {
        return v(e(str), e(str2));
    }

    public void x(byte[] bArr, k kVar, String str) {
        if (bArr == null || bArr.length <= 0) {
            if (kVar != null) {
                kVar.e(new OtherException("the data to be written is empty"));
                return;
            }
            return;
        }
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f9796c;
        if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() & 12) == 0) {
            if (kVar != null) {
                kVar.e(new OtherException("this characteristic not support write!"));
            }
        } else if (!this.f9796c.setValue(bArr)) {
            if (kVar != null) {
                kVar.e(new OtherException("Updates the locally stored value of this characteristic fail"));
            }
        } else {
            i(kVar, str);
            if (this.f9794a.writeCharacteristic(this.f9796c)) {
                return;
            }
            y();
            if (kVar != null) {
                kVar.e(new OtherException("gatt writeCharacteristic fail"));
            }
        }
    }

    public void y() {
        this.f9798e.removeMessages(49);
    }
}
