package org.koin.core.component;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.v;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;
import z8.d;

/* compiled from: KoinScopeComponent.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001b\u0010\u0003\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001b\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\u000b\u001a\u00020\n\"\b\b\u0000\u0010\u0001*\u00020\b*\u00028\u00002\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001d\u0010\r\u001a\u0004\u0018\u00010\n\"\b\b\u0000\u0010\u0001*\u00020\b*\u00028\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a!\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u000f\"\b\b\u0000\u0010\u0001*\u00020\b*\u00028\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a!\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\u000f\"\b\b\u0000\u0010\u0001*\u00020\b*\u00028\u0000¢\u0006\u0004\b\u0012\u0010\u0011¨\u0006\u0013"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "", "d", "(Ljava/lang/Object;)Ljava/lang/String;", "Lz8/d;", "e", "(Ljava/lang/Object;)Lz8/d;", "Lorg/koin/core/component/b;", v.b.f83881a, "Lorg/koin/core/scope/Scope;", "a", "(Lorg/koin/core/component/b;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;", "f", "(Lorg/koin/core/component/b;)Lorg/koin/core/scope/Scope;", "Lkotlin/Lazy;", "g", "(Lorg/koin/core/component/b;)Lkotlin/Lazy;", "c", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class c {

    /* JADX WARN: Incorrect field signature: TT; */
    /* compiled from: KoinScopeComponent.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lorg/koin/core/component/b;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/scope/Scope;", "a", "()Lorg/koin/core/scope/Scope;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function0<Scope> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.koin.core.component.b f92416a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        a(org.koin.core.component.b bVar) {
            super(0);
            this.f92416a = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        /* renamed from: a */
        public final Scope invoke() {
            Scope f10 = c.f(this.f92416a);
            return f10 == null ? c.b(this.f92416a, null, 1, null) : f10;
        }
    }

    /* JADX WARN: Incorrect field signature: TT; */
    /* compiled from: KoinScopeComponent.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lorg/koin/core/component/b;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/scope/Scope;", "a", "()Lorg/koin/core/scope/Scope;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes5.dex */
    static final class b extends Lambda implements Function0<Scope> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.koin.core.component.b f92417a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        b(org.koin.core.component.b bVar) {
            super(0);
            this.f92417a = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        /* renamed from: a */
        public final Scope invoke() {
            return c.b(this.f92417a, null, 1, null);
        }
    }

    @g
    public static final <T extends org.koin.core.component.b> Scope a(@g T t9, @h Object obj) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        return t9.getKoin().e(d(t9), e(t9), obj);
    }

    public static /* synthetic */ Scope b(org.koin.core.component.b bVar, Object obj, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            obj = null;
        }
        return a(bVar, obj);
    }

    @g
    public static final <T extends org.koin.core.component.b> Lazy<Scope> c(@g T t9) {
        Lazy<Scope> lazy;
        Intrinsics.checkNotNullParameter(t9, "<this>");
        lazy = LazyKt__LazyJVMKt.lazy(new a(t9));
        return lazy;
    }

    @g
    public static final <T> String d(@g T t9) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        return c9.b.a(Reflection.getOrCreateKotlinClass(t9.getClass())) + '@' + t9.hashCode();
    }

    @g
    public static final <T> d e(@g T t9) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        return new d(Reflection.getOrCreateKotlinClass(t9.getClass()));
    }

    @h
    public static final <T extends org.koin.core.component.b> Scope f(@g T t9) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        return t9.getKoin().H(d(t9));
    }

    @g
    public static final <T extends org.koin.core.component.b> Lazy<Scope> g(@g T t9) {
        Lazy<Scope> lazy;
        Intrinsics.checkNotNullParameter(t9, "<this>");
        lazy = LazyKt__LazyJVMKt.lazy(new b(t9));
        return lazy;
    }
}
