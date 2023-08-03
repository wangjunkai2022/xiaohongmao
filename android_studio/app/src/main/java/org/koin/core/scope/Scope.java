package org.koin.core.scope;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.Koin;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.error.MissingPropertyException;
import org.koin.core.error.NoBeanDefFoundException;
import org.koin.core.logger.Level;

/* compiled from: Scope.kt */
@Metadata(bv = {}, d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00060\u0001j\u0002`\u0002B/\u0012\u0006\u0010R\u001a\u00020\u0004\u0012\n\u0010S\u001a\u00060;j\u0002`<\u0012\b\b\u0002\u0010T\u001a\u00020\u001b\u0012\u0006\u0010U\u001a\u000209¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001JA\u0010\f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\u0004\u0018\u0001`\nH\u0002¢\u0006\u0004\b\f\u0010\rJI\u0010\u0010\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\u0004\u0018\u0001`\nH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0012\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0013JC\u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\u0004\u0018\u0001`\nH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001e\u0010\u0018\u001a\u00020\u00172\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\u0006\u0010\u001c\u001a\u00020\u001bJ\u001d\u0010\u001f\u001a\u00020\u00192\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00000\u001dH\u0000¢\u0006\u0004\b\u001f\u0010 J!\u0010#\u001a\u00020\u00192\u0012\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000!\"\u00020\u0000¢\u0006\u0004\b#\u0010$J!\u0010%\u001a\u00020\u00192\u0012\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000!\"\u00020\u0000¢\u0006\u0004\b%\u0010$JL\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000(\"\n\b\u0000\u0010\u0003\u0018\u0001*\u00020\u00012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010'\u001a\u00020&2\u0016\b\n\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\u0004\u0018\u0001`\nH\u0086\bø\u0001\u0000JN\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000(\"\n\b\u0000\u0010\u0003\u0018\u0001*\u00020\u00012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010'\u001a\u00020&2\u0016\b\n\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\u0004\u0018\u0001`\nH\u0086\bø\u0001\u0000JC\u0010+\u001a\u00028\u0000\"\n\b\u0000\u0010\u0003\u0018\u0001*\u00020\u00012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\b\n\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\u0004\u0018\u0001`\nH\u0086\bø\u0001\u0000¢\u0006\u0004\b+\u0010,J\u001e\u0010-\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u0003\u0018\u0001*\u00020\u0001H\u0087\b¢\u0006\u0004\b-\u0010.JE\u0010/\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u0003\u0018\u0001*\u00020\u00012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\b\n\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\u0004\u0018\u0001`\nH\u0086\bø\u0001\u0000¢\u0006\u0004\b/\u0010,JE\u00100\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\b\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\u0004\u0018\u0001`\n¢\u0006\u0004\b0\u0010\u0016JC\u00101\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\b\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\u0004\u0018\u0001`\n¢\u0006\u0004\b1\u0010\u0016J7\u00103\u001a\u00020\u0019\"\b\b\u0000\u0010\u0003*\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u00102\u001a\u00028\u0000¢\u0006\u0004\b3\u00104JJ\u00107\u001a\u00020\u0019\"\u0006\b\u0000\u0010\u0003\u0018\u00012\u0006\u00102\u001a\u00028\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0012\b\u0002\u00105\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u001d2\b\b\u0002\u00106\u001a\u00020\u001bH\u0086\b¢\u0006\u0004\b7\u00108J\u0006\u0010:\u001a\u000209J\u0012\u0010>\u001a\u00020\u00002\n\u0010=\u001a\u00060;j\u0002`<J\u000e\u0010A\u001a\u00020\u00192\u0006\u0010@\u001a\u00020?J\u001b\u0010B\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d\"\n\b\u0000\u0010\u0003\u0018\u0001*\u00020\u0001H\u0086\bJ\u001e\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d\"\u0004\b\u0000\u0010\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006J'\u0010F\u001a\u00028\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00012\u0006\u0010D\u001a\u00020;2\u0006\u0010E\u001a\u00028\u0000¢\u0006\u0004\bF\u0010GJ!\u0010H\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00012\u0006\u0010D\u001a\u00020;¢\u0006\u0004\bH\u0010IJ\u001f\u0010J\u001a\u00028\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00012\u0006\u0010D\u001a\u00020;¢\u0006\u0004\bJ\u0010IJ\u0006\u0010K\u001a\u00020\u0019J\b\u0010L\u001a\u00020;H\u0016J\t\u0010M\u001a\u00020\u0004HÆ\u0003J\r\u0010N\u001a\u00060;j\u0002`<HÆ\u0003J\t\u0010O\u001a\u00020\u001bHÆ\u0003J\u0010\u0010P\u001a\u000209HÀ\u0003¢\u0006\u0004\bP\u0010QJ5\u0010V\u001a\u00020\u00002\b\b\u0002\u0010R\u001a\u00020\u00042\f\b\u0002\u0010S\u001a\u00060;j\u0002`<2\b\b\u0002\u0010T\u001a\u00020\u001b2\b\b\u0002\u0010U\u001a\u000209HÆ\u0001J\t\u0010X\u001a\u00020WHÖ\u0001J\u0013\u0010Z\u001a\u00020\u001b2\b\u0010Y\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001b\u0010S\u001a\u00060;j\u0002`<8\u0006¢\u0006\f\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^R\u0017\u0010T\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b_\u0010A\u001a\u0004\b`\u0010aR \u0010U\u001a\u0002098\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u001a\u0010b\u0012\u0004\bd\u0010e\u001a\u0004\bc\u0010QR$\u0010i\u001a\u0012\u0012\u0004\u0012\u00020\u00000fj\b\u0012\u0004\u0012\u00020\u0000`g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010hR*\u0010o\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bM\u0010j\u0012\u0004\bn\u0010e\u001a\u0004\bk\u0010.\"\u0004\bl\u0010mR$\u0010p\u001a\u0012\u0012\u0004\u0012\u00020?0fj\b\u0012\u0004\u0012\u00020?`g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010hR&\u0010v\u001a\b\u0012\u0004\u0012\u00020\t0q8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bO\u0010r\u0012\u0004\bu\u0010e\u001a\u0004\bs\u0010tR\u0016\u0010w\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010AR\u0017\u0010R\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\bR\u0010x\u001a\u0004\by\u0010zR\u0011\u0010|\u001a\u00020\u001b8F¢\u0006\u0006\u001a\u0004\b{\u0010aR\u0012\u0010\u0080\u0001\u001a\u00020}8F¢\u0006\u0006\u001a\u0004\b~\u0010\u007f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0083\u0001"}, d2 = {"Lorg/koin/core/scope/Scope;", "", "Lorg/koin/mp/Lockable;", ExifInterface.GPS_DIRECTION_TRUE, "Lz8/a;", "qualifier", "Lkotlin/reflect/KClass;", "clazz", "Lkotlin/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameterDef", "a0", "(Lz8/a;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Lorg/koin/core/instance/c;", "instanceContext", "b0", "(Lz8/a;Lkotlin/reflect/KClass;Lorg/koin/core/instance/c;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "w", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "parameters", "o", "(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "", "d0", "", "d", "", "U", "", "links", "l", "(Ljava/util/List;)V", "", "scopes", ExifInterface.LONGITUDE_WEST, "([Lorg/koin/core/scope/Scope;)V", "e0", "Lkotlin/LazyThreadSafetyMode;", "mode", "Lkotlin/Lazy;", "Q", ExifInterface.LATITUDE_SOUTH, "q", "(Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "J", "()Ljava/lang/Object;", "B", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "p", "instance", "X", "(Lkotlin/reflect/KClass;Lz8/a;Ljava/lang/Object;)V", "secondaryTypes", "allowOverride", "m", "(Ljava/lang/Object;Lz8/a;Ljava/util/List;Z)V", "Lorg/koin/core/Koin;", y.b.f83920h, "", "Lorg/koin/core/scope/ScopeID;", "scopeID", "H", "Lorg/koin/core/scope/a;", com.alipay.sdk.authjs.a.f6838i, "Z", "t", "u", "key", "defaultValue", "F", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "G", "(Ljava/lang/String;)Ljava/lang/Object;", ExifInterface.LONGITUDE_EAST, "e", "toString", "f", "g", "h", ContextChain.TAG_INFRA, "()Lorg/koin/core/Koin;", "scopeQualifier", "id", "isRoot", "_koin", "j", "", "hashCode", "other", "equals", "b", "Ljava/lang/String;", y.b.f83919g, "()Ljava/lang/String;", "c", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "()Z", "Lorg/koin/core/Koin;", "K", "get_koin$annotations", "()V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "linkedScopes", "Ljava/lang/Object;", "O", "c0", "(Ljava/lang/Object;)V", "get_source$annotations", "_source", "_callbacks", "Lkotlin/collections/ArrayDeque;", "Lkotlin/collections/ArrayDeque;", "M", "()Lkotlin/collections/ArrayDeque;", "get_parameterStack$annotations", "_parameterStack", "_closed", "Lz8/a;", "I", "()Lz8/a;", "v", "closed", "Lw8/b;", "z", "()Lw8/b;", h4.b.f83285c, "<init>", "(Lz8/a;Ljava/lang/String;ZLorg/koin/core/Koin;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class Scope {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final z8.a f92533a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f92534b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f92535c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Koin f92536d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final ArrayList<Scope> f92537e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Object f92538f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final ArrayList<org.koin.core.scope.a> f92539g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final ArrayDeque<y8.a> f92540h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f92541i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scope.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class a extends Lambda implements Function0<Unit> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Scope.this.f92541i = true;
            Scope.this.d();
            Scope.this.K().I().g(Scope.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scope.kt */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class b extends Lambda implements Function0<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ z8.a f92545b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ KClass<?> f92546c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0<y8.a> f92547d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(z8.a aVar, KClass<?> kClass, Function0<? extends y8.a> function0) {
            super(0);
            this.f92545b = aVar;
            this.f92546c = kClass;
            this.f92547d = function0;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return Scope.this.a0(this.f92545b, this.f92546c, this.f92547d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scope.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class c extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y8.a f92548a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(y8.a aVar) {
            super(0);
            this.f92548a = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            return "| put parameters on stack " + this.f92548a + ' ';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scope.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class d extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f92549a = new d();

        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            return "| remove parameters from stack";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scope.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class e extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ KClass<?> f92555a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ z8.a f92556b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(KClass<?> kClass, z8.a aVar) {
            super(0);
            this.f92555a = kClass;
            this.f92556b = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            return "- lookup? t:'" + c9.b.a(this.f92555a) + "' - q:'" + this.f92556b + "' look in injected parameters";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scope.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class f extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ KClass<?> f92557a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ z8.a f92558b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(KClass<?> kClass, z8.a aVar) {
            super(0);
            this.f92557a = kClass;
            this.f92558b = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            return "- lookup? t:'" + c9.b.a(this.f92557a) + "' - q:'" + this.f92558b + "' look at scope source";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scope.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class g extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ KClass<?> f92559a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ z8.a f92560b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(KClass<?> kClass, z8.a aVar) {
            super(0);
            this.f92559a = kClass;
            this.f92560b = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            return "- lookup? t:'" + c9.b.a(this.f92559a) + "' - q:'" + this.f92560b + "' look in other scopes";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scope.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class h extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final h f92561a = new h();

        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String invoke() {
            return "| clear parameter stack";
        }
    }

    public /* synthetic */ Scope(z8.a aVar, String str, boolean z9, Koin koin, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, str, (i4 & 4) != 0 ? false : z9, koin);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object C(Scope scope, KClass kClass, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        return scope.A(kClass, aVar, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object D(Scope scope, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return scope.A(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }

    @PublishedApi
    public static /* synthetic */ void L() {
    }

    @u8.b
    public static /* synthetic */ void N() {
    }

    @u8.b
    public static /* synthetic */ void P() {
    }

    public static /* synthetic */ Lazy R(Scope scope, z8.a aVar, LazyThreadSafetyMode mode, Function0 function0, int i4, Object obj) {
        Lazy lazy;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new Scope$inject$1(scope, aVar, function0));
        return lazy;
    }

    public static /* synthetic */ Lazy T(Scope scope, z8.a aVar, LazyThreadSafetyMode mode, Function0 function0, int i4, Object obj) {
        Lazy lazy;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new Scope$injectOrNull$1(scope, aVar, function0));
        return lazy;
    }

    public static /* synthetic */ void Y(Scope scope, KClass kClass, z8.a aVar, Object obj, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        scope.X(kClass, aVar, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> T a0(z8.a aVar, KClass<?> kClass, Function0<? extends y8.a> function0) {
        if (!this.f92541i) {
            y8.a invoke = function0 != null ? function0.invoke() : null;
            if (invoke != null) {
                this.f92536d.u().i(Level.DEBUG, new c(invoke));
                this.f92540h.addFirst(invoke);
            }
            T t9 = (T) b0(aVar, kClass, new org.koin.core.instance.c(this.f92536d, this, invoke), function0);
            if (invoke != null) {
                this.f92536d.u().i(Level.DEBUG, d.f92549a);
                this.f92540h.removeFirstOrNull();
            }
            return t9;
        }
        throw new ClosedScopeException("Scope '" + this.f92534b + "' is closed");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    private final <T> T b0(z8.a aVar, KClass<?> kClass, org.koin.core.instance.c cVar, Function0<? extends y8.a> function0) {
        T t9 = (T) this.f92536d.s().o(aVar, kClass, this.f92533a, cVar);
        if (t9 == null) {
            w8.b u9 = this.f92536d.u();
            Level level = Level.DEBUG;
            u9.i(level, new e(kClass, aVar));
            y8.a firstOrNull = this.f92540h.firstOrNull();
            Object obj = null;
            obj = null;
            t9 = firstOrNull != null ? (T) firstOrNull.k(kClass) : null;
            if (t9 == null) {
                this.f92536d.u().i(level, new f(kClass, aVar));
                Object obj2 = this.f92538f;
                if (obj2 != null && kClass.isInstance(obj2)) {
                    obj = this.f92538f;
                }
                t9 = obj;
                if (t9 == null) {
                    this.f92536d.u().i(level, new g(kClass, aVar));
                    t9 = (T) o(kClass, aVar, function0);
                    if (t9 == null) {
                        this.f92540h.clear();
                        this.f92536d.u().i(level, h.f92561a);
                        d0(aVar, kClass);
                        throw new KotlinNothingValueException();
                    }
                }
            }
        }
        return t9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        this.f92538f = null;
        if (this.f92536d.u().g(Level.DEBUG)) {
            w8.b u9 = this.f92536d.u();
            u9.f("closing scope:'" + this.f92534b + '\'');
        }
        for (org.koin.core.scope.a aVar : this.f92539g) {
            aVar.a(this);
        }
        this.f92539g.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (r5 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.Void d0(z8.a r5, kotlin.reflect.KClass<?> r6) {
        /*
            r4 = this;
            r0 = 39
            if (r5 == 0) goto L1a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = " & qualifier:'"
            r1.append(r2)
            r1.append(r5)
            r1.append(r0)
            java.lang.String r5 = r1.toString()
            if (r5 != 0) goto L1c
        L1a:
            java.lang.String r5 = ""
        L1c:
            org.koin.core.error.NoBeanDefFoundException r1 = new org.koin.core.error.NoBeanDefFoundException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "|- No definition found for class:'"
            r2.append(r3)
            java.lang.String r6 = c9.b.a(r6)
            r2.append(r6)
            r2.append(r0)
            r2.append(r5)
            java.lang.String r5 = ". Check your definitions!"
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            r1.<init>(r5)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.scope.Scope.d0(z8.a, kotlin.reflect.KClass):java.lang.Void");
    }

    public static /* synthetic */ Scope k(Scope scope, z8.a aVar, String str, boolean z9, Koin koin, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = scope.f92533a;
        }
        if ((i4 & 2) != 0) {
            str = scope.f92534b;
        }
        if ((i4 & 4) != 0) {
            z9 = scope.f92535c;
        }
        if ((i4 & 8) != 0) {
            koin = scope.f92536d;
        }
        return scope.j(aVar, str, z9, koin);
    }

    public static /* synthetic */ void n(Scope scope, Object obj, z8.a aVar, List list, boolean z9, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        z8.a aVar2 = aVar;
        if ((i4 & 4) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        List secondaryTypes = list;
        boolean z10 = (i4 & 8) != 0 ? true : z9;
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        d9.b bVar = d9.b.f62011a;
        Intrinsics.needClassReification();
        bVar.i(scope, new Scope$declare$1(scope, obj, aVar2, secondaryTypes, z10));
    }

    private final <T> T o(KClass<?> kClass, z8.a aVar, Function0<? extends y8.a> function0) {
        Iterator<Scope> it = this.f92537e.iterator();
        T t9 = null;
        while (it.hasNext() && (t9 = (T) it.next().A(kClass, aVar, function0)) == null) {
        }
        return t9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object r(Scope scope, KClass kClass, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        return scope.p(kClass, aVar, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object s(Scope scope, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return scope.p(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }

    private final <T> T w(KClass<?> kClass) {
        if (kClass.isInstance(this.f92538f)) {
            return (T) this.f92538f;
        }
        return null;
    }

    @m8.h
    public final <T> T A(@m8.g KClass<?> clazz, @m8.h z8.a aVar, @m8.h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        try {
            return (T) p(clazz, aVar, function0);
        } catch (ClosedScopeException unused) {
            w8.b u9 = this.f92536d.u();
            u9.b("|- Scope closed - no instance found for " + c9.b.a(clazz) + " on scope " + this);
            return null;
        } catch (NoBeanDefFoundException unused2) {
            w8.b u10 = this.f92536d.u();
            u10.b("|- No instance found for " + c9.b.a(clazz) + " on scope " + this);
            return null;
        }
    }

    public final /* synthetic */ <T> T B(z8.a aVar, Function0<? extends y8.a> function0) {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) A(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }

    @m8.g
    public final <T> T E(@m8.g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        T t9 = (T) this.f92536d.C(key);
        if (t9 != null) {
            return t9;
        }
        throw new MissingPropertyException("Property '" + key + "' not found");
    }

    @m8.g
    public final <T> T F(@m8.g String key, @m8.g T defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (T) this.f92536d.D(key, defaultValue);
    }

    @m8.h
    public final <T> T G(@m8.g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) this.f92536d.C(key);
    }

    @m8.g
    public final Scope H(@m8.g String scopeID) {
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        return y().G(scopeID);
    }

    @m8.g
    public final z8.a I() {
        return this.f92533a;
    }

    @Deprecated(message = "No need to use getSource(). You can an use get() directly.", replaceWith = @ReplaceWith(expression = "get()", imports = {}))
    public final /* synthetic */ <T> T J() {
        T t9 = (T) O();
        Intrinsics.reifiedOperationMarker(2, ExifInterface.GPS_DIRECTION_TRUE);
        return t9;
    }

    @m8.g
    public final Koin K() {
        return this.f92536d;
    }

    @m8.g
    public final ArrayDeque<y8.a> M() {
        return this.f92540h;
    }

    @m8.h
    public final Object O() {
        return this.f92538f;
    }

    public final /* synthetic */ <T> Lazy<T> Q(z8.a aVar, LazyThreadSafetyMode mode, Function0<? extends y8.a> function0) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new Scope$inject$1(this, aVar, function0));
        return lazy;
    }

    public final /* synthetic */ <T> Lazy<T> S(z8.a aVar, LazyThreadSafetyMode mode, Function0<? extends y8.a> function0) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new Scope$injectOrNull$1(this, aVar, function0));
        return lazy;
    }

    public final boolean U() {
        return !v();
    }

    public final boolean V() {
        return this.f92535c;
    }

    public final void W(@m8.g Scope... scopes) {
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        if (!this.f92535c) {
            CollectionsKt__MutableCollectionsKt.addAll(this.f92537e, scopes);
            return;
        }
        throw new IllegalStateException("Can't add scope link to a root scope".toString());
    }

    public final <T> void X(@m8.g KClass<?> clazz, @m8.h z8.a aVar, @m8.g T instance) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (!this.f92541i) {
            org.koin.core.instance.d<?> n9 = this.f92536d.s().n(clazz, aVar, this.f92533a);
            org.koin.core.instance.e eVar = n9 instanceof org.koin.core.instance.e ? (org.koin.core.instance.e) n9 : null;
            if (eVar != null) {
                w8.b u9 = this.f92536d.u();
                u9.b("|- '" + c9.b.a(clazz) + "' refresh with " + instance);
                eVar.j(this.f92534b, instance);
                return;
            }
            return;
        }
        throw new ClosedScopeException("Scope '" + this.f92534b + "' is closed");
    }

    public final void Z(@m8.g org.koin.core.scope.a callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f92539g.add(callback);
    }

    public final void c0(@m8.h Object obj) {
        this.f92538f = obj;
    }

    public final void e() {
        d9.b.f62011a.i(this, new a());
    }

    public final void e0(@m8.g Scope... scopes) {
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        if (!this.f92535c) {
            CollectionsKt__MutableCollectionsKt.removeAll(this.f92537e, scopes);
            return;
        }
        throw new IllegalStateException("Can't remove scope link to a root scope".toString());
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            Scope scope = (Scope) obj;
            return Intrinsics.areEqual(this.f92533a, scope.f92533a) && Intrinsics.areEqual(this.f92534b, scope.f92534b) && this.f92535c == scope.f92535c && Intrinsics.areEqual(this.f92536d, scope.f92536d);
        }
        return false;
    }

    @m8.g
    public final z8.a f() {
        return this.f92533a;
    }

    @m8.g
    public final String g() {
        return this.f92534b;
    }

    public final boolean h() {
        return this.f92535c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.f92533a.hashCode() * 31) + this.f92534b.hashCode()) * 31;
        boolean z9 = this.f92535c;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return ((hashCode + i4) * 31) + this.f92536d.hashCode();
    }

    @m8.g
    public final Koin i() {
        return this.f92536d;
    }

    @m8.g
    public final Scope j(@m8.g z8.a scopeQualifier, @m8.g String id, boolean z9, @m8.g Koin _koin) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        return new Scope(scopeQualifier, id, z9, _koin);
    }

    public final void l(@m8.g List<Scope> links) {
        Intrinsics.checkNotNullParameter(links, "links");
        this.f92537e.addAll(links);
    }

    public final /* synthetic */ <T> void m(T t9, z8.a aVar, List<? extends KClass<?>> secondaryTypes, boolean z9) {
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        d9.b bVar = d9.b.f62011a;
        Intrinsics.needClassReification();
        bVar.i(this, new Scope$declare$1(this, t9, aVar, secondaryTypes, z9));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002b, code lost:
        if (r1 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <T> T p(@m8.g kotlin.reflect.KClass<?> r6, @m8.h z8.a r7, @m8.h kotlin.jvm.functions.Function0<? extends y8.a> r8) {
        /*
            r5 = this;
            java.lang.String r0 = "clazz"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            org.koin.core.Koin r0 = r5.f92536d
            w8.b r0 = r0.u()
            org.koin.core.logger.Level r1 = org.koin.core.logger.Level.DEBUG
            boolean r0 = r0.g(r1)
            if (r0 == 0) goto L96
            r0 = 39
            if (r7 == 0) goto L2d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = " with qualifier '"
            r1.append(r2)
            r1.append(r7)
            r1.append(r0)
            java.lang.String r1 = r1.toString()
            if (r1 != 0) goto L2f
        L2d:
            java.lang.String r1 = ""
        L2f:
            org.koin.core.Koin r2 = r5.f92536d
            w8.b r2 = r2.u()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "+- '"
            r3.append(r4)
            java.lang.String r4 = c9.b.a(r6)
            r3.append(r4)
            r3.append(r0)
            r3.append(r1)
            java.lang.String r0 = r3.toString()
            r2.b(r0)
            org.koin.core.scope.Scope$b r0 = new org.koin.core.scope.Scope$b
            r0.<init>(r7, r6, r8)
            kotlin.Pair r7 = a9.a.b(r0)
            java.lang.Object r8 = r7.component1()
            java.lang.Object r7 = r7.component2()
            java.lang.Number r7 = (java.lang.Number) r7
            double r0 = r7.doubleValue()
            org.koin.core.Koin r7 = r5.f92536d
            w8.b r7 = r7.u()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "|- '"
            r2.append(r3)
            java.lang.String r6 = c9.b.a(r6)
            r2.append(r6)
            java.lang.String r6 = "' in "
            r2.append(r6)
            r2.append(r0)
            java.lang.String r6 = " ms"
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            r7.b(r6)
            return r8
        L96:
            java.lang.Object r6 = r5.a0(r7, r6, r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.scope.Scope.p(kotlin.reflect.KClass, z8.a, kotlin.jvm.functions.Function0):java.lang.Object");
    }

    public final /* synthetic */ <T> T q(z8.a aVar, Function0<? extends y8.a> function0) {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) p(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }

    public final /* synthetic */ <T> List<T> t() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return u(Reflection.getOrCreateKotlinClass(Object.class));
    }

    @m8.g
    public String toString() {
        return "['" + this.f92534b + "']";
    }

    @m8.g
    public final <T> List<T> u(@m8.g KClass<?> clazz) {
        List<T> plus;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        List<T> i4 = this.f92536d.s().i(clazz, new org.koin.core.instance.c(this.f92536d, this, null, 4, null));
        ArrayList<Scope> arrayList = this.f92537e;
        ArrayList arrayList2 = new ArrayList();
        for (Scope scope : arrayList) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, scope.u(clazz));
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) i4, (Iterable) arrayList2);
        return plus;
    }

    public final boolean v() {
        return this.f92541i;
    }

    @m8.g
    public final String x() {
        return this.f92534b;
    }

    @m8.g
    public final Koin y() {
        return this.f92536d;
    }

    @m8.g
    public final w8.b z() {
        return this.f92536d.u();
    }

    public Scope(@m8.g z8.a scopeQualifier, @m8.g String id, boolean z9, @m8.g Koin _koin) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this.f92533a = scopeQualifier;
        this.f92534b = id;
        this.f92535c = z9;
        this.f92536d = _koin;
        this.f92537e = new ArrayList<>();
        this.f92539g = new ArrayList<>();
        this.f92540h = new ArrayDeque<>();
    }
}
