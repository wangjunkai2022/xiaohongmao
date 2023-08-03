package com.google.mlkit.nl.languageid.internal;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.mlkit_language_id_common.a7;
import com.google.android.gms.internal.mlkit_language_id_common.a8;
import com.google.android.gms.internal.mlkit_language_id_common.ba;
import com.google.android.gms.internal.mlkit_language_id_common.c8;
import com.google.android.gms.internal.mlkit_language_id_common.cb;
import com.google.android.gms.internal.mlkit_language_id_common.d8;
import com.google.android.gms.internal.mlkit_language_id_common.g8;
import com.google.android.gms.internal.mlkit_language_id_common.ka;
import com.google.android.gms.internal.mlkit_language_id_common.ma;
import com.google.android.gms.internal.mlkit_language_id_common.na;
import com.google.android.gms.internal.mlkit_language_id_common.q6;
import com.google.android.gms.internal.mlkit_language_id_common.va;
import com.google.android.gms.internal.mlkit_language_id_common.w6;
import com.google.android.gms.internal.mlkit_language_id_common.w7;
import com.google.android.gms.internal.mlkit_language_id_common.x7;
import com.google.android.gms.internal.mlkit_language_id_common.y6;
import com.google.android.gms.internal.mlkit_language_id_common.zzht;
import com.google.android.gms.internal.mlkit_language_id_common.zzhu;
import com.google.android.gms.internal.mlkit_language_id_common.zzhv;
import com.google.mlkit.common.sdkinternal.k;
import com.google.mlkit.nl.languageid.IdentifiedLanguage;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public class LanguageIdentifierImpl implements com.google.mlkit.nl.languageid.c {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.mlkit.nl.languageid.b f35935a;

    /* renamed from: b  reason: collision with root package name */
    private final ka f35936b;

    /* renamed from: c  reason: collision with root package name */
    private final ma f35937c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f35938d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicReference f35939e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.gms.tasks.b f35940f = new com.google.android.gms.tasks.b();

    /* renamed from: g  reason: collision with root package name */
    private final zzht f35941g;

    /* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
    @u2.a
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final ka f35942a;

        /* renamed from: b  reason: collision with root package name */
        private final i f35943b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.mlkit.common.sdkinternal.f f35944c;

        public a(i iVar, com.google.mlkit.common.sdkinternal.f fVar) {
            this.f35943b = iVar;
            this.f35944c = fVar;
            this.f35942a = va.b(true != iVar.m() ? "play-services-mlkit-language-id" : "language-id");
        }

        @NonNull
        @u2.a
        public com.google.mlkit.nl.languageid.c a(@NonNull com.google.mlkit.nl.languageid.b bVar) {
            this.f35943b.l(bVar);
            return LanguageIdentifierImpl.a(bVar, this.f35943b, this.f35942a, this.f35944c);
        }
    }

    private LanguageIdentifierImpl(com.google.mlkit.nl.languageid.b bVar, i iVar, ka kaVar, Executor executor) {
        this.f35935a = bVar;
        this.f35936b = kaVar;
        this.f35938d = executor;
        this.f35939e = new AtomicReference(iVar);
        this.f35941g = iVar.m() ? zzht.TYPE_THICK : zzht.TYPE_THIN;
        this.f35937c = ma.a(k.c().b());
    }

    @VisibleForTesting
    public static com.google.mlkit.nl.languageid.c a(com.google.mlkit.nl.languageid.b bVar, i iVar, ka kaVar, com.google.mlkit.common.sdkinternal.f fVar) {
        LanguageIdentifierImpl languageIdentifierImpl = new LanguageIdentifierImpl(bVar, iVar, kaVar, fVar.a(bVar.b()));
        ka kaVar2 = languageIdentifierImpl.f35936b;
        a7 a7Var = new a7();
        a7Var.c(languageIdentifierImpl.f35941g);
        w7 w7Var = new w7();
        w7Var.f(k(languageIdentifierImpl.f35935a.a()));
        a7Var.e(w7Var.i());
        kaVar2.c(na.f(a7Var, 1), zzhv.ON_DEVICE_LANGUAGE_IDENTIFICATION_CREATE);
        ((i) languageIdentifierImpl.f35939e.get()).d();
        return languageIdentifierImpl;
    }

    private final void i(long j4, boolean z9, @Nullable g8 g8Var, @Nullable c8 c8Var, zzhu zzhuVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - j4;
        this.f35936b.e(new h(this, elapsedRealtime, z9, zzhuVar, g8Var, c8Var), zzhv.ON_DEVICE_LANGUAGE_IDENTIFICATION_DETECT);
        long currentTimeMillis = System.currentTimeMillis();
        this.f35937c.c(this.f35941g == zzht.TYPE_THICK ? 24603 : 24602, zzhuVar.zza(), currentTimeMillis - elapsedRealtime, currentTimeMillis);
    }

    private static final y6 k(@Nullable Float f10) {
        w6 w6Var = new w6();
        w6Var.a(Float.valueOf(f10 == null ? -1.0f : f10.floatValue()));
        return w6Var.b();
    }

    @Override // com.google.mlkit.nl.languageid.c
    @NonNull
    public final com.google.android.gms.tasks.k<List<IdentifiedLanguage>> Z(@NonNull final String str) {
        u.l(str, "Text can not be null");
        final i iVar = (i) this.f35939e.get();
        u.r(iVar != null, "LanguageIdentification has been closed");
        final boolean b10 = true ^ iVar.b();
        return iVar.a(this.f35938d, new Callable() { // from class: com.google.mlkit.nl.languageid.internal.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return LanguageIdentifierImpl.this.h(iVar, str, b10);
            }
        }, this.f35940f.b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ba b(long j4, boolean z9, zzhu zzhuVar, g8 g8Var, c8 c8Var) {
        w7 w7Var = new w7();
        w7Var.f(k(this.f35935a.a()));
        q6 q6Var = new q6();
        q6Var.a(Long.valueOf(j4));
        q6Var.c(Boolean.valueOf(z9));
        q6Var.b(zzhuVar);
        w7Var.e(q6Var.d());
        if (g8Var != null) {
            w7Var.d(g8Var);
        }
        if (c8Var != null) {
            w7Var.c(c8Var);
        }
        a7 a7Var = new a7();
        a7Var.c(this.f35941g);
        a7Var.e(w7Var.i());
        return na.e(a7Var);
    }

    @Override // com.google.mlkit.nl.languageid.c, java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void close() {
        i iVar = (i) this.f35939e.getAndSet(null);
        if (iVar == null) {
            return;
        }
        this.f35940f.a();
        iVar.f(this.f35938d);
        ka kaVar = this.f35936b;
        a7 a7Var = new a7();
        a7Var.c(this.f35941g);
        w7 w7Var = new w7();
        w7Var.f(k(this.f35935a.a()));
        a7Var.e(w7Var.i());
        kaVar.c(na.f(a7Var, 1), zzhv.ON_DEVICE_LANGUAGE_IDENTIFICATION_CLOSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String d(i iVar, String str, boolean z9) throws Exception {
        c8 c10;
        Float a10 = this.f35935a.a();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            String j4 = iVar.j(str.substring(0, Math.min(str.length(), 200)), a10 != null ? a10.floatValue() : 0.5f);
            if (j4 == null) {
                c10 = null;
            } else {
                a8 a8Var = new a8();
                x7 x7Var = new x7();
                x7Var.b(j4);
                a8Var.b(x7Var.c());
                c10 = a8Var.c();
            }
            i(elapsedRealtime, z9, null, c10, zzhu.NO_ERROR);
            return j4;
        } catch (RuntimeException e4) {
            i(elapsedRealtime, z9, null, null, zzhu.UNKNOWN_ERROR);
            throw e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ List h(i iVar, String str, boolean z9) throws Exception {
        Float a10 = this.f35935a.a();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            List<IdentifiedLanguage> k10 = iVar.k(str.substring(0, Math.min(str.length(), 200)), a10 != null ? a10.floatValue() : 0.01f);
            cb cbVar = new cb();
            for (IdentifiedLanguage identifiedLanguage : k10) {
                x7 x7Var = new x7();
                x7Var.b(identifiedLanguage.b());
                x7Var.a(Float.valueOf(identifiedLanguage.a()));
                cbVar.c(x7Var.c());
            }
            d8 d8Var = new d8();
            d8Var.b(cbVar.d());
            i(elapsedRealtime, z9, d8Var.c(), null, zzhu.NO_ERROR);
            return k10;
        } catch (RuntimeException e4) {
            i(elapsedRealtime, z9, null, null, zzhu.UNKNOWN_ERROR);
            throw e4;
        }
    }

    @Override // com.google.mlkit.nl.languageid.c
    @NonNull
    public final com.google.android.gms.tasks.k<String> i0(@NonNull final String str) {
        u.l(str, "Text can not be null");
        final i iVar = (i) this.f35939e.get();
        u.r(iVar != null, "LanguageIdentification has been closed");
        final boolean b10 = true ^ iVar.b();
        return iVar.a(this.f35938d, new Callable() { // from class: com.google.mlkit.nl.languageid.internal.g
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return LanguageIdentifierImpl.this.d(iVar, str, b10);
            }
        }, this.f35940f.b());
    }
}
