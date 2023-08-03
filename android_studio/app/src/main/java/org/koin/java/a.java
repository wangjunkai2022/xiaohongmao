package org.koin.java;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;
import org.koin.core.Koin;

/* compiled from: KoinJavaComponent.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014JD\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0007JF\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000b\"\u0004\b\u0000\u0010\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0007JE\u0010\u000e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJG\u0010\u0010\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0007¢\u0006\u0004\b\u0010\u0010\u000fJ\b\u0010\u0012\u001a\u00020\u0011H\u0007¨\u0006\u0015"}, d2 = {"Lorg/koin/java/a;", "", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/Class;", "clazz", "Lz8/a;", "qualifier", "Lkotlin/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "Lkotlin/Lazy;", "l", "p", "c", "(Ljava/lang/Class;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "h", "Lorg/koin/core/Koin;", "e", "<init>", "()V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final a f92568a = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KoinJavaComponent.kt */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* renamed from: org.koin.java.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0820a extends Lambda implements Function0<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class<?> f92569a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ z8.a f92570b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function0<y8.a> f92571c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C0820a(Class<?> cls, z8.a aVar, Function0<? extends y8.a> function0) {
            super(0);
            this.f92569a = cls;
            this.f92570b = aVar;
            this.f92571c = function0;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return a.c(this.f92569a, this.f92570b, this.f92571c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KoinJavaComponent.kt */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0004\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class b extends Lambda implements Function0<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class<?> f92572a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ z8.a f92573b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function0<y8.a> f92574c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Class<?> cls, z8.a aVar, Function0<? extends y8.a> function0) {
            super(0);
            this.f92572a = cls;
            this.f92573b = aVar;
            this.f92574c = function0;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        @h
        public final T invoke() {
            return a.h(this.f92572a, this.f92573b, this.f92574c);
        }
    }

    private a() {
    }

    @JvmStatic
    @JvmOverloads
    public static final <T> T a(@g Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) d(clazz, null, null, 6, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final <T> T b(@g Class<?> clazz, @h z8.a aVar) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) d(clazz, aVar, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final <T> T c(@g Class<?> clazz, @h z8.a aVar, @h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) e().n(JvmClassMappingKt.getKotlinClass(clazz), aVar, function0);
    }

    public static /* synthetic */ Object d(Class cls, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        return c(cls, aVar, function0);
    }

    @JvmStatic
    @g
    public static final Koin e() {
        return d9.b.f62011a.a().get();
    }

    @JvmStatic
    @JvmOverloads
    @h
    public static final <T> T f(@g Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) i(clazz, null, null, 6, null);
    }

    @JvmStatic
    @JvmOverloads
    @h
    public static final <T> T g(@g Class<?> clazz, @h z8.a aVar) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) i(clazz, aVar, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    @h
    public static final <T> T h(@g Class<?> clazz, @h z8.a aVar, @h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) e().y(JvmClassMappingKt.getKotlinClass(clazz), aVar, function0);
    }

    public static /* synthetic */ Object i(Class cls, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        return h(cls, aVar, function0);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final <T> Lazy<T> j(@g Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return m(clazz, null, null, 6, null);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final <T> Lazy<T> k(@g Class<?> clazz, @h z8.a aVar) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return m(clazz, aVar, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final <T> Lazy<T> l(@g Class<?> clazz, @h z8.a aVar, @h Function0<? extends y8.a> function0) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new C0820a(clazz, aVar, function0));
        return lazy;
    }

    public static /* synthetic */ Lazy m(Class cls, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        return l(cls, aVar, function0);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final <T> Lazy<T> n(@g Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return q(clazz, null, null, 6, null);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final <T> Lazy<T> o(@g Class<?> clazz, @h z8.a aVar) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return q(clazz, aVar, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final <T> Lazy<T> p(@g Class<?> clazz, @h z8.a aVar, @h Function0<? extends y8.a> function0) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        lazy = LazyKt__LazyJVMKt.lazy(new b(clazz, aVar, function0));
        return lazy;
    }

    public static /* synthetic */ Lazy q(Class cls, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        return p(cls, aVar, function0);
    }
}
