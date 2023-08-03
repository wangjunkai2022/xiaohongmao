package com.google.firebase.components;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventBus.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Map.Entry f35472a;

    /* renamed from: b  reason: collision with root package name */
    private final n3.a f35473b;

    private u(Map.Entry entry, n3.a aVar) {
        this.f35472a = entry;
        this.f35473b = aVar;
    }

    public static Runnable a(Map.Entry entry, n3.a aVar) {
        return new u(entry, aVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        ((n3.b) this.f35472a.getKey()).a(this.f35473b);
    }
}
