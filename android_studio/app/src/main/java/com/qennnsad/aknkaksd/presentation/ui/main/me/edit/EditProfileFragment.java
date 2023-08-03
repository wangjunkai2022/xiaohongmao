package com.qennnsad.aknkaksd.presentation.ui.main.me.edit;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.navigation.fragment.FragmentKt;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.WheelView;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.s1;
import e5.f1;
import e5.u;
import e5.w;
import io.sentry.protocol.a;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.s0;

/* compiled from: EditProfileFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\bT\u0010UJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0006H\u0002J\b\u0010\u000b\u001a\u00020\u0006H\u0002J\b\u0010\f\u001a\u00020\u0006H\u0002J\b\u0010\r\u001a\u00020\u0006H\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0002J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0016\u001a\u00020\u0006H\u0002J\b\u0010\u0017\u001a\u00020\u0006H\u0002J\u0016\u0010\u001b\u001a\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\b\u0010\u001c\u001a\u00020\u0006H\u0002J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u001a\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010)\u001a\u00020\u00062\u0006\u0010&\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010'H\u0016J\u0010\u0010+\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0003H\u0014R\u001b\u00101\u001a\u00020,8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R$\u00108\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u0010<\u001a\b\u0012\u0004\u0012\u00020\u0019098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00020\u0019098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010;R\u001a\u0010@\u001a\b\u0012\u0004\u0012\u00020\u0019098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010;R?\u0010F\u001a&\u0012\f\u0012\n B*\u0004\u0018\u00010\u00190\u0019 B*\u0012\u0012\u000e\b\u0001\u0012\n B*\u0004\u0018\u00010\u00190\u00190A0A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010.\u001a\u0004\bD\u0010ER.\u0010J\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0019 B*\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010A0A0G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\"\u0010M\u001a\u0010\u0012\f\u0012\n B*\u0004\u0018\u00010K0K0G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010IR\"\u0010O\u001a\u0010\u0012\f\u0012\n B*\u0004\u0018\u00010\u001d0\u001d0G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010IR\"\u0010Q\u001a\u0010\u0012\f\u0012\n B*\u0004\u0018\u00010K0K0G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010IR\"\u0010S\u001a\u0010\u0012\f\u0012\n B*\u0004\u0018\u00010K0K0G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010I¨\u0006V"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/f1;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/e;", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "w1", "", "o1", "user", "y1", "j1", "h1", "i1", "g1", "f1", "X0", "", "monthIndex", "yearIndex", "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;", "dayWheel", "n1", "c1", "C1", "", "", a.b.f83633h, "s1", "p1", "Landroid/net/Uri;", "uri", "A1", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "v1", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "r1", "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;", "k", "Lkotlin/Lazy;", "m1", "()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;", "viewModel", "l", "Landroid/net/Uri;", "l1", "()Landroid/net/Uri;", "x1", "(Landroid/net/Uri;)V", "photoURI", "Ljava/util/ArrayList;", "m", "Ljava/util/ArrayList;", "yData", "n", "mData", "o", "dData", "", "kotlin.jvm.PlatformType", "p", "k1", "()[Ljava/lang/String;", "emotions", "Landroidx/activity/result/ActivityResultLauncher;", "q", "Landroidx/activity/result/ActivityResultLauncher;", "requestPermissions", "Landroid/content/Intent;", "r", "openSettings", "s", "launchCamera", "t", "openGallery", "u", "startUCrop", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class EditProfileFragment extends com.qennnsad.aknkaksd.presentation.ui.main.me.edit.t<f1, com.qennnsad.aknkaksd.presentation.ui.main.me.edit.e> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52865k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private Uri f52866l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final ArrayList<String> f52867m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final ArrayList<String> f52868n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final ArrayList<String> f52869o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final Lazy f52870p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final ActivityResultLauncher<String[]> f52871q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f52872r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final ActivityResultLauncher<Uri> f52873s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f52874t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f52875u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<String> f52883a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EditProfileFragment f52884b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Dialog f52885c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Ref.ObjectRef<String> objectRef, EditProfileFragment editProfileFragment, Dialog dialog) {
            super(0);
            this.f52883a = objectRef;
            this.f52884b = editProfileFragment;
            this.f52885c = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
            Date date = new Date(System.currentTimeMillis());
            if (this.f52883a.element.length() == 0) {
                com.qennnsad.aknkaksd.util.toast.a.m(R.string.edit_profile_nocome_xuanze, false, 2, null);
                return;
            }
            int parseInt = Integer.parseInt(this.f52883a.element);
            String format = simpleDateFormat.format(date);
            Intrinsics.checkNotNullExpressionValue(format, "formatter.format(curDate)");
            if (parseInt > Integer.parseInt(format)) {
                com.qennnsad.aknkaksd.util.toast.a.m(R.string.edit_profile_nocome_chaoguo, false, 2, null);
                return;
            }
            this.f52884b.e0().u(com.qennnsad.aknkaksd.util.o.f54868a.a(this.f52883a.element, "yyyyMMdd"));
            this.f52885c.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f52886a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Dialog dialog) {
            super(0);
            this.f52886a = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f52886a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Dialog f52888b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Dialog dialog) {
            super(0);
            this.f52888b = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            EditProfileFragment.e1(EditProfileFragment.this, this.f52888b, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Dialog f52890b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Dialog dialog) {
            super(0);
            this.f52890b = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            EditProfileFragment.e1(EditProfileFragment.this, this.f52890b, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Dialog f52892b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Dialog dialog) {
            super(0);
            this.f52892b = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            EditProfileFragment.e1(EditProfileFragment.this, this.f52892b, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Dialog f52894b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(Dialog dialog) {
            super(0);
            this.f52894b = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            EditProfileFragment.e1(EditProfileFragment.this, this.f52894b, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Dialog f52896b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(Dialog dialog) {
            super(0);
            this.f52896b = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            EditProfileFragment.e1(EditProfileFragment.this, this.f52896b, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function1<String, Unit> {
        h() {
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
            EditProfileFragment.this.e0().v(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function1<String, Unit> {
        i() {
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
            EditProfileFragment.this.e0().y(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class j extends Lambda implements Function1<String, Unit> {
        j() {
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
            EditProfileFragment.this.e0().z(it);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class k extends Lambda implements Function1<String, Unit> {
        k() {
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
            EditProfileFragment.this.e0().A(it);
        }
    }

    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\u000e\b\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00010\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "", "kotlin.jvm.PlatformType", "invoke", "()[Ljava/lang/String;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class l extends Lambda implements Function0<String[]> {
        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final String[] invoke() {
            return EditProfileFragment.this.getResources().getStringArray(R.array.emotion);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class m extends Lambda implements Function0<Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: EditProfileFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ EditProfileFragment f52903a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(EditProfileFragment editProfileFragment) {
                super(0);
                this.f52903a = editProfileFragment;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.f52903a.C1();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }

        m() {
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
            Context requireContext = EditProfileFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            new com.qennnsad.aknkaksd.presentation.ui.main.me.edit.d(requireContext, new a(EditProfileFragment.this), new b(EditProfileFragment.this)).show();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: EditProfileFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ EditProfileFragment f52904a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(EditProfileFragment editProfileFragment) {
                super(0);
                this.f52904a = editProfileFragment;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Intent intent = new Intent();
                intent.setType("image/*");
                intent.setAction("android.intent.action.GET_CONTENT");
                intent.addCategory("android.intent.category.OPENABLE");
                this.f52904a.f52874t.launch(Intent.createChooser(intent, this.f52904a.getString(R.string.photo_select)));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class n extends Lambda implements Function0<Unit> {
        n() {
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
            FragmentActivity requireActivity = EditProfileFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            h1.e(requireActivity, EditProfileFragment.this.w1().getId(), null, null, 6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class o extends Lambda implements Function0<Unit> {
        o() {
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
            EditProfileFragment.this.j1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class p extends Lambda implements Function0<Unit> {
        p() {
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
            EditProfileFragment.this.h1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class q extends Lambda implements Function0<Unit> {
        q() {
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
            EditProfileFragment.this.i1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class r extends Lambda implements Function0<Unit> {
        r() {
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
            EditProfileFragment.this.X0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class s extends Lambda implements Function0<Unit> {
        s() {
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
            EditProfileFragment.this.c1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class t extends Lambda implements Function0<Unit> {
        t() {
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
            EditProfileFragment.this.g1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class u extends Lambda implements Function0<Unit> {
        u() {
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
            FragmentKt.findNavController(EditProfileFragment.this).navigateUp();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class v extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List<String> f52914b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        v(List<String> list) {
            super(0);
            this.f52914b = list;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ActivityResultLauncher activityResultLauncher = EditProfileFragment.this.f52871q;
            Object[] array = this.f52914b.toArray(new String[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            activityResultLauncher.launch(array);
        }
    }

    /* compiled from: EditProfileFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.me.edit.EditProfileFragment$onViewCreated$1", f = "EditProfileFragment.kt", i = {}, l = {66}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class w extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52915a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: EditProfileFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.main.me.edit.EditProfileFragment$onViewCreated$1$1", f = "EditProfileFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<UserBean, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f52917a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f52918b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ EditProfileFragment f52919c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(EditProfileFragment editProfileFragment, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f52919c = editProfileFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f52919c, continuation);
                aVar.f52918b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.h UserBean userBean, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(userBean, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f52917a == 0) {
                    ResultKt.throwOnFailure(obj);
                    UserBean userBean = (UserBean) this.f52918b;
                    EditProfileFragment editProfileFragment = this.f52919c;
                    if (userBean == null) {
                        return Unit.INSTANCE;
                    }
                    editProfileFragment.y1(userBean);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        w(Continuation<? super w> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new w(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((w) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52915a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.t<UserBean> A = EditProfileFragment.this.d0().A();
                a aVar = new a(EditProfileFragment.this, null);
                this.f52915a = 1;
                if (kotlinx.coroutines.flow.k.A(A, aVar, this) == coroutine_suspended) {
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

    /* compiled from: EditProfileFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class x extends Lambda implements Function0<Unit> {
        x() {
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
            EditProfileFragment.this.p1();
        }
    }

    /* compiled from: EditProfileFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class y extends Lambda implements Function1<List<? extends String>, Unit> {
        y() {
            super(1);
        }

        public final void a(@m8.g List<String> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (EditProfileFragment.this.isDetached()) {
                return;
            }
            FragmentActivity requireActivity = EditProfileFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            p5.e.s(requireActivity, it, EditProfileFragment.this.f52872r);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: EditProfileFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class z extends Lambda implements Function1<List<? extends String>, Unit> {
        z() {
            super(1);
        }

        public final void a(@m8.g List<String> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            EditProfileFragment.this.s1(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    public EditProfileFragment() {
        Lazy lazy;
        Lazy lazy2;
        String valueOf;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new EditProfileFragment$special$$inlined$viewModels$default$2(new EditProfileFragment$special$$inlined$viewModels$default$1(this)));
        this.f52865k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(EditProfileViewModel.class), new EditProfileFragment$special$$inlined$viewModels$default$3(lazy), new EditProfileFragment$special$$inlined$viewModels$default$4(null, lazy), new EditProfileFragment$special$$inlined$viewModels$default$5(this, lazy));
        ArrayList<String> arrayList = new ArrayList<>();
        int i4 = Calendar.getInstance().get(1);
        int i10 = 1950;
        if (1950 <= i4) {
            while (true) {
                arrayList.add(String.valueOf(i10));
                if (i10 == i4) {
                    break;
                }
                i10++;
            }
        }
        this.f52867m = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (int i11 = 1; i11 < 13; i11++) {
            if (i11 < 10) {
                StringBuilder sb = new StringBuilder();
                sb.append('0');
                sb.append(i11);
                valueOf = sb.toString();
            } else {
                valueOf = String.valueOf(i11);
            }
            arrayList2.add(valueOf);
        }
        this.f52868n = arrayList2;
        this.f52869o = new ArrayList<>();
        lazy2 = LazyKt__LazyJVMKt.lazy(new l());
        this.f52870p = lazy2;
        this.f52871q = p5.h.d(this, new x(), new y(), new z());
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.k
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                EditProfileFragment.u1(EditProfileFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…t()\n    ) { takePhoto() }");
        this.f52872r = registerForActivityResult;
        ActivityResultLauncher<Uri> registerForActivityResult2 = registerForActivityResult(new ActivityResultContracts.TakePicture(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.l
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                EditProfileFragment.q1(EditProfileFragment.this, (Boolean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult2, "registerForActivityResul…ropActivity(photoURI!!) }");
        this.f52873s = registerForActivityResult2;
        ActivityResultLauncher<Intent> registerForActivityResult3 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.i
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                EditProfileFragment.t1(EditProfileFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult3, "registerForActivityResul…        }\n        }\n    }");
        this.f52874t = registerForActivityResult3;
        ActivityResultLauncher<Intent> registerForActivityResult4 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.j
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                EditProfileFragment.B1(EditProfileFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult4, "registerForActivityResul…ieve_cropped_image)\n    }");
        this.f52875u = registerForActivityResult4;
    }

    private final void A1(Uri uri) {
        ActivityResultLauncher<Intent> activityResultLauncher = this.f52875u;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        activityResultLauncher.launch(com.qennnsad.aknkaksd.util.l.q(requireActivity, uri));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B1(EditProfileFragment this$0, ActivityResult result) {
        Unit unit;
        String path;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        Intent data = result.getData();
        if (data != null) {
            Uri e4 = com.yalantis.ucrop.d.e(data);
            if (e4 != null && (path = e4.getPath()) != null) {
                Intrinsics.checkNotNullExpressionValue(path, "UCrop.getOutput(it)?.path ?: return@let");
                this$0.e0().B(path);
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.toast_cannot_retrieve_cropped_image, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C1() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        if (com.qennnsad.aknkaksd.util.l.m(requireContext, "android.permission.CAMERA")) {
            p1();
        } else {
            this.f52871q.launch(new String[]{"android.permission.CAMERA"});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.String] */
    public final void X0() {
        final Ref.IntRef intRef = new Ref.IntRef();
        final Ref.IntRef intRef2 = new Ref.IntRef();
        final Ref.IntRef intRef3 = new Ref.IntRef();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = this.f52867m.get(intRef.element) + this.f52868n.get(intRef3.element) + "01";
        final e5.u c10 = e5.u.c(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        final Dialog dialog = new Dialog(requireContext(), R.style.BottomDialog);
        dialog.setContentView(c10.getRoot());
        Window window = dialog.getWindow();
        if (window != null) {
            window.setLayout(-1, -2);
            window.setGravity(80);
        }
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.f
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                EditProfileFragment.Y0(u.this, this, intRef3, intRef, intRef2, objectRef, dialog, dialogInterface);
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y0(final e5.u dialogBinding, final EditProfileFragment this$0, final Ref.IntRef monthIndex, final Ref.IntRef yearIndex, final Ref.IntRef dayIndex, final Ref.ObjectRef result, Dialog this_apply, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(dialogBinding, "$dialogBinding");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(monthIndex, "$monthIndex");
        Intrinsics.checkNotNullParameter(yearIndex, "$yearIndex");
        Intrinsics.checkNotNullParameter(dayIndex, "$dayIndex");
        Intrinsics.checkNotNullParameter(result, "$result");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        WheelView wheelView = dialogBinding.f63163c;
        Context requireContext = this$0.requireContext();
        Object[] array = this$0.f52869o.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        wheelView.setViewAdapter(new com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.d(requireContext, array));
        wheelView.setCurrentItem(0);
        wheelView.g(new com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.o
            @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.g
            public final void a(WheelView wheelView2, int i4, int i10) {
                EditProfileFragment.b1(Ref.IntRef.this, result, this$0, yearIndex, monthIndex, wheelView2, i4, i10);
            }
        });
        WheelView wheelView2 = dialogBinding.f63170j;
        Context requireContext2 = this$0.requireContext();
        Object[] array2 = this$0.f52867m.toArray(new String[0]);
        Intrinsics.checkNotNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        wheelView2.setViewAdapter(new com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.d(requireContext2, array2));
        wheelView2.setCurrentItem(0);
        wheelView2.g(new com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.n
            @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.g
            public final void a(WheelView wheelView3, int i4, int i10) {
                EditProfileFragment.Z0(Ref.IntRef.this, this$0, monthIndex, dialogBinding, result, dayIndex, wheelView3, i4, i10);
            }
        });
        WheelView wheelView3 = dialogBinding.f63166f;
        Context requireContext3 = this$0.requireContext();
        Object[] array3 = this$0.f52868n.toArray(new String[0]);
        Intrinsics.checkNotNull(array3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        wheelView3.setViewAdapter(new com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.d(requireContext3, array3));
        wheelView3.setCurrentItem(0);
        wheelView3.g(new com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.m
            @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.g
            public final void a(WheelView wheelView4, int i4, int i10) {
                EditProfileFragment.a1(Ref.IntRef.this, this$0, yearIndex, dialogBinding, result, dayIndex, wheelView4, i4, i10);
            }
        });
        TextView ok = dialogBinding.f63167g;
        Intrinsics.checkNotNullExpressionValue(ok, "ok");
        s1.U(ok, 0L, new a(result, this$0, this_apply), 1, null);
        TextView cancel = dialogBinding.f63162b;
        Intrinsics.checkNotNullExpressionValue(cancel, "cancel");
        s1.U(cancel, 0L, new b(this_apply), 1, null);
        int i4 = monthIndex.element;
        int i10 = yearIndex.element;
        WheelView day = dialogBinding.f63163c;
        Intrinsics.checkNotNullExpressionValue(day, "day");
        this$0.n1(i4, i10, day);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.String] */
    public static final void Z0(Ref.IntRef yearIndex, EditProfileFragment this$0, Ref.IntRef monthIndex, e5.u this_with, Ref.ObjectRef result, Ref.IntRef dayIndex, WheelView wheelView, int i4, int i10) {
        Intrinsics.checkNotNullParameter(yearIndex, "$yearIndex");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(monthIndex, "$monthIndex");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(result, "$result");
        Intrinsics.checkNotNullParameter(dayIndex, "$dayIndex");
        yearIndex.element = i10;
        int i11 = monthIndex.element;
        WheelView day = this_with.f63163c;
        Intrinsics.checkNotNullExpressionValue(day, "day");
        this$0.n1(i11, i10, day);
        result.element = this$0.f52867m.get(yearIndex.element) + this$0.f52868n.get(monthIndex.element) + this$0.f52869o.get(dayIndex.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v7, types: [T, java.lang.String] */
    public static final void a1(Ref.IntRef monthIndex, EditProfileFragment this$0, Ref.IntRef yearIndex, e5.u this_with, Ref.ObjectRef result, Ref.IntRef dayIndex, WheelView wheelView, int i4, int i10) {
        Intrinsics.checkNotNullParameter(monthIndex, "$monthIndex");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(yearIndex, "$yearIndex");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(result, "$result");
        Intrinsics.checkNotNullParameter(dayIndex, "$dayIndex");
        monthIndex.element = i10;
        int i11 = yearIndex.element;
        WheelView day = this_with.f63163c;
        Intrinsics.checkNotNullExpressionValue(day, "day");
        this$0.n1(i10, i11, day);
        result.element = this$0.f52867m.get(yearIndex.element) + this$0.f52868n.get(monthIndex.element) + this$0.f52869o.get(dayIndex.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.String] */
    public static final void b1(Ref.IntRef dayIndex, Ref.ObjectRef result, EditProfileFragment this$0, Ref.IntRef yearIndex, Ref.IntRef monthIndex, WheelView wheelView, int i4, int i10) {
        Intrinsics.checkNotNullParameter(dayIndex, "$dayIndex");
        Intrinsics.checkNotNullParameter(result, "$result");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(yearIndex, "$yearIndex");
        Intrinsics.checkNotNullParameter(monthIndex, "$monthIndex");
        dayIndex.element = i10;
        result.element = this$0.f52867m.get(yearIndex.element) + this$0.f52868n.get(monthIndex.element) + this$0.f52869o.get(dayIndex.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c1() {
        final e5.w c10 = e5.w.c(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        final Dialog dialog = new Dialog(requireContext(), R.style.BottomDialog);
        dialog.setContentView(c10.getRoot());
        Window window = dialog.getWindow();
        if (window != null) {
            window.setLayout(-1, -2);
            window.setGravity(80);
        }
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.g
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                EditProfileFragment.d1(w.this, this, dialog, dialogInterface);
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(e5.w dialogBinding, EditProfileFragment this$0, Dialog this_apply, DialogInterface dialogInterface) {
        Pair pair;
        Intrinsics.checkNotNullParameter(dialogBinding, "$dialogBinding");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        String obj = ((f1) this$0.m0()).f62392s.getText().toString();
        if (Intrinsics.areEqual(obj, dialogBinding.f63247j.getText().toString())) {
            pair = TuplesKt.to(dialogBinding.f63253p, dialogBinding.f63247j);
        } else if (Intrinsics.areEqual(obj, dialogBinding.f63242e.getText().toString())) {
            pair = TuplesKt.to(dialogBinding.f63241d, dialogBinding.f63242e);
        } else if (Intrinsics.areEqual(obj, dialogBinding.f63244g.getText().toString())) {
            pair = TuplesKt.to(dialogBinding.f63243f, dialogBinding.f63244g);
        } else if (Intrinsics.areEqual(obj, dialogBinding.f63246i.getText().toString())) {
            pair = TuplesKt.to(dialogBinding.f63245h, dialogBinding.f63246i);
        } else {
            pair = Intrinsics.areEqual(obj, dialogBinding.f63240c.getText().toString()) ? TuplesKt.to(dialogBinding.f63239b, dialogBinding.f63240c) : TuplesKt.to(null, null);
        }
        ImageView imageView = (ImageView) pair.getFirst();
        if (imageView != null) {
            imageView.setImageResource(R.drawable.ic_radio_selected);
        }
        TextView textView = (TextView) pair.getSecond();
        if (textView != null) {
            textView.setTextColor(ContextCompat.getColor(this$0.requireContext(), R.color.yunkacolor_60));
        }
        RelativeLayout popupFeelNo = dialogBinding.f63252o;
        Intrinsics.checkNotNullExpressionValue(popupFeelNo, "popupFeelNo");
        s1.U(popupFeelNo, 0L, new c(this_apply), 1, null);
        RelativeLayout popupFeelLonely = dialogBinding.f63249l;
        Intrinsics.checkNotNullExpressionValue(popupFeelLonely, "popupFeelLonely");
        s1.U(popupFeelLonely, 0L, new d(this_apply), 1, null);
        RelativeLayout popupFeelLove = dialogBinding.f63250m;
        Intrinsics.checkNotNullExpressionValue(popupFeelLove, "popupFeelLove");
        s1.U(popupFeelLove, 0L, new e(this_apply), 1, null);
        RelativeLayout popupFeelMarried = dialogBinding.f63251n;
        Intrinsics.checkNotNullExpressionValue(popupFeelMarried, "popupFeelMarried");
        s1.U(popupFeelMarried, 0L, new f(this_apply), 1, null);
        RelativeLayout popupFeelGay = dialogBinding.f63248k;
        Intrinsics.checkNotNullExpressionValue(popupFeelGay, "popupFeelGay");
        s1.U(popupFeelGay, 0L, new g(this_apply), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(EditProfileFragment editProfileFragment, Dialog dialog, int i4) {
        editProfileFragment.e0().w(i4);
        dialog.dismiss();
    }

    private final void f1() {
        int i4 = ((f1) m0()).f62376c.getCheckedRadioButtonId() == R.id.userinfo_write_male ? 0 : 1;
        if (w1().getSex() == i4) {
            return;
        }
        e0().x(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g1() {
        com.qennnsad.aknkaksd.util.l.I(this, "编辑家乡", "请输入你的家乡", (r17 & 4) != 0 ? "" : w1().getCity(), (r17 & 8) != 0 ? 1 : 0, (r17 & 16) != 0 ? new InputFilter[0] : null, (r17 & 32) != 0 ? null : null, new h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h1() {
        com.qennnsad.aknkaksd.util.l.I(this, "编辑签名", "请输入你的签名", (r17 & 4) != 0 ? "" : w1().getIntro(), (r17 & 8) != 0 ? 1 : 0, (r17 & 16) != 0 ? new InputFilter[0] : null, (r17 & 32) != 0 ? null : null, new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i1() {
        com.qennnsad.aknkaksd.util.l.I(this, "编辑名片", "请输入联系方式 如:微信", (r17 & 4) != 0 ? "" : w1().getName_card(), (r17 & 8) != 0 ? 1 : 0, (r17 & 16) != 0 ? new InputFilter[0] : null, (r17 & 32) != 0 ? null : null, new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j1() {
        com.qennnsad.aknkaksd.util.l.I(this, "编辑昵称", "请输入你的昵称", (r17 & 4) != 0 ? "" : w1().getNickname(), (r17 & 8) != 0 ? 1 : 0, (r17 & 16) != 0 ? new InputFilter[0] : null, (r17 & 32) != 0 ? null : null, new k());
    }

    private final String[] k1() {
        return (String[]) this.f52870p.getValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0049, code lost:
        if (r7.equals("03") == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c3, code lost:
        if (r7.equals("01") == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cc, code lost:
        if (r7.equals("08") == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d5, code lost:
        if (r7.equals("07") == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00de, code lost:
        if (r7.equals("12") == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e7, code lost:
        if (r7.equals("10") != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f0, code lost:
        if (r7.equals("05") == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x011b, code lost:
        if (r5 >= 32) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x011d, code lost:
        r7 = r6.f52869o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0121, code lost:
        if (r5 >= 10) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0123, code lost:
        r8 = new java.lang.StringBuilder();
        r8.append('0');
        r8.append(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x012d, code lost:
        r8 = new java.lang.StringBuilder();
        r8.append(r5);
        r8.append("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0136, code lost:
        r7.add(r8.toString());
        r5 = r5 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void n1(int r7, int r8, com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.WheelView r9) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.EditProfileFragment.n1(int, int, com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.WheelView):void");
    }

    private final void o1() {
        q5.b.i(true, requireActivity());
        f1 f1Var = (f1) m0();
        RelativeLayout editProfileRlAvatar = f1Var.f62377d;
        Intrinsics.checkNotNullExpressionValue(editProfileRlAvatar, "editProfileRlAvatar");
        s1.U(editProfileRlAvatar, 0L, new m(), 1, null);
        RelativeLayout editProfileRlId = f1Var.f62379f;
        Intrinsics.checkNotNullExpressionValue(editProfileRlId, "editProfileRlId");
        s1.U(editProfileRlId, 0L, new n(), 1, null);
        RelativeLayout editProfileRlNickname = f1Var.f62382i;
        Intrinsics.checkNotNullExpressionValue(editProfileRlNickname, "editProfileRlNickname");
        s1.U(editProfileRlNickname, 0L, new o(), 1, null);
        RelativeLayout editProfileRlIntroduction = f1Var.f62380g;
        Intrinsics.checkNotNullExpressionValue(editProfileRlIntroduction, "editProfileRlIntroduction");
        s1.U(editProfileRlIntroduction, 0L, new p(), 1, null);
        RelativeLayout editProfileRlNamecard = f1Var.f62381h;
        Intrinsics.checkNotNullExpressionValue(editProfileRlNamecard, "editProfileRlNamecard");
        s1.U(editProfileRlNamecard, 0L, new q(), 1, null);
        RelativeLayout userbirthday = f1Var.f62397x;
        Intrinsics.checkNotNullExpressionValue(userbirthday, "userbirthday");
        s1.U(userbirthday, 0L, new r(), 1, null);
        RelativeLayout editProfileRlState = f1Var.f62383j;
        Intrinsics.checkNotNullExpressionValue(editProfileRlState, "editProfileRlState");
        s1.U(editProfileRlState, 0L, new s(), 1, null);
        RelativeLayout editProfileRlHometown = f1Var.f62378e;
        Intrinsics.checkNotNullExpressionValue(editProfileRlHometown, "editProfileRlHometown");
        s1.U(editProfileRlHometown, 0L, new t(), 1, null);
        ImageButton imgbtnToolbarBack = f1Var.f62394u;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack, "imgbtnToolbarBack");
        s1.U(imgbtnToolbarBack, 0L, new u(), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p1() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        Uri o9 = com.qennnsad.aknkaksd.util.l.o(requireActivity);
        this.f52866l = o9;
        if (o9 != null) {
            this.f52873s.launch(o9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q1(EditProfileFragment this$0, Boolean it) {
        Uri uri;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (!it.booleanValue() || (uri = this$0.f52866l) == null) {
            return;
        }
        Intrinsics.checkNotNull(uri);
        this$0.A1(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s1(List<String> list) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        p5.e.p(requireActivity, list, new v(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t1(EditProfileFragment this$0, ActivityResult result) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.getResultCode() != -1 || result.getData() == null) {
            return;
        }
        Intent data = result.getData();
        Uri data2 = data != null ? data.getData() : null;
        if (data2 != null) {
            this$0.A1(data2);
        } else {
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.toast_cannot_retrieve_selected_image, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u1(EditProfileFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.C1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UserBean w1() {
        UserBean value = d0().A().getValue();
        Intrinsics.checkNotNull(value);
        return value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void y1(com.qennnsad.aknkaksd.data.bean.user.UserBean r6) {
        /*
            r5 = this;
            androidx.viewbinding.ViewBinding r0 = r5.m0()
            e5.f1 r0 = (e5.f1) r0
            android.widget.TextView r1 = r0.f62387n
            java.lang.String r2 = r6.getId()
            r1.setText(r2)
            android.widget.TextView r1 = r0.f62390q
            java.lang.String r2 = r6.getNickname()
            r1.setText(r2)
            android.widget.TextView r1 = r0.f62388o
            java.lang.String r2 = r6.getIntro()
            r1.setText(r2)
            android.widget.TextView r1 = r0.f62392s
            java.lang.String[] r2 = r5.k1()
            java.lang.String r3 = "emotions"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            java.lang.String r3 = r6.getEmotion()
            java.lang.Integer r3 = kotlin.text.StringsKt.toIntOrNull(r3)
            if (r3 == 0) goto L3b
            int r3 = r3.intValue()
            goto L3c
        L3b:
            r3 = -1
        L3c:
            if (r3 < 0) goto L47
            int r4 = kotlin.collections.ArraysKt.getLastIndex(r2)
            if (r3 > r4) goto L47
            r2 = r2[r3]
            goto L49
        L47:
            java.lang.String r2 = ""
        L49:
            r1.setText(r2)
            android.widget.TextView r1 = r0.f62385l
            java.lang.String r2 = r6.getCity()
            r1.setText(r2)
            android.widget.TextView r1 = r0.f62384k
            com.qennnsad.aknkaksd.util.o$a r2 = com.qennnsad.aknkaksd.util.o.f54868a
            java.lang.String r3 = r6.getBirthday()
            java.lang.String r2 = r2.h(r3)
            r1.setText(r2)
            android.widget.RelativeLayout r1 = r0.f62381h
            java.lang.String r2 = "editProfileRlNamecard"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            boolean r2 = r6.getIsanchor()
            r3 = 0
            if (r2 == 0) goto L74
            r2 = 0
            goto L76
        L74:
            r2 = 8
        L76:
            r1.setVisibility(r2)
            android.widget.TextView r1 = r0.f62389p
            java.lang.String r2 = r6.getName_card()
            r1.setText(r2)
            android.widget.RadioButton r1 = r0.f62399z
            int r2 = r6.getSex()
            r4 = 1
            if (r2 != 0) goto L8d
            r2 = 1
            goto L8e
        L8d:
            r2 = 0
        L8e:
            r1.setChecked(r2)
            android.widget.RadioButton r1 = r0.f62398y
            int r2 = r6.getSex()
            if (r2 == 0) goto L9a
            r3 = 1
        L9a:
            r1.setChecked(r3)
            android.widget.RadioGroup r1 = r0.f62376c
            com.qennnsad.aknkaksd.presentation.ui.main.me.edit.h r2 = new com.qennnsad.aknkaksd.presentation.ui.main.me.edit.h
            r2.<init>()
            r1.setOnCheckedChangeListener(r2)
            android.widget.ImageView r0 = r0.f62375b
            com.qennnsad.aknkaksd.presentation.ui.main.me.edit.EditProfileViewModel r1 = r5.e0()
            com.qennnsad.aknkaksd.data.repository.m r1 = r1.s()
            java.lang.String r6 = r6.getAvatar()
            android.net.Uri r6 = r1.j(r6)
            r1 = 2131231714(0x7f0803e2, float:1.8079517E38)
            com.qennnsad.aknkaksd.util.img.e.g(r0, r6, r4, r1, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.main.me.edit.EditProfileFragment.y1(com.qennnsad.aknkaksd.data.bean.user.UserBean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z1(EditProfileFragment this$0, RadioGroup radioGroup, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f1();
    }

    @m8.h
    public final Uri l1() {
        return this.f52866l;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: m1 */
    public EditProfileViewModel e0() {
        return (EditProfileViewModel) this.f52865k.getValue();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        o1();
        LifecycleOwnerKt.getLifecycleScope(this).launchWhenCreated(new w(null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: r1 */
    public void onEvent(@m8.g com.qennnsad.aknkaksd.presentation.ui.main.me.edit.e e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: v1 */
    public f1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        f1 d4 = f1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void x1(@m8.h Uri uri) {
        this.f52866l = uri;
    }
}
