package g0;

import android.os.Handler;

/* compiled from: BleBaseCallback.java */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private String f67797a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f67798b;

    public Handler a() {
        return this.f67798b;
    }

    public String b() {
        return this.f67797a;
    }

    public void c(Handler handler) {
        this.f67798b = handler;
    }

    public void d(String str) {
        this.f67797a = str;
    }
}
