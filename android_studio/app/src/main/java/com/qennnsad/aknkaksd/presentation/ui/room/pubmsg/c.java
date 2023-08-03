package com.qennnsad.aknkaksd.presentation.ui.room.pubmsg;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.util.SparseArray;
import androidx.annotation.CheckResult;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubLevel;
import com.qennnsad.aknkaksd.util.d1;
import com.qennnsad.aknkaksd.util.e0;
import com.qennnsad.aknkaksd.util.j1;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.s1;
import com.qennnsad.aknkaksd.util.z0;

/* compiled from: MsgUtils.java */
@u7.f
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: q  reason: collision with root package name */
    public static final String f54074q = "MsgUtils";

    /* renamed from: r  reason: collision with root package name */
    private static final boolean f54075r = false;
    @ColorInt

    /* renamed from: a  reason: collision with root package name */
    public int f54076a;
    @ColorInt

    /* renamed from: h  reason: collision with root package name */
    private int f54083h;
    @ColorInt

    /* renamed from: i  reason: collision with root package name */
    private int f54084i;
    @ColorInt

    /* renamed from: j  reason: collision with root package name */
    private int f54085j;
    @ColorInt

    /* renamed from: k  reason: collision with root package name */
    private int f54086k;

    /* renamed from: l  reason: collision with root package name */
    private int f54087l;
    @ColorInt

    /* renamed from: m  reason: collision with root package name */
    private int f54088m;

    /* renamed from: n  reason: collision with root package name */
    private e0 f54089n;

    /* renamed from: o  reason: collision with root package name */
    private g5.a f54090o;

    /* renamed from: b  reason: collision with root package name */
    private SparseArray<CharSequence> f54077b = new SparseArray<>(128);

    /* renamed from: c  reason: collision with root package name */
    private SparseArray<CharSequence> f54078c = new SparseArray<>(6);

    /* renamed from: d  reason: collision with root package name */
    private SparseArray<CharSequence> f54079d = new SparseArray<>(3);

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f54080e = null;

    /* renamed from: f  reason: collision with root package name */
    private CharSequence f54081f = null;

    /* renamed from: g  reason: collision with root package name */
    private CharSequence f54082g = null;

    /* renamed from: p  reason: collision with root package name */
    private SparseArray<b> f54091p = new SparseArray<>(6);

    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.a
    public c(@m6.b Context context, g5.a aVar, e0 e0Var) {
        this.f54089n = e0Var;
        this.f54090o = aVar;
        this.f54083h = u(context, R.color.room_chat_adminer_msg);
        this.f54084i = u(context, R.color.room_chat_sender_name_color);
        this.f54085j = u(context, R.color.item_public_msg_content);
        this.f54086k = u(context, R.color.continue_gift_x_border_sysmsg);
        this.f54088m = u(context, R.color.item_public_sys_welcom);
        this.f54087l = u(context, R.color.black);
        this.f54076a = u(context, R.color.color_f3de65);
    }

    @ColorInt
    private int u(Context context, @ColorRes int i4) {
        return ContextCompat.getColor(context, i4);
    }

    @CheckResult
    public CharSequence a(@NonNull String str) {
        int i4;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.equals("room_admin")) {
            i4 = 1;
        } else if (str.equals("show_admin")) {
            i4 = 2;
        } else if (!str.equals("super_admin")) {
            return "";
        } else {
            i4 = 3;
        }
        Context contextInstance = BaseBeautyApplication.getContextInstance();
        int d4 = z0.d(i4);
        if (d4 == 0) {
            return "";
        }
        int dimensionPixelSize = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_admin_width_height);
        int dimensionPixelSize2 = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_admin_width_height);
        Bitmap decodeResource = BitmapFactory.decodeResource(contextInstance.getResources(), d4);
        if (decodeResource == null) {
            return "";
        }
        j1.a aVar = new j1.a(contextInstance, Bitmap.createScaledBitmap(decodeResource, dimensionPixelSize, dimensionPixelSize2, false));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(String.valueOf(i4));
        spannableStringBuilder.setSpan(aVar, 0, spannableStringBuilder.length(), 17);
        this.f54079d.put(i4, spannableStringBuilder);
        return spannableStringBuilder;
    }

    public CharSequence b(CharSequence charSequence, int i4) {
        if (TextUtils.isEmpty(charSequence) || i4 <= 0) {
            return "";
        }
        b bVar = this.f54091p.get(i4) != null ? this.f54091p.get(i4) : null;
        if (bVar == null) {
            Context contextInstance = BaseBeautyApplication.getContextInstance();
            Bitmap i10 = z0.i(contextInstance, s1.h(i4));
            if (i10 == null) {
                return "";
            }
            int dimensionPixelSize = contextInstance.getResources().getDimensionPixelSize(R.dimen.fanclub_label_height);
            b bVar2 = new b(contextInstance, Bitmap.createScaledBitmap(i10, (int) (dimensionPixelSize * (i10.getWidth() / i10.getHeight())), dimensionPixelSize, false), (dimensionPixelSize * 3) >> 2);
            this.f54091p.put(i4, bVar2);
            bVar = bVar2;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        spannableStringBuilder.setSpan(bVar, 0, charSequence.length(), 17);
        return spannableStringBuilder.append((CharSequence) " ");
    }

    public CharSequence c(@NonNull String str, int i4, String str2, float f10) {
        if (i4 > 0) {
            ConfigBean e4 = this.f54090o.e();
            FanClubLevel k10 = (e4 == null || e4.getFanclub() == null) ? null : this.f54089n.k(e4.getFanclub(), i4);
            return j1.b("", str, new a(str2, str, this.f54089n.n(k10), this.f54089n.m(k10), f10));
        }
        return m(str);
    }

    public CharSequence d(@NonNull String str, int i4) {
        if (i4 > 0) {
            ConfigBean e4 = this.f54090o.e();
            FanClubLevel k10 = (e4 == null || e4.getFanclub() == null) ? null : this.f54089n.k(e4.getFanclub(), i4);
            return j1.b("", str, new i(str, this.f54089n.n(k10), this.f54089n.m(k10)));
        }
        return m(str);
    }

    @CheckResult
    public CharSequence e() {
        Context contextInstance = BaseBeautyApplication.getContextInstance();
        int dimensionPixelSize = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_namecard_width);
        int dimensionPixelSize2 = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_namecard_height);
        Bitmap decodeResource = BitmapFactory.decodeResource(contextInstance.getResources(), R.drawable.label_gamenews);
        if (decodeResource == null) {
            return "";
        }
        j1.a aVar = new j1.a(contextInstance, Bitmap.createScaledBitmap(decodeResource, dimensionPixelSize, dimensionPixelSize2, false));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(String.valueOf((int) R.drawable.label_gamenews));
        spannableStringBuilder.setSpan(aVar, 0, spannableStringBuilder.length(), 17);
        this.f54081f = spannableStringBuilder;
        return spannableStringBuilder;
    }

    @CheckResult
    public CharSequence f() {
        Context contextInstance = BaseBeautyApplication.getContextInstance();
        int dimensionPixelSize = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_namecard_width);
        int dimensionPixelSize2 = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_namecard_height);
        Bitmap decodeResource = BitmapFactory.decodeResource(contextInstance.getResources(), R.drawable.label_giftnews);
        if (decodeResource == null) {
            return "";
        }
        j1.a aVar = new j1.a(contextInstance, Bitmap.createScaledBitmap(decodeResource, dimensionPixelSize, dimensionPixelSize2, false));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(String.valueOf((int) R.drawable.label_giftnews));
        spannableStringBuilder.setSpan(aVar, 0, spannableStringBuilder.length(), 17);
        this.f54082g = spannableStringBuilder;
        return spannableStringBuilder;
    }

    public CharSequence g(@NonNull String str) {
        return j1.b("", str, new ForegroundColorSpan(this.f54076a));
    }

    @Nullable
    @CheckResult
    public CharSequence h(int i4) {
        if (i4 == 0) {
            return null;
        }
        Context contextInstance = BaseBeautyApplication.getContextInstance();
        int dimensionPixelSize = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_level_width_msg);
        int dimensionPixelSize2 = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_level_height_msg);
        Bitmap e4 = z0.e(contextInstance, i4);
        if (e4 == null) {
            o0.e(f54074q, "Cannot decode bitmap for level %d!", Integer.valueOf(i4));
            return null;
        }
        j1.a aVar = new j1.a(contextInstance, Bitmap.createScaledBitmap(e4, dimensionPixelSize, dimensionPixelSize2, false));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(String.valueOf(i4));
        spannableStringBuilder.setSpan(aVar, 0, spannableStringBuilder.length(), 17);
        this.f54077b.put(i4, spannableStringBuilder);
        return TextUtils.concat(spannableStringBuilder, "  ");
    }

    public CharSequence i() {
        Context contextInstance = BaseBeautyApplication.getContextInstance();
        int dimensionPixelSize = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_namecard_width);
        int dimensionPixelSize2 = contextInstance.getResources().getDimensionPixelSize(R.dimen.user_namecard_height);
        Bitmap decodeResource = BitmapFactory.decodeResource(contextInstance.getResources(), R.drawable.label_namecard);
        if (decodeResource == null) {
            return "";
        }
        j1.a aVar = new j1.a(contextInstance, Bitmap.createScaledBitmap(decodeResource, dimensionPixelSize, dimensionPixelSize2, false));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(String.valueOf((int) R.drawable.label_namecard));
        spannableStringBuilder.setSpan(aVar, 0, spannableStringBuilder.length(), 17);
        this.f54080e = spannableStringBuilder;
        return spannableStringBuilder;
    }

    public CharSequence j(@NonNull String str) {
        return (str == null || str.equals("") || str.equals("null")) ? j1.b("", "", new d1(this.f54083h, 5)) : j1.b("", str, new RelativeSizeSpan(0.85f), new d1(this.f54083h, 5));
    }

    public CharSequence k(int i4) {
        Bitmap decodeResource;
        if (i4 == 0) {
            return "";
        }
        Context contextInstance = BaseBeautyApplication.getContextInstance();
        int h4 = z0.h(i4);
        if (h4 == 0 || (decodeResource = BitmapFactory.decodeResource(contextInstance.getResources(), h4)) == null) {
            return "";
        }
        j1.a aVar = new j1.a(contextInstance, Bitmap.createScaledBitmap(decodeResource, contextInstance.getResources().getDimensionPixelSize(R.dimen.user_peerage_width_height) + 10, contextInstance.getResources().getDimensionPixelSize(R.dimen.fanclub_label_height), false));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(String.valueOf(i4));
        spannableStringBuilder.setSpan(aVar, 0, spannableStringBuilder.length(), 17);
        this.f54078c.put(i4, spannableStringBuilder);
        return spannableStringBuilder;
    }

    public CharSequence l(@NonNull String str) {
        return j1.b("", str, new ForegroundColorSpan(this.f54087l));
    }

    public CharSequence m(@NonNull String str) {
        return j1.b("", str, new ForegroundColorSpan(this.f54085j));
    }

    public CharSequence n(@NonNull String str) {
        return j1.b("", str, new ForegroundColorSpan(this.f54086k));
    }

    public CharSequence o(@NonNull String str) {
        return j1.b("", str, new ForegroundColorSpan(this.f54084i));
    }

    public CharSequence p(@NonNull String str) {
        return j1.b("", str, new ForegroundColorSpan(this.f54088m));
    }

    public CharSequence q(@NonNull String str) {
        return t(str, true);
    }

    public CharSequence r(@NonNull String str, int i4) {
        return j1.b("", String.format("%s:  ", str), new ForegroundColorSpan(i4));
    }

    public CharSequence s(@NonNull String str, int i4, boolean z9) {
        if (z9) {
            str = String.format("%s:  ", str);
        }
        return j1.b("", str, new ForegroundColorSpan(i4));
    }

    public CharSequence t(@NonNull String str, boolean z9) {
        if (z9) {
            str = String.format("%s:  ", str);
        }
        return j1.b("", str, new ForegroundColorSpan(this.f54084i));
    }
}
