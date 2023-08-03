package com.qennnsad.aknkaksd.util;

import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.ConfigDnsBean;

/* compiled from: Const.java */
/* loaded from: classes3.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public static final String f54831a = "小可爱";

    /* renamed from: b  reason: collision with root package name */
    public static final long f54832b = 50;

    /* renamed from: c  reason: collision with root package name */
    public static final int f54833c = 200;

    /* renamed from: j  reason: collision with root package name */
    public static final String f54840j = "/charm_rank";

    /* renamed from: k  reason: collision with root package name */
    public static final String f54841k = "/game_rank";

    /* renamed from: l  reason: collision with root package name */
    public static final String f54842l = "/play_rank";

    /* renamed from: d  reason: collision with root package name */
    public static String f54834d = "_sd._tls.api.moonscap.com";

    /* renamed from: e  reason: collision with root package name */
    public static String f54835e = c5.j.f4022b + f54834d;

    /* renamed from: f  reason: collision with root package name */
    public static String f54836f = c5.j.f4022b + f54834d;

    /* renamed from: g  reason: collision with root package name */
    public static String f54837g = c5.j.f4022b + f54834d;

    /* renamed from: h  reason: collision with root package name */
    public static String f54838h = c5.j.f4022b + f54834d;

    /* renamed from: i  reason: collision with root package name */
    public static String f54839i = c5.j.f4022b + f54834d + "/Home/Rank";

    /* renamed from: m  reason: collision with root package name */
    public static String f54843m = "";

    /* renamed from: n  reason: collision with root package name */
    public static String f54844n = "";

    /* renamed from: o  reason: collision with root package name */
    public static String f54845o = "";
    @Deprecated

    /* renamed from: p  reason: collision with root package name */
    public static String f54846p = "";
    @Deprecated

    /* renamed from: q  reason: collision with root package name */
    public static String f54847q = "";

    /* renamed from: r  reason: collision with root package name */
    public static String f54848r = "";

    /* renamed from: s  reason: collision with root package name */
    public static String f54849s = "";
    @Deprecated

    /* renamed from: t  reason: collision with root package name */
    public static String f54850t = "";

    /* renamed from: u  reason: collision with root package name */
    public static String f54851u = "";

    /* renamed from: v  reason: collision with root package name */
    public static String f54852v = "";
    @Deprecated

    /* renamed from: w  reason: collision with root package name */
    public static String f54853w = "";
    @Deprecated

    /* renamed from: x  reason: collision with root package name */
    public static String f54854x = "";

    public static void a(ConfigDnsBean configDnsBean, ConfigBean configBean) {
        String str = configBean.getHost().getWeb() + ":" + configDnsBean.getPort().intValue();
        String str2 = configBean.getHost().getStatic();
        if (str != null && !str.equals("")) {
            f54843m = str + "/home/promotion/share";
            f54844n = str + "/home/promotion/reward";
            f54845o = str + "/home/payment/index?os=android&user_id=";
            f54846p = str + "/home/legend/deposit_chip?os=android&user_id=";
            f54847q = str + "/home/legend/withdraw_chip?os=android&user_id=";
            f54848r = str + "/home/index/report";
            f54849s = str + "/home/wallet/index";
            f54850t = str + "/home/legend/withdraw_profit";
            f54851u = str + "/home/lounge/index";
            f54852v = str + "/home/peerage/index";
            f54853w = str + "/home/legend/service?os=android&user_id=";
            f54854x = str + "/home/legend/help?os=android&user_id=";
            f54837g = str;
        }
        f54834d = configDnsBean.getHost();
        f54835e = c5.j.f4022b + f54834d;
        f54836f = c5.j.f4022b + f54834d;
        f54838h = c5.j.f4022b + f54834d;
        f54839i = c5.j.f4022b + f54834d + "/Home/Rank";
        if (str2 == null || str2.equals("")) {
            return;
        }
        f54836f = str2;
    }
}
