package com.qennnsad.aknkaksd.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.AnimRes;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.DialogTitle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewGroupKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import com.didi.live.spring.R;
import com.im.freechat.sdk.SDKManager;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.AppUpdateBean;
import com.qennnsad.aknkaksd.data.bean.GameCenter;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.webview.RechargeSucceed;
import com.qennnsad.aknkaksd.data.websocket.WebSocketService;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity;
import com.qennnsad.aknkaksd.presentation.module.appupdate.UpdateFragment;
import com.qennnsad.aknkaksd.presentation.module.auth.AuthActivity;
import com.qennnsad.aknkaksd.presentation.module.auth.GuestLinkPhoneNumberActivity;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity;
import com.qennnsad.aknkaksd.presentation.ui.main.LogoutCaller;
import com.qennnsad.aknkaksd.presentation.ui.widget.a;
import com.qennnsad.aknkaksd.util.animations.GiftAnimationUtil;
import com.yalantis.ucrop.d;
import io.sentry.protocol.Device;
import io.sentry.protocol.y;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.bouncycastle.i18n.MessageBundle;
import timber.log.Timber;

/* compiled from: ActivityExt.kt */
@Metadata(bv = {}, d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a4\u0010\r\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\nH\u0007\u001a\u0012\u0010\u000e\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0006\u001a\u0012\u0010\u000f\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a \u0010\u0012\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010\u001a\u0014\u0010\u0013\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0012\u0010\u0014\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a \u0010\u0018\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00152\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006H\u0007\u001a\u0012\u0010\u0019\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u001a\u0010\u001e\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c\u001a\n\u0010\u001f\u001a\u00020\n*\u00020\u0005\u001a\n\u0010 \u001a\u00020\n*\u00020\u0005\u001a\u000e\u0010!\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006\u001a\u0012\u0010\"\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0006\u001a\u0012\u0010#\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0006\u001a\u0012\u0010$\u001a\u00020\n*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0006\u001a\u0012\u0010&\u001a\u00020\n*\u00020\u00052\u0006\u0010%\u001a\u00020\u0006\u001ad\u0010/\u001a\u00020.*\u00020\u00002\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00062\u0016\b\u0002\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010+2\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u001a\u0012\u00102\u001a\u00020\u0005*\u00020\u00052\u0006\u00101\u001a\u000200\u001a'\u00107\u001a\u00020\u0003\"\f\b\u0000\u00104*\u0006\u0012\u0002\b\u000303*\u00028\u00002\u0006\u00106\u001a\u000205¢\u0006\u0004\b7\u00108\u001a\u0012\u0010<\u001a\u00020;*\u00020\u00002\u0006\u0010:\u001a\u000209\u001a\f\u0010=\u001a\u0004\u0018\u000109*\u00020\u0000\u001a,\u0010B\u001a\u00020\u0003*\u00020>2\u0006\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020\n2\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u001aq\u0010M\u001a\u00020\u0003*\u00020C2\u0006\u0010D\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u00062\b\b\u0002\u0010F\u001a\u00020\u00062\b\b\u0002\u0010G\u001a\u0002052\u000e\b\u0002\u0010J\u001a\b\u0012\u0004\u0012\u00020I0H2\u0016\b\u0002\u0010K\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010+2\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030+¢\u0006\u0004\bM\u0010N\u001a4\u0010Q\u001a\u00020\u0003*\u00020C2\u0006\u0010'\u001a\u0002052\f\u0010P\u001a\b\u0012\u0004\u0012\u0002050O2\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u00030+\u001a\u0016\u0010R\u001a\u00020\u0003*\u0006\u0012\u0002\b\u0003032\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010U\u001a\u00020\u0003*\u00020\u00002\u0006\u0010T\u001a\u00020S\u001aH\u0010_\u001a\u00020\u0003*\u00020\u00002\u0006\u0010W\u001a\u00020V2\u0006\u0010Y\u001a\u00020X2\u0006\u0010Z\u001a\u0002052\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010[2\n\b\u0002\u0010]\u001a\u0004\u0018\u00010[2\n\b\u0002\u0010^\u001a\u0004\u0018\u00010[H\u0007\u001a\u000e\u0010`\u001a\u000205*\u0006\u0012\u0002\b\u000303\u001a,\u0010d\u001a\u00020\u0003*\u0006\u0012\u0002\b\u0003032\b\u0010a\u001a\u0004\u0018\u00010;2\b\b\u0003\u0010b\u001a\u0002052\b\b\u0003\u0010c\u001a\u000205\u001a2\u0010f\u001a\u00020\u0003*\u0006\u0012\u0002\b\u0003032\u0006\u0010a\u001a\u00020;2\u0006\u0010e\u001a\u0002052\b\b\u0003\u0010b\u001a\u0002052\b\b\u0003\u0010c\u001a\u000205\u001a\u0016\u0010i\u001a\u00020\u0003*\u0006\u0012\u0002\b\u0003032\u0006\u0010h\u001a\u00020g¨\u0006j"}, d2 = {"Landroid/app/Activity;", "Lg5/a;", "localDataManager", "", "u", "Landroid/content/Context;", "", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "", "navBar", com.qennnsad.aknkaksd.presentation.module.main.webview.n.f52152c, y.b.f83920h, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "o0", "Lkotlin/Function0;", "onLinkPhoneIgnore", "L", "p0", "b0", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "anchorId", "g0", "d0", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "data", "Lcom/qennnsad/aknkaksd/util/q0;", "mysteryUtil", "e0", "r", "s", "B", "a0", "q0", "l", "permission", "m", MessageBundle.TITLE_ENTRY, com.google.android.exoplayer2.text.ttml.d.f25726p, "confirm", "cancel", "Lkotlin/Function1;", "onConfirm", "onDismiss", "Landroid/app/Dialog;", "O", "Ljava/util/Locale;", Device.b.E, "n", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;", ExifInterface.GPS_DIRECTION_TRUE, "", "uid", "c0", "(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;I)V", "Landroid/net/Uri;", "uri", "Landroid/content/Intent;", "q", "o", "Landroidx/fragment/app/FragmentActivity;", "Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;", "appUpdateBean", "isForceUpdate", "U", "Landroidx/fragment/app/Fragment;", "titleText", "hintText", "previousValue", "inputType", "", "Landroid/text/InputFilter;", "filter", "successCondition", "onSuccess", "I", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/text/InputFilter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "", "items", "F", "t", "Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;", "caller", "M", "Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;", "giftAnimationUtil", "Lcom/qennnsad/aknkaksd/util/animations/f;", "peerageAnimationUtil", "roomId", "Ljava/lang/Runnable;", "onPkTest", "skipRunnable", "showFinishRoomDialog", "l0", "p", "intent", "enter", com.qennnsad.aknkaksd.data.websocket.b.f47843w, "Y", "requestCode", ExifInterface.LONGITUDE_WEST, "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;", "wsService", "C", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class l {

    /* compiled from: ActivityExt.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UrlTarget.values().length];
            iArr[UrlTarget.InApp.ordinal()] = 1;
            iArr[UrlTarget.Browser.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.util.ActivityExtKt$listenLoginStatus$1", f = "ActivityExt.kt", i = {}, l = {486}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f54795a;

        /* renamed from: b */
        final /* synthetic */ g5.a f54796b;

        /* renamed from: c */
        final /* synthetic */ BaseMvvmActivity<?> f54797c;

        /* compiled from: ActivityExt.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.util.ActivityExtKt$listenLoginStatus$1$1", f = "ActivityExt.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<UserBean, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f54798a;

            /* renamed from: b */
            /* synthetic */ Object f54799b;

            /* renamed from: c */
            final /* synthetic */ BaseMvvmActivity<?> f54800c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(BaseMvvmActivity<?> baseMvvmActivity, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f54800c = baseMvvmActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f54800c, continuation);
                aVar.f54799b = obj;
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
                if (this.f54798a == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (((UserBean) this.f54799b) == null && !this.f54800c.isFinishing()) {
                        l.M(this.f54800c, LogoutCaller.LaLogin);
                    }
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(g5.a aVar, BaseMvvmActivity<?> baseMvvmActivity, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f54796b = aVar;
            this.f54797c = baseMvvmActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f54796b, this.f54797c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f54795a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.t<UserBean> tVar = this.f54796b.f67821g;
                a aVar = new a(this.f54797c, null);
                this.f54795a = 1;
                if (kotlinx.coroutines.flow.k.A(tVar, aVar, this) == coroutine_suspended) {
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

    /* compiled from: ActivityExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ Dialog f54801a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Dialog dialog) {
            super(0);
            this.f54801a = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            this.f54801a.dismiss();
        }
    }

    /* compiled from: ActivityExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J$\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\n"}, d2 = {"com/qennnsad/aknkaksd/util/l$d", "Landroid/widget/TextView$OnEditorActionListener;", "Landroid/widget/TextView;", "v", "", "actionId", "Landroid/view/KeyEvent;", "event", "", "onEditorAction", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d implements TextView.OnEditorActionListener {

        /* renamed from: a */
        final /* synthetic */ e5.x f54802a;

        d(e5.x xVar) {
            this.f54802a = xVar;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(@m8.h TextView textView, int i4, @m8.h KeyEvent keyEvent) {
            if (i4 == 6) {
                this.f54802a.f63292e.performClick();
                return true;
            }
            return false;
        }
    }

    /* compiled from: ActivityExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ e5.x f54803a;

        /* renamed from: b */
        final /* synthetic */ Fragment f54804b;

        /* renamed from: c */
        final /* synthetic */ Function1<String, Boolean> f54805c;

        /* renamed from: d */
        final /* synthetic */ String f54806d;

        /* renamed from: e */
        final /* synthetic */ Function1<String, Unit> f54807e;

        /* renamed from: f */
        final /* synthetic */ Dialog f54808f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        e(e5.x xVar, Fragment fragment, Function1<? super String, Boolean> function1, String str, Function1<? super String, Unit> function12, Dialog dialog) {
            super(0);
            this.f54803a = xVar;
            this.f54804b = fragment;
            this.f54805c = function1;
            this.f54806d = str;
            this.f54807e = function12;
            this.f54808f = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            CharSequence trim;
            trim = StringsKt__StringsKt.trim((CharSequence) this.f54803a.f63293f.getText().toString());
            String obj = trim.toString();
            boolean z9 = true;
            if (obj.length() == 0) {
                com.qennnsad.aknkaksd.util.toast.a.n(this.f54804b.getString(R.string.edit_notnull), false, 2, null);
                return;
            }
            Function1<String, Boolean> function1 = this.f54805c;
            if ((function1 == null || function1.invoke(obj).booleanValue()) ? false : false) {
                return;
            }
            if (!Intrinsics.areEqual(obj, this.f54806d)) {
                this.f54807e.invoke(obj);
            }
            this.f54808f.dismiss();
        }
    }

    /* compiled from: ActivityExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ Dialog f54809a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(Dialog dialog) {
            super(0);
            this.f54809a = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            this.f54809a.dismiss();
        }
    }

    /* compiled from: ActivityExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/util/l$g", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;", "dialog", "", "a", "b", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g implements a.InterfaceC0456a {

        /* renamed from: a */
        final /* synthetic */ Function0<Unit> f54810a;

        /* renamed from: b */
        final /* synthetic */ Activity f54811b;

        g(Function0<Unit> function0, Activity activity) {
            this.f54810a = function0;
            this.f54811b = activity;
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void a(@m8.g com.qennnsad.aknkaksd.presentation.ui.widget.a dialog) {
            Intrinsics.checkNotNullParameter(dialog, "dialog");
            dialog.dismiss();
            this.f54810a.invoke();
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void b(@m8.g com.qennnsad.aknkaksd.presentation.ui.widget.a dialog) {
            Intrinsics.checkNotNullParameter(dialog, "dialog");
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
            GuestLinkPhoneNumberActivity.f50992k.a(this.f54811b);
        }
    }

    /* compiled from: ActivityExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ Function0<Unit> f54812a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(Function0<Unit> function0) {
            super(0);
            this.f54812a = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            Function0<Unit> function0 = this.f54812a;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004\"\f\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;", ExifInterface.GPS_DIRECTION_TRUE, "", "it", "", "a", "(Ljava/lang/Integer;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function1<Integer, Unit> {

        /* renamed from: a */
        final /* synthetic */ BaseMvvmActivity f54813a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(BaseMvvmActivity baseMvvmActivity) {
            super(1);
            this.f54813a = baseMvvmActivity;
        }

        public final void a(@m8.h Integer num) {
            BaseMvvmActivity baseMvvmActivity = this.f54813a;
            if (num != null) {
                com.qennnsad.aknkaksd.presentation.ui.chat.im.a.f(baseMvvmActivity, num.intValue(), null, null, null, null, 30, null);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityExt.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class j extends Lambda implements Function1<Throwable, Unit> {

        /* renamed from: a */
        public static final j f54814a = new j();

        j() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke */
        public final void invoke2(@m8.g Throwable it) {
            Intrinsics.checkNotNullParameter(it, "it");
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.no_such_user, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class k extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ Activity f54815a;

        /* renamed from: b */
        final /* synthetic */ String f54816b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(Activity activity, String str) {
            super(0);
            this.f54815a = activity;
            this.f54816b = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            SimpleWebViewActivity.a.d(SimpleWebViewActivity.f52046l, this.f54815a, this.f54816b, false, false, 6, null);
        }
    }

    /* compiled from: ActivityExt.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: com.qennnsad.aknkaksd.util.l$l */
    /* loaded from: classes3.dex */
    static final class C0461l extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ Activity f54817a;

        /* renamed from: b */
        final /* synthetic */ String f54818b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0461l(Activity activity, String str) {
            super(0);
            this.f54817a = activity;
            this.f54818b = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            SimpleWebViewActivity.a.d(SimpleWebViewActivity.f52046l, this.f54817a, this.f54818b, false, false, 6, null);
        }
    }

    public static final void A(@m8.g Context context, @m8.g String url) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        if (t0.f55038c.d(context, url)) {
            return;
        }
        SimpleWebViewActivity.a.d(SimpleWebViewActivity.f52046l, context, url, false, true, 2, null);
    }

    public static final boolean B(@m8.g String url) {
        boolean contains;
        boolean contains2;
        boolean contains3;
        Intrinsics.checkNotNullParameter(url, "url");
        contains = StringsKt__StringsKt.contains((CharSequence) url, (CharSequence) "platformapi/startapp", true);
        if (contains) {
            return true;
        }
        if (Build.VERSION.SDK_INT > 23) {
            contains2 = StringsKt__StringsKt.contains((CharSequence) url, (CharSequence) "platformapi", true);
            if (contains2) {
                contains3 = StringsKt__StringsKt.contains((CharSequence) url, (CharSequence) "startapp", true);
                if (contains3) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final void C(@m8.g final BaseMvvmActivity<?> baseMvvmActivity, @m8.g WebSocketService wsService) {
        Intrinsics.checkNotNullParameter(baseMvvmActivity, "<this>");
        Intrinsics.checkNotNullParameter(wsService, "wsService");
        wsService.F(com.qennnsad.aknkaksd.data.websocket.b.f47808e0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.util.b
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                l.D(BaseMvvmActivity.this, (RechargeSucceed) obj);
            }
        });
    }

    public static final void D(BaseMvvmActivity this_registerRechargeSucceedListener, RechargeSucceed rechargeSucceed) {
        Intrinsics.checkNotNullParameter(this_registerRechargeSucceedListener, "$this_registerRechargeSucceedListener");
        Integer agent = rechargeSucceed.getAgent();
        int x9 = this_registerRechargeSucceedListener.P().F().x();
        if (agent != null && agent.intValue() == x9) {
            this_registerRechargeSucceedListener.P().F().Y(0, 0L);
            this_registerRechargeSucceedListener.P().B().d(EventSignature.APP_RECHARGE_DIALOG_SUCCESS, rechargeSucceed.toString());
        }
        final e5.j0 c10 = e5.j0.c(this_registerRechargeSucceedListener.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        final Dialog dialog = new Dialog(this_registerRechargeSucceedListener, R.style.TransparentBgDialog);
        dialog.setContentView(c10.getRoot());
        c10.f62571c.setText(this_registerRechargeSucceedListener.getString(R.string.stream_chat_deposit_options_coin, new Object[]{Integer.valueOf(rechargeSucceed.getCoin())}));
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.util.h
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                l.E(e5.j0.this, dialog, dialogInterface);
            }
        });
        dialog.show();
    }

    public static final void E(e5.j0 this_with, Dialog this_apply, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Button btnConfirm = this_with.f62570b;
        Intrinsics.checkNotNullExpressionValue(btnConfirm, "btnConfirm");
        s1.U(btnConfirm, 0L, new c(this_apply), 1, null);
    }

    public static final void F(@m8.g Fragment fragment, int i4, @m8.g final List<Integer> items, @m8.g final Function1<? super Integer, Unit> onSuccess) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        AlertDialog.Builder builder = new AlertDialog.Builder(fragment.requireContext(), R.style.BottomDialog);
        TextView textView = new TextView(fragment.requireContext());
        textView.setText(i4);
        textView.setTextSize(17.0f);
        textView.setTextColor(ContextCompat.getColor(fragment.requireContext(), R.color.black));
        textView.setGravity(17);
        Context requireContext = fragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        int f10 = h1.f(requireContext, 16);
        textView.setPadding(f10, f10, f10, f10);
        AlertDialog.Builder customTitle = builder.setCustomTitle(textView);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(items, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : items) {
            arrayList.add(fragment.getString(number.intValue()));
        }
        Object[] array = arrayList.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        final AlertDialog create = customTitle.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.d
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                l.G(Function1.this, items, dialogInterface, i10);
            }
        }).create();
        create.getListView().setDivider(new ColorDrawable(ContextCompat.getColor(fragment.requireContext(), R.color.global_setting_topline)));
        ListView listView = create.getListView();
        Context requireContext2 = fragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext()");
        listView.setDividerHeight(h1.f(requireContext2, 1));
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.util.f
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                l.H(create, items, dialogInterface);
            }
        });
        create.show();
        Window window = create.getWindow();
        if (window != null) {
            window.setLayout(-1, -2);
            window.setGravity(80);
            window.setBackgroundDrawableResource(R.drawable.arc_bg_white_top_24dp);
        }
    }

    public static final void G(Function1 onSuccess, List items, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        Intrinsics.checkNotNullParameter(items, "$items");
        onSuccess.invoke(items.get(i4));
    }

    public static final void H(AlertDialog alertDialog, List items, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(items, "$items");
        DialogTitle dialogTitle = (DialogTitle) alertDialog.findViewById(R.id.alertTitle);
        if (dialogTitle != null) {
            dialogTitle.setGravity(17);
        }
        int size = items.size();
        for (int i4 = 0; i4 < size; i4++) {
            ListView listView = alertDialog.getListView();
            Intrinsics.checkNotNullExpressionValue(listView, "listView");
            View view = ViewGroupKt.get(listView, i4);
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) view;
            textView.setGravity(17);
            textView.setTextSize(20.0f);
        }
    }

    public static final void I(@m8.g final Fragment fragment, @m8.g final String titleText, @m8.g final String hintText, @m8.g final String previousValue, final int i4, @m8.g final InputFilter[] filter, @m8.h final Function1<? super String, Boolean> function1, @m8.g final Function1<? super String, Unit> onSuccess) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(hintText, "hintText");
        Intrinsics.checkNotNullParameter(previousValue, "previousValue");
        Intrinsics.checkNotNullParameter(filter, "filter");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        final e5.x c10 = e5.x.c(fragment.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        final Dialog dialog = new Dialog(fragment.requireContext(), R.style.TransparentBgDialog);
        dialog.setContentView(c10.getRoot());
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.util.g
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                l.K(e5.x.this, titleText, hintText, i4, filter, previousValue, fragment, function1, onSuccess, dialog, dialogInterface);
            }
        });
        Window window = dialog.getWindow();
        if (window != null) {
            window.setSoftInputMode(4);
        }
        dialog.show();
    }

    public static final void K(e5.x dialogBinding, String titleText, String hintText, int i4, InputFilter[] filter, String previousValue, Fragment this_showEditFieldDialog, Function1 function1, Function1 onSuccess, Dialog this_apply, DialogInterface dialogInterface) {
        Object[] plus;
        Intrinsics.checkNotNullParameter(dialogBinding, "$dialogBinding");
        Intrinsics.checkNotNullParameter(titleText, "$titleText");
        Intrinsics.checkNotNullParameter(hintText, "$hintText");
        Intrinsics.checkNotNullParameter(filter, "$filter");
        Intrinsics.checkNotNullParameter(previousValue, "$previousValue");
        Intrinsics.checkNotNullParameter(this_showEditFieldDialog, "$this_showEditFieldDialog");
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        dialogBinding.f63294g.setText(titleText);
        EditText editText = dialogBinding.f63293f;
        editText.setHint(hintText);
        editText.setInputType(i4);
        InputFilter[] filters = editText.getFilters();
        Intrinsics.checkNotNullExpressionValue(filters, "filters");
        plus = ArraysKt___ArraysJvmKt.plus((Object[]) filters, (Object[]) filter);
        editText.setFilters((InputFilter[]) plus);
        editText.setText(previousValue);
        editText.requestFocus();
        editText.setSelection(editText.getText().length());
        editText.setOnEditorActionListener(new d(dialogBinding));
        TextView ok = dialogBinding.f63292e;
        Intrinsics.checkNotNullExpressionValue(ok, "ok");
        s1.U(ok, 0L, new e(dialogBinding, this_showEditFieldDialog, function1, previousValue, onSuccess, this_apply), 1, null);
        TextView cancel = dialogBinding.f63289b;
        Intrinsics.checkNotNullExpressionValue(cancel, "cancel");
        s1.U(cancel, 0L, new f(this_apply), 1, null);
    }

    public static final void L(@m8.g Activity activity, @m8.g g5.a localDataManager, @m8.g Function0<Unit> onLinkPhoneIgnore) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(onLinkPhoneIgnore, "onLinkPhoneIgnore");
        UserBean C = localDataManager.C();
        if (C == null) {
            return;
        }
        if (!C.isGuest()) {
            onLinkPhoneIgnore.invoke();
            return;
        }
        com.qennnsad.aknkaksd.presentation.ui.widget.a aVar = new com.qennnsad.aknkaksd.presentation.ui.widget.a(activity);
        aVar.setTitle(R.string.dialog_tips);
        aVar.h(R.string.guest_warning_message);
        aVar.f(R.string.guest_warning_certify_phone_number);
        aVar.d(R.string.guest_continue_recharge);
        aVar.j(new g(onLinkPhoneIgnore, activity));
        aVar.show();
    }

    public static final void M(@m8.g final Activity activity, @m8.g LogoutCaller caller) {
        c5.b bVar;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(caller, "caller");
        Timber.b bVar2 = Timber.f93860a;
        boolean z9 = true;
        bVar2.a("Logout! Caller: %s", caller.name());
        if (caller == LogoutCaller.RootObserverAuth || caller == LogoutCaller.WebViewAuth || caller == LogoutCaller.SocketAuth) {
            BaseStreamActivity baseStreamActivity = activity instanceof BaseStreamActivity ? (BaseStreamActivity) activity : null;
            if ((baseStreamActivity == null || (bVar = baseStreamActivity.f52474o) == null || !bVar.f()) ? false : false) {
                bVar2.a("Auth token is being refreshed. Logout cancelled.", new Object[0]);
                return;
            }
        }
        new AlertDialog.Builder(activity).setMessage(R.string.logout_dialog_msg).setCancelable(false).setPositiveButton(R.string.commit, new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                l.N(activity, dialogInterface, i4);
            }
        }).create().show();
    }

    public static final void N(Activity this_showLogoutDialog, DialogInterface dialog, int i4) {
        Intrinsics.checkNotNullParameter(this_showLogoutDialog, "$this_showLogoutDialog");
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        dialog.dismiss();
        if (this_showLogoutDialog.isDestroyed()) {
            return;
        }
        AuthActivity.a.d(AuthActivity.f50991k, this_showLogoutDialog, null, false, 3, null);
    }

    @m8.g
    public static final Dialog O(@m8.g Activity activity, @m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h String str4, @m8.h final Function1<? super Boolean, Unit> function1, @m8.h final Function0<Unit> function0) {
        Unit unit;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        final e5.o0 c10 = e5.o0.c(activity.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        final Dialog dialog = new Dialog(activity, R.style.TransparentBgDialog);
        dialog.setContentView(c10.getRoot());
        if (str != null) {
            c10.f62840e.setText(str);
        }
        if (str2 != null) {
            c10.f62839d.setText(str2);
        }
        if (str3 != null) {
            c10.f62838c.setText(str3);
        }
        if (str4 != null) {
            c10.f62837b.setText(str4);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            Button btnCancel = c10.f62837b;
            Intrinsics.checkNotNullExpressionValue(btnCancel, "btnCancel");
            btnCancel.setVisibility(8);
        }
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.util.i
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                l.Q(e5.o0.this, function1, dialog, dialogInterface);
            }
        });
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.qennnsad.aknkaksd.util.e
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                l.T(Function0.this, dialogInterface);
            }
        });
        dialog.show();
        return dialog;
    }

    public static /* synthetic */ Dialog P(Activity activity, String str, String str2, String str3, String str4, Function1 function1, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = null;
        }
        if ((i4 & 2) != 0) {
            str2 = null;
        }
        if ((i4 & 4) != 0) {
            str3 = null;
        }
        if ((i4 & 8) != 0) {
            str4 = null;
        }
        if ((i4 & 16) != 0) {
            function1 = null;
        }
        if ((i4 & 32) != 0) {
            function0 = null;
        }
        return O(activity, str, str2, str3, str4, function1, function0);
    }

    public static final void Q(e5.o0 this_with, final Function1 function1, final Dialog this_apply, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_with.f62837b.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l.R(Function1.this, this_apply, view);
            }
        });
        this_with.f62838c.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l.S(Function1.this, this_apply, view);
            }
        });
    }

    public static final void R(Function1 function1, Dialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        this_apply.dismiss();
    }

    public static final void S(Function1 function1, Dialog this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
        this_apply.dismiss();
    }

    public static final void T(Function0 function0, DialogInterface dialogInterface) {
        if (function0 != null) {
            function0.invoke();
        }
    }

    public static final void U(@m8.g FragmentActivity fragmentActivity, @m8.g AppUpdateBean appUpdateBean, boolean z9, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<this>");
        Intrinsics.checkNotNullParameter(appUpdateBean, "appUpdateBean");
        UpdateFragment a10 = UpdateFragment.f50959o.a(z9, appUpdateBean.getDescription(), appUpdateBean.getApkWeb(), appUpdateBean.getApkVersion());
        a10.t0(fragmentActivity);
        fragmentActivity.getSupportFragmentManager().executePendingTransactions();
        a10.s0(new h(function0));
    }

    public static /* synthetic */ void V(FragmentActivity fragmentActivity, AppUpdateBean appUpdateBean, boolean z9, Function0 function0, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        U(fragmentActivity, appUpdateBean, z9, function0);
    }

    public static final void W(@m8.g BaseMvvmActivity<?> baseMvvmActivity, @m8.g Intent intent, int i4, @AnimRes int i10, @AnimRes int i11) {
        Intrinsics.checkNotNullParameter(baseMvvmActivity, "<this>");
        Intrinsics.checkNotNullParameter(intent, "intent");
        baseMvvmActivity.startActivityForResult(intent, i4);
        baseMvvmActivity.overridePendingTransition(i10, i11);
    }

    public static /* synthetic */ void X(BaseMvvmActivity baseMvvmActivity, Intent intent, int i4, int i10, int i11, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i10 = R.anim.fragment_slide_left_in;
        }
        if ((i12 & 8) != 0) {
            i11 = R.anim.fragment_slide_left_out;
        }
        W(baseMvvmActivity, intent, i4, i10, i11);
    }

    public static final void Y(@m8.g BaseMvvmActivity<?> baseMvvmActivity, @m8.h Intent intent, @AnimRes int i4, @AnimRes int i10) {
        Intrinsics.checkNotNullParameter(baseMvvmActivity, "<this>");
        baseMvvmActivity.startActivity(intent);
        baseMvvmActivity.overridePendingTransition(i4, i10);
    }

    public static /* synthetic */ void Z(BaseMvvmActivity baseMvvmActivity, Intent intent, int i4, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i4 = R.anim.fragment_slide_left_in;
        }
        if ((i11 & 4) != 0) {
            i10 = R.anim.fragment_slide_left_out;
        }
        Y(baseMvvmActivity, intent, i4, i10);
    }

    public static final void a0(@m8.g Context context, @m8.g String url) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            Intent parseUri = Intent.parseUri(url, 1);
            Intrinsics.checkNotNullExpressionValue(parseUri, "parseUri(\n            ur…I_INTENT_SCHEME\n        )");
            parseUri.addCategory("android.intent.category.BROWSABLE");
            parseUri.setComponent(null);
            context.startActivity(parseUri);
        } catch (Exception e4) {
            e4.printStackTrace();
            try {
                t0.f55038c.d(context, url);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static final void b0(@m8.g Activity activity, @m8.g g5.a localDataManager) {
        UserBean C;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        if (localDataManager.C() != null) {
            String str = m.f54843m + "?uid=" + C.getId() + "&ver=1.13.0&lob=" + C.getLob_no();
            o0.g(activity.getClass().getSimpleName(), "App Promotion 437------" + str);
            SimpleWebViewActivity.a.d(SimpleWebViewActivity.f52046l, activity, str, false, false, 6, null);
        }
    }

    public static final <T extends BaseMvvmActivity<?>> void c0(@m8.g T t9, int i4) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        SDKManager.d().a(t9.R(), i4, new i(t9), j.f54814a);
    }

    public static final void d0(@m8.g Context context, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        String contactUs = localDataManager.g().getContactUs();
        if (contactUs != null) {
            SimpleWebViewActivity.a.d(SimpleWebViewActivity.f52046l, context, contactUs, false, false, 6, null);
        }
    }

    public static final void e0(@m8.g Context context, @m8.g RankItem data, @m8.g q0 mysteryUtil) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(mysteryUtil, "mysteryUtil");
        if (data.isMystery()) {
            q0.c(mysteryUtil, data, false, 2, null);
            return;
        }
        if (data.getUserId().length() > 0) {
            UserProfileActivity.f51833l.a(context, data.getUserId());
        }
    }

    @JvmOverloads
    public static final void f0(@m8.g Context context, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        h0(context, sourceFactory, null, 2, null);
    }

    @JvmOverloads
    public static final void g0(@m8.g Context context, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.h String str) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        String m9 = sourceFactory.m(m.f54852v, 1);
        if (!TextUtils.isEmpty(str)) {
            m9 = m9 + "&anchor_id=" + str;
        }
        String str2 = m9;
        o0.g(context.getClass().getSimpleName(), "Peerage 437---pay---" + str2);
        SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
        if (str2 == null) {
            return;
        }
        SimpleWebViewActivity.a.d(aVar, context, str2, false, false, 6, null);
    }

    public static /* synthetic */ void h0(Context context, com.qennnsad.aknkaksd.data.repository.m mVar, String str, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            str = null;
        }
        g0(context, mVar, str);
    }

    @JvmOverloads
    public static final void i0(@m8.g Activity activity, @m8.g GiftAnimationUtil giftAnimationUtil, @m8.g com.qennnsad.aknkaksd.util.animations.f peerageAnimationUtil, int i4) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(giftAnimationUtil, "giftAnimationUtil");
        Intrinsics.checkNotNullParameter(peerageAnimationUtil, "peerageAnimationUtil");
        m0(activity, giftAnimationUtil, peerageAnimationUtil, i4, null, null, null, 56, null);
    }

    @JvmOverloads
    public static final void j0(@m8.g Activity activity, @m8.g GiftAnimationUtil giftAnimationUtil, @m8.g com.qennnsad.aknkaksd.util.animations.f peerageAnimationUtil, int i4, @m8.h Runnable runnable) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(giftAnimationUtil, "giftAnimationUtil");
        Intrinsics.checkNotNullParameter(peerageAnimationUtil, "peerageAnimationUtil");
        m0(activity, giftAnimationUtil, peerageAnimationUtil, i4, runnable, null, null, 48, null);
    }

    @JvmOverloads
    public static final void k0(@m8.g Activity activity, @m8.g GiftAnimationUtil giftAnimationUtil, @m8.g com.qennnsad.aknkaksd.util.animations.f peerageAnimationUtil, int i4, @m8.h Runnable runnable, @m8.h Runnable runnable2) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(giftAnimationUtil, "giftAnimationUtil");
        Intrinsics.checkNotNullParameter(peerageAnimationUtil, "peerageAnimationUtil");
        m0(activity, giftAnimationUtil, peerageAnimationUtil, i4, runnable, runnable2, null, 32, null);
    }

    public static final boolean l(@m8.g Context context, @m8.g String url) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url, "weixin://wap/pay?", false, 2, null);
        if (startsWith$default && s(context)) {
            q0(context, url);
            return true;
        } else if (B(url) && r(context)) {
            a0(context, url);
            return true;
        } else {
            return false;
        }
    }

    @JvmOverloads
    public static final void l0(@m8.g Activity activity, @m8.g final GiftAnimationUtil giftAnimationUtil, @m8.g final com.qennnsad.aknkaksd.util.animations.f peerageAnimationUtil, final int i4, @m8.h final Runnable runnable, @m8.h final Runnable runnable2, @m8.h final Runnable runnable3) {
        final ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(giftAnimationUtil, "giftAnimationUtil");
        Intrinsics.checkNotNullParameter(peerageAnimationUtil, "peerageAnimationUtil");
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf("Test Gift Animation", "Test Peerage Login Animation");
        if (runnable != null) {
            arrayListOf.add("PK test");
        }
        if (runnable2 != null) {
            arrayListOf.add("Skip room");
        }
        if (runnable3 != null) {
            arrayListOf.add("Show finish room");
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        Object[] array = arrayListOf.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                l.n0(arrayListOf, giftAnimationUtil, i4, peerageAnimationUtil, runnable, runnable2, runnable3, dialogInterface, i10);
            }
        }).create().show();
    }

    public static final boolean m(@m8.g Context context, @m8.g String permission) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(permission, "permission");
        return ContextCompat.checkSelfPermission(context, permission) == 0;
    }

    public static /* synthetic */ void m0(Activity activity, GiftAnimationUtil giftAnimationUtil, com.qennnsad.aknkaksd.util.animations.f fVar, int i4, Runnable runnable, Runnable runnable2, Runnable runnable3, int i10, Object obj) {
        l0(activity, giftAnimationUtil, fVar, i4, (i10 & 8) != 0 ? null : runnable, (i10 & 16) != 0 ? null : runnable2, (i10 & 32) != 0 ? null : runnable3);
    }

    @m8.g
    public static final Context n(@m8.g Context context, @m8.g Locale locale) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Locale.setDefault(locale);
        Configuration configuration = context.getResources().getConfiguration();
        configuration.setLocale(locale);
        configuration.setLayoutDirection(locale);
        Context createConfigurationContext = context.createConfigurationContext(configuration);
        Intrinsics.checkNotNullExpressionValue(createConfigurationContext, "resources.configuration.…gurationContext(it)\n    }");
        return createConfigurationContext;
    }

    public static final void n0(ArrayList items, GiftAnimationUtil giftAnimationUtil, int i4, com.qennnsad.aknkaksd.util.animations.f peerageAnimationUtil, Runnable runnable, Runnable runnable2, Runnable runnable3, DialogInterface dialog, int i10) {
        Intrinsics.checkNotNullParameter(items, "$items");
        Intrinsics.checkNotNullParameter(giftAnimationUtil, "$giftAnimationUtil");
        Intrinsics.checkNotNullParameter(peerageAnimationUtil, "$peerageAnimationUtil");
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        String str = (String) items.get(i10);
        switch (str.hashCode()) {
            case -1265369147:
                if (str.equals("Show finish room") && runnable3 != null) {
                    runnable3.run();
                    break;
                }
                break;
            case -254590276:
                if (str.equals("Skip room") && runnable2 != null) {
                    runnable2.run();
                    break;
                }
                break;
            case -79712830:
                if (str.equals("Test Gift Animation")) {
                    giftAnimationUtil.D(i4);
                    break;
                }
                break;
            case 166145943:
                if (str.equals("PK test") && runnable != null) {
                    runnable.run();
                    break;
                }
                break;
            case 1055384572:
                if (str.equals("Test Peerage Login Animation")) {
                    peerageAnimationUtil.q(i4);
                    break;
                }
                break;
        }
        dialog.dismiss();
    }

    @m8.h
    public static final Uri o(@m8.g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        try {
            return b6.a.a(activity, new File(activity.getExternalCacheDir(), "beautylive.jpg"));
        } catch (IOException unused) {
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.open_camera_error, false, 2, null);
            return null;
        }
    }

    public static final void o0(@m8.g Activity activity, @m8.g g5.a localDataManager) {
        UserBean C;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        if (localDataManager.C() != null) {
            String str = m.f54845o + C.getId() + "&ver=1.13.0&lob=" + C.getLob_no();
            Timber.f93860a.k("Top up 437------" + str, new Object[0]);
            L(activity, localDataManager, new k(activity, str));
        }
    }

    public static final int p(@m8.g BaseMvvmActivity<?> baseMvvmActivity) {
        Intrinsics.checkNotNullParameter(baseMvvmActivity, "<this>");
        int identifier = baseMvvmActivity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return baseMvvmActivity.getResources().getDimensionPixelSize(identifier);
        }
        return 25;
    }

    @Deprecated(message = "Chip withdrawal was disabled in mid 2020")
    public static final void p0(@m8.g Activity activity, @m8.g g5.a localDataManager) {
        UserBean C;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        if (localDataManager.C() != null) {
            String str = m.f54847q + C.getId() + "&lob=" + C.getLob_no();
            Timber.f93860a.k("Withdraw 437------" + str, new Object[0]);
            L(activity, localDataManager, new C0461l(activity, str));
        }
    }

    @m8.g
    public static final Intent q(@m8.g Activity activity, @m8.g Uri uri) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        d.a aVar = new d.a();
        aVar.f(Bitmap.CompressFormat.JPEG);
        aVar.g(90);
        aVar.o(false);
        aVar.z(ContextCompat.getColor(activity, R.color.colorIcons));
        aVar.x(ContextCompat.getColor(activity, R.color.colorPrimaryDark));
        aVar.C(ContextCompat.getColor(activity, R.color.txt_color));
        Intent d4 = com.yalantis.ucrop.d.i(uri, Uri.fromFile(new File(activity.getExternalCacheDir(), "beautylive_c" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date(System.currentTimeMillis())) + ".jpg"))).o(1.0f, 1.0f).p(1024, 1024).q(aVar).d(activity);
        Intrinsics.checkNotNullExpressionValue(d4, "uCrop.getIntent(this)");
        return d4;
    }

    public static final void q0(@m8.g Context context, @m8.g String url) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(url));
            context.startActivity(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static final boolean r(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        boolean z9 = new Intent("android.intent.action.VIEW", Uri.parse("alipays://platformapi/startApp")).resolveActivity(context.getPackageManager()) != null;
        if (!z9) {
            com.qennnsad.aknkaksd.util.toast.a.n("支付失败: 没有安装支付宝", false, 2, null);
        }
        return z9;
    }

    public static final boolean s(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        boolean z9 = new Intent("android.intent.action.VIEW", Uri.parse("weixin://wap/pay")).resolveActivity(context.getPackageManager()) != null;
        if (!z9) {
            com.qennnsad.aknkaksd.util.toast.a.n("支付失败: 未安装微信", false, 2, null);
        }
        return z9;
    }

    public static final void t(@m8.g BaseMvvmActivity<?> baseMvvmActivity, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(baseMvvmActivity, "<this>");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(baseMvvmActivity), null, null, new b(localDataManager, baseMvvmActivity, null), 3, null);
    }

    public static final void u(@m8.g Activity activity, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        String str = localDataManager.g().getHostWithProtocol(false) + "/static/web/game-center";
        GameCenter.GetUrlBean k10 = localDataManager.k();
        if (k10 != null) {
            y(activity, str, k10.getTarget(), k10.getHideNavBar() == 1, true);
        }
    }

    @JvmOverloads
    public static final void v(@m8.g Context context, @m8.g String url) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        z(context, url, null, false, false, 14, null);
    }

    @JvmOverloads
    public static final void w(@m8.g Context context, @m8.g String url, @m8.h UrlTarget urlTarget) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        z(context, url, urlTarget, false, false, 12, null);
    }

    @JvmOverloads
    public static final void x(@m8.g Context context, @m8.g String url, @m8.h UrlTarget urlTarget, boolean z9) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        z(context, url, urlTarget, z9, false, 8, null);
    }

    @JvmOverloads
    public static final void y(@m8.g Context context, @m8.g String url, @m8.h UrlTarget urlTarget, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        int i4 = urlTarget == null ? -1 : a.$EnumSwitchMapping$0[urlTarget.ordinal()];
        if (i4 == 1) {
            SimpleWebViewActivity.f52046l.c(context, url, z9, z10);
        } else if (i4 != 2) {
        } else {
            A(context, url);
        }
    }

    public static /* synthetic */ void z(Context context, String str, UrlTarget urlTarget, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            urlTarget = UrlTarget.InApp;
        }
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        if ((i4 & 8) != 0) {
            z10 = false;
        }
        y(context, str, urlTarget, z9, z10);
    }
}
