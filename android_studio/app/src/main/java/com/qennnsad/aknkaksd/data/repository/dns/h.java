package com.qennnsad.aknkaksd.data.repository.dns;

import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.util.o0;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OverseasDetector.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0019B\u0011\b\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\u0007\u001a\u00020\u00052\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004J\u0006\u0010\b\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0005R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001c\u0010\u0011\u001a\b\u0018\u00010\u000eR\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/dns/h;", "", "", "e", "Lkotlin/Function1;", "", "onComplete", "g", ContextChain.TAG_INFRA, "f", "", "b", "Ljava/lang/String;", "TAG", "Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;", "c", "Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;", "googleApiAvailableThread", "d", "Ljava/lang/Boolean;", "googleApiAvailable", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f47729a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f47730b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private a f47731c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Boolean f47732d;

    @u7.a
    public h(@m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f47729a = localDataManager;
        this.f47730b = "OverseasDetector";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean h(h hVar, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function1 = null;
        }
        return hVar.g(function1);
    }

    public final void e() {
        i();
    }

    public final boolean f() {
        try {
            URLConnection openConnection = new URL("https://play.google.com").openConnection();
            Intrinsics.checkNotNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setConnectTimeout(1000);
            httpURLConnection.connect();
            return httpURLConnection.getResponseCode() == 200;
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public final boolean g(@m8.h Function1<? super Boolean, Unit> function1) {
        Boolean bool = this.f47732d;
        if (bool != null) {
            boolean booleanValue = bool.booleanValue();
            if (function1 != null) {
                function1.invoke(Boolean.valueOf(booleanValue));
            }
            return booleanValue;
        }
        a aVar = this.f47731c;
        if (aVar != null && function1 != null) {
            aVar.b(function1);
            return false;
        }
        throw new IllegalStateException("GoogleApiAvailableThread didn't run: make sure `refreshGoogleAvailabilityStatus()` was invoked.");
    }

    public final void i() {
        a aVar = new a(this, null, 1, null);
        aVar.start();
        this.f47731c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: OverseasDetector.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R0\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0006\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/dns/h$a;", "Ljava/lang/Thread;", "", "run", "Lkotlin/Function1;", "", "a", "Lkotlin/jvm/functions/Function1;", "()Lkotlin/jvm/functions/Function1;", "b", "(Lkotlin/jvm/functions/Function1;)V", "onComplete", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends Thread {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private Function1<? super Boolean, Unit> f47733a;

        public a(@m8.h Function1<? super Boolean, Unit> function1) {
            this.f47733a = function1;
        }

        @m8.h
        public final Function1<Boolean, Unit> a() {
            return this.f47733a;
        }

        public final void b(@m8.h Function1<? super Boolean, Unit> function1) {
            this.f47733a = function1;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            o0.g(h.this.f47730b, "Refreshing Google API availability status...");
            if (h.this.f47729a.i() == DnsResolver.ForcedServerType.IN_CHINA) {
                o0.g(h.this.f47730b, "Forced China Config: Google API unavailable");
                h hVar = h.this;
                Boolean bool = Boolean.FALSE;
                hVar.f47732d = bool;
                Function1<? super Boolean, Unit> function1 = this.f47733a;
                if (function1 != null) {
                    function1.invoke(bool);
                    return;
                }
                return;
            }
            boolean f10 = h.this.f();
            h hVar2 = h.this;
            hVar2.f47732d = Boolean.valueOf(f10);
            String str = hVar2.f47730b;
            o0.g(str, "Google API available: " + f10);
            Function1<? super Boolean, Unit> function12 = this.f47733a;
            if (function12 != null) {
                function12.invoke(Boolean.valueOf(f10));
            }
            h.this.f47731c = null;
        }

        public /* synthetic */ a(h hVar, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? null : function1);
        }
    }
}
