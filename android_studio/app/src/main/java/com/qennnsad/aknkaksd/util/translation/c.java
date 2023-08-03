package com.qennnsad.aknkaksd.util.translation;

import com.google.mlkit.nl.languageid.b;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.translation.Translator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: IdentifierGoogle.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J$\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00050\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u001b\u0010\u0010\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\u000e\u001a\u0004\b\u000b\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/util/translation/c;", "", "", "origText", "Lkotlin/Function1;", "", "onIdentificationComplete", "d", "b", "Ljava/lang/String;", "TAG", "c", "UNDEFINED", "Lcom/google/mlkit/nl/languageid/c;", "Lkotlin/Lazy;", "()Lcom/google/mlkit/nl/languageid/c;", "languageIdentifier", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final c f55063a = new c();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final String f55064b = "IdentifierGoogle";
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final String f55065c = "und";
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final Lazy f55066d;

    /* compiled from: IdentifierGoogle.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/google/mlkit/nl/languageid/c;", "a", "()Lcom/google/mlkit/nl/languageid/c;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<com.google.mlkit.nl.languageid.c> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f55067a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final com.google.mlkit.nl.languageid.c invoke() {
            return com.google.mlkit.nl.languageid.a.b(new b.a().b(0.75f).a());
        }
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(a.f55067a);
        f55066d = lazy;
    }

    private c() {
    }

    private final com.google.mlkit.nl.languageid.c c() {
        return (com.google.mlkit.nl.languageid.c) f55066d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
        if ((r1 == null || r1.length() == 0) != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void e(kotlin.jvm.functions.Function1 r6, java.util.List r7) {
        /*
            java.lang.String r0 = "$onIdentificationComplete"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "identifiedLanguages"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            java.util.Iterator r7 = r7.iterator()
            boolean r0 = r7.hasNext()
            r1 = 0
            if (r0 != 0) goto L17
            r0 = r1
            goto L42
        L17:
            java.lang.Object r0 = r7.next()
            boolean r2 = r7.hasNext()
            if (r2 != 0) goto L22
            goto L42
        L22:
            r2 = r0
            com.google.mlkit.nl.languageid.IdentifiedLanguage r2 = (com.google.mlkit.nl.languageid.IdentifiedLanguage) r2
            float r2 = r2.a()
        L29:
            java.lang.Object r3 = r7.next()
            r4 = r3
            com.google.mlkit.nl.languageid.IdentifiedLanguage r4 = (com.google.mlkit.nl.languageid.IdentifiedLanguage) r4
            float r4 = r4.a()
            int r5 = java.lang.Float.compare(r2, r4)
            if (r5 >= 0) goto L3c
            r0 = r3
            r2 = r4
        L3c:
            boolean r3 = r7.hasNext()
            if (r3 != 0) goto L29
        L42:
            com.google.mlkit.nl.languageid.IdentifiedLanguage r0 = (com.google.mlkit.nl.languageid.IdentifiedLanguage) r0
            if (r0 == 0) goto L4a
            java.lang.String r1 = r0.b()
        L4a:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "Identified: "
            r7.append(r0)
            r7.append(r1)
            java.lang.String r7 = r7.toString()
            java.lang.String r0 = "IdentifierGoogle"
            com.qennnsad.aknkaksd.util.o0.a(r0, r7)
            java.lang.String r7 = "und"
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r7)
            if (r7 != 0) goto L76
            if (r1 == 0) goto L73
            int r7 = r1.length()
            if (r7 != 0) goto L71
            goto L73
        L71:
            r7 = 0
            goto L74
        L73:
            r7 = 1
        L74:
            if (r7 == 0) goto L7c
        L76:
            com.qennnsad.aknkaksd.util.translation.Translator$Direction r7 = com.qennnsad.aknkaksd.util.translation.Translator.Direction.AUTO
            java.lang.String r1 = r7.getCode()
        L7c:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r2 = "Identified After UND check: "
            r7.append(r2)
            r7.append(r1)
            java.lang.String r7 = r7.toString()
            com.qennnsad.aknkaksd.util.o0.a(r0, r7)
            r6.invoke(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.util.translation.c.e(kotlin.jvm.functions.Function1, java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Function1 onIdentificationComplete, Exception it) {
        Intrinsics.checkNotNullParameter(onIdentificationComplete, "$onIdentificationComplete");
        Intrinsics.checkNotNullParameter(it, "it");
        o0.d(f55064b, "Identificator Model couldn’t be loaded", it);
        onIdentificationComplete.invoke(Translator.Direction.AUTO.getCode());
    }

    public final void d(@m8.g String origText, @m8.g final Function1<? super String, Unit> onIdentificationComplete) {
        Intrinsics.checkNotNullParameter(origText, "origText");
        Intrinsics.checkNotNullParameter(onIdentificationComplete, "onIdentificationComplete");
        c().Z(origText).k(new com.google.android.gms.tasks.g() { // from class: com.qennnsad.aknkaksd.util.translation.b
            @Override // com.google.android.gms.tasks.g
            public final void onSuccess(Object obj) {
                c.e(Function1.this, (List) obj);
            }
        }).h(new com.google.android.gms.tasks.f() { // from class: com.qennnsad.aknkaksd.util.translation.a
            @Override // com.google.android.gms.tasks.f
            public final void a(Exception exc) {
                c.f(Function1.this, exc);
            }
        });
    }
}
