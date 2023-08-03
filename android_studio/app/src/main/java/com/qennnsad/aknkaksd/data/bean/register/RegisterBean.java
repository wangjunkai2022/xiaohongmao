package com.qennnsad.aknkaksd.data.bean.register;

import com.google.gson.annotations.SerializedName;
import io.sentry.protocol.w;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: RegisterBean.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003JV\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013¨\u0006*"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;", "", w.b.f83891c, "", "password", "smsCode", "nickname", "biospeed", "", "countryCode", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V", "getBiospeed", "()Ljava/lang/Double;", "setBiospeed", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getCountryCode", "()Ljava/lang/String;", "setCountryCode", "(Ljava/lang/String;)V", "getNickname", "setNickname", "getPassword", "setPassword", "getSmsCode", "setSmsCode", "getUsername", "setUsername", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RegisterBean {
    @h
    private Double biospeed;
    @SerializedName("country_code")
    @h
    private String countryCode;
    @h
    private String nickname;
    @h
    private String password;
    @SerializedName("captcha")
    @h
    private String smsCode;
    @h
    private String username;

    public RegisterBean() {
        this(null, null, null, null, null, null, 63, null);
    }

    public RegisterBean(@h String str, @h String str2, @h String str3, @h String str4, @h Double d4, @h String str5) {
        this.username = str;
        this.password = str2;
        this.smsCode = str3;
        this.nickname = str4;
        this.biospeed = d4;
        this.countryCode = str5;
    }

    public static /* synthetic */ RegisterBean copy$default(RegisterBean registerBean, String str, String str2, String str3, String str4, Double d4, String str5, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = registerBean.username;
        }
        if ((i4 & 2) != 0) {
            str2 = registerBean.password;
        }
        String str6 = str2;
        if ((i4 & 4) != 0) {
            str3 = registerBean.smsCode;
        }
        String str7 = str3;
        if ((i4 & 8) != 0) {
            str4 = registerBean.nickname;
        }
        String str8 = str4;
        if ((i4 & 16) != 0) {
            d4 = registerBean.biospeed;
        }
        Double d10 = d4;
        if ((i4 & 32) != 0) {
            str5 = registerBean.countryCode;
        }
        return registerBean.copy(str, str6, str7, str8, d10, str5);
    }

    @h
    public final String component1() {
        return this.username;
    }

    @h
    public final String component2() {
        return this.password;
    }

    @h
    public final String component3() {
        return this.smsCode;
    }

    @h
    public final String component4() {
        return this.nickname;
    }

    @h
    public final Double component5() {
        return this.biospeed;
    }

    @h
    public final String component6() {
        return this.countryCode;
    }

    @g
    public final RegisterBean copy(@h String str, @h String str2, @h String str3, @h String str4, @h Double d4, @h String str5) {
        return new RegisterBean(str, str2, str3, str4, d4, str5);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RegisterBean) {
            RegisterBean registerBean = (RegisterBean) obj;
            return Intrinsics.areEqual(this.username, registerBean.username) && Intrinsics.areEqual(this.password, registerBean.password) && Intrinsics.areEqual(this.smsCode, registerBean.smsCode) && Intrinsics.areEqual(this.nickname, registerBean.nickname) && Intrinsics.areEqual((Object) this.biospeed, (Object) registerBean.biospeed) && Intrinsics.areEqual(this.countryCode, registerBean.countryCode);
        }
        return false;
    }

    @h
    public final Double getBiospeed() {
        return this.biospeed;
    }

    @h
    public final String getCountryCode() {
        return this.countryCode;
    }

    @h
    public final String getNickname() {
        return this.nickname;
    }

    @h
    public final String getPassword() {
        return this.password;
    }

    @h
    public final String getSmsCode() {
        return this.smsCode;
    }

    @h
    public final String getUsername() {
        return this.username;
    }

    public int hashCode() {
        String str = this.username;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.password;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.smsCode;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.nickname;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Double d4 = this.biospeed;
        int hashCode5 = (hashCode4 + (d4 == null ? 0 : d4.hashCode())) * 31;
        String str5 = this.countryCode;
        return hashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setBiospeed(@h Double d4) {
        this.biospeed = d4;
    }

    public final void setCountryCode(@h String str) {
        this.countryCode = str;
    }

    public final void setNickname(@h String str) {
        this.nickname = str;
    }

    public final void setPassword(@h String str) {
        this.password = str;
    }

    public final void setSmsCode(@h String str) {
        this.smsCode = str;
    }

    public final void setUsername(@h String str) {
        this.username = str;
    }

    @g
    public String toString() {
        return "RegisterBean(username=" + this.username + ", password=" + this.password + ", smsCode=" + this.smsCode + ", nickname=" + this.nickname + ", biospeed=" + this.biospeed + ", countryCode=" + this.countryCode + ')';
    }

    public /* synthetic */ RegisterBean(String str, String str2, String str3, String str4, Double d4, String str5, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : str2, (i4 & 4) != 0 ? null : str3, (i4 & 8) != 0 ? null : str4, (i4 & 16) != 0 ? null : d4, (i4 & 32) != 0 ? null : str5);
    }
}
