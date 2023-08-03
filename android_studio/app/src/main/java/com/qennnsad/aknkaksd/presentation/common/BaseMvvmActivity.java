package com.qennnsad.aknkaksd.presentation.common;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelLazy;
import androidx.navigation.NavController;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import com.im.freechat.sdk.a;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;
import com.qennnsad.aknkaksd.data.bean.websocket.PopupType;
import com.qennnsad.aknkaksd.data.bean.websocket.PopupWindowMsg;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity;
import com.qennnsad.aknkaksd.presentation.ui.widget.a;
import com.qennnsad.aknkaksd.util.t;
import io.sentry.protocol.a;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import timber.log.Timber;

/* compiled from: BaseMvvmActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\bK\u0010LJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0017\u0010\n\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\u000e\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014J\b\u0010\u000f\u001a\u00020\u0006H\u0004J\u0016\u0010\u0013\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0014J\u0016\u0010\u0014\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0014J\b\u0010\u0015\u001a\u00020\u0006H\u0014J$\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00162\u0014\u0010\u0019\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\u00060\u0017J\b\u0010\u001b\u001a\u00020\u0006H\u0016J\b\u0010\u001c\u001a\u00020\u0006H\u0014J\b\u0010\u001d\u001a\u00020\u0006H\u0014J\b\u0010\u001e\u001a\u00020\u0006H\u0014J\b\u0010\u001f\u001a\u00020\u0006H\u0014R\"\u0010&\u001a\u00028\u00008\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001b\u00104\u001a\u00020/8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0017\u0010:\u001a\u0002058\u0006¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R4\u0010F\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0011 A*\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010@0@0?8\u0014X\u0094\u0004¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER(\u0010J\u001a\u0010\u0012\f\u0012\n A*\u0004\u0018\u00010G0G0?8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bH\u0010C\u001a\u0004\bI\u0010E¨\u0006M"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;", "Landroidx/viewbinding/ViewBinding;", "VB", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "msg", "", "c0", "Landroid/view/LayoutInflater;", "layoutInflater", "I", "(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", ExifInterface.LATITUDE_SOUTH, "", "", a.b.f83633h, "X", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;", "Lkotlin/Function1;", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "onPrivateLimitLoaded", "d0", "e0", "Y", "onResume", "onPause", "onDestroy", "a", "Landroidx/viewbinding/ViewBinding;", "J", "()Landroidx/viewbinding/ViewBinding;", "a0", "(Landroidx/viewbinding/ViewBinding;)V", "binding", "Landroidx/navigation/NavController;", "b", "Landroidx/navigation/NavController;", "M", "()Landroidx/navigation/NavController;", "b0", "(Landroidx/navigation/NavController;)V", "navController", "Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;", "c", "Lkotlin/Lazy;", "P", "()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;", "sharedViewModel", "Lcom/im/freechat/sdk/a$a;", "d", "Lcom/im/freechat/sdk/a$a;", "R", "()Lcom/im/freechat/sdk/a$a;", "suspendRunner", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;", "e", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;", "popupDialog", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "f", "Landroidx/activity/result/ActivityResultLauncher;", "O", "()Landroidx/activity/result/ActivityResultLauncher;", "requestPermissions", "Landroid/content/Intent;", "g", "N", "openSettings", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class BaseMvvmActivity<VB extends ViewBinding> extends AppCompatActivity {

    /* renamed from: a  reason: collision with root package name */
    protected VB f50843a;

    /* renamed from: b  reason: collision with root package name */
    public NavController f50844b;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.widget.a f50847e;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f50849g;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f50845c = new ViewModelLazy(Reflection.getOrCreateKotlinClass(SharedViewModel.class), new BaseMvvmActivity$special$$inlined$viewModels$default$2(this), new BaseMvvmActivity$special$$inlined$viewModels$default$1(this), new BaseMvvmActivity$special$$inlined$viewModels$default$3(null, this));
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final a.C0327a f50846d = new a.C0327a();
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final ActivityResultLauncher<String[]> f50848f = p5.h.c(this, new c(this), new d(this), new e(this));

    /* compiled from: BaseMvvmActivity.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PopupType.values().length];
            iArr[PopupType.Url.ordinal()] = 1;
            iArr[PopupType.Message.ordinal()] = 2;
            iArr[PopupType.Room.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseMvvmActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "VB", "Landroidx/viewbinding/ViewBinding;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseMvvmActivity<VB> f50854a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List<String> f50855b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(BaseMvvmActivity<VB> baseMvvmActivity, List<String> list) {
            super(0);
            this.f50854a = baseMvvmActivity;
            this.f50855b = list;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ActivityResultLauncher<String[]> O = this.f50854a.O();
            ?? array = this.f50855b.toArray(new String[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            O.launch(array);
        }
    }

    /* compiled from: BaseMvvmActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "VB", "Landroidx/viewbinding/ViewBinding;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseMvvmActivity<VB> f50856a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(BaseMvvmActivity<VB> baseMvvmActivity) {
            super(0);
            this.f50856a = baseMvvmActivity;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f50856a.W();
        }
    }

    /* compiled from: BaseMvvmActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroidx/viewbinding/ViewBinding;", "VB", "", "", "strings", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function1<List<? extends String>, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseMvvmActivity<VB> f50857a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(BaseMvvmActivity<VB> baseMvvmActivity) {
            super(1);
            this.f50857a = baseMvvmActivity;
        }

        public final void a(@m8.g List<String> strings) {
            Intrinsics.checkNotNullParameter(strings, "strings");
            this.f50857a.V(strings);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: BaseMvvmActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroidx/viewbinding/ViewBinding;", "VB", "", "", "strings", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class e extends Lambda implements Function1<List<? extends String>, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseMvvmActivity<VB> f50858a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(BaseMvvmActivity<VB> baseMvvmActivity) {
            super(1);
            this.f50858a = baseMvvmActivity;
        }

        public final void a(@m8.g List<String> strings) {
            Intrinsics.checkNotNullParameter(strings, "strings");
            this.f50858a.X(strings);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: BaseMvvmActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$f", "Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;", "dialog", "", "b", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends MainContainerActivity.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseMvvmActivity<VB> f50859a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PopupWindowMsg f50860b;

        f(BaseMvvmActivity<VB> baseMvvmActivity, PopupWindowMsg popupWindowMsg) {
            this.f50859a = baseMvvmActivity;
            this.f50860b = popupWindowMsg;
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity.b, com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void b(@m8.h com.qennnsad.aknkaksd.presentation.ui.widget.a aVar) {
            super.b(aVar);
            BaseMvvmActivity<VB> baseMvvmActivity = this.f50859a;
            PopupWindowMsg popupWindowMsg = this.f50860b;
            com.qennnsad.aknkaksd.util.l.z(baseMvvmActivity, popupWindowMsg.url, popupWindowMsg.target, false, false, 12, null);
        }
    }

    /* compiled from: BaseMvvmActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity$g", "Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;", "dialog", "", "b", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends MainContainerActivity.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseMvvmActivity<VB> f50861a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PopupWindowMsg f50862b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<PrivateLimitBean, Unit> f50863c;

        /* compiled from: BaseMvvmActivity.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Landroidx/viewbinding/ViewBinding;", "VB", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "limitBean", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        static final class a extends Lambda implements Function1<PrivateLimitBean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function1<PrivateLimitBean, Unit> f50864a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(Function1<? super PrivateLimitBean, Unit> function1) {
                super(1);
                this.f50864a = function1;
            }

            public final void a(@m8.h PrivateLimitBean privateLimitBean) {
                this.f50864a.invoke(privateLimitBean);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PrivateLimitBean privateLimitBean) {
                a(privateLimitBean);
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        g(BaseMvvmActivity<VB> baseMvvmActivity, PopupWindowMsg popupWindowMsg, Function1<? super PrivateLimitBean, Unit> function1) {
            this.f50861a = baseMvvmActivity;
            this.f50862b = popupWindowMsg;
            this.f50863c = function1;
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity.b, com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void b(@m8.h com.qennnsad.aknkaksd.presentation.ui.widget.a aVar) {
            super.b(aVar);
            this.f50861a.P().J(this.f50862b.anchorid, new a(this.f50863c));
        }
    }

    public BaseMvvmActivity() {
        ActivityResultLauncher registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.common.a
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                BaseMvvmActivity.Z(BaseMvvmActivity.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…eturnFromSettings()\n    }");
        this.f50849g = registerForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(BaseMvvmActivity this$0, t tVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        l.a aVar = (l.a) tVar.a();
        if (aVar != null) {
            this$0.c0(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(BaseMvvmActivity this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y();
    }

    private final void c0(l.a aVar) {
        if (aVar instanceof l.a.c) {
            l.a.c cVar = (l.a.c) aVar;
            int b10 = cVar.b();
            Object[] a10 = cVar.a();
            com.qennnsad.aknkaksd.util.toast.a.n(getString(b10, Arrays.copyOf(a10, a10.length)), false, 2, null);
        } else if (aVar instanceof l.a.d) {
            com.qennnsad.aknkaksd.util.toast.a.n(((l.a.d) aVar).a(), false, 2, null);
        } else if (aVar instanceof l.a.C0412a) {
            com.qennnsad.aknkaksd.util.toast.a.f(((l.a.C0412a) aVar).a(), false, 2, null);
        } else if (aVar instanceof l.a.b) {
            l.a.b bVar = (l.a.b) aVar;
            int b11 = bVar.b();
            Object[] a11 = bVar.a();
            com.qennnsad.aknkaksd.util.toast.a.f(getString(b11, Arrays.copyOf(a11, a11.length)), false, 2, null);
        }
    }

    @m8.g
    public abstract VB I(@m8.g LayoutInflater layoutInflater);

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final VB J() {
        VB vb = this.f50843a;
        if (vb != null) {
            return vb;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @m8.g
    public final NavController M() {
        NavController navController = this.f50844b;
        if (navController != null) {
            return navController;
        }
        Intrinsics.throwUninitializedPropertyAccessException("navController");
        return null;
    }

    @m8.g
    protected final ActivityResultLauncher<Intent> N() {
        return this.f50849g;
    }

    @m8.g
    protected ActivityResultLauncher<String[]> O() {
        return this.f50848f;
    }

    @m8.g
    public final SharedViewModel P() {
        return (SharedViewModel) this.f50845c.getValue();
    }

    @m8.g
    public final a.C0327a R() {
        return this.f50846d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void S() {
        O().launch(p5.e.i());
    }

    protected void V(@m8.g List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        if (isFinishing()) {
            return;
        }
        p5.e.s(this, permissions, this.f50849g);
    }

    protected void W() {
    }

    protected void X(@m8.g List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        p5.e.p(this, permissions, new b(this, permissions));
    }

    protected void Y() {
    }

    protected final void a0(@m8.g VB vb) {
        Intrinsics.checkNotNullParameter(vb, "<set-?>");
        this.f50843a = vb;
    }

    public final void b0(@m8.g NavController navController) {
        Intrinsics.checkNotNullParameter(navController, "<set-?>");
        this.f50844b = navController;
    }

    public final void d0(@m8.g PopupWindowMsg msg, @m8.g Function1<? super PrivateLimitBean, Unit> onPrivateLimitLoaded) {
        a.InterfaceC0456a fVar;
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(onPrivateLimitLoaded, "onPrivateLimitLoaded");
        com.qennnsad.aknkaksd.presentation.ui.widget.a aVar = this.f50847e;
        if (aVar != null && aVar.isShowing()) {
            Timber.f93860a.a("xxx Popup Window already shown. Cancelling..", new Object[0]);
            return;
        }
        Timber.b bVar = Timber.f93860a;
        bVar.a("xxx Preparing new Popup Window..", new Object[0]);
        com.qennnsad.aknkaksd.presentation.ui.widget.a aVar2 = new com.qennnsad.aknkaksd.presentation.ui.widget.a(this);
        this.f50847e = aVar2;
        bVar.a("xxx Popup Window is of type: " + msg.popup_type, new Object[0]);
        int i4 = a.$EnumSwitchMapping$0[msg.popup_type.ordinal()];
        if (i4 == 1) {
            fVar = new f(this, msg);
        } else if (i4 == 2) {
            aVar2.b();
            fVar = new MainContainerActivity.b();
        } else if (i4 != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            fVar = new g(this, msg, onPrivateLimitLoaded);
        }
        aVar2.k(msg.title);
        aVar2.i(msg.content);
        aVar2.f(R.string.ok);
        aVar2.d(R.string.cancel);
        aVar2.j(fVar);
        aVar2.setCancelable(false);
        aVar2.show();
        bVar.a("xxx Popup Window displayed!", new Object[0]);
    }

    public void e0() {
        com.qennnsad.aknkaksd.util.toast.a.y(R.string.too_frequent_operation_warn, false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        LayoutInflater layoutInflater = getLayoutInflater();
        Intrinsics.checkNotNullExpressionValue(layoutInflater, "layoutInflater");
        a0(I(layoutInflater));
        setContentView(J().getRoot());
        P().P(this);
        P().f().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.common.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseMvvmActivity.U(BaseMvvmActivity.this, (t) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Timber.f93860a.u("----- onDestroy -----", new Object[0]);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        Timber.f93860a.u("----- onPause -----", new Object[0]);
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        Timber.f93860a.u("----- onResume -----", new Object[0]);
        super.onResume();
    }
}
