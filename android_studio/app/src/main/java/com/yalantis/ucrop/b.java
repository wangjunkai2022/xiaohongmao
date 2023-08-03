package com.yalantis.ucrop;

import androidx.annotation.NonNull;
import okhttp3.OkHttpClient;

/* compiled from: OkHttpClientStore.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    public static final b f59990b = new b();

    /* renamed from: a  reason: collision with root package name */
    private OkHttpClient f59991a;

    private b() {
    }

    @NonNull
    public OkHttpClient a() {
        if (this.f59991a == null) {
            this.f59991a = new OkHttpClient();
        }
        return this.f59991a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull OkHttpClient okHttpClient) {
        this.f59991a = okHttpClient;
    }
}
