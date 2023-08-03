package com.giphy.sdk.ui.views;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.GiphyDialogFragment;
import io.sentry.Session;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: GiphySearchBar.kt */
@Metadata(bv = {}, d1 = {"\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0004\b\u0000\u0018\u0000 S2\u00020\u0001:\u0001TB'\b\u0007\u0012\u0006\u0010J\u001a\u00020I\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010K\u0012\b\b\u0002\u0010M\u001a\u00020\r¢\u0006\u0004\bN\u0010OB\u0019\b\u0016\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010Q\u001a\u00020P¢\u0006\u0004\bN\u0010RJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0006\u0010\t\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0014J\u0006\u0010\u0013\u001a\u00020\u0002R=\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR=\u0010 \u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u0018\u0010#\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\"R*\u0010,\u001a\u00020$2\u0006\u0010%\u001a\u00020$8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010<\u001a\u0002058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\"\u0010@\u001a\u0002058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b=\u00107\u001a\u0004\b>\u00109\"\u0004\b?\u0010;R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010G¨\u0006U"}, d2 = {"Lcom/giphy/sdk/ui/views/GiphySearchBar;", "Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;", "", "j", "com/giphy/sdk/ui/views/GiphySearchBar$c", "getTextWatcher", "()Lcom/giphy/sdk/ui/views/GiphySearchBar$c;", "k", "g", "h", "", "text", "setText", "", "resId", "l", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", ContextChain.TAG_INFRA, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", s2.d.f93273b, "Lkotlin/jvm/functions/Function1;", "getOnSearchClickAction", "()Lkotlin/jvm/functions/Function1;", "setOnSearchClickAction", "(Lkotlin/jvm/functions/Function1;)V", "onSearchClickAction", "getQueryListener", "setQueryListener", "queryListener", "Lkotlinx/coroutines/j2;", "Lkotlinx/coroutines/j2;", "queryChangedJob", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;", "value", "m", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;", "getKeyboardState", "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;", "setKeyboardState", "(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;)V", "keyboardState", "", "n", "Z", "getHideKeyboardOnSearch", "()Z", "setHideKeyboardOnSearch", "(Z)V", "hideKeyboardOnSearch", "Landroid/widget/ImageView;", "o", "Landroid/widget/ImageView;", "getClearSearchBtn", "()Landroid/widget/ImageView;", "setClearSearchBtn", "(Landroid/widget/ImageView;)V", "clearSearchBtn", "p", "getPerformSearchBtn", "setPerformSearchBtn", "performSearchBtn", "Landroid/widget/EditText;", "q", "Landroid/widget/EditText;", "getSearchInput", "()Landroid/widget/EditText;", "setSearchInput", "(Landroid/widget/EditText;)V", "searchInput", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Li2/e;", "theme", "(Landroid/content/Context;Li2/e;)V", "s", "a", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class GiphySearchBar extends RoundedConstraintLayout {

    /* renamed from: i  reason: collision with root package name */
    private i2.e f19119i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private Function1<? super String, Unit> f19120j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private Function1<? super String, Unit> f19121k;

    /* renamed from: l  reason: collision with root package name */
    private j2 f19122l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private GiphyDialogFragment.KeyboardState f19123m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f19124n;

    /* renamed from: o  reason: collision with root package name */
    public ImageView f19125o;

    /* renamed from: p  reason: collision with root package name */
    public ImageView f19126p;

    /* renamed from: q  reason: collision with root package name */
    public EditText f19127q;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    public static final a f19118s = new a(null);

    /* renamed from: r  reason: collision with root package name */
    private static final int f19117r = com.giphy.sdk.ui.utils.g.b(2);

    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/giphy/sdk/ui/views/GiphySearchBar$a;", "", "", "SEARCH_BAR_ELEVATION", "I", "a", "()I", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public final int a() {
            return GiphySearchBar.f19117r;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b implements Runnable {
        b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0024, code lost:
            if ((r0.length() > 0) != false) goto L7;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                r4 = this;
                com.giphy.sdk.ui.views.GiphySearchBar r0 = com.giphy.sdk.ui.views.GiphySearchBar.this
                com.giphy.sdk.ui.views.GiphyDialogFragment$KeyboardState r0 = r0.getKeyboardState()
                com.giphy.sdk.ui.views.GiphyDialogFragment$KeyboardState r1 = com.giphy.sdk.ui.views.GiphyDialogFragment.KeyboardState.OPEN
                r2 = 1
                r3 = 0
                if (r0 != r1) goto L27
                com.giphy.sdk.ui.views.GiphySearchBar r0 = com.giphy.sdk.ui.views.GiphySearchBar.this
                android.widget.EditText r0 = r0.getSearchInput()
                android.text.Editable r0 = r0.getText()
                java.lang.String r1 = "searchInput.text"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                int r0 = r0.length()
                if (r0 <= 0) goto L23
                r0 = 1
                goto L24
            L23:
                r0 = 0
            L24:
                if (r0 == 0) goto L27
                goto L28
            L27:
                r2 = 0
            L28:
                com.giphy.sdk.ui.views.GiphySearchBar r0 = com.giphy.sdk.ui.views.GiphySearchBar.this
                android.widget.ImageView r0 = r0.getClearSearchBtn()
                if (r2 == 0) goto L32
                r1 = 0
                goto L34
            L32:
                r1 = 8
            L34:
                r0.setVisibility(r1)
                com.giphy.sdk.ui.views.GiphySearchBar r0 = com.giphy.sdk.ui.views.GiphySearchBar.this
                android.widget.ImageView r0 = r0.getPerformSearchBtn()
                r0.setVisibility(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.views.GiphySearchBar.b.run():void");
        }
    }

    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {}, d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J*\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J*\u0010\u000b\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0012\u0010\r\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\u000e"}, d2 = {"com/giphy/sdk/ui/views/GiphySearchBar$c", "Landroid/text/TextWatcher;", "", "s", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "", "beforeTextChanged", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "Landroid/text/Editable;", "afterTextChanged", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class c implements TextWatcher {

        /* compiled from: GiphySearchBar.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/s0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 1})
        @DebugMetadata(c = "com.giphy.sdk.ui.views.GiphySearchBar$getTextWatcher$1$afterTextChanged$1", f = "GiphySearchBar.kt", i = {}, l = {120}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f19130a;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Editable f19132c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Editable editable, Continuation continuation) {
                super(2, continuation);
                this.f19132c = editable;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> completion) {
                Intrinsics.checkNotNullParameter(completion, "completion");
                return new a(this.f19132c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
                return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f19130a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f19130a = 1;
                    if (b1.b(300L, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                GiphySearchBar.this.getQueryListener().invoke(String.valueOf(this.f19132c));
                return Unit.INSTANCE;
            }
        }

        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@m8.h Editable editable) {
            j2 f10;
            j2 j2Var = GiphySearchBar.this.f19122l;
            if (j2Var != null) {
                j2.a.b(j2Var, null, 1, null);
            }
            GiphySearchBar giphySearchBar = GiphySearchBar.this;
            f10 = kotlinx.coroutines.l.f(a2.f84781a, i1.e(), null, new a(editable, null), 2, null);
            giphySearchBar.f19122l = f10;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
            GiphySearchBar.this.g();
        }
    }

    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class d extends Lambda implements Function1<String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f19133a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }
    }

    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class e extends Lambda implements Function1<String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f19134a = new e();

        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class f extends Lambda implements Function1<String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f19135a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class g extends Lambda implements Function1<String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final g f19136a = new g();

        g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GiphySearchBar.this.getSearchInput().setText((CharSequence) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GiphySearchBar.this.getOnSearchClickAction().invoke(GiphySearchBar.this.getSearchInput().getText().toString());
            if (GiphySearchBar.this.getHideKeyboardOnSearch()) {
                GiphySearchBar.this.h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphySearchBar.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\b0\bH\n¢\u0006\u0002\b\t"}, d2 = {"<anonymous>", "", "view", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "actionId", "", "event", "Landroid/view/KeyEvent;", "onEditorAction"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class j implements TextView.OnEditorActionListener {
        j() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
            if (i4 == 3 || i4 == 0 || i4 == 2) {
                GiphySearchBar.this.getOnSearchClickAction().invoke(GiphySearchBar.this.getSearchInput().getText().toString());
                if (GiphySearchBar.this.getHideKeyboardOnSearch()) {
                    GiphySearchBar.this.h();
                    return true;
                }
                return true;
            }
            return false;
        }
    }

    @JvmOverloads
    public GiphySearchBar(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public GiphySearchBar(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ GiphySearchBar(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        post(new b());
    }

    private final c getTextWatcher() {
        return new c();
    }

    private final void j() {
        ImageView imageView = this.f19125o;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clearSearchBtn");
        }
        imageView.setOnClickListener(new h());
        ImageView imageView2 = this.f19126p;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("performSearchBtn");
        }
        imageView2.setOnClickListener(new i());
        EditText editText = this.f19127q;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchInput");
        }
        editText.addTextChangedListener(getTextWatcher());
        EditText editText2 = this.f19127q;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchInput");
        }
        editText2.setOnEditorActionListener(new j());
    }

    private final void k() {
        EditText editText = this.f19127q;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchInput");
        }
        editText.setHintTextColor(ColorUtils.setAlphaComponent(this.f19119i.k(), 204));
        EditText editText2 = this.f19127q;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchInput");
        }
        editText2.setTextColor(this.f19119i.k());
        ImageView imageView = this.f19125o;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clearSearchBtn");
        }
        imageView.setColorFilter(this.f19119i.k());
        setCornerRadius(com.giphy.sdk.ui.utils.g.b(10));
        ImageView imageView2 = this.f19126p;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("performSearchBtn");
        }
        imageView2.setImageResource(p.h.M2);
        ImageView imageView3 = this.f19126p;
        if (imageView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("performSearchBtn");
        }
        imageView3.setBackground(null);
        setBackgroundColor(this.f19119i.j());
    }

    @m8.g
    public final ImageView getClearSearchBtn() {
        ImageView imageView = this.f19125o;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clearSearchBtn");
        }
        return imageView;
    }

    public final boolean getHideKeyboardOnSearch() {
        return this.f19124n;
    }

    @m8.g
    public final GiphyDialogFragment.KeyboardState getKeyboardState() {
        return this.f19123m;
    }

    @m8.g
    public final Function1<String, Unit> getOnSearchClickAction() {
        return this.f19120j;
    }

    @m8.g
    public final ImageView getPerformSearchBtn() {
        ImageView imageView = this.f19126p;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("performSearchBtn");
        }
        return imageView;
    }

    @m8.g
    public final Function1<String, Unit> getQueryListener() {
        return this.f19121k;
    }

    @m8.g
    public final EditText getSearchInput() {
        EditText editText = this.f19127q;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchInput");
        }
        return editText;
    }

    public final void h() {
        Object systemService = getContext().getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        EditText editText = this.f19127q;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchInput");
        }
        inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }

    public final void i() {
        this.f19121k = f.f19135a;
        this.f19120j = g.f19136a;
        j2 j2Var = this.f19122l;
        if (j2Var != null) {
            j2.a.b(j2Var, null, 1, null);
        }
        this.f19122l = null;
    }

    public final void l(int i4) {
        ImageView imageView = this.f19126p;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("performSearchBtn");
        }
        imageView.setImageResource(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i4, int i10) {
        super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(getResources().getDimensionPixelSize(p.g.A2), 1073741824));
    }

    public final void setClearSearchBtn(@m8.g ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.f19125o = imageView;
    }

    public final void setHideKeyboardOnSearch(boolean z9) {
        this.f19124n = z9;
    }

    public final void setKeyboardState(@m8.g GiphyDialogFragment.KeyboardState value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f19123m = value;
        g();
    }

    public final void setOnSearchClickAction(@m8.g Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f19120j = function1;
    }

    public final void setPerformSearchBtn(@m8.g ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.f19126p = imageView;
    }

    public final void setQueryListener(@m8.g Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f19121k = function1;
    }

    public final void setSearchInput(@m8.g EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<set-?>");
        this.f19127q = editText;
    }

    public final void setText(@m8.g String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        EditText editText = this.f19127q;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchInput");
        }
        editText.setText(text, TextView.BufferType.EDITABLE);
        EditText editText2 = this.f19127q;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchInput");
        }
        EditText editText3 = this.f19127q;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchInput");
        }
        Editable text2 = editText3.getText();
        editText2.setSelection(text2 != null ? text2.length() : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GiphySearchBar(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f19119i = i2.d.f69302n;
        this.f19120j = d.f19133a;
        this.f19121k = e.f19134a;
        this.f19123m = GiphyDialogFragment.KeyboardState.OPEN;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GiphySearchBar(@m8.g Context context, @m8.g i2.e theme) {
        this(context, null, 0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(theme, "theme");
        this.f19119i = theme;
        View.inflate(context, p.m.f18110m0, this);
        View findViewById = findViewById(p.j.I0);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.clearSearchBtn)");
        ImageView imageView = (ImageView) findViewById;
        this.f19125o = imageView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clearSearchBtn");
        }
        imageView.setContentDescription(context.getString(p.o.R0));
        View findViewById2 = findViewById(p.j.G4);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.performSearchBtn)");
        ImageView imageView2 = (ImageView) findViewById2;
        this.f19126p = imageView2;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("performSearchBtn");
        }
        imageView2.setContentDescription(context.getString(p.o.f18204m1));
        View findViewById3 = findViewById(p.j.f17881f5);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.searchInput)");
        this.f19127q = (EditText) findViewById3;
        k();
        j();
    }
}
