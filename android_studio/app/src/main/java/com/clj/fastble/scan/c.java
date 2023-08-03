package com.clj.fastble.scan;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.data.BleScanState;
import g0.h;
import g0.i;
import g0.j;
import java.util.List;
import java.util.UUID;

/* compiled from: BleScanner.java */
@TargetApi(18)
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private BleScanState f9885a = BleScanState.STATE_IDLE;

    /* renamed from: b  reason: collision with root package name */
    private com.clj.fastble.scan.a f9886b = new a();

    /* compiled from: BleScanner.java */
    /* loaded from: classes.dex */
    class a extends com.clj.fastble.scan.a {

        /* compiled from: BleScanner.java */
        /* renamed from: com.clj.fastble.scan.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0072a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f9888a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h f9889b;

            RunnableC0072a(List list, h hVar) {
                this.f9888a = list;
                this.f9889b = hVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.clj.fastble.a.w().c((BleDevice) this.f9888a.get(0), this.f9889b);
            }
        }

        a() {
        }

        @Override // com.clj.fastble.scan.a
        public void j(BleDevice bleDevice) {
            if (c.this.f9886b.g()) {
                h hVar = (h) c.this.f9886b.e();
                if (hVar != null) {
                    hVar.g(bleDevice);
                    return;
                }
                return;
            }
            i iVar = (i) c.this.f9886b.e();
            if (iVar != null) {
                iVar.c(bleDevice);
            }
        }

        @Override // com.clj.fastble.scan.a
        public void k(List<BleDevice> list) {
            if (c.this.f9886b.g()) {
                h hVar = (h) c.this.f9886b.e();
                if (list == null || list.size() < 1) {
                    if (hVar != null) {
                        hVar.h(null);
                        return;
                    }
                    return;
                }
                if (hVar != null) {
                    hVar.h(list.get(0));
                }
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0072a(list, hVar), 100L);
                return;
            }
            i iVar = (i) c.this.f9886b.e();
            if (iVar != null) {
                iVar.d(list);
            }
        }

        @Override // com.clj.fastble.scan.a
        public void l(boolean z9) {
            j e4 = c.this.f9886b.e();
            if (e4 != null) {
                e4.a(z9);
            }
        }

        @Override // com.clj.fastble.scan.a
        public void m(BleDevice bleDevice) {
            j e4 = c.this.f9886b.e();
            if (e4 != null) {
                e4.b(bleDevice);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BleScanner.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final c f9891a = new c();

        private b() {
        }
    }

    public static c b() {
        return b.f9891a;
    }

    private synchronized void f(UUID[] uuidArr, String[] strArr, String str, boolean z9, boolean z10, long j4, j jVar) {
        BleScanState bleScanState = this.f9885a;
        BleScanState bleScanState2 = BleScanState.STATE_IDLE;
        if (bleScanState != bleScanState2) {
            com.clj.fastble.utils.a.d("scan action already exists, complete the previous scan action first");
            if (jVar != null) {
                jVar.a(false);
            }
            return;
        }
        this.f9886b.n(strArr, str, z9, z10, j4, jVar);
        boolean startLeScan = com.clj.fastble.a.w().o().startLeScan(uuidArr, this.f9886b);
        if (startLeScan) {
            bleScanState2 = BleScanState.STATE_SCANNING;
        }
        this.f9885a = bleScanState2;
        this.f9886b.h(startLeScan);
    }

    public BleScanState c() {
        return this.f9885a;
    }

    public void d(UUID[] uuidArr, String[] strArr, String str, boolean z9, long j4, i iVar) {
        f(uuidArr, strArr, str, z9, false, j4, iVar);
    }

    public void e(UUID[] uuidArr, String[] strArr, String str, boolean z9, long j4, h hVar) {
        f(uuidArr, strArr, str, z9, true, j4, hVar);
    }

    public synchronized void g() {
        com.clj.fastble.a.w().o().stopLeScan(this.f9886b);
        this.f9885a = BleScanState.STATE_IDLE;
        this.f9886b.i();
    }
}
