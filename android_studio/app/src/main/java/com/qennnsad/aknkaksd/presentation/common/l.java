package com.qennnsad.aknkaksd.presentation.common;

import androidx.annotation.StringRes;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.domain.base.HasActionException;
import com.qennnsad.aknkaksd.domain.base.RequestException;
import com.qennnsad.aknkaksd.util.t;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import timber.log.Timber;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: In
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: BaseViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001*B\u0007¢\u0006\u0004\b=\u0010>J\u0012\u0010\u0006\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J9\u0010\u000f\u001a\u00020\u000e2'\u0010\r\u001a#\b\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\u0002\b\fø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010JG\u0010\u0012\u001a\u00020\u00052\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032'\u0010\r\u001a#\b\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\u0002\b\fø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013JW\u0010\u0019\u001a\u00020\u000e\"\u0004\b\u0001\u0010\u0014\"\u0004\b\u0002\u0010\u0015*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00162\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0006\u0010\u0017\u001a\u00028\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u00050\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010 \u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eJ\u000e\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020!J\u0010\u0010#\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eJ\u000e\u0010$\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020!J\u0015\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00028\u0000¢\u0006\u0004\b&\u0010'R?\u0010-\u001a*\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0004\u0012\u00020!0(j\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0004\u0012\u00020!`)8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b\u001c\u0010,R%\u00103\u001a\u0010\u0012\f\u0012\n .*\u0004\u0018\u00010\u00040\u00040\u00038\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R \u00107\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000205040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00100R \u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u0000040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00100R\u001d\u0010<\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020504098F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u001d\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u000004098F¢\u0006\u0006\u001a\u0004\b6\u0010;\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006?"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/l;", "Action", "Landroidx/lifecycle/ViewModel;", "Landroidx/lifecycle/MutableLiveData;", "", "", "m", "n", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/j2;", "j", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;", "loader", "k", "(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V", "In", "Out", "Lcom/qennnsad/aknkaksd/domain/base/h;", "params", "Lkotlin/Function1;", "h", "(Lcom/qennnsad/aknkaksd/domain/base/h;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;", "", "e", "g", "", "msg", "r", "", "q", "p", "o", "event", "l", "(Ljava/lang/Object;)V", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "a", "Ljava/util/HashMap;", "()Ljava/util/HashMap;", "loadingMap", "kotlin.jvm.PlatformType", "b", "Landroidx/lifecycle/MutableLiveData;", "d", "()Landroidx/lifecycle/MutableLiveData;", "loading", "Lcom/qennnsad/aknkaksd/util/t;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "c", "_toast", "_event", "Landroidx/lifecycle/LiveData;", "f", "()Landroidx/lifecycle/LiveData;", "toastLiveData", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class l<Action> extends ViewModel {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<MutableLiveData<Boolean>, Integer> f50925a = new HashMap<>();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final MutableLiveData<Boolean> f50926b = new MutableLiveData<>(Boolean.FALSE);
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final MutableLiveData<t<a>> f50927c = new MutableLiveData<>();
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final MutableLiveData<t<Action>> f50928d = new MutableLiveData<>();

    /* compiled from: BaseViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "", "<init>", "()V", "a", "b", "c", "d", "Lcom/qennnsad/aknkaksd/presentation/common/l$a$a;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a$d;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static abstract class a {

        /* compiled from: BaseViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/l$a$a;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "", "a", "Ljava/lang/String;", "()Ljava/lang/String;", "msg", "<init>", "(Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.common.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0412a extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final String f50929a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0412a(@m8.g String msg) {
                super(null);
                Intrinsics.checkNotNullParameter(msg, "msg");
                this.f50929a = msg;
            }

            @m8.g
            public final String a() {
                return this.f50929a;
            }
        }

        /* compiled from: BaseViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001B%\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0012\b\u0002\u0010\f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0\b¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R!\u0010\f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u0003\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "", "a", "I", "b", "()I", "msgId", "", "", "[Ljava/lang/Object;", "()[Ljava/lang/Object;", "formatArgs", "<init>", "(I[Ljava/lang/Object;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class b extends a {

            /* renamed from: a  reason: collision with root package name */
            private final int f50930a;
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            private final Object[] f50931b;

            public /* synthetic */ b(int i4, Object[] objArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
                this(i4, (i10 & 2) != 0 ? new Object[0] : objArr);
            }

            @m8.g
            public final Object[] a() {
                return this.f50931b;
            }

            public final int b() {
                return this.f50930a;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(@StringRes int i4, @m8.g Object[] formatArgs) {
                super(null);
                Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
                this.f50930a = i4;
                this.f50931b = formatArgs;
            }
        }

        /* compiled from: BaseViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001B%\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0012\b\u0002\u0010\f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0\b¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R!\u0010\f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u0003\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "", "a", "I", "b", "()I", "msgId", "", "", "[Ljava/lang/Object;", "()[Ljava/lang/Object;", "formatArgs", "<init>", "(I[Ljava/lang/Object;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class c extends a {

            /* renamed from: a  reason: collision with root package name */
            private final int f50932a;
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            private final Object[] f50933b;

            public /* synthetic */ c(int i4, Object[] objArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
                this(i4, (i10 & 2) != 0 ? new Object[0] : objArr);
            }

            @m8.g
            public final Object[] a() {
                return this.f50933b;
            }

            public final int b() {
                return this.f50932a;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(@StringRes int i4, @m8.g Object[] formatArgs) {
                super(null);
                Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
                this.f50932a = i4;
                this.f50933b = formatArgs;
            }
        }

        /* compiled from: BaseViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/l$a$d;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "", "a", "Ljava/lang/String;", "()Ljava/lang/String;", "msg", "<init>", "(Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class d extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final String f50934a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(@m8.g String msg) {
                super(null);
                Intrinsics.checkNotNullParameter(msg, "msg");
                this.f50934a = msg;
            }

            @m8.g
            public final String a() {
                return this.f50934a;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"In", "Out", "Action", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.BaseViewModel$invoke$1", f = "BaseViewModel.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f50935a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MutableLiveData<Boolean> f50936b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ l<Action> f50937c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.qennnsad.aknkaksd.domain.base.h<In, Out> f50938d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ In f50939e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Function1<Out, Unit> f50940f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(MutableLiveData<Boolean> mutableLiveData, l<Action> lVar, com.qennnsad.aknkaksd.domain.base.h<In, Out> hVar, In in, Function1<? super Out, Unit> function1, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f50936b = mutableLiveData;
            this.f50937c = lVar;
            this.f50938d = hVar;
            this.f50939e = in;
            this.f50940f = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f50936b, this.f50937c, this.f50938d, this.f50939e, this.f50940f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return invoke2(s0Var, continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f50935a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                MutableLiveData<Boolean> mutableLiveData = this.f50936b;
                if (mutableLiveData != null) {
                    this.f50937c.m(mutableLiveData);
                }
                com.qennnsad.aknkaksd.domain.base.h<In, Out> hVar = this.f50938d;
                In in = this.f50939e;
                this.f50935a = 1;
                b10 = hVar.b(in, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            Function1<Out, Unit> function1 = this.f50940f;
            if (Result.m77isSuccessimpl(b10)) {
                function1.invoke(b10);
            }
            l<Action> lVar = this.f50937c;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null) {
                lVar.g(m73exceptionOrNullimpl);
            }
            MutableLiveData<Boolean> mutableLiveData2 = this.f50936b;
            if (mutableLiveData2 != null) {
                this.f50937c.n(mutableLiveData2);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"Action", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.BaseViewModel$launch$1", f = "BaseViewModel.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f50941a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f50942b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2<s0, Continuation<? super Unit>, Object> f50943c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f50943c = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            c cVar = new c(this.f50943c, continuation);
            cVar.f50942b = obj;
            return cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return invoke2(s0Var, continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f50941a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Function2<s0, Continuation<? super Unit>, Object> function2 = this.f50943c;
                this.f50941a = 1;
                if (function2.invoke((s0) this.f50942b, this) == coroutine_suspended) {
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
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"Action", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.common.BaseViewModel$launch$2", f = "BaseViewModel.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f50944a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f50945b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ l<Action> f50946c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ MutableLiveData<Boolean> f50947d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function2<s0, Continuation<? super Unit>, Object> f50948e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        d(l<Action> lVar, MutableLiveData<Boolean> mutableLiveData, Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f50946c = lVar;
            this.f50947d = mutableLiveData;
            this.f50948e = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            d dVar = new d(this.f50946c, this.f50947d, this.f50948e, continuation);
            dVar.f50945b = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return invoke2(s0Var, continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f50944a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                this.f50946c.m(this.f50947d);
                Function2<s0, Continuation<? super Unit>, Object> function2 = this.f50948e;
                this.f50944a = 1;
                if (function2.invoke((s0) this.f50945b, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            this.f50946c.n(this.f50947d);
            return Unit.INSTANCE;
        }
    }

    public l() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ j2 i(l lVar, com.qennnsad.aknkaksd.domain.base.h hVar, MutableLiveData mutableLiveData, Object obj, Function1 function1, int i4, Object obj2) {
        if (obj2 == null) {
            if ((i4 & 1) != 0) {
                mutableLiveData = null;
            }
            return lVar.h(hVar, mutableLiveData, obj, function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(MutableLiveData<Boolean> mutableLiveData) {
        HashMap<MutableLiveData<Boolean>, Integer> hashMap = this.f50925a;
        int i4 = hashMap.get(mutableLiveData);
        if (i4 == null) {
            i4 = 0;
        }
        hashMap.put(mutableLiveData, Integer.valueOf(i4.intValue() + 1));
        mutableLiveData.setValue(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(MutableLiveData<Boolean> mutableLiveData) {
        HashMap<MutableLiveData<Boolean>, Integer> hashMap = this.f50925a;
        Integer num = hashMap.get(mutableLiveData);
        if (num == null) {
            num = r3;
        }
        hashMap.put(mutableLiveData, Integer.valueOf(num.intValue() - 1));
        Integer num2 = this.f50925a.get(mutableLiveData);
        mutableLiveData.setValue(Boolean.valueOf((num2 != null ? num2 : 0).intValue() != 0));
    }

    @m8.g
    public final LiveData<t<Action>> c() {
        return this.f50928d;
    }

    @m8.g
    public final MutableLiveData<Boolean> d() {
        return this.f50926b;
    }

    @m8.g
    public final HashMap<MutableLiveData<Boolean>, Integer> e() {
        return this.f50925a;
    }

    @m8.g
    public final LiveData<t<a>> f() {
        return this.f50927c;
    }

    public final void g(@m8.g Throwable e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        Timber.f93860a.y(e4);
        if (e4 instanceof SocketTimeoutException ? true : e4 instanceof ConnectException ? true : e4 instanceof UnknownHostException ? true : e4 instanceof SocketException ? true : e4 instanceof IOException) {
            q(R.string.msg_network_error);
        } else if (e4 instanceof RequestException) {
            r(((RequestException) e4).getResponse().getMsg());
        } else if (e4 instanceof HasActionException) {
            r(((HasActionException) e4).getAction().c());
        } else {
            q(R.string.msg_unknown_error);
        }
    }

    @m8.g
    public final <In, Out> j2 h(@m8.g com.qennnsad.aknkaksd.domain.base.h<In, Out> hVar, @m8.h MutableLiveData<Boolean> mutableLiveData, In in, @m8.g Function1<? super Out, Unit> block) {
        Intrinsics.checkNotNullParameter(hVar, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return j(new b(mutableLiveData, this, hVar, in, block, null));
    }

    @m8.g
    public final j2 j(@m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return kotlinx.coroutines.j.e(ViewModelKt.getViewModelScope(this), null, null, new c(block, null), 3, null);
    }

    public final void k(@m8.g MutableLiveData<Boolean> loader, @m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(loader, "loader");
        Intrinsics.checkNotNullParameter(block, "block");
        kotlinx.coroutines.j.e(ViewModelKt.getViewModelScope(this), null, null, new d(this, loader, block, null), 3, null);
    }

    public final void l(Action action) {
        this.f50928d.setValue(new t<>(action));
    }

    public final void o(int i4) {
        this.f50927c.setValue(new t<>(new a.c(i4, null, 2, null)));
    }

    public final void p(@m8.h String str) {
        if (str != null) {
            this.f50927c.setValue(new t<>(new a.d(str)));
        }
    }

    public final void q(int i4) {
        this.f50927c.setValue(new t<>(new a.b(i4, null, 2, null)));
    }

    public final void r(@m8.h String str) {
        if (str != null) {
            this.f50927c.setValue(new t<>(new a.C0412a(str)));
        }
    }
}
