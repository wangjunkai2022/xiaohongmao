package j5;

import java.util.List;

/* compiled from: CityModel.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f84343a;

    /* renamed from: b  reason: collision with root package name */
    private List<b> f84344b;

    public a() {
    }

    public List<b> a() {
        return this.f84344b;
    }

    public String b() {
        return this.f84343a;
    }

    public void c(List<b> list) {
        this.f84344b = list;
    }

    public void d(String str) {
        this.f84343a = str;
    }

    public String toString() {
        return "CityModel [name=" + this.f84343a + ", districtList=" + this.f84344b + "]";
    }

    public a(String str, List<b> list) {
        this.f84343a = str;
        this.f84344b = list;
    }
}
