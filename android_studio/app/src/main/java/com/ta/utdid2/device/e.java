package com.ta.utdid2.device;

import com.ta.utdid2.android.utils.i;

/* compiled from: UTUtdidHelper2.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private String f55914a;

    public e() {
        this.f55914a = "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H";
        this.f55914a = com.ta.utdid2.android.utils.b.f("XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H".getBytes(), 0);
    }

    public String a(String str) {
        return com.ta.utdid2.android.utils.a.b(this.f55914a, str);
    }

    public String b(String str) {
        String b10 = com.ta.utdid2.android.utils.a.b(this.f55914a, str);
        if (!i.c(b10)) {
            try {
                return new String(com.ta.utdid2.android.utils.b.a(b10, 0));
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }
}
