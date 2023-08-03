package com.qennnsad.aknkaksd.util.translation;

import android.os.Handler;
import android.os.Looper;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.translation.Translator;
import com.qennnsad.aknkaksd.util.translation.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.OkHttpClient;

/* compiled from: TranslatorRapid.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u001d\u0010\u001eJ&\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002J.\u0010\n\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0016R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/util/translation/h;", "Lcom/qennnsad/aknkaksd/util/translation/Translator;", "", "origText", "Lkotlin/Function1;", "", "onTranslationComplete", "g", "Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;", "direction", "a", "Lcom/qennnsad/aknkaksd/util/translation/d;", "b", "Lcom/qennnsad/aknkaksd/util/translation/d;", "translatorBackend", "c", "Ljava/lang/String;", "TAG", "Landroid/os/Handler;", "d", "Lkotlin/Lazy;", "j", "()Landroid/os/Handler;", "handler", "Lokhttp3/OkHttpClient;", "e", ContextChain.TAG_INFRA, "()Lokhttp3/OkHttpClient;", "client", "<init>", "(Lcom/qennnsad/aknkaksd/util/translation/d;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h implements Translator {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final d f55078b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final String f55079c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f55080d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Lazy f55081e;

    /* compiled from: TranslatorRapid.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lokhttp3/OkHttpClient;", "a", "()Lokhttp3/OkHttpClient;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<OkHttpClient> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f55082a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final OkHttpClient invoke() {
            return new OkHttpClient();
        }
    }

    /* compiled from: TranslatorRapid.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroid/os/Handler;", "a", "()Landroid/os/Handler;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<Handler> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f55083a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    /* compiled from: TranslatorRapid.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "detectedLan", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function1<String, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55085b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<String, Unit> f55086c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f55087d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TranslatorRapid.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "result", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<String, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h f55088a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Function1<String, Unit> f55089b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(h hVar, Function1<? super String, Unit> function1) {
                super(1);
                this.f55088a = hVar;
                this.f55089b = function1;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void b(Function1 function1, String result) {
                Intrinsics.checkNotNullParameter(result, "$result");
                if (function1 != null) {
                    function1.invoke(result);
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.g final String result) {
                Intrinsics.checkNotNullParameter(result, "result");
                Handler j4 = this.f55088a.j();
                final Function1<String, Unit> function1 = this.f55089b;
                j4.post(new Runnable() { // from class: com.qennnsad.aknkaksd.util.translation.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.c.a.b(Function1.this, result);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TranslatorRapid.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h f55090a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f55091b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Function1<String, Unit> f55092c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(h hVar, String str, Function1<? super String, Unit> function1) {
                super(0);
                this.f55090a = hVar;
                this.f55091b = str;
                this.f55092c = function1;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.f55090a.g(this.f55091b, this.f55092c);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(String str, Function1<? super String, Unit> function1, String str2) {
            super(1);
            this.f55085b = str;
            this.f55086c = function1;
            this.f55087d = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(h this$0, String str, String str2, String origText, Function1 function1) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(origText, "$origText");
            this$0.f55078b.c(str, str2, origText, new a(this$0, function1), new b(this$0, origText, function1));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.h final String str) {
            String str2 = h.this.f55079c;
            o0.a(str2, "Source Lang: " + str);
            String str3 = h.this.f55079c;
            o0.a(str3, "Target Lang: " + this.f55085b);
            if (!Intrinsics.areEqual(str, this.f55085b) && this.f55085b != null) {
                final h hVar = h.this;
                final String str4 = this.f55085b;
                final String str5 = this.f55087d;
                final Function1<String, Unit> function1 = this.f55086c;
                new Thread(new Runnable() { // from class: com.qennnsad.aknkaksd.util.translation.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.c.b(h.this, str, str4, str5, function1);
                    }
                }).start();
                return;
            }
            o0.a(h.this.f55079c, "=== Language is the SAME. RETURNING ORIGINAL TEXT ===");
            Function1<String, Unit> function12 = this.f55086c;
            if (function12 != null) {
                function12.invoke(this.f55087d);
            }
        }
    }

    @u7.a
    public h(@m8.g d translatorBackend) {
        Intrinsics.checkNotNullParameter(translatorBackend, "translatorBackend");
        this.f55078b = translatorBackend;
        this.f55079c = "TranslatorRapid";
        this.f55080d = LazyKt.lazy(b.f55083a);
        this.f55081e = LazyKt.lazy(a.f55082a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(final String str, final Function1<? super String, Unit> function1) {
        o0.g(this.f55079c, "Fallback Give-up...");
        j().post(new Runnable() { // from class: com.qennnsad.aknkaksd.util.translation.g
            @Override // java.lang.Runnable
            public final void run() {
                h.h(Function1.this, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Function1 function1, String origText) {
        Intrinsics.checkNotNullParameter(origText, "$origText");
        if (function1 != null) {
            function1.invoke(origText);
        }
    }

    private final OkHttpClient i() {
        return (OkHttpClient) this.f55081e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler j() {
        return (Handler) this.f55080d.getValue();
    }

    @Override // com.qennnsad.aknkaksd.util.translation.Translator
    public synchronized void a(@m8.g String origText, @m8.g Translator.Direction direction, @m8.h Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(origText, "origText");
        Intrinsics.checkNotNullParameter(direction, "direction");
        String code = direction.getCode();
        String str = this.f55079c;
        o0.a(str, "Source text: " + origText);
        com.qennnsad.aknkaksd.util.translation.c.f55063a.d(origText, new c(code, function1, origText));
    }
}
