package com.airbnb.lottie.model;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: KeyPath.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f4536a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private e f4537b;

    public d(String... strArr) {
        this.f4536a = Arrays.asList(strArr);
    }

    private boolean b() {
        List<String> list = this.f4536a;
        return list.get(list.size() - 1).equals("**");
    }

    private boolean f(String str) {
        return "__container".equals(str);
    }

    @CheckResult
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public d a(String str) {
        d dVar = new d(this);
        dVar.f4536a.add(str);
        return dVar;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean c(String str, int i4) {
        if (i4 >= this.f4536a.size()) {
            return false;
        }
        boolean z9 = i4 == this.f4536a.size() - 1;
        String str2 = this.f4536a.get(i4);
        if (!str2.equals("**")) {
            return (z9 || (i4 == this.f4536a.size() + (-2) && b())) && (str2.equals(str) || str2.equals("*"));
        }
        if (!z9 && this.f4536a.get(i4 + 1).equals(str)) {
            return i4 == this.f4536a.size() + (-2) || (i4 == this.f4536a.size() + (-3) && b());
        } else if (z9) {
            return true;
        } else {
            int i10 = i4 + 1;
            if (i10 < this.f4536a.size() - 1) {
                return false;
            }
            return this.f4536a.get(i10).equals(str);
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public e d() {
        return this.f4537b;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int e(String str, int i4) {
        if (f(str)) {
            return 0;
        }
        if (this.f4536a.get(i4).equals("**")) {
            return (i4 != this.f4536a.size() - 1 && this.f4536a.get(i4 + 1).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public String g() {
        return this.f4536a.toString();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean h(String str, int i4) {
        if (f(str)) {
            return true;
        }
        if (i4 >= this.f4536a.size()) {
            return false;
        }
        return this.f4536a.get(i4).equals(str) || this.f4536a.get(i4).equals("**") || this.f4536a.get(i4).equals("*");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean i(String str, int i4) {
        return "__container".equals(str) || i4 < this.f4536a.size() - 1 || this.f4536a.get(i4).equals("**");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public d j(e eVar) {
        d dVar = new d(this);
        dVar.f4537b = eVar;
        return dVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("KeyPath{keys=");
        sb.append(this.f4536a);
        sb.append(",resolved=");
        sb.append(this.f4537b != null);
        sb.append('}');
        return sb.toString();
    }

    private d(d dVar) {
        this.f4536a = new ArrayList(dVar.f4536a);
        this.f4537b = dVar.f4537b;
    }
}
