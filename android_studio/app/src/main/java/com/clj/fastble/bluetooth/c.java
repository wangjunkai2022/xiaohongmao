package com.clj.fastble.bluetooth;

import android.bluetooth.BluetoothDevice;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.utils.BleLruHashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: MultipleBluetoothController.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final BleLruHashMap<String, com.clj.fastble.bluetooth.a> f9800a = new BleLruHashMap<>(com.clj.fastble.a.w().x());

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, com.clj.fastble.bluetooth.a> f9801b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MultipleBluetoothController.java */
    /* loaded from: classes.dex */
    public class a implements Comparator<com.clj.fastble.bluetooth.a> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(com.clj.fastble.bluetooth.a aVar, com.clj.fastble.bluetooth.a aVar2) {
            return aVar.K().compareToIgnoreCase(aVar2.K());
        }
    }

    public synchronized void a(com.clj.fastble.bluetooth.a aVar) {
        if (aVar == null) {
            return;
        }
        if (!this.f9800a.containsKey(aVar.K())) {
            this.f9800a.put(aVar.K(), aVar);
        }
    }

    public synchronized com.clj.fastble.bluetooth.a b(BleDevice bleDevice) {
        com.clj.fastble.bluetooth.a aVar;
        aVar = new com.clj.fastble.bluetooth.a(bleDevice);
        if (!this.f9801b.containsKey(aVar.K())) {
            this.f9801b.put(aVar.K(), aVar);
        }
        return aVar;
    }

    public synchronized void c() {
        for (Map.Entry<String, com.clj.fastble.bluetooth.a> entry : this.f9800a.entrySet()) {
            entry.getValue().F();
        }
        this.f9800a.clear();
        for (Map.Entry<String, com.clj.fastble.bluetooth.a> entry2 : this.f9801b.entrySet()) {
            entry2.getValue().F();
        }
        this.f9801b.clear();
    }

    public synchronized void d(BleDevice bleDevice) {
        if (j(bleDevice)) {
            f(bleDevice).G();
        }
    }

    public synchronized void e() {
        for (Map.Entry<String, com.clj.fastble.bluetooth.a> entry : this.f9800a.entrySet()) {
            entry.getValue().G();
        }
        this.f9800a.clear();
    }

    public synchronized com.clj.fastble.bluetooth.a f(BleDevice bleDevice) {
        if (bleDevice != null) {
            if (this.f9800a.containsKey(bleDevice.getKey())) {
                return this.f9800a.get(bleDevice.getKey());
            }
        }
        return null;
    }

    public synchronized List<com.clj.fastble.bluetooth.a> g() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.f9800a.values());
        Collections.sort(arrayList, new a());
        return arrayList;
    }

    public synchronized List<BleDevice> h() {
        ArrayList arrayList;
        k();
        arrayList = new ArrayList();
        for (com.clj.fastble.bluetooth.a aVar : g()) {
            if (aVar != null) {
                arrayList.add(aVar.J());
            }
        }
        return arrayList;
    }

    public synchronized boolean i(BluetoothDevice bluetoothDevice) {
        boolean z9;
        if (bluetoothDevice != null) {
            BleLruHashMap<String, com.clj.fastble.bluetooth.a> bleLruHashMap = this.f9800a;
            StringBuilder sb = new StringBuilder();
            sb.append(bluetoothDevice.getName());
            sb.append(bluetoothDevice.getAddress());
            z9 = bleLruHashMap.containsKey(sb.toString()) ? true : true;
        }
        z9 = false;
        return z9;
    }

    public synchronized boolean j(BleDevice bleDevice) {
        boolean z9;
        if (bleDevice != null) {
            z9 = this.f9800a.containsKey(bleDevice.getKey()) ? true : true;
        }
        z9 = false;
        return z9;
    }

    public void k() {
        List<com.clj.fastble.bluetooth.a> g4 = g();
        for (int i4 = 0; g4 != null && i4 < g4.size(); i4++) {
            com.clj.fastble.bluetooth.a aVar = g4.get(i4);
            if (!com.clj.fastble.a.w().J(aVar.J())) {
                l(aVar);
            }
        }
    }

    public synchronized void l(com.clj.fastble.bluetooth.a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f9800a.containsKey(aVar.K())) {
            this.f9800a.remove(aVar.K());
        }
    }

    public synchronized void m(com.clj.fastble.bluetooth.a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f9801b.containsKey(aVar.K())) {
            this.f9801b.remove(aVar.K());
        }
    }
}
