package com.google.common.cache;

import com.google.common.base.a0;
import java.util.concurrent.Executor;

/* compiled from: RemovalListeners.java */
@h3.c
/* loaded from: classes2.dex */
public final class p {

    /* compiled from: RemovalListeners.java */
    /* loaded from: classes2.dex */
    static class a implements o<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Executor f32563a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ o f32564b;

        /* compiled from: RemovalListeners.java */
        /* renamed from: com.google.common.cache.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0213a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RemovalNotification f32565a;

            RunnableC0213a(RemovalNotification removalNotification) {
                this.f32565a = removalNotification;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f32564b.a(this.f32565a);
            }
        }

        a(Executor executor, o oVar) {
            this.f32563a = executor;
            this.f32564b = oVar;
        }

        @Override // com.google.common.cache.o
        public void a(RemovalNotification<K, V> removalNotification) {
            this.f32563a.execute(new RunnableC0213a(removalNotification));
        }
    }

    private p() {
    }

    public static <K, V> o<K, V> a(o<K, V> oVar, Executor executor) {
        a0.E(oVar);
        a0.E(executor);
        return new a(executor, oVar);
    }
}
