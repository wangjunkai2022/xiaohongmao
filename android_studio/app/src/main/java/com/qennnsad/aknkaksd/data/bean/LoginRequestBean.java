package com.qennnsad.aknkaksd.data.bean;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import com.facebook.imagepipeline.memory.c;
import com.google.gson.annotations.SerializedName;
import com.hcaptcha.sdk.HCaptcha;
import io.sentry.protocol.w;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: LoginBeanBase.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bm\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jo\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000e¨\u0006'"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/LoginRequestBean;", "", w.b.f83891c, "", "countryCode", "password", "smsCode", "recaptcha", HCaptcha.f38322n, "captcha", "captchaId", "captchaType", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCaptcha", "()Ljava/lang/String;", "getCaptchaId", "getCaptchaType", "getCountryCode", "getHCaptcha", "getPassword", "getRecaptcha", "getSmsCode", "getUsername", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LoginRequestBean {
    @h
    private final String captcha;
    @SerializedName("captcha_id")
    @h
    private final String captchaId;
    @SerializedName("recaptcha_type")
    @h
    private final String captchaType;
    @SerializedName("country_code")
    @g
    private final String countryCode;
    @h
    private final String hCaptcha;
    @g
    private final String password;
    @h
    private final String recaptcha;
    @SerializedName("login_sms_captcha")
    @h
    private final String smsCode;
    @g
    private final String username;

    @JvmOverloads
    public LoginRequestBean() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LoginRequestBean(@g String username) {
        this(username, null, null, null, null, null, null, null, null, TypedValues.Position.TYPE_POSITION_TYPE, null);
        Intrinsics.checkNotNullParameter(username, "username");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LoginRequestBean(@g String username, @g String countryCode) {
        this(username, countryCode, null, null, null, null, null, null, null, TypedValues.Position.TYPE_CURVE_FIT, null);
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LoginRequestBean(@g String username, @g String countryCode, @g String password) {
        this(username, countryCode, password, null, null, null, null, null, null, TypedValues.Position.TYPE_PERCENT_HEIGHT, null);
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LoginRequestBean(@g String username, @g String countryCode, @g String password, @h String str) {
        this(username, countryCode, password, str, null, null, null, null, null, 496, null);
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LoginRequestBean(@g String username, @g String countryCode, @g String password, @h String str, @h String str2) {
        this(username, countryCode, password, str, str2, null, null, null, null, 480, null);
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LoginRequestBean(@g String username, @g String countryCode, @g String password, @h String str, @h String str2, @h String str3) {
        this(username, countryCode, password, str, str2, str3, null, null, null, 448, null);
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LoginRequestBean(@g String username, @g String countryCode, @g String password, @h String str, @h String str2, @h String str3, @h String str4) {
        this(username, countryCode, password, str, str2, str3, str4, null, null, c.f12563b, null);
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LoginRequestBean(@g String username, @g String countryCode, @g String password, @h String str, @h String str2, @h String str3, @h String str4, @h String str5) {
        this(username, countryCode, password, str, str2, str3, str4, str5, null, 256, null);
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    @JvmOverloads
    public LoginRequestBean(@g String username, @g String countryCode, @g String password, @h String str, @h String str2, @h String str3, @h String str4, @h String str5, @h String str6) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
        this.username = username;
        this.countryCode = countryCode;
        this.password = password;
        this.smsCode = str;
        this.recaptcha = str2;
        this.hCaptcha = str3;
        this.captcha = str4;
        this.captchaId = str5;
        this.captchaType = str6;
    }

    @g
    public final String component1() {
        return this.username;
    }

    @g
    public final String component2() {
        return this.countryCode;
    }

    @g
    public final String component3() {
        return this.password;
    }

    @h
    public final String component4() {
        return this.smsCode;
    }

    @h
    public final String component5() {
        return this.recaptcha;
    }

    @h
    public final String component6() {
        return this.hCaptcha;
    }

    @h
    public final String component7() {
        return this.captcha;
    }

    @h
    public final String component8() {
        return this.captchaId;
    }

    @h
    public final String component9() {
        return this.captchaType;
    }

    @g
    public final LoginRequestBean copy(@g String username, @g String countryCode, @g String password, @h String str, @h String str2, @h String str3, @h String str4, @h String str5, @h String str6) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(password, "password");
        return new LoginRequestBean(username, countryCode, password, str, str2, str3, str4, str5, str6);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LoginRequestBean) {
            LoginRequestBean loginRequestBean = (LoginRequestBean) obj;
            return Intrinsics.areEqual(this.username, loginRequestBean.username) && Intrinsics.areEqual(this.countryCode, loginRequestBean.countryCode) && Intrinsics.areEqual(this.password, loginRequestBean.password) && Intrinsics.areEqual(this.smsCode, loginRequestBean.smsCode) && Intrinsics.areEqual(this.recaptcha, loginRequestBean.recaptcha) && Intrinsics.areEqual(this.hCaptcha, loginRequestBean.hCaptcha) && Intrinsics.areEqual(this.captcha, loginRequestBean.captcha) && Intrinsics.areEqual(this.captchaId, loginRequestBean.captchaId) && Intrinsics.areEqual(this.captchaType, loginRequestBean.captchaType);
        }
        return false;
    }

    @h
    public final String getCaptcha() {
        return this.captcha;
    }

    @h
    public final String getCaptchaId() {
        return this.captchaId;
    }

    @h
    public final String getCaptchaType() {
        return this.captchaType;
    }

    @g
    public final String getCountryCode() {
        return this.countryCode;
    }

    @h
    public final String getHCaptcha() {
        return this.hCaptcha;
    }

    @g
    public final String getPassword() {
        return this.password;
    }

    @h
    public final String getRecaptcha() {
        return this.recaptcha;
    }

    @h
    public final String getSmsCode() {
        return this.smsCode;
    }

    @g
    public final String getUsername() {
        return this.username;
    }

    public int hashCode() {
        int hashCode = ((((this.username.hashCode() * 31) + this.countryCode.hashCode()) * 31) + this.password.hashCode()) * 31;
        String str = this.smsCode;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.recaptcha;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.hCaptcha;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.captcha;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.captchaId;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.captchaType;
        return hashCode6 + (str6 != null ? str6.hashCode() : 0);
    }

    @g
    public String toString() {
        return "LoginRequestBean(username=" + this.username + ", countryCode=" + this.countryCode + ", password=" + this.password + ", smsCode=" + this.smsCode + ", recaptcha=" + this.recaptcha + ", hCaptcha=" + this.hCaptcha + ", captcha=" + this.captcha + ", captchaId=" + this.captchaId + ", captchaType=" + this.captchaType + ')';
    }

    public /* synthetic */ LoginRequestBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? "" : str, (i4 & 2) != 0 ? "" : str2, (i4 & 4) == 0 ? str3 : "", (i4 & 8) != 0 ? null : str4, (i4 & 16) != 0 ? null : str5, (i4 & 32) != 0 ? null : str6, (i4 & 64) != 0 ? null : str7, (i4 & 128) != 0 ? null : str8, (i4 & 256) == 0 ? str9 : null);
    }
}
