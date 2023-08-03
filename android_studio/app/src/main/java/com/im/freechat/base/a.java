package com.im.freechat.base;

import android.os.Bundle;
import androidx.annotation.StringRes;
import androidx.core.app.NotificationCompat;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import java.lang.Enum;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;
import m8.h;

/* compiled from: BaseViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0003:\u0002$(B\u0007¢\u0006\u0004\b.\u0010/J9\u0010\f\u001a\u00020\u000b2'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0004¢\u0006\u0002\b\tø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJG\u0010\u0011\u001a\u00020\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0004¢\u0006\u0002\b\tø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0017\u001a\u00020\u00072\b\b\u0001\u0010\u0014\u001a\u00020\u00132\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b0\u0015\"\u0004\u0018\u00010\b¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00028\u00002\b\b\u0002\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!R \u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R&\u0010)\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000'0\"0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010%R\u001d\u0010,\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"0*8F¢\u0006\u0006\u001a\u0004\b(\u0010+R#\u0010-\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000'0\"0*8F¢\u0006\u0006\u001a\u0004\b$\u0010+\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, d2 = {"Lcom/im/freechat/base/a;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/j2;", "c", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;", "Landroidx/lifecycle/MutableLiveData;", "", "loader", "d", "(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V", "", "msgId", "", "formatArgs", "h", "(I[Ljava/lang/Object;)V", "", "msg", "g", "(Ljava/lang/String;)Lkotlin/Unit;", "direction", "Landroid/os/Bundle;", "extras", "e", "(Ljava/lang/Enum;Landroid/os/Bundle;)V", "Lo4/a;", "Lcom/im/freechat/base/a$b;", "a", "Landroidx/lifecycle/MutableLiveData;", "_toast", "Lcom/im/freechat/base/a$a;", "b", "_navigation", "Landroidx/lifecycle/LiveData;", "()Landroidx/lifecycle/LiveData;", "toastLiveData", NotificationCompat.CATEGORY_NAVIGATION, "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public abstract class a<T extends Enum<T>> extends ViewModel {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final MutableLiveData<o4.a<b>> f39458a = new MutableLiveData<>();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final MutableLiveData<o4.a<C0301a<T>>> f39459b = new MutableLiveData<>();

    /* compiled from: BaseViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u0000*\u000e\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00010\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\b\u001a\u00028\u0001\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0004\u001a\u00028\u0001HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J*\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\b\u001a\u00028\u00012\b\b\u0002\u0010\t\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÖ\u0003R\u0017\u0010\b\u001a\u00028\u00018\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0013\u001a\u0004\b\u0014\u0010\u0005R\u0017\u0010\t\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/base/a$a;", "", ExifInterface.GPS_DIRECTION_TRUE, "", "a", "()Ljava/lang/Enum;", "Landroid/os/Bundle;", "b", "direction", "extras", "c", "(Ljava/lang/Enum;Landroid/os/Bundle;)Lcom/im/freechat/base/a$a;", "", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/Enum;", "e", "Landroid/os/Bundle;", "f", "()Landroid/os/Bundle;", "<init>", "(Ljava/lang/Enum;Landroid/os/Bundle;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.base.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0301a<T extends Enum<T>> {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final T f39460a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f39461b;

        public C0301a(@m8.g T direction, @m8.g Bundle extras) {
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(extras, "extras");
            this.f39460a = direction;
            this.f39461b = extras;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ C0301a d(C0301a c0301a, Enum r12, Bundle bundle, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                r12 = c0301a.f39460a;
            }
            if ((i4 & 2) != 0) {
                bundle = c0301a.f39461b;
            }
            return c0301a.c(r12, bundle);
        }

        @m8.g
        public final T a() {
            return this.f39460a;
        }

        @m8.g
        public final Bundle b() {
            return this.f39461b;
        }

        @m8.g
        public final C0301a<T> c(@m8.g T direction, @m8.g Bundle extras) {
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return new C0301a<>(direction, extras);
        }

        @m8.g
        public final T e() {
            return this.f39460a;
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0301a) {
                C0301a c0301a = (C0301a) obj;
                return Intrinsics.areEqual(this.f39460a, c0301a.f39460a) && Intrinsics.areEqual(this.f39461b, c0301a.f39461b);
            }
            return false;
        }

        @m8.g
        public final Bundle f() {
            return this.f39461b;
        }

        public int hashCode() {
            return (this.f39460a.hashCode() * 31) + this.f39461b.hashCode();
        }

        @m8.g
        public String toString() {
            return "Navigation(direction=" + this.f39460a + ", extras=" + this.f39461b + ')';
        }
    }

    /* compiled from: BaseViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/base/a$b;", "", "<init>", "()V", "a", "b", "Lcom/im/freechat/base/a$b$a;", "Lcom/im/freechat/base/a$b$b;", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes.dex */
    public static abstract class b {

        /* compiled from: BaseViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001B%\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0012\b\u0002\u0010\f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0\b¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R!\u0010\f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u0003\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/base/a$b$a;", "Lcom/im/freechat/base/a$b;", "", "a", "I", "b", "()I", "msgId", "", "", "[Ljava/lang/Object;", "()[Ljava/lang/Object;", "formatArgs", "<init>", "(I[Ljava/lang/Object;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* renamed from: com.im.freechat.base.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0302a extends b {

            /* renamed from: a  reason: collision with root package name */
            private final int f39462a;
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            private final Object[] f39463b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0302a(@StringRes int i4, @m8.g Object[] formatArgs) {
                super(null);
                Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
                this.f39462a = i4;
                this.f39463b = formatArgs;
            }

            @m8.g
            public final Object[] a() {
                return this.f39463b;
            }

            public final int b() {
                return this.f39462a;
            }

            public /* synthetic */ C0302a(int i4, Object[] objArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
                this(i4, (i10 & 2) != 0 ? new Object[0] : objArr);
            }
        }

        /* compiled from: BaseViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/im/freechat/base/a$b$b;", "Lcom/im/freechat/base/a$b;", "", "a", "Ljava/lang/String;", "()Ljava/lang/String;", "msg", "<init>", "(Ljava/lang/String;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* renamed from: com.im.freechat.base.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0303b extends b {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final String f39464a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0303b(@m8.g String msg) {
                super(null);
                Intrinsics.checkNotNullParameter(msg, "msg");
                this.f39464a = msg;
            }

            @m8.g
            public final String a() {
                return this.f39464a;
            }
        }

        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: BaseViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0000*\u00020\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.base.BaseViewModel$launch$1", f = "BaseViewModel.kt", i = {}, l = {23}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f39465a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f39466b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2<s0, Continuation<? super Unit>, Object> f39467c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f39467c = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@h Object obj, @m8.g Continuation<?> continuation) {
            c cVar = new c(this.f39467c, continuation);
            cVar.f39466b = obj;
            return cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@m8.g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f39465a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Function2<s0, Continuation<? super Unit>, Object> function2 = this.f39467c;
                this.f39465a = 1;
                if (function2.invoke((s0) this.f39466b, this) == coroutine_suspended) {
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

    /* compiled from: BaseViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0000*\u00020\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.base.BaseViewModel$launch$2", f = "BaseViewModel.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f39468a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f39469b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MutableLiveData<Boolean> f39470c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function2<s0, Continuation<? super Unit>, Object> f39471d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        d(MutableLiveData<Boolean> mutableLiveData, Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f39470c = mutableLiveData;
            this.f39471d = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@h Object obj, @m8.g Continuation<?> continuation) {
            d dVar = new d(this.f39470c, this.f39471d, continuation);
            dVar.f39469b = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@m8.g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f39468a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                this.f39470c.setValue(Boxing.boxBoolean(true));
                Function2<s0, Continuation<? super Unit>, Object> function2 = this.f39471d;
                this.f39468a = 1;
                if (function2.invoke((s0) this.f39469b, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            this.f39470c.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ void f(a aVar, Enum r12, Bundle bundle, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigate");
        }
        if ((i4 & 2) != 0) {
            bundle = BundleKt.bundleOf(new Pair[0]);
        }
        aVar.e(r12, bundle);
    }

    @m8.g
    public final LiveData<o4.a<C0301a<T>>> a() {
        return this.f39459b;
    }

    @m8.g
    public final LiveData<o4.a<b>> b() {
        return this.f39458a;
    }

    @m8.g
    public final j2 c(@m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> block) {
        j2 f10;
        Intrinsics.checkNotNullParameter(block, "block");
        f10 = l.f(ViewModelKt.getViewModelScope(this), null, null, new c(block, null), 3, null);
        return f10;
    }

    public final void d(@m8.g MutableLiveData<Boolean> loader, @m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(loader, "loader");
        Intrinsics.checkNotNullParameter(block, "block");
        l.f(ViewModelKt.getViewModelScope(this), null, null, new d(loader, block, null), 3, null);
    }

    public final void e(@m8.g T direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.f39459b.setValue(new o4.a<>(new C0301a(direction, extras)));
    }

    @h
    public final Unit g(@h String str) {
        if (str != null) {
            this.f39458a.postValue(new o4.a<>(new b.C0303b(str)));
            return Unit.INSTANCE;
        }
        return null;
    }

    public final void h(@StringRes int i4, @m8.g Object... formatArgs) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        this.f39458a.postValue(new o4.a<>(new b.C0302a(i4, formatArgs)));
    }
}
