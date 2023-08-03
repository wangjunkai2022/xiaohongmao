package com.qennnsad.aknkaksd.util;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubConfig;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubLevel;
import com.qennnsad.aknkaksd.data.bean.fanclub.JoinFanClubBean;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity;
import com.qennnsad.aknkaksd.util.j1;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: FanClubUtil.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010-\u001a\u00020,\u0012\u0006\u0010%\u001a\u00020\"¢\u0006\u0004\b.\u0010/J\"\u0010\b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u001a\u0010\t\u001a\u00020\u0006*\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002JB\u0010\u0010\u001a\u00020\u0006*\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0003\u0010\u000f\u001a\u00020\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0002J2\u0010\u0017\u001a\u00020\u00062\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J(\u0010\u001b\u001a\u00020\u00062\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00112\u0006\u0010\u001a\u001a\u00020\u00192\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\n\u0010\u001d\u001a\u00020\u0003*\u00020\u001cJ\n\u0010\u001e\u001a\u00020\u0003*\u00020\u001cJ\u0014\u0010!\u001a\u0004\u0018\u00010\u001c*\u00020\u001f2\u0006\u0010 \u001a\u00020\u0003R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u001f\u0010+\u001a\n &*\u0004\u0018\u00010\u00130\u00138\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*¨\u00060"}, d2 = {"Lcom/qennnsad/aknkaksd/util/e0;", "", "Landroid/app/Activity;", "", "price", "Lkotlin/Function0;", "", "onConfirm", "C", "B", MessageBundle.TITLE_ENTRY, "Landroid/text/SpannableStringBuilder;", "message", "", "showCancel", "confirmButtonTitle", "o", "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;", "baseStreamActivity", "", "anchorId", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "fanClubInfo", "u", "activity", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;", "joinFanClubBean", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;", "n", "m", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;", "value", "k", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "kotlin.jvm.PlatformType", "c", "Ljava/lang/String;", "l", "()Ljava/lang/String;", "TAG", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f54694a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f54695b;

    /* renamed from: c  reason: collision with root package name */
    private final String f54696c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FanClubUtil.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BaseStreamActivity<?> f54698b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ FanClubConfig f54699c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f54700d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(BaseStreamActivity<?> baseStreamActivity, FanClubConfig fanClubConfig, Function0<Unit> function0) {
            super(0);
            this.f54698b = baseStreamActivity;
            this.f54699c = fanClubConfig;
            this.f54700d = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            e0 e0Var = e0.this;
            BaseStreamActivity<?> baseStreamActivity = this.f54698b;
            FanClubConfig fanClubConfig = this.f54699c;
            e0Var.C(baseStreamActivity, fanClubConfig != null ? fanClubConfig.getPrice() : 0, this.f54700d);
        }
    }

    @u7.a
    public e0(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f54694a = localDataManager;
        this.f54695b = sourceFactory;
        this.f54696c = e0.class.getSimpleName();
    }

    private final void B(Activity activity, Function0<Unit> function0) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ContextCompat.getColor(activity, R.color.md_grey_800));
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) activity.getString(R.string.fan_club_rejoin_message));
        spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
        p(this, activity, R.string.fan_club_rejoin_title, spannableStringBuilder, true, 0, function0, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(Activity activity, int i4, Function0<Unit> function0) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) activity.getString(R.string.fan_club_join_price));
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ContextCompat.getColor(activity, R.color.coin_text));
        int length = spannableStringBuilder.length();
        RelativeSizeSpan relativeSizeSpan = new RelativeSizeSpan(0.8f);
        int length2 = spannableStringBuilder.length();
        StringBuilder sb = new StringBuilder();
        sb.append(' ');
        sb.append(i4);
        sb.append(' ');
        spannableStringBuilder.append((CharSequence) sb.toString());
        spannableStringBuilder.setSpan(relativeSizeSpan, length2, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(new j1.a(activity, BitmapFactory.decodeResource(activity.getResources(), R.drawable.coin_room_top_2), 0, 4, null), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        spannableStringBuilder.append((CharSequence) activity.getString(R.string.fan_club_join_confirmation_price));
        p(this, activity, R.string.fan_club_join_confirmation_title, spannableStringBuilder, true, 0, function0, 8, null);
    }

    private final void o(Activity activity, @StringRes final int i4, final SpannableStringBuilder spannableStringBuilder, final boolean z9, @StringRes final int i10, final Function0<Unit> function0) {
        final Dialog dialog = new Dialog(activity, R.style.TransparentBgDialog);
        dialog.setContentView(R.layout.dialog_fan_club_confirmation);
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.util.v
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                e0.q(dialog, i4, spannableStringBuilder, z9, i10, function0, dialogInterface);
            }
        });
        Window window = dialog.getWindow();
        if (window != null) {
            window.setSoftInputMode(4);
        }
        dialog.show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void p(e0 e0Var, Activity activity, int i4, SpannableStringBuilder spannableStringBuilder, boolean z9, int i10, Function0 function0, int i11, Object obj) {
        int i12 = (i11 & 8) != 0 ? R.string.fan_club_confirm : i10;
        Function0<Unit> function02 = function0;
        if ((i11 & 16) != 0) {
            function02 = null;
        }
        e0Var.o(activity, i4, spannableStringBuilder, z9, i12, function02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(final Dialog this_apply, int i4, SpannableStringBuilder message, boolean z9, int i10, final Function0 function0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(message, "$message");
        ((TextView) this_apply.findViewById(R.id.tv_fan_club_title)).setText(i4);
        ((TextView) this_apply.findViewById(R.id.tv_fan_club_message)).setText(message);
        View findViewById = this_apply.findViewById(R.id.btn_fan_club_cancel);
        Intrinsics.checkNotNullExpressionValue(findViewById, "");
        findViewById.setVisibility(z9 ? 0 : 8);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e0.r(this_apply, view);
            }
        });
        Button button = (Button) this_apply.findViewById(R.id.btn_fan_club_confirm);
        button.setText(i10);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e0.s(Function0.this, this_apply, view);
            }
        });
        this_apply.findViewById(R.id.iv_fan_club_close).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e0.t(this_apply, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(Dialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(Function0 function0, Dialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (function0 != null) {
            function0.invoke();
        }
        this_apply.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(Dialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0277  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void v(final com.qennnsad.aknkaksd.util.e0 r22, final com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean r23, final com.qennnsad.aknkaksd.data.bean.fanclub.FanClubConfig r24, java.lang.String r25, final android.app.Dialog r26, final com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity r27, final kotlin.jvm.functions.Function0 r28, android.content.DialogInterface r29) {
        /*
            Method dump skipped, instructions count: 671
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.util.e0.v(com.qennnsad.aknkaksd.util.e0, com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean, com.qennnsad.aknkaksd.data.bean.fanclub.FanClubConfig, java.lang.String, android.app.Dialog, com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity, kotlin.jvm.functions.Function0, android.content.DialogInterface):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(BaseStreamActivity baseStreamActivity, e0 this$0, FanClubConfig fanClubConfig, View view) {
        Intrinsics.checkNotNullParameter(baseStreamActivity, "$baseStreamActivity");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
        String m9 = this$0.f54695b.m(fanClubConfig != null ? fanClubConfig.getHintUrl() : null, 0);
        if (m9 == null) {
            return;
        }
        SimpleWebViewActivity.a.d(aVar, baseStreamActivity, m9, false, false, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(FanClubInfoBean fanClubInfoBean, e0 this$0, BaseStreamActivity baseStreamActivity, FanClubConfig fanClubConfig, Function0 onConfirm, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseStreamActivity, "$baseStreamActivity");
        Intrinsics.checkNotNullParameter(onConfirm, "$onConfirm");
        if (fanClubInfoBean != null) {
            this$0.B(baseStreamActivity, new a(baseStreamActivity, fanClubConfig, onConfirm));
        } else {
            this$0.C(baseStreamActivity, fanClubConfig != null ? fanClubConfig.getPrice() : 0, onConfirm);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(Dialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(BaseStreamActivity baseStreamActivity, e0 this$0, View view) {
        Intrinsics.checkNotNullParameter(baseStreamActivity, "$baseStreamActivity");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        l.o0(baseStreamActivity, this$0.f54694a);
    }

    public final void A(@m8.g BaseStreamActivity<?> activity, @m8.g JoinFanClubBean joinFanClubBean, @m8.g Function0<Unit> onConfirm) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(joinFanClubBean, "joinFanClubBean");
        Intrinsics.checkNotNullParameter(onConfirm, "onConfirm");
        SpannableStringBuilder append = new SpannableStringBuilder().append((CharSequence) activity.getString(R.string.fan_club_join_success_message));
        Intrinsics.checkNotNullExpressionValue(append, "SpannableStringBuilder()…ub_join_success_message))");
        RelativeSizeSpan relativeSizeSpan = new RelativeSizeSpan(0.8f);
        int length = append.length();
        append.append((CharSequence) activity.getString(R.string.fan_club_join_success_level, new Object[]{Integer.valueOf(joinFanClubBean.getInfo().getLevel())}));
        append.setSpan(relativeSizeSpan, length, append.length(), 17);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ContextCompat.getColor(activity, R.color.md_grey_800));
        int length2 = append.length();
        append.append((CharSequence) activity.getString(R.string.fan_club_join_success_game_center));
        append.setSpan(foregroundColorSpan, length2, append.length(), 17);
        ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(ContextCompat.getColor(activity, R.color.fan_club_text));
        int length3 = append.length();
        append.append((CharSequence) String.valueOf(joinFanClubBean.getChips()));
        append.setSpan(foregroundColorSpan2, length3, append.length(), 17);
        ForegroundColorSpan foregroundColorSpan3 = new ForegroundColorSpan(ContextCompat.getColor(activity, R.color.md_grey_800));
        int length4 = append.length();
        append.append((CharSequence) activity.getString(R.string.fan_club_join_success_chips));
        append.setSpan(foregroundColorSpan3, length4, append.length(), 17);
        o(activity, R.string.fan_club_join_success_title, append, false, R.string.fan_club_join_success_go_game_center, onConfirm);
    }

    @m8.h
    public final FanClubLevel k(@m8.g FanClubConfig fanClubConfig, int i4) {
        Object obj;
        boolean z9;
        Intrinsics.checkNotNullParameter(fanClubConfig, "<this>");
        Iterator<T> it = fanClubConfig.getLevels().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((FanClubLevel) obj).getLevel() == i4) {
                z9 = true;
                continue;
            } else {
                z9 = false;
                continue;
            }
            if (z9) {
                break;
            }
        }
        return (FanClubLevel) obj;
    }

    public final String l() {
        return this.f54696c;
    }

    public final int m(@m8.g FanClubLevel fanClubLevel) {
        Intrinsics.checkNotNullParameter(fanClubLevel, "<this>");
        return Color.parseColor('#' + fanClubLevel.getColor2());
    }

    public final int n(@m8.g FanClubLevel fanClubLevel) {
        Intrinsics.checkNotNullParameter(fanClubLevel, "<this>");
        return Color.parseColor('#' + fanClubLevel.getColor1());
    }

    public final void u(@m8.g final BaseStreamActivity<?> baseStreamActivity, @m8.g final String anchorId, @m8.h final FanClubInfoBean fanClubInfoBean, @m8.g final Function0<Unit> onConfirm) {
        Intrinsics.checkNotNullParameter(baseStreamActivity, "baseStreamActivity");
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(onConfirm, "onConfirm");
        ConfigBean e4 = this.f54694a.e();
        final FanClubConfig fanclub = e4 != null ? e4.getFanclub() : null;
        final Dialog dialog = new Dialog(baseStreamActivity, R.style.BottomDialog);
        dialog.setContentView(R.layout.dialog_fan_club);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setLayout(-1, -2);
            window.setGravity(80);
        }
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.util.w
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                e0.v(e0.this, fanClubInfoBean, fanclub, anchorId, dialog, baseStreamActivity, onConfirm, dialogInterface);
            }
        });
        dialog.show();
    }
}
