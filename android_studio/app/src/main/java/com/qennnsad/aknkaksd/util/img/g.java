package com.qennnsad.aknkaksd.util.img;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import okhttp3.OkHttpClient;

/* compiled from: ImageOkHttpClientProvider.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0007R\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/util/img/g;", "", "Lokhttp3/OkHttpClient;", "b", "Lkotlin/Lazy;", "a", "()Lokhttp3/OkHttpClient;", "client", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final g f54755a = new g();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final Lazy f54756b;

    /* compiled from: ImageOkHttpClientProvider.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lokhttp3/OkHttpClient;", "a", "()Lokhttp3/OkHttpClient;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<OkHttpClient> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f54757a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final OkHttpClient invoke() {
            return new OkHttpClient().newBuilder().build();
        }
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(a.f54757a);
        f54756b = lazy;
    }

    private g() {
    }

    private final OkHttpClient a() {
        return (OkHttpClient) f54756b.getValue();
    }

    @JvmStatic
    @m8.g
    public static final OkHttpClient b() {
        return f54755a.a();
    }
}
