package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonenumber;
import java.util.Arrays;

/* compiled from: PhoneNumberMatch.java */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final int f35689a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35690b;

    /* renamed from: c  reason: collision with root package name */
    private final Phonenumber.PhoneNumber f35691c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(int i4, String str, Phonenumber.PhoneNumber phoneNumber) {
        if (i4 < 0) {
            throw new IllegalArgumentException("Start index must be >= 0.");
        }
        if (str != null && phoneNumber != null) {
            this.f35689a = i4;
            this.f35690b = str;
            this.f35691c = phoneNumber;
            return;
        }
        throw null;
    }

    public int a() {
        return this.f35689a + this.f35690b.length();
    }

    public Phonenumber.PhoneNumber b() {
        return this.f35691c;
    }

    public String c() {
        return this.f35690b;
    }

    public int d() {
        return this.f35689a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            return this.f35690b.equals(hVar.f35690b) && this.f35689a == hVar.f35689a && this.f35691c.equals(hVar.f35691c);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f35689a), this.f35690b, this.f35691c});
    }

    public String toString() {
        return "PhoneNumberMatch [" + d() + "," + a() + ") " + this.f35690b;
    }
}
