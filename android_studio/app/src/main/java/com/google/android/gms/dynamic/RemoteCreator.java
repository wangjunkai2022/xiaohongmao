package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.u;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class RemoteCreator<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f29304a;

    /* renamed from: b  reason: collision with root package name */
    private T f29305b;

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class RemoteCreatorException extends Exception {
        @u2.a
        public RemoteCreatorException(@NonNull String str) {
            super(str);
        }

        @u2.a
        public RemoteCreatorException(@NonNull String str, @NonNull Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public RemoteCreator(@NonNull String str) {
        this.f29304a = str;
    }

    @NonNull
    @u2.a
    protected abstract T a(@NonNull IBinder iBinder);

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    @u2.a
    public final T b(@NonNull Context context) throws RemoteCreatorException {
        if (this.f29305b == null) {
            u.k(context);
            Context i4 = com.google.android.gms.common.h.i(context);
            if (i4 != null) {
                try {
                    this.f29305b = a((IBinder) i4.getClassLoader().loadClass(this.f29304a).newInstance());
                } catch (ClassNotFoundException e4) {
                    throw new RemoteCreatorException("Could not load creator class.", e4);
                } catch (IllegalAccessException e10) {
                    throw new RemoteCreatorException("Could not access creator.", e10);
                } catch (InstantiationException e11) {
                    throw new RemoteCreatorException("Could not instantiate creator.", e11);
                }
            } else {
                throw new RemoteCreatorException("Could not get remote context.");
            }
        }
        return this.f29305b;
    }
}
