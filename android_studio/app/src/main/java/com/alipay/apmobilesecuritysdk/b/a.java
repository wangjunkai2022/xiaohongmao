package com.alipay.apmobilesecuritysdk.b;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private String f6702a;

    /* renamed from: b  reason: collision with root package name */
    private String f6703b;

    /* renamed from: c  reason: collision with root package name */
    private String f6704c;

    /* renamed from: d  reason: collision with root package name */
    private String f6705d;

    /* renamed from: e  reason: collision with root package name */
    private String f6706e;

    /* renamed from: f  reason: collision with root package name */
    private String f6707f;

    /* renamed from: g  reason: collision with root package name */
    private String f6708g;

    public a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f6702a = str;
        this.f6703b = str2;
        this.f6704c = str3;
        this.f6705d = str4;
        this.f6706e = str5;
        this.f6707f = str6;
        this.f6708g = str7;
    }

    public final String toString() {
        StringBuilder sb;
        String str;
        StringBuilder sb2;
        String str2;
        StringBuilder sb3;
        String str3;
        StringBuffer stringBuffer = new StringBuffer(new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()));
        stringBuffer.append("," + this.f6702a);
        stringBuffer.append("," + this.f6703b);
        stringBuffer.append("," + this.f6704c);
        stringBuffer.append("," + this.f6705d);
        if (t.a.e(this.f6706e) || this.f6706e.length() < 20) {
            sb = new StringBuilder(",");
            str = this.f6706e;
        } else {
            sb = new StringBuilder(",");
            str = this.f6706e.substring(0, 20);
        }
        sb.append(str);
        stringBuffer.append(sb.toString());
        if (t.a.e(this.f6707f) || this.f6707f.length() < 20) {
            sb2 = new StringBuilder(",");
            str2 = this.f6707f;
        } else {
            sb2 = new StringBuilder(",");
            str2 = this.f6707f.substring(0, 20);
        }
        sb2.append(str2);
        stringBuffer.append(sb2.toString());
        if (t.a.e(this.f6708g) || this.f6708g.length() < 20) {
            sb3 = new StringBuilder(",");
            str3 = this.f6708g;
        } else {
            sb3 = new StringBuilder(",");
            str3 = this.f6708g.substring(0, 20);
        }
        sb3.append(str3);
        stringBuffer.append(sb3.toString());
        return stringBuffer.toString();
    }
}
