package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.NonNull;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class b implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    boolean f28962a = false;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue<IBinder> f28963b = new LinkedBlockingQueue();

    @NonNull
    @u2.a
    public IBinder a() throws InterruptedException {
        com.google.android.gms.common.internal.u.j("BlockingServiceConnection.getService() called on main thread");
        if (!this.f28962a) {
            this.f28962a = true;
            return this.f28963b.take();
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @NonNull
    @u2.a
    public IBinder b(long j4, @NonNull TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        com.google.android.gms.common.internal.u.j("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f28962a) {
            this.f28962a = true;
            IBinder poll = this.f28963b.poll(j4, timeUnit);
            if (poll != null) {
                return poll;
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        this.f28963b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
    }
}
