package j5;

import java.util.List;

/* compiled from: ProvinceModel.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f84347a;

    /* renamed from: b  reason: collision with root package name */
    private List<a> f84348b;

    public c() {
    }

    public List<a> a() {
        return this.f84348b;
    }

    public String b() {
        return this.f84347a;
    }

    public void c(List<a> list) {
        this.f84348b = list;
    }

    public void d(String str) {
        this.f84347a = str;
    }

    public String toString() {
        return "ProvinceModel [name=" + this.f84347a + ", cityList=" + this.f84348b + "]";
    }

    public c(String str, List<a> list) {
        this.f84347a = str;
        this.f84348b = list;
    }
}
