package com.im.freechat.domain;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.y0;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: Extentions.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0010&\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aV\u0010\n\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012-\u0010\t\u001a)\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001an\u0010\u0011\u001a\u00020\u0006\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u0010\r2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e29\u0010\t\u001a5\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001aV\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0018\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00042\"\u0010\u0017\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0016ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "list", "Lkotlin/Function3;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "a", "(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "map", "", "b", "(Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "delayMillis", "scope", "Lkotlin/Function2;", com.alipay.sdk.packet.d.f6907q, "Lkotlin/Function1;", "c", "(JLkotlinx/coroutines/s0;Lkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function1;", com.ksyun.media.player.d.d.A}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Extentions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.ExtentionsKt$catchingAsync$2", f = "Extentions.kt", i = {}, l = {7}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super List<? extends Unit>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41284a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41285b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List<T> f41286c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function3<s0, T, Continuation<? super Unit>, Object> f41287d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Extentions.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.domain.ExtentionsKt$catchingAsync$2$1$1", f = "Extentions.kt", i = {}, l = {9}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.domain.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0312a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41288a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f41289b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Function3<s0, T, Continuation<? super Unit>, Object> f41290c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ T f41291d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0312a(Function3<? super s0, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, T t9, Continuation<? super C0312a> continuation) {
                super(2, continuation);
                this.f41290c = function3;
                this.f41291d = t9;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0312a c0312a = new C0312a(this.f41290c, this.f41291d, continuation);
                c0312a.f41289b = obj;
                return c0312a;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
                return invoke2(s0Var, continuation);
            }

            @m8.h
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0312a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41288a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function3<s0, T, Continuation<? super Unit>, Object> function3 = this.f41290c;
                    T t9 = this.f41291d;
                    this.f41288a = 1;
                    if (function3.invoke((s0) this.f41289b, t9, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(List<? extends T> list, Function3<? super s0, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f41286c = list;
            this.f41287d = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(this.f41286c, this.f41287d, continuation);
            aVar.f41285b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super List<? extends Unit>> continuation) {
            return invoke2(s0Var, (Continuation<? super List<Unit>>) continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super List<Unit>> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            int collectionSizeOrDefault;
            y0 b10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41284a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                s0 s0Var = (s0) this.f41285b;
                Collection<Object> collection = this.f41286c;
                Function3<s0, T, Continuation<? super Unit>, Object> function3 = this.f41287d;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (Object obj2 : collection) {
                    b10 = kotlinx.coroutines.l.b(s0Var, null, null, new C0312a(function3, obj2, null), 3, null);
                    arrayList.add(b10);
                }
                Object[] array = arrayList.toArray(new y0[0]);
                Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                y0[] y0VarArr = (y0[]) array;
                this.f41284a = 1;
                obj = kotlinx.coroutines.f.b((y0[]) Arrays.copyOf(y0VarArr, y0VarArr.length), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Extentions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/s0;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.ExtentionsKt$catchingAsync$4", f = "Extentions.kt", i = {}, l = {17}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super List<? extends Unit>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41292a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41293b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map<K, V> f41294c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function3<s0, Map.Entry<? extends K, ? extends V>, Continuation<? super Unit>, Object> f41295d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Extentions.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.domain.ExtentionsKt$catchingAsync$4$1$1", f = "Extentions.kt", i = {}, l = {19}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41296a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f41297b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Function3<s0, Map.Entry<? extends K, ? extends V>, Continuation<? super Unit>, Object> f41298c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Map.Entry<K, V> f41299d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(Function3<? super s0, ? super Map.Entry<? extends K, ? extends V>, ? super Continuation<? super Unit>, ? extends Object> function3, Map.Entry<? extends K, ? extends V> entry, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f41298c = function3;
                this.f41299d = entry;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f41298c, this.f41299d, continuation);
                aVar.f41297b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
                return invoke2(s0Var, continuation);
            }

            @m8.h
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41296a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function3<s0, Map.Entry<? extends K, ? extends V>, Continuation<? super Unit>, Object> function3 = this.f41298c;
                    Object obj2 = this.f41299d;
                    this.f41296a = 1;
                    if (function3.invoke((s0) this.f41297b, obj2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Map<K, ? extends V> map, Function3<? super s0, ? super Map.Entry<? extends K, ? extends V>, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f41294c = map;
            this.f41295d = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(this.f41294c, this.f41295d, continuation);
            bVar.f41293b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super List<? extends Unit>> continuation) {
            return invoke2(s0Var, (Continuation<? super List<Unit>>) continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super List<Unit>> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            y0 b10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41292a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                s0 s0Var = (s0) this.f41293b;
                Map<K, V> map = this.f41294c;
                Function3<s0, Map.Entry<? extends K, ? extends V>, Continuation<? super Unit>, Object> function3 = this.f41295d;
                ArrayList arrayList = new ArrayList(map.size());
                for (Map.Entry entry : map.entrySet()) {
                    b10 = kotlinx.coroutines.l.b(s0Var, null, null, new a(function3, entry, null), 3, null);
                    arrayList.add(b10);
                }
                Object[] array = arrayList.toArray(new y0[0]);
                Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                y0[] y0VarArr = (y0[]) array;
                this.f41292a = 1;
                obj = kotlinx.coroutines.f.b((y0[]) Arrays.copyOf(y0VarArr, y0VarArr.length), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Extentions.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, com.alipay.sdk.authjs.a.f6841l, "invoke", "(Ljava/lang/Object;)V"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<T, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<j2> f41300a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s0 f41301b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2<T, Continuation<? super Unit>, Object> f41302c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f41303d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Extentions.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.domain.ExtentionsKt$debounce$1$1", f = "Extentions.kt", i = {}, l = {34, 35}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41304a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Function2<T, Continuation<? super Unit>, Object> f41305b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ T f41306c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ long f41307d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef<j2> f41308e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, T t9, long j4, Ref.ObjectRef<j2> objectRef, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f41305b = function2;
                this.f41306c = t9;
                this.f41307d = j4;
                this.f41308e = objectRef;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new a(this.f41305b, this.f41306c, this.f41307d, this.f41308e, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
                return invoke2(s0Var, continuation);
            }

            @m8.h
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41304a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function2<T, Continuation<? super Unit>, Object> function2 = this.f41305b;
                    T t9 = this.f41306c;
                    this.f41304a = 1;
                    if (function2.invoke(t9, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    if (i4 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    this.f41308e.element = null;
                    return Unit.INSTANCE;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                long j4 = this.f41307d;
                this.f41304a = 2;
                if (b1.b(j4, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.f41308e.element = null;
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(Ref.ObjectRef<j2> objectRef, s0 s0Var, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, long j4) {
            super(1);
            this.f41300a = objectRef;
            this.f41301b = s0Var;
            this.f41302c = function2;
            this.f41303d = j4;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
            invoke2((c) obj);
            return Unit.INSTANCE;
        }

        /* JADX WARN: Type inference failed for: r13v1, types: [kotlinx.coroutines.j2, T] */
        @Override // kotlin.jvm.functions.Function1
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(T t9) {
            ?? f10;
            Ref.ObjectRef<j2> objectRef = this.f41300a;
            if (objectRef.element == null) {
                f10 = kotlinx.coroutines.l.f(this.f41301b, null, null, new a(this.f41302c, t9, this.f41303d, objectRef, null), 3, null);
                objectRef.element = f10;
            }
        }
    }

    @m8.h
    public static final <T> Object a(@m8.g List<? extends T> list, @m8.g Function3<? super s0, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object g4 = t0.g(new a(list, function3, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    @m8.h
    public static final <K, V> Object b(@m8.g Map<K, ? extends V> map, @m8.g Function3<? super s0, ? super Map.Entry<? extends K, ? extends V>, ? super Continuation<? super Unit>, ? extends Object> function3, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object g4 = t0.g(new b(map, function3, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    @m8.g
    public static final <T> Function1<T, Unit> c(long j4, @m8.g s0 scope, @m8.g Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> action) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(action, "action");
        return new c(new Ref.ObjectRef(), scope, action, j4);
    }
}
