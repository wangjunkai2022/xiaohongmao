package com.iab.omid.library.giphy.b;

import a.f0;
import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.iab.omid.library.giphy.adsession.g;

/* loaded from: classes2.dex */
public class b {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: f  reason: collision with root package name */
    private static b f39375f = new b();

    /* renamed from: a  reason: collision with root package name */
    private Context f39376a;

    /* renamed from: b  reason: collision with root package name */
    private BroadcastReceiver f39377b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f39378c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f39379d;

    /* renamed from: e  reason: collision with root package name */
    private InterfaceC0296b f39380e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            KeyguardManager keyguardManager;
            if (intent == null) {
                return;
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                b.this.e(true);
            } else if (!"android.intent.action.USER_PRESENT".equals(intent.getAction()) && (!"android.intent.action.SCREEN_ON".equals(intent.getAction()) || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null || keyguardManager.inKeyguardRestrictedInputMode())) {
            } else {
                b.this.e(false);
            }
        }
    }

    /* renamed from: com.iab.omid.library.giphy.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0296b {
        void a(boolean z9);
    }

    private b() {
    }

    public static b a() {
        return f39375f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(boolean z9) {
        if (this.f39379d != z9) {
            this.f39379d = z9;
            if (this.f39378c) {
                k();
                InterfaceC0296b interfaceC0296b = this.f39380e;
                if (interfaceC0296b != null) {
                    interfaceC0296b.a(h());
                }
            }
        }
    }

    private void i() {
        this.f39377b = new a();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f39376a.registerReceiver(this.f39377b, intentFilter);
    }

    private void j() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.f39376a;
        if (context == null || (broadcastReceiver = this.f39377b) == null) {
            return;
        }
        context.unregisterReceiver(broadcastReceiver);
        this.f39377b = null;
    }

    private void k() {
        boolean z9 = !this.f39379d;
        for (g gVar : com.iab.omid.library.giphy.b.a.a().c()) {
            gVar.f().l(z9);
        }
    }

    public void b(@f0 Context context) {
        this.f39376a = context.getApplicationContext();
    }

    public void c(InterfaceC0296b interfaceC0296b) {
        this.f39380e = interfaceC0296b;
    }

    public void f() {
        i();
        this.f39378c = true;
        k();
    }

    public void g() {
        j();
        this.f39378c = false;
        this.f39379d = false;
        this.f39380e = null;
    }

    public boolean h() {
        return !this.f39379d;
    }
}
