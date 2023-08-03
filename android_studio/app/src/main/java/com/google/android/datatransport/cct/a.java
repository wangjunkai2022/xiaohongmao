package com.google.android.datatransport.cct;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.g;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: CCTDestination.java */
/* loaded from: classes2.dex */
public final class a implements g {

    /* renamed from: c  reason: collision with root package name */
    static final String f20193c = "cct";

    /* renamed from: d  reason: collision with root package name */
    static final String f20194d;

    /* renamed from: e  reason: collision with root package name */
    static final String f20195e;

    /* renamed from: f  reason: collision with root package name */
    private static final String f20196f;

    /* renamed from: g  reason: collision with root package name */
    private static final String f20197g = "1$";

    /* renamed from: h  reason: collision with root package name */
    private static final String f20198h = "\\";

    /* renamed from: i  reason: collision with root package name */
    private static final Set<com.google.android.datatransport.c> f20199i;

    /* renamed from: j  reason: collision with root package name */
    public static final a f20200j;

    /* renamed from: k  reason: collision with root package name */
    public static final a f20201k;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f20202a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f20203b;

    static {
        String a10 = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f20194d = a10;
        String a11 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f20195e = a11;
        String a12 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f20196f = a12;
        f20199i = Collections.unmodifiableSet(new HashSet(Arrays.asList(com.google.android.datatransport.c.b("proto"), com.google.android.datatransport.c.b("json"))));
        f20200j = new a(a10, null);
        f20201k = new a(a11, a12);
    }

    public a(@NonNull String str, @Nullable String str2) {
        this.f20202a = str;
        this.f20203b = str2;
    }

    @NonNull
    static String c(@NonNull byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }

    @NonNull
    static byte[] d(@NonNull String str) {
        return str.getBytes(Charset.forName("UTF-8"));
    }

    @NonNull
    public static a e(@NonNull byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (str.startsWith(f20197g)) {
            String[] split = str.substring(2).split(Pattern.quote(f20198h), 2);
            if (split.length == 2) {
                String str2 = split[0];
                if (!str2.isEmpty()) {
                    String str3 = split[1];
                    if (str3.isEmpty()) {
                        str3 = null;
                    }
                    return new a(str2, str3);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // com.google.android.datatransport.runtime.g
    public Set<com.google.android.datatransport.c> a() {
        return f20199i;
    }

    @Nullable
    public byte[] b() {
        String str = this.f20203b;
        if (str == null && this.f20202a == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = f20197g;
        objArr[1] = this.f20202a;
        objArr[2] = f20198h;
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }

    @Nullable
    public String f() {
        return this.f20203b;
    }

    @NonNull
    public String g() {
        return this.f20202a;
    }

    @Override // com.google.android.datatransport.runtime.f
    @Nullable
    public byte[] getExtras() {
        return b();
    }

    @Override // com.google.android.datatransport.runtime.f
    @NonNull
    public String getName() {
        return f20193c;
    }
}
