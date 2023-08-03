package io.michaelrocks.libphonenumber.android;

import io.michaelrocks.libphonenumber.android.Phonenumber;
import java.util.Arrays;

/* compiled from: PhoneNumberMatch.java */
/* loaded from: classes3.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final int f71041a;

    /* renamed from: b  reason: collision with root package name */
    private final String f71042b;

    /* renamed from: c  reason: collision with root package name */
    private final Phonenumber.PhoneNumber f71043c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(int start, String rawString, Phonenumber.PhoneNumber number) {
        if (start < 0) {
            throw new IllegalArgumentException("Start index must be >= 0.");
        }
        if (rawString != null && number != null) {
            this.f71041a = start;
            this.f71042b = rawString;
            this.f71043c = number;
            return;
        }
        throw null;
    }

    public int a() {
        return this.f71041a + this.f71042b.length();
    }

    public Phonenumber.PhoneNumber b() {
        return this.f71043c;
    }

    public String c() {
        return this.f71042b;
    }

    public int d() {
        return this.f71041a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            return this.f71042b.equals(jVar.f71042b) && this.f71041a == jVar.f71041a && this.f71043c.equals(jVar.f71043c);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f71041a), this.f71042b, this.f71043c});
    }

    public String toString() {
        return "PhoneNumberMatch [" + d() + "," + a() + ") " + this.f71042b;
    }
}
