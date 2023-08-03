package com.google.firebase.components;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComponentDiscovery.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class h implements o3.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f35438a;

    private h(String str) {
        this.f35438a = str;
    }

    public static o3.b a(String str) {
        return new h(str);
    }

    @Override // o3.b
    public Object get() {
        k d4;
        d4 = i.d(this.f35438a);
        return d4;
    }
}
