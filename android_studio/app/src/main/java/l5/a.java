package l5;

import android.content.Context;
import android.graphics.Path;
import com.didi.live.spring.R;

/* compiled from: HeartInfo.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private float f86875a;

    /* renamed from: b  reason: collision with root package name */
    private float f86876b;

    /* renamed from: c  reason: collision with root package name */
    private Path f86877c;

    /* renamed from: j  reason: collision with root package name */
    private int f86884j;

    /* renamed from: d  reason: collision with root package name */
    private float f86878d = 2.2f;

    /* renamed from: e  reason: collision with root package name */
    private int f86879e = 0;

    /* renamed from: f  reason: collision with root package name */
    private float f86880f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    private float f86881g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private int f86882h = 1800;

    /* renamed from: i  reason: collision with root package name */
    private double f86883i = 0.0d;

    /* renamed from: k  reason: collision with root package name */
    private int f86885k = 255;

    /* renamed from: l  reason: collision with root package name */
    private double f86886l = 0.0d;

    /* renamed from: m  reason: collision with root package name */
    private float f86887m = 0.0f;

    public void a(int i4) {
        int i10 = this.f86879e + i4;
        this.f86879e = i10;
        float f10 = (int) (this.f86883i * i10);
        this.f86880f = f10;
        this.f86885k = (int) ((1.0d - (f10 / this.f86881g)) * 255.0d);
        float f11 = this.f86887m;
        if (f10 >= f11) {
            this.f86886l = 1.0d;
        } else {
            this.f86886l = f10 / f11;
        }
    }

    public int b() {
        return this.f86885k;
    }

    public float c() {
        return this.f86880f;
    }

    public int d() {
        return this.f86879e;
    }

    public int e() {
        return this.f86884j;
    }

    public Path f() {
        return this.f86877c;
    }

    public float g() {
        return (float) (this.f86878d * this.f86886l);
    }

    public double h() {
        return this.f86886l;
    }

    public double i() {
        return this.f86883i;
    }

    public int j() {
        return this.f86882h;
    }

    public float k() {
        return this.f86875a;
    }

    public float l() {
        return this.f86876b;
    }

    public void m(float f10, Context context) {
        this.f86881g = f10;
        this.f86883i = f10 / (this.f86882h * 1.0d);
        this.f86887m = f10 / 6.0f;
        this.f86878d = context.getResources().getDimension(R.dimen.heart_rate);
    }

    public void n(int i4) {
        this.f86885k = i4;
    }

    public void o(int i4) {
        this.f86884j = i4;
    }

    public void p(Path path) {
        this.f86877c = path;
    }

    public void q(int i4) {
        this.f86878d = i4;
    }

    public void r(float f10) {
        this.f86886l = f10;
    }

    public void s(int i4) {
        this.f86883i = i4;
    }

    public void t(int i4) {
        this.f86882h = i4;
    }

    public void u(float f10) {
        this.f86875a = f10;
    }

    public void v(float f10) {
        this.f86876b = f10;
    }
}
