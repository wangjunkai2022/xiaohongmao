package dagger.hilt.android;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;

/* compiled from: ActivityRetainedLifecycle.java */
/* loaded from: classes3.dex */
public interface a {

    /* compiled from: ActivityRetainedLifecycle.java */
    /* renamed from: dagger.hilt.android.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0502a {
        void a();
    }

    @MainThread
    void a(@NonNull InterfaceC0502a listener);

    @MainThread
    void b(@NonNull InterfaceC0502a listener);
}
