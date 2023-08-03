package org.koin.android.scope;

import android.content.ComponentCallbacks;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.v;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.scope.Scope;

/* compiled from: ComponentCallbacksExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a'\u0010\u0005\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001d\u0010\u0007\u001a\u0004\u0018\u00010\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a!\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\t\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a!\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\t\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000¢\u0006\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Landroid/content/ComponentCallbacks;", ExifInterface.GPS_DIRECTION_TRUE, "", v.b.f83881a, "Lorg/koin/core/scope/Scope;", "a", "(Landroid/content/ComponentCallbacks;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;", "d", "(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;", "Lkotlin/Lazy;", "e", "(Landroid/content/ComponentCallbacks;)Lkotlin/Lazy;", "c", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class b {

    /* JADX WARN: Incorrect field signature: TT; */
    /* compiled from: ComponentCallbacksExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/content/ComponentCallbacks;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/scope/Scope;", "a", "()Lorg/koin/core/scope/Scope;"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function0<Scope> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ComponentCallbacks f92168a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        a(ComponentCallbacks componentCallbacks) {
            super(0);
            this.f92168a = componentCallbacks;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        /* renamed from: a */
        public final Scope invoke() {
            Scope d4 = b.d(this.f92168a);
            return d4 == null ? b.b(this.f92168a, null, 1, null) : d4;
        }
    }

    /* JADX WARN: Incorrect field signature: TT; */
    /* compiled from: ComponentCallbacksExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/content/ComponentCallbacks;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/scope/Scope;", "a", "()Lorg/koin/core/scope/Scope;"}, k = 3, mv = {1, 5, 1})
    /* renamed from: org.koin.android.scope.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0810b extends Lambda implements Function0<Scope> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ComponentCallbacks f92169a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        C0810b(ComponentCallbacks componentCallbacks) {
            super(0);
            this.f92169a = componentCallbacks;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        /* renamed from: a */
        public final Scope invoke() {
            return b.b(this.f92169a, null, 1, null);
        }
    }

    @g
    public static final <T extends ComponentCallbacks> Scope a(@g T t9, @h Object obj) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        return ComponentCallbackExtKt.c(t9).e(org.koin.core.component.c.d(t9), org.koin.core.component.c.e(t9), obj);
    }

    public static /* synthetic */ Scope b(ComponentCallbacks componentCallbacks, Object obj, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            obj = null;
        }
        return a(componentCallbacks, obj);
    }

    @g
    public static final <T extends ComponentCallbacks> Lazy<Scope> c(@g T t9) {
        Lazy<Scope> lazy;
        Intrinsics.checkNotNullParameter(t9, "<this>");
        lazy = LazyKt__LazyJVMKt.lazy(new a(t9));
        return lazy;
    }

    @h
    public static final <T extends ComponentCallbacks> Scope d(@g T t9) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        return ComponentCallbackExtKt.c(t9).H(org.koin.core.component.c.d(t9));
    }

    @g
    public static final <T extends ComponentCallbacks> Lazy<Scope> e(@g T t9) {
        Lazy<Scope> lazy;
        Intrinsics.checkNotNullParameter(t9, "<this>");
        lazy = LazyKt__LazyJVMKt.lazy(new C0810b(t9));
        return lazy;
    }
}
