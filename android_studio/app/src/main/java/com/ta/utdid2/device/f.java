package com.ta.utdid2.device;

import java.util.Random;

/* compiled from: UTUtdidHelper.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static Random f55915b = new Random();

    /* renamed from: a  reason: collision with root package name */
    private String f55916a;

    public f() {
        this.f55916a = "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H";
        this.f55916a = com.ta.utdid2.android.utils.b.f("XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H".getBytes(), 2);
    }

    public static String b() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < 24; i4++) {
            stringBuffer.append((char) (f55915b.nextInt(25) + 65));
        }
        return stringBuffer.toString();
    }

    public String a(String str) {
        return com.ta.utdid2.android.utils.a.b(this.f55916a, str);
    }

    public String c(byte[] bArr) {
        return com.ta.utdid2.android.utils.a.d(this.f55916a, com.ta.utdid2.android.utils.b.f(bArr, 2));
    }

    public String d(String str) {
        return com.ta.utdid2.android.utils.a.d(this.f55916a, str);
    }
}
