package com.googlecode.mp4parser.authoring;

import com.googlecode.mp4parser.util.l;
import java.util.Date;

/* compiled from: TrackMetaData.java */
/* loaded from: classes2.dex */
public class i implements Cloneable {

    /* renamed from: b  reason: collision with root package name */
    private long f36052b;

    /* renamed from: f  reason: collision with root package name */
    private double f36056f;

    /* renamed from: g  reason: collision with root package name */
    private double f36057g;

    /* renamed from: h  reason: collision with root package name */
    private float f36058h;

    /* renamed from: k  reason: collision with root package name */
    int f36061k;

    /* renamed from: a  reason: collision with root package name */
    private String f36051a = "eng";

    /* renamed from: c  reason: collision with root package name */
    private Date f36053c = new Date();

    /* renamed from: d  reason: collision with root package name */
    private Date f36054d = new Date();

    /* renamed from: e  reason: collision with root package name */
    private l f36055e = l.f36990j;

    /* renamed from: i  reason: collision with root package name */
    private long f36059i = 1;

    /* renamed from: j  reason: collision with root package name */
    private int f36060j = 0;

    public Date a() {
        return this.f36054d;
    }

    public int b() {
        return this.f36060j;
    }

    public double c() {
        return this.f36057g;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String d() {
        return this.f36051a;
    }

    public int e() {
        return this.f36061k;
    }

    public l f() {
        return this.f36055e;
    }

    public Date g() {
        return this.f36053c;
    }

    public long h() {
        return this.f36052b;
    }

    public long i() {
        return this.f36059i;
    }

    public float j() {
        return this.f36058h;
    }

    public double k() {
        return this.f36056f;
    }

    public void l(Date date) {
        this.f36054d = date;
    }

    public void m(int i4) {
        this.f36060j = i4;
    }

    public void n(double d4) {
        this.f36057g = d4;
    }

    public void o(String str) {
        this.f36051a = str;
    }

    public void p(int i4) {
        this.f36061k = i4;
    }

    public void q(l lVar) {
        this.f36055e = lVar;
    }

    public void r(Date date) {
        this.f36053c = date;
    }

    public void s(long j4) {
        this.f36052b = j4;
    }

    public void t(long j4) {
        this.f36059i = j4;
    }

    public void u(float f10) {
        this.f36058h = f10;
    }

    public void v(double d4) {
        this.f36056f = d4;
    }
}
