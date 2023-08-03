package com.qennnsad.aknkaksd.util.translation;

import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.translation.Translator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TranslatorBackend.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0017\u0010\u0018J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002JN\u0010\r\u001a\u00020\t2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000bH\u0007R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0004\u0010\u0012R$\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0014R\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/util/translation/d;", "", "", "lang", "b", "sourceLan", "targetLan", s2.d.f93273b, "Lkotlin/Function1;", "", "onTranslationComplete", "Lkotlin/Function0;", "onFallback", "c", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Ljava/lang/String;", "TAG", "Lkotlin/jvm/functions/Function1;", "d", "Lkotlin/jvm/functions/Function0;", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m f55068a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f55069b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private Function1<? super String, Unit> f55070c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Function0<Unit> f55071d;

    /* compiled from: TranslatorBackend.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\n"}, d2 = {"com/qennnsad/aknkaksd/util/translation/d$a", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", io.sentry.protocol.j.f83728f, "", "f", "", "throwable", "onError", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<String>> {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f55073f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Function1<String, Unit> f55074g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(Function0<Unit> function0, Function1<? super String, Unit> function1) {
            super(null);
            this.f55073f = function0;
            this.f55074g = function1;
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        public void f(@m8.h BaseResponse<String> baseResponse) {
            String data;
            Unit unit;
            if (baseResponse != null && (data = baseResponse.getData()) != null) {
                d dVar = d.this;
                Function0<Unit> function0 = this.f55073f;
                Function1<String, Unit> function1 = this.f55074g;
                String str = dVar.f55069b;
                o0.a(str, "Translation: " + data);
                if (data.length() == 0) {
                    o0.n(dVar.f55069b, "Empty translation received. Fallback...");
                    if (function0 != null) {
                        function0.invoke();
                    }
                }
                if (function1 != null) {
                    function1.invoke(data);
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit != null) {
                    return;
                }
            }
            d dVar2 = d.this;
            Function0<Unit> function02 = this.f55073f;
            o0.n(dVar2.f55069b, "Null translation received. Fallback...");
            if (function02 != null) {
                function02.invoke();
                Unit unit2 = Unit.INSTANCE;
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
        public void onError(@m8.g Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            super.onError(throwable);
            o0.d(d.this.f55069b, "Error requesting translation", throwable);
            com.qennnsad.aknkaksd.analytics.error.b.f47679a.a().b(throwable);
            Function0<Unit> function0 = this.f55073f;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    @u7.a
    public d(@m8.g m sourceFactory) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f55068a = sourceFactory;
        this.f55069b = "TranslatorBackend";
    }

    private final String b(String str) {
        Translator.a aVar = Translator.f55053a;
        return Intrinsics.areEqual(str, aVar.a()) ? aVar.b() : str;
    }

    public static /* synthetic */ void g(d dVar, String str, String str2, String str3, Function1 function1, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = null;
        }
        dVar.c(str, (i4 & 2) != 0 ? "" : str2, (i4 & 4) != 0 ? "" : str3, function1, function0);
    }

    @JvmOverloads
    public final void c(@m8.h String str, @m8.g String targetLan, @m8.g String query, @m8.h Function1<? super String, Unit> function1, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(targetLan, "targetLan");
        Intrinsics.checkNotNullParameter(query, "query");
        String str2 = this.f55069b;
        o0.a(str2, "sourceLan: " + str + ", targetLn: " + targetLan + ", query: " + query);
        this.f55070c = function1;
        this.f55071d = function0;
        m.g(this.f55068a, false, 1, null).h(b(str), query, b(targetLan)).subscribe(new a(function0, function1));
    }

    @JvmOverloads
    public final void d(@m8.h String str, @m8.g String targetLan, @m8.h Function1<? super String, Unit> function1, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(targetLan, "targetLan");
        g(this, str, targetLan, null, function1, function0, 4, null);
    }

    @JvmOverloads
    public final void e(@m8.h String str, @m8.h Function1<? super String, Unit> function1, @m8.h Function0<Unit> function0) {
        g(this, str, null, null, function1, function0, 6, null);
    }

    @JvmOverloads
    public final void f(@m8.h Function1<? super String, Unit> function1, @m8.h Function0<Unit> function0) {
        g(this, null, null, null, function1, function0, 7, null);
    }
}
