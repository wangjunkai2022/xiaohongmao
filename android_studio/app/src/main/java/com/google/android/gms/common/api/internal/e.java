package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class e {

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface b<R> {
        @u2.a
        void a(@NonNull R r9);

        @u2.a
        void b(@NonNull Status status);
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static abstract class a<R extends com.google.android.gms.common.api.q, A extends a.b> extends BasePendingResult<R> implements b<R> {
        @u2.a

        /* renamed from: r  reason: collision with root package name */
        private final a.c<A> f28667r;
        @Nullable
        @u2.a

        /* renamed from: s  reason: collision with root package name */
        private final com.google.android.gms.common.api.a<?> f28668s;

        @u2.a
        @Deprecated
        protected a(@NonNull a.c<A> cVar, @NonNull com.google.android.gms.common.api.i iVar) {
            super((com.google.android.gms.common.api.i) com.google.android.gms.common.internal.u.l(iVar, "GoogleApiClient must not be null"));
            this.f28667r = (a.c) com.google.android.gms.common.internal.u.k(cVar);
            this.f28668s = null;
        }

        @u2.a
        private void B(@NonNull RemoteException remoteException) {
            b(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
        }

        @u2.a
        public final void A(@NonNull A a10) throws DeadObjectException {
            try {
                w(a10);
            } catch (DeadObjectException e4) {
                B(e4);
                throw e4;
            } catch (RemoteException e10) {
                B(e10);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.common.api.internal.e.b
        @u2.a
        public /* bridge */ /* synthetic */ void a(@NonNull Object obj) {
            super.o((com.google.android.gms.common.api.q) obj);
        }

        @Override // com.google.android.gms.common.api.internal.e.b
        @u2.a
        public final void b(@NonNull Status status) {
            com.google.android.gms.common.internal.u.b(!status.isSuccess(), "Failed result must not be success");
            R k10 = k(status);
            o(k10);
            z(k10);
        }

        @u2.a
        protected abstract void w(@NonNull A a10) throws RemoteException;

        @Nullable
        @u2.a
        public final com.google.android.gms.common.api.a<?> x() {
            return this.f28668s;
        }

        @NonNull
        @u2.a
        public final a.c<A> y() {
            return this.f28667r;
        }

        @u2.a
        protected void z(@NonNull R r9) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @u2.a
        public a(@NonNull com.google.android.gms.common.api.a<?> aVar, @NonNull com.google.android.gms.common.api.i iVar) {
            super((com.google.android.gms.common.api.i) com.google.android.gms.common.internal.u.l(iVar, "GoogleApiClient must not be null"));
            com.google.android.gms.common.internal.u.l(aVar, "Api must not be null");
            this.f28667r = (a.c<A>) aVar.b();
            this.f28668s = aVar;
        }

        @u2.a
        @VisibleForTesting
        protected a(@NonNull BasePendingResult.a<R> aVar) {
            super(aVar);
            this.f28667r = new a.c<>();
            this.f28668s = null;
        }
    }
}
