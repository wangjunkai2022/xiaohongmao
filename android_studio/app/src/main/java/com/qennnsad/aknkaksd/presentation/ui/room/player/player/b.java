package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: NameCardDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b(\u0010)J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u001a\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u0006\u0010\u000f\u001a\u00020\u0003R\u001a\u0010\u0015\u001a\u00020\u00108\u0014X\u0094D¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u001b\u001a\u00020\u00168\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010!\u001a\u00020\u001c8\u0014X\u0094D¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001b\u0010'\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&¨\u0006,"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment;", "Le5/f0;", "", "b0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "c0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e0", "", "b", "Z", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "()Z", "cancelable", "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;", "c", "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;", "X", "()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;", "position", "", "d", "F", ExifInterface.LONGITUDE_WEST, "()F", "dimAmount", "", "e", "Lkotlin/Lazy;", "d0", "()Ljava/lang/String;", "content", "<init>", "()V", "f", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends BaseDialogFragment<e5.f0> {
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private static final String f53832g = "content";

    /* renamed from: b  reason: collision with root package name */
    private final boolean f53834b = true;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final BaseDialogFragment.Position f53835c = BaseDialogFragment.Position.CENTER;

    /* renamed from: d  reason: collision with root package name */
    private final float f53836d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Lazy f53837e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public static final a f53831f = new a(null);

    /* renamed from: h  reason: collision with root package name */
    private static final String f53833h = b.class.getSimpleName();

    /* compiled from: NameCardDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0007R\u0014\u0010\u0007\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001c\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\b¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b$a;", "", "Landroidx/fragment/app/FragmentManager;", "", "content", "", "a", "KEY_CONTENT", "Ljava/lang/String;", "kotlin.jvm.PlatformType", "TAG", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void a(@m8.g FragmentManager fragmentManager, @m8.g String content) {
            Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
            Intrinsics.checkNotNullParameter(content, "content");
            Fragment findFragmentByTag = fragmentManager.findFragmentByTag(b.f53833h);
            DialogFragment dialogFragment = findFragmentByTag instanceof DialogFragment ? (DialogFragment) findFragmentByTag : null;
            if (dialogFragment != null) {
                dialogFragment.dismissAllowingStateLoss();
            }
            b bVar = new b();
            bVar.setArguments(BundleKt.bundleOf(TuplesKt.to("content", content)));
            bVar.show(fragmentManager, b.f53833h);
        }
    }

    /* compiled from: NameCardDialog.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.player.player.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0449b extends Lambda implements Function0<String> {
        C0449b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return b.this.requireArguments().getString("content", "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NameCardDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {
        c() {
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
            b.this.b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NameCardDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function0<Unit> {
        d() {
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
            b.this.b0();
        }
    }

    public b() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new C0449b());
        this.f53837e = lazy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        String d02 = d0();
        com.qennnsad.aknkaksd.util.h1.e(requireContext, d02, null, "成功复制: " + d0(), 2, null);
    }

    private final String d0() {
        Object value = this.f53837e.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-content>(...)");
        return (String) value;
    }

    @JvmStatic
    public static final void f0(@m8.g FragmentManager fragmentManager, @m8.g String str) {
        f53831f.a(fragmentManager, str);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment
    protected boolean V() {
        return this.f53834b;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment
    protected float W() {
        return this.f53836d;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment
    @m8.g
    protected BaseDialogFragment.Position X() {
        return this.f53835c;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment
    @m8.g
    /* renamed from: c0 */
    public e5.f0 U(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        e5.f0 d4 = e5.f0.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void e0() {
        e5.f0 Y = Y();
        Y.f62371d.setText(d0());
        TextView namecardName = Y.f62371d;
        Intrinsics.checkNotNullExpressionValue(namecardName, "namecardName");
        com.qennnsad.aknkaksd.util.s1.U(namecardName, 0L, new c(), 1, null);
        TextView namecardCopy = Y.f62370c;
        Intrinsics.checkNotNullExpressionValue(namecardCopy, "namecardCopy");
        com.qennnsad.aknkaksd.util.s1.U(namecardCopy, 0L, new d(), 1, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Window window;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        WindowManager.LayoutParams attributes = (dialog == null || (window = dialog.getWindow()) == null) ? null : window.getAttributes();
        if (attributes != null) {
            attributes.windowAnimations = R.style.NameCardPopupAnimation;
        }
        e0();
    }
}
