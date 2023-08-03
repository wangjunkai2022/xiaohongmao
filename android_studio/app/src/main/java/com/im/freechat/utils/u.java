package com.im.freechat.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.im.freechat.shared.entities.auth.Country;
import com.im.freechat.shared.entities.auth.PhoneNumber;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Regex;
import org.json.JSONArray;

/* compiled from: PhoneUtilImpl.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0014\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0017J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016R\u0017\u0010\u0012\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0014R'\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0016\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/utils/u;", "Lcom/im/freechat/domain/o;", "", "g", "iso", ContextChain.TAG_INFRA, "", "Lcom/im/freechat/shared/entities/auth/Country;", "h", "e", "b", "Lcom/im/freechat/shared/entities/auth/PhoneNumber;", "phoneNumber", "a", "Landroid/content/Context;", "Landroid/content/Context;", "f", "()Landroid/content/Context;", "context", "Lcom/google/i18n/phonenumbers/PhoneNumberUtil;", "Lcom/google/i18n/phonenumbers/PhoneNumberUtil;", "phoneNumberUtil", "c", "Lkotlin/Lazy;", "()Ljava/util/Map;", "codes", "<init>", "(Landroid/content/Context;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class u implements com.im.freechat.domain.o {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f43831a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final PhoneNumberUtil f43832b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f43833c;

    /* compiled from: PhoneUtilImpl.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "", "Lcom/im/freechat/shared/entities/auth/Country;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<Map<String, ? extends Country>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Map<String, ? extends Country> invoke() {
            return u.this.h();
        }
    }

    public u(@m8.g Context context, @m8.g PhoneNumberUtil phoneNumberUtil) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(phoneNumberUtil, "phoneNumberUtil");
        this.f43831a = context;
        this.f43832b = phoneNumberUtil;
        lazy = LazyKt__LazyJVMKt.lazy(new a());
        this.f43833c = lazy;
    }

    private final String e(String str) {
        String code;
        Country country = c().get(str);
        return (country == null || (code = country.getCode()) == null) ? "+1" : code;
    }

    private final String g() {
        InputStream openRawResource = this.f43831a.getResources().openRawResource(b.r.f2194a);
        Intrinsics.checkNotNullExpressionValue(openRawResource, "context.resources.openRawResource(R.raw.countries)");
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[1024];
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openRawResource, "UTF-8"));
            for (int read = bufferedReader.read(cArr); read != -1; read = bufferedReader.read(cArr)) {
                stringWriter.write(cArr, 0, read);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(openRawResource, null);
            String stringWriter2 = stringWriter.toString();
            Intrinsics.checkNotNullExpressionValue(stringWriter2, "writer.toString()");
            return stringWriter2;
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, Country> h() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        JSONArray jSONArray = new JSONArray(g());
        int length = jSONArray.length();
        for (int i4 = 0; i4 < length; i4++) {
            String iso = jSONArray.getJSONObject(i4).optString(ExifInterface.TAG_RW2_ISO);
            Intrinsics.checkNotNullExpressionValue(iso, "iso");
            String i10 = i(iso);
            if (i10 == null) {
                i10 = "";
            }
            linkedHashMap.put(iso, new Country(i10, '+' + jSONArray.getJSONObject(i4).optString("Code")));
        }
        return linkedHashMap;
    }

    private final String i(String str) {
        return new Locale("", str).getDisplayCountry(Locale.getDefault());
    }

    @Override // com.im.freechat.domain.o
    @m8.g
    public PhoneNumber a(@m8.g PhoneNumber phoneNumber) throws NumberParseException {
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        String replace = new Regex("[^0-9]").replace(phoneNumber.getPhoneNumber(), "");
        String str = phoneNumber.getCountryCode() + ' ' + replace;
        if (!Intrinsics.areEqual(phoneNumber.getCountryCode(), "+89") && (!Intrinsics.areEqual(phoneNumber.getCountryCode(), "+86") || replace.length() <= 8 || replace.length() > 11)) {
            Phonenumber.PhoneNumber N0 = this.f43832b.N0(str, null);
            if (this.f43832b.z0(N0)) {
                return new PhoneNumber(String.valueOf(N0.getCountryCode()), String.valueOf(N0.getNationalNumber()));
            }
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "Number is not valid");
        }
        return new PhoneNumber(phoneNumber.getCountryCode(), replace);
    }

    @Override // com.im.freechat.domain.o
    @m8.g
    @SuppressLint({"DefaultLocale"})
    public String b() {
        String country = Locale.getDefault().getCountry();
        Intrinsics.checkNotNullExpressionValue(country, "getDefault().country");
        String lowerCase = country.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return e(lowerCase);
    }

    @Override // com.im.freechat.domain.o
    @m8.g
    public Map<String, Country> c() {
        return (Map) this.f43833c.getValue();
    }

    @m8.g
    public final Context f() {
        return this.f43831a;
    }
}
