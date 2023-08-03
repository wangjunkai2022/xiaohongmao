package org.koin.core.definition;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: BeanDefinition.kt */
@Metadata(bv = {}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0018\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Bl\u0012\u0006\u0010\u001e\u001a\u00020\u000b\u0012\n\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012'\u0010 \u001a#\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00028\u00000\u0014j\b\u0012\u0004\u0012\u00028\u0000`\u0017¢\u0006\u0002\b\u0018\u0012\u0006\u0010!\u001a\u00020\u001a\u0012\u0012\b\u0002\u0010\"\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u001c¢\u0006\u0004\bH\u0010IJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0013\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0012\u0010\n\u001a\u00020\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\bJ$\u0010\u000e\u001a\u00020\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\b\u0010\u0010\u001a\u00020\u000fH\u0016J\t\u0010\u0011\u001a\u00020\u000bHÆ\u0003J\r\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\bHÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u000bHÆ\u0003J*\u0010\u0019\u001a#\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00028\u00000\u0014j\b\u0012\u0004\u0012\u00028\u0000`\u0017¢\u0006\u0002\b\u0018HÆ\u0003J\t\u0010\u001b\u001a\u00020\u001aHÆ\u0003J\u0013\u0010\u001d\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u001cHÆ\u0003J|\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u000b2\f\b\u0002\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2)\b\u0002\u0010 \u001a#\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00028\u00000\u0014j\b\u0012\u0004\u0012\u00028\u0000`\u0017¢\u0006\u0002\b\u00182\b\b\u0002\u0010!\u001a\u00020\u001a2\u0012\b\u0002\u0010\"\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u001cHÆ\u0001R\u001b\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\b8\u0006¢\u0006\f\n\u0004\b\u0012\u0010$\u001a\u0004\b%\u0010&R8\u0010 \u001a#\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00028\u00000\u0014j\b\u0012\u0004\u0012\u00028\u0000`\u0017¢\u0006\u0002\b\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010!\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010*\u001a\u0004\b+\u0010,R,\u0010\"\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R(\u00108\u001a\b\u0012\u0004\u0012\u00028\u0000028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R(\u0010A\u001a\u00020\u00068\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b9\u0010:\u0012\u0004\b?\u0010@\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0017\u0010\u001e\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\u001e\u0010B\u001a\u0004\bC\u0010DR$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010B\u001a\u0004\bE\u0010D\"\u0004\bF\u0010G¨\u0006J"}, d2 = {"Lorg/koin/core/definition/a;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "toString", "other", "", "equals", "Lkotlin/reflect/KClass;", "clazz", "r", "Lz8/a;", "qualifier", "scopeDefinition", "s", "", "hashCode", "a", "b", "c", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "Lorg/koin/core/definition/Definition;", "Lkotlin/ExtensionFunctionType;", "d", "Lorg/koin/core/definition/Kind;", "e", "", "f", "scopeQualifier", "primaryType", "definition", "kind", "secondaryTypes", "g", "Lkotlin/reflect/KClass;", "l", "()Lkotlin/reflect/KClass;", "Lkotlin/jvm/functions/Function2;", "j", "()Lkotlin/jvm/functions/Function2;", "Lorg/koin/core/definition/Kind;", "k", "()Lorg/koin/core/definition/Kind;", "Ljava/util/List;", "o", "()Ljava/util/List;", "v", "(Ljava/util/List;)V", "Lorg/koin/core/definition/c;", "Lorg/koin/core/definition/c;", ContextChain.TAG_INFRA, "()Lorg/koin/core/definition/c;", "t", "(Lorg/koin/core/definition/c;)V", "callbacks", "h", "Z", "p", "()Z", "w", "(Z)V", "get_createdAtStart$annotations", "()V", "_createdAtStart", "Lz8/a;", "n", "()Lz8/a;", "m", "u", "(Lz8/a;)V", "<init>", "(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a<T> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final z8.a f92419a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final KClass<?> f92420b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private z8.a f92421c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final Function2<Scope, y8.a, T> f92422d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final Kind f92423e;
    @g

    /* renamed from: f  reason: collision with root package name */
    private List<? extends KClass<?>> f92424f;
    @g

    /* renamed from: g  reason: collision with root package name */
    private c<T> f92425g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f92426h;

    /* compiled from: BeanDefinition.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/reflect/KClass;", "it", "", "a", "(Lkotlin/reflect/KClass;)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 6, 0})
    /* renamed from: org.koin.core.definition.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0816a extends Lambda implements Function1<KClass<?>, CharSequence> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0816a f92427a = new C0816a();

        C0816a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @g
        /* renamed from: a */
        public final CharSequence invoke(@g KClass<?> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return c9.b.a(it);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(@g z8.a scopeQualifier, @g KClass<?> primaryType, @h z8.a aVar, @g Function2<? super Scope, ? super y8.a, ? extends T> definition, @g Kind kind, @g List<? extends KClass<?>> secondaryTypes) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        this.f92419a = scopeQualifier;
        this.f92420b = primaryType;
        this.f92421c = aVar;
        this.f92422d = definition;
        this.f92423e = kind;
        this.f92424f = secondaryTypes;
        this.f92425g = new c<>(null, 1, null);
    }

    public static /* synthetic */ a h(a aVar, z8.a aVar2, KClass kClass, z8.a aVar3, Function2 function2, Kind kind, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar2 = aVar.f92419a;
        }
        KClass<?> kClass2 = kClass;
        if ((i4 & 2) != 0) {
            kClass2 = aVar.f92420b;
        }
        KClass kClass3 = kClass2;
        if ((i4 & 4) != 0) {
            aVar3 = aVar.f92421c;
        }
        z8.a aVar4 = aVar3;
        Function2<Scope, y8.a, T> function22 = function2;
        if ((i4 & 8) != 0) {
            function22 = aVar.f92422d;
        }
        Function2 function23 = function22;
        if ((i4 & 16) != 0) {
            kind = aVar.f92423e;
        }
        Kind kind2 = kind;
        List<? extends KClass<?>> list2 = list;
        if ((i4 & 32) != 0) {
            list2 = aVar.f92424f;
        }
        return aVar.g(aVar2, kClass3, aVar4, function23, kind2, list2);
    }

    @PublishedApi
    public static /* synthetic */ void q() {
    }

    @g
    public final z8.a a() {
        return this.f92419a;
    }

    @g
    public final KClass<?> b() {
        return this.f92420b;
    }

    @h
    public final z8.a c() {
        return this.f92421c;
    }

    @g
    public final Function2<Scope, y8.a, T> d() {
        return this.f92422d;
    }

    @g
    public final Kind e() {
        return this.f92423e;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type org.koin.core.definition.BeanDefinition<*>");
        a aVar = (a) obj;
        return Intrinsics.areEqual(this.f92420b, aVar.f92420b) && Intrinsics.areEqual(this.f92421c, aVar.f92421c) && Intrinsics.areEqual(this.f92419a, aVar.f92419a);
    }

    @g
    public final List<KClass<?>> f() {
        return this.f92424f;
    }

    @g
    public final a<T> g(@g z8.a scopeQualifier, @g KClass<?> primaryType, @h z8.a aVar, @g Function2<? super Scope, ? super y8.a, ? extends T> definition, @g Kind kind, @g List<? extends KClass<?>> secondaryTypes) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        return new a<>(scopeQualifier, primaryType, aVar, definition, kind, secondaryTypes);
    }

    public int hashCode() {
        z8.a aVar = this.f92421c;
        return ((((aVar != null ? aVar.hashCode() : 0) * 31) + this.f92420b.hashCode()) * 31) + this.f92419a.hashCode();
    }

    @g
    public final c<T> i() {
        return this.f92425g;
    }

    @g
    public final Function2<Scope, y8.a, T> j() {
        return this.f92422d;
    }

    @g
    public final Kind k() {
        return this.f92423e;
    }

    @g
    public final KClass<?> l() {
        return this.f92420b;
    }

    @h
    public final z8.a m() {
        return this.f92421c;
    }

    @g
    public final z8.a n() {
        return this.f92419a;
    }

    @g
    public final List<KClass<?>> o() {
        return this.f92424f;
    }

    public final boolean p() {
        return this.f92426h;
    }

    public final boolean r(@g KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return Intrinsics.areEqual(this.f92420b, clazz) || this.f92424f.contains(clazz);
    }

    public final boolean s(@g KClass<?> clazz, @h z8.a aVar, @g z8.a scopeDefinition) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeDefinition, "scopeDefinition");
        return r(clazz) && Intrinsics.areEqual(this.f92421c, aVar) && Intrinsics.areEqual(this.f92419a, scopeDefinition);
    }

    public final void t(@g c<T> cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<set-?>");
        this.f92425g = cVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0039, code lost:
        if (r2 == null) goto L15;
     */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            r15 = this;
            org.koin.core.definition.Kind r0 = r15.f92423e
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 39
            r1.append(r2)
            kotlin.reflect.KClass<?> r3 = r15.f92420b
            java.lang.String r3 = c9.b.a(r3)
            r1.append(r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            z8.a r2 = r15.f92421c
            java.lang.String r3 = ""
            if (r2 == 0) goto L3b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = ",qualifier:"
            r2.append(r4)
            z8.a r4 = r15.f92421c
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            if (r2 != 0) goto L3c
        L3b:
            r2 = r3
        L3c:
            z8.a r4 = r15.f92419a
            org.koin.core.registry.c$a r5 = org.koin.core.registry.c.f92526e
            z8.c r5 = r5.a()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L4c
            r4 = r3
            goto L5f
        L4c:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = ",scope:"
            r4.append(r5)
            z8.a r5 = r15.f92419a
            r4.append(r5)
            java.lang.String r4 = r4.toString()
        L5f:
            java.util.List<? extends kotlin.reflect.KClass<?>> r5 = r15.f92424f
            boolean r5 = r5.isEmpty()
            r5 = r5 ^ 1
            if (r5 == 0) goto L8b
            java.util.List<? extends kotlin.reflect.KClass<?>> r6 = r15.f92424f
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            org.koin.core.definition.a$a r12 = org.koin.core.definition.a.C0816a.f92427a
            r13 = 30
            r14 = 0
            java.lang.String r7 = ","
            java.lang.String r3 = kotlin.collections.CollectionsKt.joinToString$default(r6, r7, r8, r9, r10, r11, r12, r13, r14)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = ",binds:"
            r5.append(r6)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
        L8b:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r6 = 91
            r5.append(r6)
            r5.append(r0)
            r0 = 58
            r5.append(r0)
            r5.append(r1)
            r5.append(r2)
            r5.append(r4)
            r5.append(r3)
            r0 = 93
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.definition.a.toString():java.lang.String");
    }

    public final void u(@h z8.a aVar) {
        this.f92421c = aVar;
    }

    public final void v(@g List<? extends KClass<?>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f92424f = list;
    }

    public final void w(boolean z9) {
        this.f92426h = z9;
    }

    public /* synthetic */ a(z8.a aVar, KClass kClass, z8.a aVar2, Function2 function2, Kind kind, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, kClass, (i4 & 4) != 0 ? null : aVar2, function2, kind, (i4 & 32) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }
}
