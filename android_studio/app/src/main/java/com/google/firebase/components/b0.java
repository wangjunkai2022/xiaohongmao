package com.google.firebase.components;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import o3.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OptionalProvider.java */
/* loaded from: classes2.dex */
public class b0<T> implements o3.b<T>, o3.a<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final a.InterfaceC0792a<Object> f35410c = z.b();

    /* renamed from: d  reason: collision with root package name */
    private static final o3.b<Object> f35411d = a0.a();
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private a.InterfaceC0792a<T> f35412a;

    /* renamed from: b  reason: collision with root package name */
    private volatile o3.b<T> f35413b;

    private b0(a.InterfaceC0792a<T> interfaceC0792a, o3.b<T> bVar) {
        this.f35412a = interfaceC0792a;
        this.f35413b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b0<T> b() {
        return new b0<>(f35410c, f35411d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(o3.b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object d() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(a.InterfaceC0792a interfaceC0792a, a.InterfaceC0792a interfaceC0792a2, o3.b bVar) {
        interfaceC0792a.a(bVar);
        interfaceC0792a2.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b0<T> f(o3.b<T> bVar) {
        return new b0<>(null, bVar);
    }

    @Override // o3.a
    public void a(@NonNull a.InterfaceC0792a<T> interfaceC0792a) {
        o3.b<T> bVar;
        o3.b<T> bVar2 = this.f35413b;
        o3.b<Object> bVar3 = f35411d;
        if (bVar2 != bVar3) {
            interfaceC0792a.a(bVar2);
            return;
        }
        o3.b<T> bVar4 = null;
        synchronized (this) {
            bVar = this.f35413b;
            if (bVar != bVar3) {
                bVar4 = bVar;
            } else {
                this.f35412a = y.b(this.f35412a, interfaceC0792a);
            }
        }
        if (bVar4 != null) {
            interfaceC0792a.a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(o3.b<T> bVar) {
        a.InterfaceC0792a<T> interfaceC0792a;
        if (this.f35413b == f35411d) {
            synchronized (this) {
                interfaceC0792a = this.f35412a;
                this.f35412a = null;
                this.f35413b = bVar;
            }
            interfaceC0792a.a(bVar);
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }

    @Override // o3.b
    public T get() {
        return this.f35413b.get();
    }
}
