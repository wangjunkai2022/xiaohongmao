package com.qennnsad.aknkaksd.data.bean.user;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: LoginGCaptchaBean.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/LoginGCaptchaBean;", "", "captchaId", "", "captchaImage", "(Ljava/lang/String;Ljava/lang/String;)V", "getCaptchaId", "()Ljava/lang/String;", "getCaptchaImage", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LoginGCaptchaBean {
    @SerializedName("captcha_id")
    @g
    private final String captchaId;
    @SerializedName("captcha_image")
    @g
    private final String captchaImage;

    public LoginGCaptchaBean(@g String captchaId, @g String captchaImage) {
        Intrinsics.checkNotNullParameter(captchaId, "captchaId");
        Intrinsics.checkNotNullParameter(captchaImage, "captchaImage");
        this.captchaId = captchaId;
        this.captchaImage = captchaImage;
    }

    public static /* synthetic */ LoginGCaptchaBean copy$default(LoginGCaptchaBean loginGCaptchaBean, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = loginGCaptchaBean.captchaId;
        }
        if ((i4 & 2) != 0) {
            str2 = loginGCaptchaBean.captchaImage;
        }
        return loginGCaptchaBean.copy(str, str2);
    }

    @g
    public final String component1() {
        return this.captchaId;
    }

    @g
    public final String component2() {
        return this.captchaImage;
    }

    @g
    public final LoginGCaptchaBean copy(@g String captchaId, @g String captchaImage) {
        Intrinsics.checkNotNullParameter(captchaId, "captchaId");
        Intrinsics.checkNotNullParameter(captchaImage, "captchaImage");
        return new LoginGCaptchaBean(captchaId, captchaImage);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LoginGCaptchaBean) {
            LoginGCaptchaBean loginGCaptchaBean = (LoginGCaptchaBean) obj;
            return Intrinsics.areEqual(this.captchaId, loginGCaptchaBean.captchaId) && Intrinsics.areEqual(this.captchaImage, loginGCaptchaBean.captchaImage);
        }
        return false;
    }

    @g
    public final String getCaptchaId() {
        return this.captchaId;
    }

    @g
    public final String getCaptchaImage() {
        return this.captchaImage;
    }

    public int hashCode() {
        return (this.captchaId.hashCode() * 31) + this.captchaImage.hashCode();
    }

    @g
    public String toString() {
        return "LoginGCaptchaBean(captchaId=" + this.captchaId + ", captchaImage=" + this.captchaImage + ')';
    }
}
