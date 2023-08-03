package com.qennnsad.aknkaksd.presentation.module.auth.captcha;

import android.app.Activity;
import com.hcaptcha.sdk.HCaptcha;
import com.hcaptcha.sdk.HCaptchaException;
import com.hcaptcha.sdk.l;
import com.qennnsad.aknkaksd.util.o0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HCaptchaDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J^\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u000428\u0010\u000e\u001a4\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00060\bH\u0007R\u0014\u0010\u0012\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;", "", "Landroid/app/Activity;", "activity", "Lkotlin/Function1;", "", "", "onSuccess", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "code", "msg", "onError", "c", "b", "Ljava/lang/String;", "TAG", "SITE_KEY", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final g f51025a = new g();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final String f51026b = "HCaptcha";
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public static final String f51027c = "62133ffc-087f-485d-bc4c-12c770deb6d8";

    private g() {
    }

    @JvmStatic
    public static final void c(@m8.g Activity activity, @m8.g final Function1<? super String, Unit> onSuccess, @m8.g final Function2<? super Integer, ? super String, Unit> onError) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onError, "onError");
        HCaptcha.A(activity).d(f51027c).j(new com.hcaptcha.sdk.tasks.d() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.captcha.f
            @Override // com.hcaptcha.sdk.tasks.d
            public final void onSuccess(Object obj) {
                g.d(Function1.this, (l) obj);
            }
        }).h(new com.hcaptcha.sdk.tasks.a() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.captcha.e
            @Override // com.hcaptcha.sdk.tasks.a
            public final void J(HCaptchaException hCaptchaException) {
                g.e(Function2.this, hCaptchaException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Function1 onSuccess, l response) {
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        Intrinsics.checkNotNullParameter(response, "response");
        String userResponseToken = response.a();
        o0.a(f51026b, "Token: " + userResponseToken);
        Intrinsics.checkNotNullExpressionValue(userResponseToken, "userResponseToken");
        onSuccess.invoke(userResponseToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Function2 onError, HCaptchaException e4) {
        Intrinsics.checkNotNullParameter(onError, "$onError");
        Intrinsics.checkNotNullParameter(e4, "e");
        o0.a(f51026b, "Error code: " + e4.getStatusCode());
        o0.a(f51026b, "Error msg: " + e4.getMessage());
        onError.invoke(Integer.valueOf(e4.getStatusCode()), e4.getMessage());
    }
}
