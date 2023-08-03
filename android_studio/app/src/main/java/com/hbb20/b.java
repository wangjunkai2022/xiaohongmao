package com.hbb20;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.mlkit.common.MlKitException;
import com.hbb20.CountryCodePicker;
import com.hbb20.i;
import com.qennnsad.aknkaksd.util.a1;
import java.text.Collator;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.text.Typography;
import org.bouncycastle.math.Primes;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;
import shaded.org.apache.commons.codec.language.l;

/* compiled from: CCPCountry.java */
/* loaded from: classes2.dex */
public class b implements Comparable<b> {
    private static String A = "787";
    private static String B = "721";
    private static String C = "649";
    private static String D = "868";
    private static String E = "784";
    private static String F = "284";
    private static String G = "340";
    private static String H = "1624";

    /* renamed from: f  reason: collision with root package name */
    static int f37072f = -99;

    /* renamed from: g  reason: collision with root package name */
    static String f37073g = "Class Country";

    /* renamed from: h  reason: collision with root package name */
    static CountryCodePicker.Language f37074h = null;

    /* renamed from: i  reason: collision with root package name */
    static String f37075i = null;

    /* renamed from: j  reason: collision with root package name */
    static String f37076j = null;

    /* renamed from: k  reason: collision with root package name */
    static String f37077k = null;

    /* renamed from: l  reason: collision with root package name */
    static List<b> f37078l = null;

    /* renamed from: m  reason: collision with root package name */
    private static String f37079m = "268";

    /* renamed from: n  reason: collision with root package name */
    private static String f37080n = "264";

    /* renamed from: o  reason: collision with root package name */
    private static String f37081o = "246";

    /* renamed from: p  reason: collision with root package name */
    private static String f37082p = "441";

    /* renamed from: q  reason: collision with root package name */
    private static String f37083q = "242";

    /* renamed from: r  reason: collision with root package name */
    private static String f37084r = "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/";

    /* renamed from: s  reason: collision with root package name */
    private static String f37085s = "767";

    /* renamed from: t  reason: collision with root package name */
    private static String f37086t = "809/829/849";

    /* renamed from: u  reason: collision with root package name */
    private static String f37087u = "473";

    /* renamed from: v  reason: collision with root package name */
    private static String f37088v = "876";

    /* renamed from: w  reason: collision with root package name */
    private static String f37089w = "869";

    /* renamed from: x  reason: collision with root package name */
    private static String f37090x = "345";

    /* renamed from: y  reason: collision with root package name */
    private static String f37091y = "758";

    /* renamed from: z  reason: collision with root package name */
    private static String f37092z = "664";

    /* renamed from: a  reason: collision with root package name */
    String f37093a;

    /* renamed from: b  reason: collision with root package name */
    String f37094b;

    /* renamed from: c  reason: collision with root package name */
    String f37095c;

    /* renamed from: d  reason: collision with root package name */
    String f37096d;

    /* renamed from: e  reason: collision with root package name */
    int f37097e;

    public b() {
        this.f37097e = f37072f;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void A(android.content.Context r8, com.hbb20.CountryCodePicker.Language r9) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.b.A(android.content.Context, com.hbb20.CountryCodePicker$Language):void");
    }

    public static void D(String dialogTitle) {
        f37075i = dialogTitle;
    }

    static void F(CountryCodePicker.Language loadedLibraryMasterListLanguage) {
        f37074h = loadedLibraryMasterListLanguage;
    }

    static void G(List<b> loadedLibraryMaterList) {
        f37078l = loadedLibraryMaterList;
    }

    public static void K(String noResultFoundAckMessage) {
        f37077k = noResultFoundAckMessage;
    }

    public static void M(String searchHintMessage) {
        f37076j = searchHintMessage;
    }

    private boolean b(String fieldName, String fieldValue, String query) {
        if (fieldValue != null && query != null) {
            try {
                return fieldValue.toLowerCase(Locale.ROOT).contains(query);
            } catch (Exception unused) {
                Log.w("CCPCountry", fieldName + ":" + fieldValue + " failed to execute toLowerCase(Locale.ROOT).contains(query) for query:" + query);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b c(Context context, CountryCodePicker.Language language, List<b> preferredCountries, int code) {
        return d(context, language, preferredCountries, code + "");
    }

    public static b d(Context context, CountryCodePicker.Language language, List<b> preferredCountries, String code) {
        if (preferredCountries != null && !preferredCountries.isEmpty()) {
            for (b bVar : preferredCountries) {
                if (bVar.x().equals(code)) {
                    return bVar;
                }
            }
        }
        for (b bVar2 : s(context, language)) {
            if (bVar2.x().equals(code)) {
                return bVar2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b e(String code) {
        for (b bVar : r()) {
            if (bVar.x().equals(code)) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b f(Context context, List<b> customMasterCountriesList, CountryCodePicker.Language language, String nameCode) {
        if (customMasterCountriesList != null && customMasterCountriesList.size() != 0) {
            for (b bVar : customMasterCountriesList) {
                if (bVar.v().equalsIgnoreCase(nameCode)) {
                    return bVar;
                }
            }
            return null;
        }
        return h(context, language, nameCode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b g(String nameCode) {
        for (b bVar : r()) {
            if (bVar.v().equalsIgnoreCase(nameCode)) {
                return bVar;
            }
        }
        return null;
    }

    public static b h(Context context, CountryCodePicker.Language language, String nameCode) {
        for (b bVar : s(context, language)) {
            if (bVar.v().equalsIgnoreCase(nameCode)) {
                return bVar;
            }
        }
        return null;
    }

    public static b i(Context context, CountryCodePicker.Language language, String fullNumber) {
        return k(context, language, null, fullNumber);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b k(Context context, CountryCodePicker.Language language, List<b> preferredCountries, String fullNumber) {
        c cVar;
        if (fullNumber == null) {
            return null;
        }
        String trim = fullNumber.trim();
        if (trim.length() != 0) {
            int i4 = trim.charAt(0) == '+' ? 1 : 0;
            for (int i10 = i4; i10 <= trim.length(); i10++) {
                String substring = trim.substring(i4, i10);
                try {
                    cVar = c.e(Integer.parseInt(substring));
                } catch (Exception unused) {
                    cVar = null;
                }
                if (cVar != null) {
                    int length = i4 + substring.length();
                    int length2 = trim.length();
                    int i11 = cVar.f37100b;
                    if (length2 >= length + i11) {
                        return cVar.d(context, language, trim.substring(length, i11 + length));
                    }
                    return h(context, language, cVar.f37099a);
                }
                b d4 = d(context, language, preferredCountries, substring);
                if (d4 != null) {
                    return d4;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<b> l(Context context, CountryCodePicker codePicker) {
        codePicker.K();
        List<b> list = codePicker.f37049x1;
        if (list != null && list.size() > 0) {
            return codePicker.getCustomMasterCountriesList();
        }
        return s(context, codePicker.getLanguageToApply());
    }

    public static String m(Context context, CountryCodePicker.Language language) {
        String str;
        CountryCodePicker.Language language2 = f37074h;
        if (language2 == null || language2 != language || (str = f37075i) == null || str.length() == 0) {
            A(context, language);
        }
        return f37075i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String o(b CCPCountry) {
        String lowerCase = CCPCountry.v().toLowerCase();
        lowerCase.hashCode();
        char c10 = 65535;
        switch (lowerCase.hashCode()) {
            case 3107:
                if (lowerCase.equals("ad")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3108:
                if (lowerCase.equals("ae")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3109:
                if (lowerCase.equals("af")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3110:
                if (lowerCase.equals("ag")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3112:
                if (lowerCase.equals("ai")) {
                    c10 = 4;
                    break;
                }
                break;
            case 3115:
                if (lowerCase.equals("al")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3116:
                if (lowerCase.equals("am")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3118:
                if (lowerCase.equals("ao")) {
                    c10 = 7;
                    break;
                }
                break;
            case 3120:
                if (lowerCase.equals("aq")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 3121:
                if (lowerCase.equals("ar")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 3122:
                if (lowerCase.equals("as")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 3123:
                if (lowerCase.equals("at")) {
                    c10 = 11;
                    break;
                }
                break;
            case 3124:
                if (lowerCase.equals("au")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 3126:
                if (lowerCase.equals("aw")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 3127:
                if (lowerCase.equals("ax")) {
                    c10 = 14;
                    break;
                }
                break;
            case 3129:
                if (lowerCase.equals("az")) {
                    c10 = 15;
                    break;
                }
                break;
            case 3135:
                if (lowerCase.equals("ba")) {
                    c10 = 16;
                    break;
                }
                break;
            case 3136:
                if (lowerCase.equals("bb")) {
                    c10 = 17;
                    break;
                }
                break;
            case 3138:
                if (lowerCase.equals("bd")) {
                    c10 = 18;
                    break;
                }
                break;
            case 3139:
                if (lowerCase.equals("be")) {
                    c10 = 19;
                    break;
                }
                break;
            case 3140:
                if (lowerCase.equals("bf")) {
                    c10 = 20;
                    break;
                }
                break;
            case 3141:
                if (lowerCase.equals("bg")) {
                    c10 = 21;
                    break;
                }
                break;
            case 3142:
                if (lowerCase.equals("bh")) {
                    c10 = 22;
                    break;
                }
                break;
            case 3143:
                if (lowerCase.equals("bi")) {
                    c10 = 23;
                    break;
                }
                break;
            case 3144:
                if (lowerCase.equals("bj")) {
                    c10 = 24;
                    break;
                }
                break;
            case 3146:
                if (lowerCase.equals("bl")) {
                    c10 = 25;
                    break;
                }
                break;
            case 3147:
                if (lowerCase.equals("bm")) {
                    c10 = 26;
                    break;
                }
                break;
            case 3148:
                if (lowerCase.equals("bn")) {
                    c10 = 27;
                    break;
                }
                break;
            case 3149:
                if (lowerCase.equals("bo")) {
                    c10 = 28;
                    break;
                }
                break;
            case 3151:
                if (lowerCase.equals("bq")) {
                    c10 = 29;
                    break;
                }
                break;
            case 3152:
                if (lowerCase.equals(com.google.android.exoplayer2.text.ttml.d.f25734t)) {
                    c10 = 30;
                    break;
                }
                break;
            case 3153:
                if (lowerCase.equals("bs")) {
                    c10 = 31;
                    break;
                }
                break;
            case 3154:
                if (lowerCase.equals("bt")) {
                    c10 = ' ';
                    break;
                }
                break;
            case 3156:
                if (lowerCase.equals("bv")) {
                    c10 = '!';
                    break;
                }
                break;
            case 3157:
                if (lowerCase.equals("bw")) {
                    c10 = '\"';
                    break;
                }
                break;
            case 3159:
                if (lowerCase.equals("by")) {
                    c10 = '#';
                    break;
                }
                break;
            case 3160:
                if (lowerCase.equals("bz")) {
                    c10 = Typography.dollar;
                    break;
                }
                break;
            case 3166:
                if (lowerCase.equals("ca")) {
                    c10 = '%';
                    break;
                }
                break;
            case 3168:
                if (lowerCase.equals("cc")) {
                    c10 = Typography.amp;
                    break;
                }
                break;
            case 3169:
                if (lowerCase.equals("cd")) {
                    c10 = '\'';
                    break;
                }
                break;
            case 3171:
                if (lowerCase.equals("cf")) {
                    c10 = '(';
                    break;
                }
                break;
            case 3172:
                if (lowerCase.equals("cg")) {
                    c10 = ')';
                    break;
                }
                break;
            case 3173:
                if (lowerCase.equals("ch")) {
                    c10 = '*';
                    break;
                }
                break;
            case 3174:
                if (lowerCase.equals("ci")) {
                    c10 = '+';
                    break;
                }
                break;
            case 3176:
                if (lowerCase.equals("ck")) {
                    c10 = ',';
                    break;
                }
                break;
            case 3177:
                if (lowerCase.equals("cl")) {
                    c10 = l.f93713d;
                    break;
                }
                break;
            case 3178:
                if (lowerCase.equals("cm")) {
                    c10 = '.';
                    break;
                }
                break;
            case 3179:
                if (lowerCase.equals(com.qennnsad.aknkaksd.presentation.module.auth.a.f51009a)) {
                    c10 = com.fasterxml.jackson.core.e.f13819f;
                    break;
                }
                break;
            case 3180:
                if (lowerCase.equals("co")) {
                    c10 = '0';
                    break;
                }
                break;
            case 3183:
                if (lowerCase.equals("cr")) {
                    c10 = '1';
                    break;
                }
                break;
            case 3186:
                if (lowerCase.equals("cu")) {
                    c10 = '2';
                    break;
                }
                break;
            case 3187:
                if (lowerCase.equals("cv")) {
                    c10 = '3';
                    break;
                }
                break;
            case 3188:
                if (lowerCase.equals("cw")) {
                    c10 = '4';
                    break;
                }
                break;
            case 3189:
                if (lowerCase.equals("cx")) {
                    c10 = '5';
                    break;
                }
                break;
            case 3190:
                if (lowerCase.equals("cy")) {
                    c10 = '6';
                    break;
                }
                break;
            case 3191:
                if (lowerCase.equals("cz")) {
                    c10 = '7';
                    break;
                }
                break;
            case 3201:
                if (lowerCase.equals("de")) {
                    c10 = '8';
                    break;
                }
                break;
            case 3206:
                if (lowerCase.equals("dj")) {
                    c10 = '9';
                    break;
                }
                break;
            case 3207:
                if (lowerCase.equals("dk")) {
                    c10 = ':';
                    break;
                }
                break;
            case 3209:
                if (lowerCase.equals("dm")) {
                    c10 = ';';
                    break;
                }
                break;
            case 3211:
                if (lowerCase.equals("do")) {
                    c10 = Typography.less;
                    break;
                }
                break;
            case 3222:
                if (lowerCase.equals("dz")) {
                    c10 = '=';
                    break;
                }
                break;
            case 3230:
                if (lowerCase.equals("ec")) {
                    c10 = Typography.greater;
                    break;
                }
                break;
            case 3232:
                if (lowerCase.equals("ee")) {
                    c10 = '?';
                    break;
                }
                break;
            case 3234:
                if (lowerCase.equals("eg")) {
                    c10 = '@';
                    break;
                }
                break;
            case 3235:
                if (lowerCase.equals("eh")) {
                    c10 = 'A';
                    break;
                }
                break;
            case 3245:
                if (lowerCase.equals("er")) {
                    c10 = 'B';
                    break;
                }
                break;
            case 3246:
                if (lowerCase.equals("es")) {
                    c10 = 'C';
                    break;
                }
                break;
            case 3247:
                if (lowerCase.equals("et")) {
                    c10 = 'D';
                    break;
                }
                break;
            case 3267:
                if (lowerCase.equals("fi")) {
                    c10 = 'E';
                    break;
                }
                break;
            case 3268:
                if (lowerCase.equals("fj")) {
                    c10 = 'F';
                    break;
                }
                break;
            case 3269:
                if (lowerCase.equals("fk")) {
                    c10 = 'G';
                    break;
                }
                break;
            case 3271:
                if (lowerCase.equals("fm")) {
                    c10 = 'H';
                    break;
                }
                break;
            case 3273:
                if (lowerCase.equals("fo")) {
                    c10 = 'I';
                    break;
                }
                break;
            case 3276:
                if (lowerCase.equals("fr")) {
                    c10 = 'J';
                    break;
                }
                break;
            case 3290:
                if (lowerCase.equals("ga")) {
                    c10 = 'K';
                    break;
                }
                break;
            case 3291:
                if (lowerCase.equals("gb")) {
                    c10 = Matrix.MATRIX_TYPE_RANDOM_LT;
                    break;
                }
                break;
            case 3293:
                if (lowerCase.equals("gd")) {
                    c10 = 'M';
                    break;
                }
                break;
            case 3294:
                if (lowerCase.equals("ge")) {
                    c10 = 'N';
                    break;
                }
                break;
            case 3295:
                if (lowerCase.equals("gf")) {
                    c10 = 'O';
                    break;
                }
                break;
            case 3296:
                if (lowerCase.equals("gg")) {
                    c10 = 'P';
                    break;
                }
                break;
            case 3297:
                if (lowerCase.equals("gh")) {
                    c10 = 'Q';
                    break;
                }
                break;
            case 3298:
                if (lowerCase.equals("gi")) {
                    c10 = Matrix.MATRIX_TYPE_RANDOM_REGULAR;
                    break;
                }
                break;
            case 3301:
                if (lowerCase.equals("gl")) {
                    c10 = 'S';
                    break;
                }
                break;
            case 3302:
                if (lowerCase.equals("gm")) {
                    c10 = 'T';
                    break;
                }
                break;
            case 3303:
                if (lowerCase.equals("gn")) {
                    c10 = Matrix.MATRIX_TYPE_RANDOM_UT;
                    break;
                }
                break;
            case 3305:
                if (lowerCase.equals("gp")) {
                    c10 = 'V';
                    break;
                }
                break;
            case 3306:
                if (lowerCase.equals("gq")) {
                    c10 = 'W';
                    break;
                }
                break;
            case 3307:
                if (lowerCase.equals("gr")) {
                    c10 = 'X';
                    break;
                }
                break;
            case 3308:
                if (lowerCase.equals("gs")) {
                    c10 = 'Y';
                    break;
                }
                break;
            case 3309:
                if (lowerCase.equals("gt")) {
                    c10 = Matrix.MATRIX_TYPE_ZERO;
                    break;
                }
                break;
            case 3310:
                if (lowerCase.equals("gu")) {
                    c10 = '[';
                    break;
                }
                break;
            case 3312:
                if (lowerCase.equals("gw")) {
                    c10 = '\\';
                    break;
                }
                break;
            case 3314:
                if (lowerCase.equals("gy")) {
                    c10 = ']';
                    break;
                }
                break;
            case 3331:
                if (lowerCase.equals("hk")) {
                    c10 = '^';
                    break;
                }
                break;
            case 3333:
                if (lowerCase.equals("hm")) {
                    c10 = '_';
                    break;
                }
                break;
            case 3334:
                if (lowerCase.equals("hn")) {
                    c10 = '`';
                    break;
                }
                break;
            case 3338:
                if (lowerCase.equals("hr")) {
                    c10 = 'a';
                    break;
                }
                break;
            case 3340:
                if (lowerCase.equals("ht")) {
                    c10 = 'b';
                    break;
                }
                break;
            case 3341:
                if (lowerCase.equals("hu")) {
                    c10 = 'c';
                    break;
                }
                break;
            case 3355:
                if (lowerCase.equals("id")) {
                    c10 = 'd';
                    break;
                }
                break;
            case 3356:
                if (lowerCase.equals("ie")) {
                    c10 = 'e';
                    break;
                }
                break;
            case 3363:
                if (lowerCase.equals("il")) {
                    c10 = 'f';
                    break;
                }
                break;
            case 3364:
                if (lowerCase.equals("im")) {
                    c10 = 'g';
                    break;
                }
                break;
            case 3365:
                if (lowerCase.equals("in")) {
                    c10 = 'h';
                    break;
                }
                break;
            case 3366:
                if (lowerCase.equals("io")) {
                    c10 = 'i';
                    break;
                }
                break;
            case 3368:
                if (lowerCase.equals("iq")) {
                    c10 = 'j';
                    break;
                }
                break;
            case 3369:
                if (lowerCase.equals("ir")) {
                    c10 = 'k';
                    break;
                }
                break;
            case 3370:
                if (lowerCase.equals("is")) {
                    c10 = 'l';
                    break;
                }
                break;
            case 3371:
                if (lowerCase.equals("it")) {
                    c10 = 'm';
                    break;
                }
                break;
            case 3387:
                if (lowerCase.equals("je")) {
                    c10 = 'n';
                    break;
                }
                break;
            case 3395:
                if (lowerCase.equals("jm")) {
                    c10 = 'o';
                    break;
                }
                break;
            case 3397:
                if (lowerCase.equals("jo")) {
                    c10 = 'p';
                    break;
                }
                break;
            case 3398:
                if (lowerCase.equals("jp")) {
                    c10 = 'q';
                    break;
                }
                break;
            case 3418:
                if (lowerCase.equals("ke")) {
                    c10 = 'r';
                    break;
                }
                break;
            case 3420:
                if (lowerCase.equals("kg")) {
                    c10 = 's';
                    break;
                }
                break;
            case 3421:
                if (lowerCase.equals("kh")) {
                    c10 = 't';
                    break;
                }
                break;
            case 3422:
                if (lowerCase.equals("ki")) {
                    c10 = 'u';
                    break;
                }
                break;
            case 3426:
                if (lowerCase.equals("km")) {
                    c10 = 'v';
                    break;
                }
                break;
            case 3427:
                if (lowerCase.equals("kn")) {
                    c10 = 'w';
                    break;
                }
                break;
            case 3429:
                if (lowerCase.equals("kp")) {
                    c10 = 'x';
                    break;
                }
                break;
            case 3431:
                if (lowerCase.equals("kr")) {
                    c10 = 'y';
                    break;
                }
                break;
            case 3436:
                if (lowerCase.equals("kw")) {
                    c10 = 'z';
                    break;
                }
                break;
            case 3438:
                if (lowerCase.equals("ky")) {
                    c10 = '{';
                    break;
                }
                break;
            case 3439:
                if (lowerCase.equals("kz")) {
                    c10 = '|';
                    break;
                }
                break;
            case 3445:
                if (lowerCase.equals("la")) {
                    c10 = '}';
                    break;
                }
                break;
            case 3446:
                if (lowerCase.equals("lb")) {
                    c10 = '~';
                    break;
                }
                break;
            case 3447:
                if (lowerCase.equals("lc")) {
                    c10 = com.google.common.base.c.N;
                    break;
                }
                break;
            case 3453:
                if (lowerCase.equals("li")) {
                    c10 = 128;
                    break;
                }
                break;
            case 3455:
                if (lowerCase.equals("lk")) {
                    c10 = 129;
                    break;
                }
                break;
            case 3462:
                if (lowerCase.equals("lr")) {
                    c10 = 130;
                    break;
                }
                break;
            case 3463:
                if (lowerCase.equals("ls")) {
                    c10 = 131;
                    break;
                }
                break;
            case 3464:
                if (lowerCase.equals("lt")) {
                    c10 = 132;
                    break;
                }
                break;
            case 3465:
                if (lowerCase.equals("lu")) {
                    c10 = 133;
                    break;
                }
                break;
            case 3466:
                if (lowerCase.equals("lv")) {
                    c10 = 134;
                    break;
                }
                break;
            case 3469:
                if (lowerCase.equals("ly")) {
                    c10 = 135;
                    break;
                }
                break;
            case 3476:
                if (lowerCase.equals("ma")) {
                    c10 = 136;
                    break;
                }
                break;
            case 3478:
                if (lowerCase.equals("mc")) {
                    c10 = 137;
                    break;
                }
                break;
            case 3479:
                if (lowerCase.equals("md")) {
                    c10 = 138;
                    break;
                }
                break;
            case 3480:
                if (lowerCase.equals("me")) {
                    c10 = 139;
                    break;
                }
                break;
            case 3481:
                if (lowerCase.equals("mf")) {
                    c10 = 140;
                    break;
                }
                break;
            case 3482:
                if (lowerCase.equals("mg")) {
                    c10 = 141;
                    break;
                }
                break;
            case 3483:
                if (lowerCase.equals("mh")) {
                    c10 = 142;
                    break;
                }
                break;
            case 3486:
                if (lowerCase.equals("mk")) {
                    c10 = 143;
                    break;
                }
                break;
            case 3487:
                if (lowerCase.equals("ml")) {
                    c10 = 144;
                    break;
                }
                break;
            case 3488:
                if (lowerCase.equals("mm")) {
                    c10 = 145;
                    break;
                }
                break;
            case 3489:
                if (lowerCase.equals("mn")) {
                    c10 = 146;
                    break;
                }
                break;
            case 3490:
                if (lowerCase.equals("mo")) {
                    c10 = 147;
                    break;
                }
                break;
            case 3491:
                if (lowerCase.equals("mp")) {
                    c10 = 148;
                    break;
                }
                break;
            case 3492:
                if (lowerCase.equals("mq")) {
                    c10 = 149;
                    break;
                }
                break;
            case 3493:
                if (lowerCase.equals("mr")) {
                    c10 = 150;
                    break;
                }
                break;
            case 3494:
                if (lowerCase.equals("ms")) {
                    c10 = 151;
                    break;
                }
                break;
            case 3495:
                if (lowerCase.equals("mt")) {
                    c10 = 152;
                    break;
                }
                break;
            case 3496:
                if (lowerCase.equals("mu")) {
                    c10 = 153;
                    break;
                }
                break;
            case 3497:
                if (lowerCase.equals("mv")) {
                    c10 = 154;
                    break;
                }
                break;
            case 3498:
                if (lowerCase.equals("mw")) {
                    c10 = 155;
                    break;
                }
                break;
            case 3499:
                if (lowerCase.equals("mx")) {
                    c10 = 156;
                    break;
                }
                break;
            case com.alipay.sdk.data.a.f6863c /* 3500 */:
                if (lowerCase.equals("my")) {
                    c10 = 157;
                    break;
                }
                break;
            case 3501:
                if (lowerCase.equals("mz")) {
                    c10 = 158;
                    break;
                }
                break;
            case 3507:
                if (lowerCase.equals("na")) {
                    c10 = 159;
                    break;
                }
                break;
            case 3509:
                if (lowerCase.equals("nc")) {
                    c10 = Typography.nbsp;
                    break;
                }
                break;
            case 3511:
                if (lowerCase.equals("ne")) {
                    c10 = 161;
                    break;
                }
                break;
            case 3512:
                if (lowerCase.equals("nf")) {
                    c10 = Typography.cent;
                    break;
                }
                break;
            case 3513:
                if (lowerCase.equals("ng")) {
                    c10 = Typography.pound;
                    break;
                }
                break;
            case 3515:
                if (lowerCase.equals("ni")) {
                    c10 = 164;
                    break;
                }
                break;
            case 3518:
                if (lowerCase.equals("nl")) {
                    c10 = 165;
                    break;
                }
                break;
            case 3521:
                if (lowerCase.equals("no")) {
                    c10 = 166;
                    break;
                }
                break;
            case 3522:
                if (lowerCase.equals("np")) {
                    c10 = Typography.section;
                    break;
                }
                break;
            case 3524:
                if (lowerCase.equals("nr")) {
                    c10 = 168;
                    break;
                }
                break;
            case 3527:
                if (lowerCase.equals("nu")) {
                    c10 = Typography.copyright;
                    break;
                }
                break;
            case 3532:
                if (lowerCase.equals("nz")) {
                    c10 = 170;
                    break;
                }
                break;
            case 3550:
                if (lowerCase.equals("om")) {
                    c10 = 171;
                    break;
                }
                break;
            case 3569:
                if (lowerCase.equals("pa")) {
                    c10 = 172;
                    break;
                }
                break;
            case 3573:
                if (lowerCase.equals("pe")) {
                    c10 = 173;
                    break;
                }
                break;
            case 3574:
                if (lowerCase.equals("pf")) {
                    c10 = Typography.registered;
                    break;
                }
                break;
            case 3575:
                if (lowerCase.equals("pg")) {
                    c10 = 175;
                    break;
                }
                break;
            case 3576:
                if (lowerCase.equals("ph")) {
                    c10 = Typography.degree;
                    break;
                }
                break;
            case 3579:
                if (lowerCase.equals("pk")) {
                    c10 = Typography.plusMinus;
                    break;
                }
                break;
            case 3580:
                if (lowerCase.equals("pl")) {
                    c10 = 178;
                    break;
                }
                break;
            case 3581:
                if (lowerCase.equals("pm")) {
                    c10 = 179;
                    break;
                }
                break;
            case 3582:
                if (lowerCase.equals("pn")) {
                    c10 = 180;
                    break;
                }
                break;
            case 3586:
                if (lowerCase.equals("pr")) {
                    c10 = 181;
                    break;
                }
                break;
            case 3587:
                if (lowerCase.equals("ps")) {
                    c10 = Typography.paragraph;
                    break;
                }
                break;
            case 3588:
                if (lowerCase.equals("pt")) {
                    c10 = Typography.middleDot;
                    break;
                }
                break;
            case 3591:
                if (lowerCase.equals("pw")) {
                    c10 = 184;
                    break;
                }
                break;
            case 3593:
                if (lowerCase.equals("py")) {
                    c10 = 185;
                    break;
                }
                break;
            case 3600:
                if (lowerCase.equals("qa")) {
                    c10 = 186;
                    break;
                }
                break;
            case 3635:
                if (lowerCase.equals("re")) {
                    c10 = 187;
                    break;
                }
                break;
            case 3645:
                if (lowerCase.equals("ro")) {
                    c10 = 188;
                    break;
                }
                break;
            case 3649:
                if (lowerCase.equals("rs")) {
                    c10 = Typography.half;
                    break;
                }
                break;
            case 3651:
                if (lowerCase.equals("ru")) {
                    c10 = 190;
                    break;
                }
                break;
            case 3653:
                if (lowerCase.equals("rw")) {
                    c10 = 191;
                    break;
                }
                break;
            case 3662:
                if (lowerCase.equals("sa")) {
                    c10 = 192;
                    break;
                }
                break;
            case 3663:
                if (lowerCase.equals("sb")) {
                    c10 = 193;
                    break;
                }
                break;
            case 3664:
                if (lowerCase.equals("sc")) {
                    c10 = 194;
                    break;
                }
                break;
            case 3665:
                if (lowerCase.equals("sd")) {
                    c10 = 195;
                    break;
                }
                break;
            case 3666:
                if (lowerCase.equals("se")) {
                    c10 = 196;
                    break;
                }
                break;
            case 3668:
                if (lowerCase.equals("sg")) {
                    c10 = 197;
                    break;
                }
                break;
            case 3669:
                if (lowerCase.equals("sh")) {
                    c10 = 198;
                    break;
                }
                break;
            case 3670:
                if (lowerCase.equals("si")) {
                    c10 = 199;
                    break;
                }
                break;
            case 3671:
                if (lowerCase.equals("sj")) {
                    c10 = 200;
                    break;
                }
                break;
            case 3672:
                if (lowerCase.equals("sk")) {
                    c10 = 201;
                    break;
                }
                break;
            case 3673:
                if (lowerCase.equals("sl")) {
                    c10 = 202;
                    break;
                }
                break;
            case 3674:
                if (lowerCase.equals("sm")) {
                    c10 = 203;
                    break;
                }
                break;
            case 3675:
                if (lowerCase.equals("sn")) {
                    c10 = 204;
                    break;
                }
                break;
            case 3676:
                if (lowerCase.equals("so")) {
                    c10 = 205;
                    break;
                }
                break;
            case 3679:
                if (lowerCase.equals("sr")) {
                    c10 = 206;
                    break;
                }
                break;
            case 3680:
                if (lowerCase.equals("ss")) {
                    c10 = 207;
                    break;
                }
                break;
            case 3681:
                if (lowerCase.equals("st")) {
                    c10 = 208;
                    break;
                }
                break;
            case 3683:
                if (lowerCase.equals(p.a.f93056j)) {
                    c10 = 209;
                    break;
                }
                break;
            case 3685:
                if (lowerCase.equals("sx")) {
                    c10 = 210;
                    break;
                }
                break;
            case 3686:
                if (lowerCase.equals("sy")) {
                    c10 = 211;
                    break;
                }
                break;
            case 3687:
                if (lowerCase.equals("sz")) {
                    c10 = 212;
                    break;
                }
                break;
            case 3695:
                if (lowerCase.equals("tc")) {
                    c10 = 213;
                    break;
                }
                break;
            case 3696:
                if (lowerCase.equals("td")) {
                    c10 = 214;
                    break;
                }
                break;
            case 3698:
                if (lowerCase.equals("tf")) {
                    c10 = Typography.times;
                    break;
                }
                break;
            case 3699:
                if (lowerCase.equals("tg")) {
                    c10 = 216;
                    break;
                }
                break;
            case 3700:
                if (lowerCase.equals("th")) {
                    c10 = 217;
                    break;
                }
                break;
            case 3702:
                if (lowerCase.equals("tj")) {
                    c10 = 218;
                    break;
                }
                break;
            case 3703:
                if (lowerCase.equals("tk")) {
                    c10 = 219;
                    break;
                }
                break;
            case 3704:
                if (lowerCase.equals("tl")) {
                    c10 = 220;
                    break;
                }
                break;
            case 3705:
                if (lowerCase.equals("tm")) {
                    c10 = 221;
                    break;
                }
                break;
            case 3706:
                if (lowerCase.equals("tn")) {
                    c10 = 222;
                    break;
                }
                break;
            case 3707:
                if (lowerCase.equals(TypedValues.Transition.S_TO)) {
                    c10 = 223;
                    break;
                }
                break;
            case 3710:
                if (lowerCase.equals("tr")) {
                    c10 = 224;
                    break;
                }
                break;
            case 3712:
                if (lowerCase.equals(com.google.android.exoplayer2.text.ttml.d.f25722n)) {
                    c10 = 225;
                    break;
                }
                break;
            case 3714:
                if (lowerCase.equals("tv")) {
                    c10 = 226;
                    break;
                }
                break;
            case 3715:
                if (lowerCase.equals("tw")) {
                    c10 = 227;
                    break;
                }
                break;
            case 3718:
                if (lowerCase.equals("tz")) {
                    c10 = 228;
                    break;
                }
                break;
            case 3724:
                if (lowerCase.equals("ua")) {
                    c10 = 229;
                    break;
                }
                break;
            case 3730:
                if (lowerCase.equals("ug")) {
                    c10 = 230;
                    break;
                }
                break;
            case 3736:
                if (lowerCase.equals("um")) {
                    c10 = 231;
                    break;
                }
                break;
            case 3742:
                if (lowerCase.equals("us")) {
                    c10 = 232;
                    break;
                }
                break;
            case 3748:
                if (lowerCase.equals("uy")) {
                    c10 = 233;
                    break;
                }
                break;
            case 3749:
                if (lowerCase.equals("uz")) {
                    c10 = 234;
                    break;
                }
                break;
            case 3755:
                if (lowerCase.equals("va")) {
                    c10 = 235;
                    break;
                }
                break;
            case 3757:
                if (lowerCase.equals("vc")) {
                    c10 = 236;
                    break;
                }
                break;
            case 3759:
                if (lowerCase.equals("ve")) {
                    c10 = 237;
                    break;
                }
                break;
            case 3761:
                if (lowerCase.equals("vg")) {
                    c10 = 238;
                    break;
                }
                break;
            case 3763:
                if (lowerCase.equals("vi")) {
                    c10 = 239;
                    break;
                }
                break;
            case 3768:
                if (lowerCase.equals("vn")) {
                    c10 = 240;
                    break;
                }
                break;
            case 3775:
                if (lowerCase.equals("vu")) {
                    c10 = 241;
                    break;
                }
                break;
            case 3791:
                if (lowerCase.equals("wf")) {
                    c10 = 242;
                    break;
                }
                break;
            case 3804:
                if (lowerCase.equals("ws")) {
                    c10 = 243;
                    break;
                }
                break;
            case 3827:
                if (lowerCase.equals("xk")) {
                    c10 = 244;
                    break;
                }
                break;
            case 3852:
                if (lowerCase.equals("ye")) {
                    c10 = 245;
                    break;
                }
                break;
            case 3867:
                if (lowerCase.equals("yt")) {
                    c10 = 246;
                    break;
                }
                break;
            case 3879:
                if (lowerCase.equals("za")) {
                    c10 = 247;
                    break;
                }
                break;
            case 3891:
                if (lowerCase.equals("zm")) {
                    c10 = 248;
                    break;
                }
                break;
            case 3901:
                if (lowerCase.equals("zw")) {
                    c10 = 249;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return "🇦🇩";
            case 1:
                return "🇦🇪";
            case 2:
                return "🇦🇫";
            case 3:
                return "🇦🇬";
            case 4:
                return "🇦🇮";
            case 5:
                return "🇦🇱";
            case 6:
                return "🇦🇲";
            case 7:
                return "🇦🇴";
            case '\b':
                return "🇦🇶";
            case '\t':
                return "🇦🇷";
            case '\n':
                return "🇦🇸";
            case 11:
                return "🇦🇹";
            case '\f':
                return "🇦🇺";
            case '\r':
                return "🇦🇼";
            case 14:
                return "🇦🇽";
            case 15:
                return "🇦🇿";
            case 16:
                return "🇧🇦";
            case 17:
                return "🇧🇧";
            case 18:
                return "🇧🇩";
            case 19:
                return "🇧🇪";
            case 20:
                return "🇧🇫";
            case 21:
                return "🇧🇬";
            case 22:
                return "🇧🇭";
            case 23:
                return "🇧🇮";
            case 24:
                return "🇧🇯";
            case 25:
                return "🇧🇱";
            case 26:
                return "🇧🇲";
            case 27:
                return "🇧🇳";
            case 28:
                return "🇧🇴";
            case 29:
                return "🇧🇶";
            case 30:
                return "🇧🇷";
            case 31:
                return "🇧🇸";
            case ' ':
                return "🇧🇹";
            case '!':
                return "🇧🇻";
            case '\"':
                return "🇧🇼";
            case '#':
                return "🇧🇾";
            case '$':
                return "🇧🇿";
            case '%':
                return "🇨🇦";
            case '&':
                return "🇨🇨";
            case '\'':
                return "🇨🇩";
            case '(':
                return "🇨🇫";
            case ')':
                return "🇨🇬";
            case '*':
                return "🇨🇭";
            case '+':
                return "🇨🇮";
            case ',':
                return "🇨🇰";
            case '-':
                return "🇨🇱";
            case '.':
                return "🇨🇲";
            case '/':
                return "🇨🇳";
            case '0':
                return "🇨🇴";
            case '1':
                return "🇨🇷";
            case '2':
                return "🇨🇺";
            case '3':
                return "🇨🇻";
            case '4':
                return "🇨🇼";
            case '5':
                return "🇨🇽";
            case '6':
                return "🇨🇾";
            case '7':
                return "🇨🇿";
            case '8':
                return "🇩🇪";
            case '9':
                return "🇩🇯";
            case ':':
                return "🇩🇰";
            case ';':
                return "🇩🇲";
            case '<':
                return "🇩🇴";
            case '=':
                return "🇩🇿";
            case '>':
                return "🇪🇨";
            case '?':
                return "🇪🇪";
            case '@':
                return "🇪🇬";
            case 'A':
                return "🇪🇭";
            case 'B':
                return "🇪🇷";
            case 'C':
                return "🇪🇸";
            case 'D':
                return "🇪🇹";
            case 'E':
                return "🇫🇮";
            case 'F':
                return "🇫🇯";
            case 'G':
                return "🇫🇰";
            case 'H':
                return "🇫🇲";
            case 'I':
                return "🇫🇴";
            case 'J':
                return "🇫🇷";
            case 'K':
                return "🇬🇦";
            case 'L':
                return "🇬🇧";
            case 'M':
                return "🇬🇩";
            case 'N':
                return "🇬🇪";
            case 'O':
                return "🇬🇫";
            case 'P':
                return "🇬🇬";
            case 'Q':
                return "🇬🇭";
            case 'R':
                return "🇬🇮";
            case 'S':
                return "🇬🇱";
            case 'T':
                return "🇬🇲";
            case 'U':
                return "🇬🇳";
            case 'V':
                return "🇬🇵";
            case 'W':
                return "🇬🇶";
            case 'X':
                return "🇬🇷";
            case 'Y':
                return "🇬🇸";
            case 'Z':
                return "🇬🇹";
            case '[':
                return "🇬🇺";
            case '\\':
                return "🇬🇼";
            case ']':
                return "🇬🇾";
            case '^':
                return "🇭🇰";
            case '_':
                return "🇭🇲";
            case '`':
                return "🇭🇳";
            case 'a':
                return "🇭🇷";
            case 'b':
                return "🇭🇹";
            case 'c':
                return "🇭🇺";
            case 'd':
                return "🇮🇩";
            case 'e':
                return "🇮🇪";
            case 'f':
                return "🇮🇱";
            case 'g':
                return "🇮🇲";
            case 'h':
                return "🇮🇳";
            case 'i':
                return "🇮🇴";
            case 'j':
                return "🇮🇶";
            case 'k':
                return "🇮🇷";
            case 'l':
                return "🇮🇸";
            case 'm':
                return "🇮🇹";
            case 'n':
                return "🇯🇪";
            case 'o':
                return "🇯🇲";
            case 'p':
                return "🇯🇴";
            case 'q':
                return "🇯🇵";
            case 'r':
                return "🇰🇪";
            case 's':
                return "🇰🇬";
            case 't':
                return "🇰🇭";
            case 'u':
                return "🇰🇮";
            case 'v':
                return "🇰🇲";
            case 'w':
                return "🇰🇳";
            case 'x':
                return "🇰🇵";
            case 'y':
                return "🇰🇷";
            case 'z':
                return "🇰🇼";
            case '{':
                return "🇰🇾";
            case '|':
                return "🇰🇿";
            case '}':
                return "🇱🇦";
            case '~':
                return "🇱🇧";
            case 127:
                return "🇱🇨";
            case 128:
                return "🇱🇮";
            case h0.G /* 129 */:
                return "🇱🇰";
            case h0.I /* 130 */:
                return "🇱🇷";
            case 131:
                return "🇱🇸";
            case 132:
                return "🇱🇹";
            case 133:
                return "🇱🇺";
            case h0.Q /* 134 */:
                return "🇱🇻";
            case h0.J /* 135 */:
                return "🇱🇾";
            case 136:
                return "🇲🇦";
            case 137:
                return "🇲🇨";
            case h0.H /* 138 */:
                return "🇲🇩";
            case 139:
                return "🇲🇪";
            case 140:
                return "🇲🇫";
            case 141:
                return "🇲🇬";
            case 142:
                return "🇲🇭";
            case 143:
                return "🇲🇰";
            case 144:
                return "🇲🇱";
            case 145:
                return "🇲🇲";
            case 146:
                return "🇲🇳";
            case 147:
                return "🇲🇴";
            case 148:
                return "🇲🇵";
            case 149:
                return "🇲🇶";
            case 150:
                return "🇲🇷";
            case 151:
                return "🇲🇸";
            case 152:
                return "🇲🇹";
            case 153:
                return "🇲🇺";
            case 154:
                return "🇲🇻";
            case 155:
                return "🇲🇼";
            case 156:
                return "🇲🇽";
            case 157:
                return "🇲🇾";
            case 158:
                return "🇲🇿";
            case 159:
                return "🇳🇦";
            case a1.f54532a /* 160 */:
                return "🇳🇨";
            case 161:
                return "🇳🇪";
            case 162:
                return "🇳🇫";
            case 163:
                return "🇳🇬";
            case 164:
                return "🇳🇮";
            case 165:
                return "🇳🇱";
            case 166:
                return "🇳🇴";
            case 167:
                return "🇳🇵";
            case 168:
                return "🇳🇷";
            case 169:
                return "🇳🇺";
            case 170:
                return "🇳🇿";
            case 171:
                return "🇴🇲";
            case h0.K /* 172 */:
                return "🇵🇦";
            case 173:
                return "🇵🇪";
            case 174:
                return "🇵🇫";
            case 175:
                return "🇵🇬";
            case 176:
                return "🇵🇭";
            case 177:
                return "🇵🇰";
            case 178:
                return "🇵🇱";
            case 179:
                return "🇵🇲";
            case com.facebook.imagepipeline.common.e.f12205e /* 180 */:
                return "🇵🇳";
            case 181:
                return "🇵🇷";
            case 182:
                return "🇵🇸";
            case 183:
                return "🇵🇹";
            case 184:
                return "🇵🇼";
            case 185:
                return "🇵🇾";
            case 186:
                return "🇶🇦";
            case 187:
                return "🇷🇪";
            case 188:
                return "🇷🇴";
            case a0.f22979w /* 189 */:
                return "🇷🇸";
            case 190:
                return "🇷🇺";
            case 191:
                return "🇷🇼";
            case 192:
                return "🇸🇦";
            case 193:
                return "🇸🇧";
            case 194:
                return "🇸🇨";
            case 195:
                return "🇸🇩";
            case 196:
                return "🇸🇪";
            case 197:
                return "🇸🇬";
            case 198:
                return "🇸🇭";
            case 199:
                return "🇸🇮";
            case 200:
                return "🇸🇯";
            case 201:
                return "🇸🇰";
            case MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED /* 202 */:
                return "🇸🇱";
            case 203:
                return "🇸🇲";
            case 204:
                return "🇸🇳";
            case MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR /* 205 */:
                return "🇸🇴";
            case MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR /* 206 */:
                return "🇸🇷";
            case MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD /* 207 */:
                return "🇸🇸";
            case com.facebook.imageutils.c.f13394i /* 208 */:
                return "🇸🇹";
            case 209:
                return "🇸🇻";
            case 210:
                return "🇸🇽";
            case Primes.SMALL_FACTOR_LIMIT /* 211 */:
                return "🇸🇾";
            case 212:
                return "🇸🇿";
            case 213:
                return "🇹🇨";
            case 214:
                return "🇹🇩";
            case com.facebook.imageutils.c.f13395j /* 215 */:
                return "🇹🇫";
            case com.facebook.imageutils.c.f13388c /* 216 */:
                return "🇹🇬";
            case com.facebook.imageutils.c.f13390e /* 217 */:
                return "🇹🇭";
            case com.facebook.imageutils.c.f13391f /* 218 */:
                return "🇹🇯";
            case 219:
                return "🇹🇰";
            case 220:
                return "🇹🇱";
            case 221:
                return "🇹🇲";
            case 222:
                return "🇹🇳";
            case 223:
                return "🇹🇴";
            case 224:
                return "🇹🇷";
            case com.facebook.imageutils.c.f13392g /* 225 */:
                return "🇹🇹";
            case 226:
                return "🇹🇻";
            case 227:
                return "🇹🇼";
            case 228:
                return "🇹🇿";
            case 229:
                return "🇺🇦";
            case 230:
                return "🇺🇬";
            case 231:
                return "🇺🇲";
            case 232:
                return "🇺🇸";
            case 233:
                return "🇺🇾";
            case 234:
                return "🇺🇿";
            case 235:
                return "🇻🇦";
            case 236:
                return "🇻🇨";
            case 237:
                return "🇻🇪";
            case 238:
                return "🇻🇬";
            case 239:
                return "🇻🇮";
            case a0.A /* 240 */:
                return "🇻🇳";
            case 241:
                return "🇻🇺";
            case 242:
                return "🇼🇫";
            case 243:
                return "🇼🇸";
            case 244:
                return "🇽🇰";
            case 245:
                return "🇾🇪";
            case 246:
                return "🇾🇹";
            case 247:
                return "🇿🇦";
            case 248:
                return "🇿🇲";
            case 249:
                return "🇿🇼";
            default:
                return " ";
        }
    }

    static int q(b CCPCountry) {
        String lowerCase = CCPCountry.v().toLowerCase();
        lowerCase.hashCode();
        char c10 = 65535;
        switch (lowerCase.hashCode()) {
            case 3107:
                if (lowerCase.equals("ad")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3108:
                if (lowerCase.equals("ae")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3109:
                if (lowerCase.equals("af")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3110:
                if (lowerCase.equals("ag")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3112:
                if (lowerCase.equals("ai")) {
                    c10 = 4;
                    break;
                }
                break;
            case 3115:
                if (lowerCase.equals("al")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3116:
                if (lowerCase.equals("am")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3118:
                if (lowerCase.equals("ao")) {
                    c10 = 7;
                    break;
                }
                break;
            case 3120:
                if (lowerCase.equals("aq")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 3121:
                if (lowerCase.equals("ar")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 3122:
                if (lowerCase.equals("as")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 3123:
                if (lowerCase.equals("at")) {
                    c10 = 11;
                    break;
                }
                break;
            case 3124:
                if (lowerCase.equals("au")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 3126:
                if (lowerCase.equals("aw")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 3127:
                if (lowerCase.equals("ax")) {
                    c10 = 14;
                    break;
                }
                break;
            case 3129:
                if (lowerCase.equals("az")) {
                    c10 = 15;
                    break;
                }
                break;
            case 3135:
                if (lowerCase.equals("ba")) {
                    c10 = 16;
                    break;
                }
                break;
            case 3136:
                if (lowerCase.equals("bb")) {
                    c10 = 17;
                    break;
                }
                break;
            case 3138:
                if (lowerCase.equals("bd")) {
                    c10 = 18;
                    break;
                }
                break;
            case 3139:
                if (lowerCase.equals("be")) {
                    c10 = 19;
                    break;
                }
                break;
            case 3140:
                if (lowerCase.equals("bf")) {
                    c10 = 20;
                    break;
                }
                break;
            case 3141:
                if (lowerCase.equals("bg")) {
                    c10 = 21;
                    break;
                }
                break;
            case 3142:
                if (lowerCase.equals("bh")) {
                    c10 = 22;
                    break;
                }
                break;
            case 3143:
                if (lowerCase.equals("bi")) {
                    c10 = 23;
                    break;
                }
                break;
            case 3144:
                if (lowerCase.equals("bj")) {
                    c10 = 24;
                    break;
                }
                break;
            case 3146:
                if (lowerCase.equals("bl")) {
                    c10 = 25;
                    break;
                }
                break;
            case 3147:
                if (lowerCase.equals("bm")) {
                    c10 = 26;
                    break;
                }
                break;
            case 3148:
                if (lowerCase.equals("bn")) {
                    c10 = 27;
                    break;
                }
                break;
            case 3149:
                if (lowerCase.equals("bo")) {
                    c10 = 28;
                    break;
                }
                break;
            case 3152:
                if (lowerCase.equals(com.google.android.exoplayer2.text.ttml.d.f25734t)) {
                    c10 = 29;
                    break;
                }
                break;
            case 3153:
                if (lowerCase.equals("bs")) {
                    c10 = 30;
                    break;
                }
                break;
            case 3154:
                if (lowerCase.equals("bt")) {
                    c10 = 31;
                    break;
                }
                break;
            case 3157:
                if (lowerCase.equals("bw")) {
                    c10 = ' ';
                    break;
                }
                break;
            case 3159:
                if (lowerCase.equals("by")) {
                    c10 = '!';
                    break;
                }
                break;
            case 3160:
                if (lowerCase.equals("bz")) {
                    c10 = '\"';
                    break;
                }
                break;
            case 3166:
                if (lowerCase.equals("ca")) {
                    c10 = '#';
                    break;
                }
                break;
            case 3168:
                if (lowerCase.equals("cc")) {
                    c10 = Typography.dollar;
                    break;
                }
                break;
            case 3169:
                if (lowerCase.equals("cd")) {
                    c10 = '%';
                    break;
                }
                break;
            case 3171:
                if (lowerCase.equals("cf")) {
                    c10 = Typography.amp;
                    break;
                }
                break;
            case 3172:
                if (lowerCase.equals("cg")) {
                    c10 = '\'';
                    break;
                }
                break;
            case 3173:
                if (lowerCase.equals("ch")) {
                    c10 = '(';
                    break;
                }
                break;
            case 3174:
                if (lowerCase.equals("ci")) {
                    c10 = ')';
                    break;
                }
                break;
            case 3176:
                if (lowerCase.equals("ck")) {
                    c10 = '*';
                    break;
                }
                break;
            case 3177:
                if (lowerCase.equals("cl")) {
                    c10 = '+';
                    break;
                }
                break;
            case 3178:
                if (lowerCase.equals("cm")) {
                    c10 = ',';
                    break;
                }
                break;
            case 3179:
                if (lowerCase.equals(com.qennnsad.aknkaksd.presentation.module.auth.a.f51009a)) {
                    c10 = l.f93713d;
                    break;
                }
                break;
            case 3180:
                if (lowerCase.equals("co")) {
                    c10 = '.';
                    break;
                }
                break;
            case 3183:
                if (lowerCase.equals("cr")) {
                    c10 = com.fasterxml.jackson.core.e.f13819f;
                    break;
                }
                break;
            case 3186:
                if (lowerCase.equals("cu")) {
                    c10 = '0';
                    break;
                }
                break;
            case 3187:
                if (lowerCase.equals("cv")) {
                    c10 = '1';
                    break;
                }
                break;
            case 3188:
                if (lowerCase.equals("cw")) {
                    c10 = '2';
                    break;
                }
                break;
            case 3189:
                if (lowerCase.equals("cx")) {
                    c10 = '3';
                    break;
                }
                break;
            case 3190:
                if (lowerCase.equals("cy")) {
                    c10 = '4';
                    break;
                }
                break;
            case 3191:
                if (lowerCase.equals("cz")) {
                    c10 = '5';
                    break;
                }
                break;
            case 3201:
                if (lowerCase.equals("de")) {
                    c10 = '6';
                    break;
                }
                break;
            case 3206:
                if (lowerCase.equals("dj")) {
                    c10 = '7';
                    break;
                }
                break;
            case 3207:
                if (lowerCase.equals("dk")) {
                    c10 = '8';
                    break;
                }
                break;
            case 3209:
                if (lowerCase.equals("dm")) {
                    c10 = '9';
                    break;
                }
                break;
            case 3211:
                if (lowerCase.equals("do")) {
                    c10 = ':';
                    break;
                }
                break;
            case 3222:
                if (lowerCase.equals("dz")) {
                    c10 = ';';
                    break;
                }
                break;
            case 3230:
                if (lowerCase.equals("ec")) {
                    c10 = Typography.less;
                    break;
                }
                break;
            case 3232:
                if (lowerCase.equals("ee")) {
                    c10 = '=';
                    break;
                }
                break;
            case 3234:
                if (lowerCase.equals("eg")) {
                    c10 = Typography.greater;
                    break;
                }
                break;
            case 3245:
                if (lowerCase.equals("er")) {
                    c10 = '?';
                    break;
                }
                break;
            case 3246:
                if (lowerCase.equals("es")) {
                    c10 = '@';
                    break;
                }
                break;
            case 3247:
                if (lowerCase.equals("et")) {
                    c10 = 'A';
                    break;
                }
                break;
            case 3267:
                if (lowerCase.equals("fi")) {
                    c10 = 'B';
                    break;
                }
                break;
            case 3268:
                if (lowerCase.equals("fj")) {
                    c10 = 'C';
                    break;
                }
                break;
            case 3269:
                if (lowerCase.equals("fk")) {
                    c10 = 'D';
                    break;
                }
                break;
            case 3271:
                if (lowerCase.equals("fm")) {
                    c10 = 'E';
                    break;
                }
                break;
            case 3273:
                if (lowerCase.equals("fo")) {
                    c10 = 'F';
                    break;
                }
                break;
            case 3276:
                if (lowerCase.equals("fr")) {
                    c10 = 'G';
                    break;
                }
                break;
            case 3290:
                if (lowerCase.equals("ga")) {
                    c10 = 'H';
                    break;
                }
                break;
            case 3291:
                if (lowerCase.equals("gb")) {
                    c10 = 'I';
                    break;
                }
                break;
            case 3293:
                if (lowerCase.equals("gd")) {
                    c10 = 'J';
                    break;
                }
                break;
            case 3294:
                if (lowerCase.equals("ge")) {
                    c10 = 'K';
                    break;
                }
                break;
            case 3295:
                if (lowerCase.equals("gf")) {
                    c10 = Matrix.MATRIX_TYPE_RANDOM_LT;
                    break;
                }
                break;
            case 3296:
                if (lowerCase.equals("gg")) {
                    c10 = 'M';
                    break;
                }
                break;
            case 3297:
                if (lowerCase.equals("gh")) {
                    c10 = 'N';
                    break;
                }
                break;
            case 3298:
                if (lowerCase.equals("gi")) {
                    c10 = 'O';
                    break;
                }
                break;
            case 3301:
                if (lowerCase.equals("gl")) {
                    c10 = 'P';
                    break;
                }
                break;
            case 3302:
                if (lowerCase.equals("gm")) {
                    c10 = 'Q';
                    break;
                }
                break;
            case 3303:
                if (lowerCase.equals("gn")) {
                    c10 = Matrix.MATRIX_TYPE_RANDOM_REGULAR;
                    break;
                }
                break;
            case 3305:
                if (lowerCase.equals("gp")) {
                    c10 = 'S';
                    break;
                }
                break;
            case 3306:
                if (lowerCase.equals("gq")) {
                    c10 = 'T';
                    break;
                }
                break;
            case 3307:
                if (lowerCase.equals("gr")) {
                    c10 = Matrix.MATRIX_TYPE_RANDOM_UT;
                    break;
                }
                break;
            case 3309:
                if (lowerCase.equals("gt")) {
                    c10 = 'V';
                    break;
                }
                break;
            case 3310:
                if (lowerCase.equals("gu")) {
                    c10 = 'W';
                    break;
                }
                break;
            case 3312:
                if (lowerCase.equals("gw")) {
                    c10 = 'X';
                    break;
                }
                break;
            case 3314:
                if (lowerCase.equals("gy")) {
                    c10 = 'Y';
                    break;
                }
                break;
            case 3331:
                if (lowerCase.equals("hk")) {
                    c10 = Matrix.MATRIX_TYPE_ZERO;
                    break;
                }
                break;
            case 3334:
                if (lowerCase.equals("hn")) {
                    c10 = '[';
                    break;
                }
                break;
            case 3338:
                if (lowerCase.equals("hr")) {
                    c10 = '\\';
                    break;
                }
                break;
            case 3340:
                if (lowerCase.equals("ht")) {
                    c10 = ']';
                    break;
                }
                break;
            case 3341:
                if (lowerCase.equals("hu")) {
                    c10 = '^';
                    break;
                }
                break;
            case 3355:
                if (lowerCase.equals("id")) {
                    c10 = '_';
                    break;
                }
                break;
            case 3356:
                if (lowerCase.equals("ie")) {
                    c10 = '`';
                    break;
                }
                break;
            case 3363:
                if (lowerCase.equals("il")) {
                    c10 = 'a';
                    break;
                }
                break;
            case 3364:
                if (lowerCase.equals("im")) {
                    c10 = 'b';
                    break;
                }
                break;
            case 3365:
                if (lowerCase.equals("in")) {
                    c10 = 'c';
                    break;
                }
                break;
            case 3366:
                if (lowerCase.equals("io")) {
                    c10 = 'd';
                    break;
                }
                break;
            case 3368:
                if (lowerCase.equals("iq")) {
                    c10 = 'e';
                    break;
                }
                break;
            case 3369:
                if (lowerCase.equals("ir")) {
                    c10 = 'f';
                    break;
                }
                break;
            case 3370:
                if (lowerCase.equals("is")) {
                    c10 = 'g';
                    break;
                }
                break;
            case 3371:
                if (lowerCase.equals("it")) {
                    c10 = 'h';
                    break;
                }
                break;
            case 3387:
                if (lowerCase.equals("je")) {
                    c10 = 'i';
                    break;
                }
                break;
            case 3395:
                if (lowerCase.equals("jm")) {
                    c10 = 'j';
                    break;
                }
                break;
            case 3397:
                if (lowerCase.equals("jo")) {
                    c10 = 'k';
                    break;
                }
                break;
            case 3398:
                if (lowerCase.equals("jp")) {
                    c10 = 'l';
                    break;
                }
                break;
            case 3418:
                if (lowerCase.equals("ke")) {
                    c10 = 'm';
                    break;
                }
                break;
            case 3420:
                if (lowerCase.equals("kg")) {
                    c10 = 'n';
                    break;
                }
                break;
            case 3421:
                if (lowerCase.equals("kh")) {
                    c10 = 'o';
                    break;
                }
                break;
            case 3422:
                if (lowerCase.equals("ki")) {
                    c10 = 'p';
                    break;
                }
                break;
            case 3426:
                if (lowerCase.equals("km")) {
                    c10 = 'q';
                    break;
                }
                break;
            case 3427:
                if (lowerCase.equals("kn")) {
                    c10 = 'r';
                    break;
                }
                break;
            case 3429:
                if (lowerCase.equals("kp")) {
                    c10 = 's';
                    break;
                }
                break;
            case 3431:
                if (lowerCase.equals("kr")) {
                    c10 = 't';
                    break;
                }
                break;
            case 3436:
                if (lowerCase.equals("kw")) {
                    c10 = 'u';
                    break;
                }
                break;
            case 3438:
                if (lowerCase.equals("ky")) {
                    c10 = 'v';
                    break;
                }
                break;
            case 3439:
                if (lowerCase.equals("kz")) {
                    c10 = 'w';
                    break;
                }
                break;
            case 3445:
                if (lowerCase.equals("la")) {
                    c10 = 'x';
                    break;
                }
                break;
            case 3446:
                if (lowerCase.equals("lb")) {
                    c10 = 'y';
                    break;
                }
                break;
            case 3447:
                if (lowerCase.equals("lc")) {
                    c10 = 'z';
                    break;
                }
                break;
            case 3453:
                if (lowerCase.equals("li")) {
                    c10 = '{';
                    break;
                }
                break;
            case 3455:
                if (lowerCase.equals("lk")) {
                    c10 = '|';
                    break;
                }
                break;
            case 3462:
                if (lowerCase.equals("lr")) {
                    c10 = '}';
                    break;
                }
                break;
            case 3463:
                if (lowerCase.equals("ls")) {
                    c10 = '~';
                    break;
                }
                break;
            case 3464:
                if (lowerCase.equals("lt")) {
                    c10 = com.google.common.base.c.N;
                    break;
                }
                break;
            case 3465:
                if (lowerCase.equals("lu")) {
                    c10 = 128;
                    break;
                }
                break;
            case 3466:
                if (lowerCase.equals("lv")) {
                    c10 = 129;
                    break;
                }
                break;
            case 3469:
                if (lowerCase.equals("ly")) {
                    c10 = 130;
                    break;
                }
                break;
            case 3476:
                if (lowerCase.equals("ma")) {
                    c10 = 131;
                    break;
                }
                break;
            case 3478:
                if (lowerCase.equals("mc")) {
                    c10 = 132;
                    break;
                }
                break;
            case 3479:
                if (lowerCase.equals("md")) {
                    c10 = 133;
                    break;
                }
                break;
            case 3480:
                if (lowerCase.equals("me")) {
                    c10 = 134;
                    break;
                }
                break;
            case 3481:
                if (lowerCase.equals("mf")) {
                    c10 = 135;
                    break;
                }
                break;
            case 3482:
                if (lowerCase.equals("mg")) {
                    c10 = 136;
                    break;
                }
                break;
            case 3483:
                if (lowerCase.equals("mh")) {
                    c10 = 137;
                    break;
                }
                break;
            case 3486:
                if (lowerCase.equals("mk")) {
                    c10 = 138;
                    break;
                }
                break;
            case 3487:
                if (lowerCase.equals("ml")) {
                    c10 = 139;
                    break;
                }
                break;
            case 3488:
                if (lowerCase.equals("mm")) {
                    c10 = 140;
                    break;
                }
                break;
            case 3489:
                if (lowerCase.equals("mn")) {
                    c10 = 141;
                    break;
                }
                break;
            case 3490:
                if (lowerCase.equals("mo")) {
                    c10 = 142;
                    break;
                }
                break;
            case 3491:
                if (lowerCase.equals("mp")) {
                    c10 = 143;
                    break;
                }
                break;
            case 3492:
                if (lowerCase.equals("mq")) {
                    c10 = 144;
                    break;
                }
                break;
            case 3493:
                if (lowerCase.equals("mr")) {
                    c10 = 145;
                    break;
                }
                break;
            case 3494:
                if (lowerCase.equals("ms")) {
                    c10 = 146;
                    break;
                }
                break;
            case 3495:
                if (lowerCase.equals("mt")) {
                    c10 = 147;
                    break;
                }
                break;
            case 3496:
                if (lowerCase.equals("mu")) {
                    c10 = 148;
                    break;
                }
                break;
            case 3497:
                if (lowerCase.equals("mv")) {
                    c10 = 149;
                    break;
                }
                break;
            case 3498:
                if (lowerCase.equals("mw")) {
                    c10 = 150;
                    break;
                }
                break;
            case 3499:
                if (lowerCase.equals("mx")) {
                    c10 = 151;
                    break;
                }
                break;
            case com.alipay.sdk.data.a.f6863c /* 3500 */:
                if (lowerCase.equals("my")) {
                    c10 = 152;
                    break;
                }
                break;
            case 3501:
                if (lowerCase.equals("mz")) {
                    c10 = 153;
                    break;
                }
                break;
            case 3507:
                if (lowerCase.equals("na")) {
                    c10 = 154;
                    break;
                }
                break;
            case 3509:
                if (lowerCase.equals("nc")) {
                    c10 = 155;
                    break;
                }
                break;
            case 3511:
                if (lowerCase.equals("ne")) {
                    c10 = 156;
                    break;
                }
                break;
            case 3512:
                if (lowerCase.equals("nf")) {
                    c10 = 157;
                    break;
                }
                break;
            case 3513:
                if (lowerCase.equals("ng")) {
                    c10 = 158;
                    break;
                }
                break;
            case 3515:
                if (lowerCase.equals("ni")) {
                    c10 = 159;
                    break;
                }
                break;
            case 3518:
                if (lowerCase.equals("nl")) {
                    c10 = Typography.nbsp;
                    break;
                }
                break;
            case 3521:
                if (lowerCase.equals("no")) {
                    c10 = 161;
                    break;
                }
                break;
            case 3522:
                if (lowerCase.equals("np")) {
                    c10 = Typography.cent;
                    break;
                }
                break;
            case 3524:
                if (lowerCase.equals("nr")) {
                    c10 = Typography.pound;
                    break;
                }
                break;
            case 3527:
                if (lowerCase.equals("nu")) {
                    c10 = 164;
                    break;
                }
                break;
            case 3532:
                if (lowerCase.equals("nz")) {
                    c10 = 165;
                    break;
                }
                break;
            case 3550:
                if (lowerCase.equals("om")) {
                    c10 = 166;
                    break;
                }
                break;
            case 3569:
                if (lowerCase.equals("pa")) {
                    c10 = Typography.section;
                    break;
                }
                break;
            case 3573:
                if (lowerCase.equals("pe")) {
                    c10 = 168;
                    break;
                }
                break;
            case 3574:
                if (lowerCase.equals("pf")) {
                    c10 = Typography.copyright;
                    break;
                }
                break;
            case 3575:
                if (lowerCase.equals("pg")) {
                    c10 = 170;
                    break;
                }
                break;
            case 3576:
                if (lowerCase.equals("ph")) {
                    c10 = 171;
                    break;
                }
                break;
            case 3579:
                if (lowerCase.equals("pk")) {
                    c10 = 172;
                    break;
                }
                break;
            case 3580:
                if (lowerCase.equals("pl")) {
                    c10 = 173;
                    break;
                }
                break;
            case 3581:
                if (lowerCase.equals("pm")) {
                    c10 = Typography.registered;
                    break;
                }
                break;
            case 3582:
                if (lowerCase.equals("pn")) {
                    c10 = 175;
                    break;
                }
                break;
            case 3586:
                if (lowerCase.equals("pr")) {
                    c10 = Typography.degree;
                    break;
                }
                break;
            case 3587:
                if (lowerCase.equals("ps")) {
                    c10 = Typography.plusMinus;
                    break;
                }
                break;
            case 3588:
                if (lowerCase.equals("pt")) {
                    c10 = 178;
                    break;
                }
                break;
            case 3591:
                if (lowerCase.equals("pw")) {
                    c10 = 179;
                    break;
                }
                break;
            case 3593:
                if (lowerCase.equals("py")) {
                    c10 = 180;
                    break;
                }
                break;
            case 3600:
                if (lowerCase.equals("qa")) {
                    c10 = 181;
                    break;
                }
                break;
            case 3635:
                if (lowerCase.equals("re")) {
                    c10 = Typography.paragraph;
                    break;
                }
                break;
            case 3645:
                if (lowerCase.equals("ro")) {
                    c10 = Typography.middleDot;
                    break;
                }
                break;
            case 3649:
                if (lowerCase.equals("rs")) {
                    c10 = 184;
                    break;
                }
                break;
            case 3651:
                if (lowerCase.equals("ru")) {
                    c10 = 185;
                    break;
                }
                break;
            case 3653:
                if (lowerCase.equals("rw")) {
                    c10 = 186;
                    break;
                }
                break;
            case 3662:
                if (lowerCase.equals("sa")) {
                    c10 = 187;
                    break;
                }
                break;
            case 3663:
                if (lowerCase.equals("sb")) {
                    c10 = 188;
                    break;
                }
                break;
            case 3664:
                if (lowerCase.equals("sc")) {
                    c10 = Typography.half;
                    break;
                }
                break;
            case 3665:
                if (lowerCase.equals("sd")) {
                    c10 = 190;
                    break;
                }
                break;
            case 3666:
                if (lowerCase.equals("se")) {
                    c10 = 191;
                    break;
                }
                break;
            case 3668:
                if (lowerCase.equals("sg")) {
                    c10 = 192;
                    break;
                }
                break;
            case 3669:
                if (lowerCase.equals("sh")) {
                    c10 = 193;
                    break;
                }
                break;
            case 3670:
                if (lowerCase.equals("si")) {
                    c10 = 194;
                    break;
                }
                break;
            case 3672:
                if (lowerCase.equals("sk")) {
                    c10 = 195;
                    break;
                }
                break;
            case 3673:
                if (lowerCase.equals("sl")) {
                    c10 = 196;
                    break;
                }
                break;
            case 3674:
                if (lowerCase.equals("sm")) {
                    c10 = 197;
                    break;
                }
                break;
            case 3675:
                if (lowerCase.equals("sn")) {
                    c10 = 198;
                    break;
                }
                break;
            case 3676:
                if (lowerCase.equals("so")) {
                    c10 = 199;
                    break;
                }
                break;
            case 3679:
                if (lowerCase.equals("sr")) {
                    c10 = 200;
                    break;
                }
                break;
            case 3680:
                if (lowerCase.equals("ss")) {
                    c10 = 201;
                    break;
                }
                break;
            case 3681:
                if (lowerCase.equals("st")) {
                    c10 = 202;
                    break;
                }
                break;
            case 3683:
                if (lowerCase.equals(p.a.f93056j)) {
                    c10 = 203;
                    break;
                }
                break;
            case 3685:
                if (lowerCase.equals("sx")) {
                    c10 = 204;
                    break;
                }
                break;
            case 3686:
                if (lowerCase.equals("sy")) {
                    c10 = 205;
                    break;
                }
                break;
            case 3687:
                if (lowerCase.equals("sz")) {
                    c10 = 206;
                    break;
                }
                break;
            case 3695:
                if (lowerCase.equals("tc")) {
                    c10 = 207;
                    break;
                }
                break;
            case 3696:
                if (lowerCase.equals("td")) {
                    c10 = 208;
                    break;
                }
                break;
            case 3699:
                if (lowerCase.equals("tg")) {
                    c10 = 209;
                    break;
                }
                break;
            case 3700:
                if (lowerCase.equals("th")) {
                    c10 = 210;
                    break;
                }
                break;
            case 3702:
                if (lowerCase.equals("tj")) {
                    c10 = 211;
                    break;
                }
                break;
            case 3703:
                if (lowerCase.equals("tk")) {
                    c10 = 212;
                    break;
                }
                break;
            case 3704:
                if (lowerCase.equals("tl")) {
                    c10 = 213;
                    break;
                }
                break;
            case 3705:
                if (lowerCase.equals("tm")) {
                    c10 = 214;
                    break;
                }
                break;
            case 3706:
                if (lowerCase.equals("tn")) {
                    c10 = Typography.times;
                    break;
                }
                break;
            case 3707:
                if (lowerCase.equals(TypedValues.Transition.S_TO)) {
                    c10 = 216;
                    break;
                }
                break;
            case 3710:
                if (lowerCase.equals("tr")) {
                    c10 = 217;
                    break;
                }
                break;
            case 3712:
                if (lowerCase.equals(com.google.android.exoplayer2.text.ttml.d.f25722n)) {
                    c10 = 218;
                    break;
                }
                break;
            case 3714:
                if (lowerCase.equals("tv")) {
                    c10 = 219;
                    break;
                }
                break;
            case 3715:
                if (lowerCase.equals("tw")) {
                    c10 = 220;
                    break;
                }
                break;
            case 3718:
                if (lowerCase.equals("tz")) {
                    c10 = 221;
                    break;
                }
                break;
            case 3724:
                if (lowerCase.equals("ua")) {
                    c10 = 222;
                    break;
                }
                break;
            case 3730:
                if (lowerCase.equals("ug")) {
                    c10 = 223;
                    break;
                }
                break;
            case 3742:
                if (lowerCase.equals("us")) {
                    c10 = 224;
                    break;
                }
                break;
            case 3748:
                if (lowerCase.equals("uy")) {
                    c10 = 225;
                    break;
                }
                break;
            case 3749:
                if (lowerCase.equals("uz")) {
                    c10 = 226;
                    break;
                }
                break;
            case 3755:
                if (lowerCase.equals("va")) {
                    c10 = 227;
                    break;
                }
                break;
            case 3757:
                if (lowerCase.equals("vc")) {
                    c10 = 228;
                    break;
                }
                break;
            case 3759:
                if (lowerCase.equals("ve")) {
                    c10 = 229;
                    break;
                }
                break;
            case 3761:
                if (lowerCase.equals("vg")) {
                    c10 = 230;
                    break;
                }
                break;
            case 3763:
                if (lowerCase.equals("vi")) {
                    c10 = 231;
                    break;
                }
                break;
            case 3768:
                if (lowerCase.equals("vn")) {
                    c10 = 232;
                    break;
                }
                break;
            case 3775:
                if (lowerCase.equals("vu")) {
                    c10 = 233;
                    break;
                }
                break;
            case 3791:
                if (lowerCase.equals("wf")) {
                    c10 = 234;
                    break;
                }
                break;
            case 3804:
                if (lowerCase.equals("ws")) {
                    c10 = 235;
                    break;
                }
                break;
            case 3827:
                if (lowerCase.equals("xk")) {
                    c10 = 236;
                    break;
                }
                break;
            case 3852:
                if (lowerCase.equals("ye")) {
                    c10 = 237;
                    break;
                }
                break;
            case 3867:
                if (lowerCase.equals("yt")) {
                    c10 = 238;
                    break;
                }
                break;
            case 3879:
                if (lowerCase.equals("za")) {
                    c10 = 239;
                    break;
                }
                break;
            case 3891:
                if (lowerCase.equals("zm")) {
                    c10 = 240;
                    break;
                }
                break;
            case 3901:
                if (lowerCase.equals("zw")) {
                    c10 = 241;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return i.g.R0;
            case 1:
                return i.g.f37546j5;
            case 2:
                return i.g.M0;
            case 3:
                return i.g.V0;
            case 4:
                return i.g.T0;
            case 5:
                return i.g.O0;
            case 6:
                return i.g.X0;
            case 7:
                return i.g.S0;
            case '\b':
                return i.g.U0;
            case '\t':
                return i.g.W0;
            case '\n':
                return i.g.Q0;
            case 11:
                return i.g.f37485a1;
            case '\f':
                return i.g.Z0;
            case '\r':
                return i.g.Y0;
            case 14:
                return i.g.N0;
            case 15:
                return i.g.f37492b1;
            case 16:
                return i.g.f37570n1;
            case 17:
                return i.g.f37518f1;
            case 18:
                return i.g.f37512e1;
            case 19:
                return i.g.f37531h1;
            case 20:
                return i.g.f37619u1;
            case 21:
                return i.g.f37612t1;
            case 22:
                return i.g.f37506d1;
            case 23:
                return i.g.f37626v1;
            case 24:
                return i.g.f37543j1;
            case 25:
                return i.g.f37552k4;
            case 26:
                return i.g.f37549k1;
            case 27:
                return i.g.f37605s1;
            case 28:
                return i.g.f37563m1;
            case 29:
                return i.g.f37584p1;
            case 30:
                return i.g.f37499c1;
            case 31:
                return i.g.f37556l1;
            case ' ':
                return i.g.f37577o1;
            case '!':
                return i.g.f37525g1;
            case '\"':
                return i.g.f37537i1;
            case '#':
                return i.g.f37647y1;
            case '$':
                return i.g.G1;
            case '%':
                return i.g.R1;
            case '&':
                return i.g.B1;
            case '\'':
                return i.g.g4;
            case '(':
                return i.g.R4;
            case ')':
                return i.g.L1;
            case '*':
                return i.g.J1;
            case '+':
                return i.g.D1;
            case ',':
                return i.g.f37640x1;
            case '-':
                return i.g.E1;
            case '.':
                return i.g.H1;
            case '/':
                return i.g.K1;
            case '0':
                return i.g.N1;
            case '1':
                return i.g.f37654z1;
            case '2':
                return i.g.O1;
            case '3':
                return i.g.F1;
            case '4':
                return i.g.P1;
            case '5':
                return i.g.Q1;
            case '6':
                return i.g.f37564m2;
            case '7':
                return i.g.T1;
            case '8':
                return i.g.S1;
            case '9':
                return i.g.U1;
            case ':':
                return i.g.V1;
            case ';':
                return i.g.P0;
            case '<':
                return i.g.W1;
            case '=':
                return i.g.f37493b2;
            case '>':
                return i.g.X1;
            case '?':
                return i.g.f37486a2;
            case '@':
                return i.g.L4;
            case 'A':
                return i.g.f37500c2;
            case 'B':
                return i.g.f37526g2;
            case 'C':
                return i.g.f37519f2;
            case 'D':
                return i.g.f37507d2;
            case 'E':
                return i.g.f37621u3;
            case 'F':
                return i.g.f37513e2;
            case 'G':
                return i.g.f37532h2;
            case 'H':
                return i.g.f37544j2;
            case 'I':
                return i.g.f37567m5;
            case 'J':
                return i.g.f37599r2;
            case 'K':
                return i.g.f37557l2;
            case 'L':
                return i.g.f37655z2;
            case 'M':
                return i.g.f37627v2;
            case 'N':
                return i.g.f37571n2;
            case 'O':
                return i.g.f37578o2;
            case 'P':
                return i.g.f37592q2;
            case 'Q':
                return i.g.f37550k2;
            case 'R':
                return i.g.f37634w2;
            case 'S':
                return i.g.f37606s2;
            case 'T':
                return i.g.Z1;
            case 'U':
                return i.g.f37585p2;
            case 'V':
                return i.g.f37620u2;
            case 'W':
                return i.g.f37613t2;
            case 'X':
                return i.g.f37641x2;
            case 'Y':
                return i.g.f37648y2;
            case 'Z':
                return i.g.C2;
            case '[':
                return i.g.B2;
            case '\\':
                return i.g.M1;
            case ']':
                return i.g.A2;
            case '^':
                return i.g.D2;
            case '_':
                return i.g.G2;
            case '`':
                return i.g.K2;
            case 'a':
                return i.g.M2;
            case 'b':
                return i.g.L2;
            case 'c':
                return i.g.F2;
            case 'd':
                return i.g.f37591q1;
            case 'e':
                return i.g.J2;
            case 'f':
                return i.g.H2;
            case 'g':
                return i.g.E2;
            case 'h':
                return i.g.N2;
            case 'i':
                return i.g.Q2;
            case 'j':
                return i.g.O2;
            case 'k':
                return i.g.R2;
            case 'l':
                return i.g.P2;
            case 'm':
                return i.g.T2;
            case 'n':
                return i.g.X2;
            case 'o':
                return i.g.f37633w1;
            case 'p':
                return i.g.U2;
            case 'q':
                return i.g.I1;
            case 'r':
                return i.g.f37566m4;
            case 's':
                return i.g.O3;
            case 't':
                return i.g.I4;
            case 'u':
                return i.g.W2;
            case 'v':
                return i.g.A1;
            case 'w':
                return i.g.S2;
            case 'x':
                return i.g.Y2;
            case 'y':
                return i.g.f37487a3;
            case 'z':
                return i.g.f37573n4;
            case '{':
                return i.g.f37514e3;
            case '|':
                return i.g.M4;
            case '}':
                return i.g.f37501c3;
            case '~':
                return i.g.f37494b3;
            case 127:
                return i.g.f37520f3;
            case 128:
                return i.g.f37527g3;
            case h0.G /* 129 */:
                return i.g.Z2;
            case h0.I /* 130 */:
                return i.g.f37508d3;
            case 131:
                return i.g.f37656z3;
            case 132:
                return i.g.f37635w3;
            case 133:
                return i.g.f37628v3;
            case h0.Q /* 134 */:
                return i.g.R3;
            case h0.J /* 135 */:
                return i.g.f37580o4;
            case 136:
                return i.g.f37545j3;
            case 137:
                return i.g.f37586p3;
            case h0.H /* 138 */:
                return i.g.f37539i3;
            case 139:
                return i.g.f37572n3;
            case 140:
                return i.g.B3;
            case 141:
                return i.g.f37642x3;
            case 142:
                return i.g.f37533h3;
            case 143:
                return i.g.P3;
            case 144:
                return i.g.f37593q3;
            case 145:
                return i.g.f37600r3;
            case 146:
                return i.g.f37649y3;
            case 147:
                return i.g.f37579o3;
            case 148:
                return i.g.f37607s3;
            case 149:
                return i.g.f37565m3;
            case 150:
                return i.g.f37551k3;
            case 151:
                return i.g.f37614t3;
            case 152:
                return i.g.f37558l3;
            case 153:
                return i.g.A3;
            case 154:
                return i.g.C3;
            case 155:
                return i.g.H3;
            case 156:
                return i.g.K3;
            case 157:
                return i.g.N3;
            case 158:
                return i.g.L3;
            case 159:
                return i.g.J3;
            case a1.f54532a /* 160 */:
                return i.g.F3;
            case 161:
                return i.g.Q3;
            case 162:
                return i.g.E3;
            case 163:
                return i.g.D3;
            case 164:
                return i.g.M3;
            case 165:
                return i.g.I3;
            case 166:
                return i.g.S3;
            case 167:
                return i.g.W3;
            case 168:
                return i.g.Z3;
            case 169:
                return i.g.f37538i2;
            case 170:
                return i.g.X3;
            case 171:
                return i.g.f37488a4;
            case h0.K /* 172 */:
                return i.g.T3;
            case 173:
                return i.g.f37502c4;
            case 174:
                return i.g.f37587p4;
            case 175:
                return i.g.f37495b4;
            case 176:
                return i.g.e4;
            case 177:
                return i.g.V3;
            case 178:
                return i.g.d4;
            case 179:
                return i.g.U3;
            case com.facebook.imagepipeline.common.e.f12205e /* 180 */:
                return i.g.Y3;
            case 181:
                return i.g.f37521f4;
            case 182:
                return i.g.f37593q3;
            case 183:
                return i.g.h4;
            case 184:
                return i.g.f37636w4;
            case 185:
                return i.g.i4;
            case 186:
                return i.g.j4;
            case 187:
                return i.g.f37622u4;
            case 188:
                return i.g.E4;
            case a0.f22979w /* 189 */:
                return i.g.f37650y4;
            case 190:
                return i.g.N4;
            case 191:
                return i.g.Q4;
            case 192:
                return i.g.A4;
            case 193:
                return i.g.f37559l4;
            case 194:
                return i.g.D4;
            case 195:
                return i.g.C4;
            case 196:
                return i.g.f37657z4;
            case 197:
                return i.g.f37608s4;
            case 198:
                return i.g.f37629v4;
            case 199:
                return i.g.F4;
            case 200:
                return i.g.O4;
            case 201:
                return i.g.J4;
            case MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED /* 202 */:
                return i.g.f37615t4;
            case 203:
                return i.g.Y1;
            case 204:
                return i.g.B4;
            case MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR /* 205 */:
                return i.g.S4;
            case MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR /* 206 */:
                return i.g.P4;
            case MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD /* 207 */:
                return i.g.f37534h5;
            case com.facebook.imageutils.c.f13394i /* 208 */:
                return i.g.C1;
            case 209:
                return i.g.Z4;
            case 210:
                return i.g.W4;
            case Primes.SMALL_FACTOR_LIMIT /* 211 */:
                return i.g.U4;
            case 212:
                return i.g.f37489a5;
            case 213:
                return i.g.Y4;
            case 214:
                return i.g.f37528g5;
            case com.facebook.imageutils.c.f13395j /* 215 */:
                return i.g.f37515e5;
            case com.facebook.imageutils.c.f13388c /* 216 */:
                return i.g.f37496b5;
            case com.facebook.imageutils.c.f13390e /* 217 */:
                return i.g.f37522f5;
            case com.facebook.imageutils.c.f13391f /* 218 */:
                return i.g.f37509d5;
            case 219:
                return i.g.f37540i5;
            case 220:
                return i.g.T4;
            case 221:
                return i.g.V4;
            case 222:
                return i.g.f37560l5;
            case 223:
                return i.g.f37553k5;
            case 224:
                return i.g.f37574n5;
            case com.facebook.imageutils.c.f13392g /* 225 */:
                return i.g.f37581o5;
            case 226:
                return i.g.f37595q5;
            case 227:
                return i.g.f37609s5;
            case 228:
                return i.g.f37594q4;
            case 229:
                return i.g.f37616t5;
            case 230:
                return i.g.f37598r1;
            case 231:
                return i.g.f37588p5;
            case 232:
                return i.g.f37623u5;
            case 233:
                return i.g.f37602r5;
            case 234:
                return i.g.f37630v5;
            case 235:
                return i.g.f37601r4;
            case 236:
                return i.g.V2;
            case 237:
                return i.g.f37637w5;
            case 238:
                return i.g.f37593q3;
            case 239:
                return i.g.G4;
            case a0.A /* 240 */:
                return i.g.f37644x5;
            case 241:
                return i.g.f37651y5;
            default:
                return i.g.f37503c5;
        }
    }

    public static List<b> r() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b("ad", "376", "Andorra", f37072f));
        arrayList.add(new b("ae", "971", "United Arab Emirates (UAE)", f37072f));
        arrayList.add(new b("af", "93", "Afghanistan", f37072f));
        arrayList.add(new b("ag", "1", "Antigua and Barbuda", f37072f));
        arrayList.add(new b("ai", "1", "Anguilla", f37072f));
        arrayList.add(new b("al", "355", "Albania", f37072f));
        arrayList.add(new b("am", "374", "Armenia", f37072f));
        arrayList.add(new b("ao", "244", "Angola", f37072f));
        arrayList.add(new b("aq", "672", "Antarctica", f37072f));
        arrayList.add(new b("ar", "54", "Argentina", f37072f));
        arrayList.add(new b("as", "1", "American Samoa", f37072f));
        arrayList.add(new b("at", "43", "Austria", f37072f));
        arrayList.add(new b("au", "61", "Australia", f37072f));
        arrayList.add(new b("aw", "297", "Aruba", f37072f));
        arrayList.add(new b("ax", "358", "Åland Islands", f37072f));
        arrayList.add(new b("az", "994", "Azerbaijan", f37072f));
        arrayList.add(new b("ba", "387", "Bosnia And Herzegovina", f37072f));
        arrayList.add(new b("bb", "1", "Barbados", f37072f));
        arrayList.add(new b("bd", "880", "Bangladesh", f37072f));
        arrayList.add(new b("be", "32", "Belgium", f37072f));
        arrayList.add(new b("bf", "226", "Burkina Faso", f37072f));
        arrayList.add(new b("bg", "359", "Bulgaria", f37072f));
        arrayList.add(new b("bh", "973", "Bahrain", f37072f));
        arrayList.add(new b("bi", "257", "Burundi", f37072f));
        arrayList.add(new b("bj", "229", "Benin", f37072f));
        arrayList.add(new b("bl", "590", "Saint Barthélemy", f37072f));
        arrayList.add(new b("bm", "1", "Bermuda", f37072f));
        arrayList.add(new b("bn", "673", "Brunei Darussalam", f37072f));
        arrayList.add(new b("bo", "591", "Bolivia, Plurinational State Of", f37072f));
        arrayList.add(new b(com.google.android.exoplayer2.text.ttml.d.f25734t, "55", "Brazil", f37072f));
        arrayList.add(new b("bs", "1", "Bahamas", f37072f));
        arrayList.add(new b("bt", "975", "Bhutan", f37072f));
        arrayList.add(new b("bw", "267", "Botswana", f37072f));
        arrayList.add(new b("by", "375", "Belarus", f37072f));
        arrayList.add(new b("bz", "501", "Belize", f37072f));
        arrayList.add(new b("ca", "1", "Canada", f37072f));
        arrayList.add(new b("cc", "61", "Cocos (keeling) Islands", f37072f));
        arrayList.add(new b("cd", "243", "Congo, The Democratic Republic Of The", f37072f));
        arrayList.add(new b("cf", "236", "Central African Republic", f37072f));
        arrayList.add(new b("cg", "242", "Congo", f37072f));
        arrayList.add(new b("ch", "41", "Switzerland", f37072f));
        arrayList.add(new b("ci", "225", "Côte D'ivoire", f37072f));
        arrayList.add(new b("ck", "682", "Cook Islands", f37072f));
        arrayList.add(new b("cl", "56", "Chile", f37072f));
        arrayList.add(new b("cm", "237", "Cameroon", f37072f));
        arrayList.add(new b(com.qennnsad.aknkaksd.presentation.module.auth.a.f51009a, "86", "China", f37072f));
        arrayList.add(new b("co", "57", "Colombia", f37072f));
        arrayList.add(new b("cr", "506", "Costa Rica", f37072f));
        arrayList.add(new b("cu", "53", "Cuba", f37072f));
        arrayList.add(new b("cv", "238", "Cape Verde", f37072f));
        arrayList.add(new b("cw", "599", "Curaçao", f37072f));
        arrayList.add(new b("cx", "61", "Christmas Island", f37072f));
        arrayList.add(new b("cy", "357", "Cyprus", f37072f));
        arrayList.add(new b("cz", "420", "Czech Republic", f37072f));
        arrayList.add(new b("de", "49", "Germany", f37072f));
        arrayList.add(new b("dj", "253", "Djibouti", f37072f));
        arrayList.add(new b("dk", "45", "Denmark", f37072f));
        arrayList.add(new b("dm", "1", "Dominica", f37072f));
        arrayList.add(new b("do", "1", "Dominican Republic", f37072f));
        arrayList.add(new b("dz", "213", "Algeria", f37072f));
        arrayList.add(new b("ec", "593", "Ecuador", f37072f));
        arrayList.add(new b("ee", "372", "Estonia", f37072f));
        arrayList.add(new b("eg", "20", "Egypt", f37072f));
        arrayList.add(new b("er", "291", "Eritrea", f37072f));
        arrayList.add(new b("es", "34", "Spain", f37072f));
        arrayList.add(new b("et", "251", "Ethiopia", f37072f));
        arrayList.add(new b("fi", "358", "Finland", f37072f));
        arrayList.add(new b("fj", "679", "Fiji", f37072f));
        arrayList.add(new b("fk", "500", "Falkland Islands (malvinas)", f37072f));
        arrayList.add(new b("fm", "691", "Micronesia, Federated States Of", f37072f));
        arrayList.add(new b("fo", "298", "Faroe Islands", f37072f));
        arrayList.add(new b("fr", "33", "France", f37072f));
        arrayList.add(new b("ga", "241", "Gabon", f37072f));
        arrayList.add(new b("gb", "44", "United Kingdom", f37072f));
        arrayList.add(new b("gd", "1", "Grenada", f37072f));
        arrayList.add(new b("ge", "995", "Georgia", f37072f));
        arrayList.add(new b("gf", "594", "French Guyana", f37072f));
        arrayList.add(new b("gh", "233", "Ghana", f37072f));
        arrayList.add(new b("gi", "350", "Gibraltar", f37072f));
        arrayList.add(new b("gl", "299", "Greenland", f37072f));
        arrayList.add(new b("gm", "220", "Gambia", f37072f));
        arrayList.add(new b("gn", "224", "Guinea", f37072f));
        arrayList.add(new b("gp", "450", "Guadeloupe", f37072f));
        arrayList.add(new b("gq", "240", "Equatorial Guinea", f37072f));
        arrayList.add(new b("gr", "30", "Greece", f37072f));
        arrayList.add(new b("gt", "502", "Guatemala", f37072f));
        arrayList.add(new b("gu", "1", "Guam", f37072f));
        arrayList.add(new b("gw", "245", "Guinea-bissau", f37072f));
        arrayList.add(new b("gy", "592", "Guyana", f37072f));
        arrayList.add(new b("hk", "852", "Hong Kong", f37072f));
        arrayList.add(new b("hn", "504", "Honduras", f37072f));
        arrayList.add(new b("hr", "385", "Croatia", f37072f));
        arrayList.add(new b("ht", "509", "Haiti", f37072f));
        arrayList.add(new b("hu", "36", "Hungary", f37072f));
        arrayList.add(new b("id", "62", "Indonesia", f37072f));
        arrayList.add(new b("ie", "353", "Ireland", f37072f));
        arrayList.add(new b("il", "972", "Israel", f37072f));
        arrayList.add(new b("im", "44", "Isle Of Man", f37072f));
        arrayList.add(new b("is", "354", "Iceland", f37072f));
        arrayList.add(new b("in", "91", "India", f37072f));
        arrayList.add(new b("io", "246", "British Indian Ocean Territory", f37072f));
        arrayList.add(new b("iq", "964", "Iraq", f37072f));
        arrayList.add(new b("ir", "98", "Iran, Islamic Republic Of", f37072f));
        arrayList.add(new b("it", "39", "Italy", f37072f));
        arrayList.add(new b("je", "44", "Jersey ", f37072f));
        arrayList.add(new b("jm", "1", "Jamaica", f37072f));
        arrayList.add(new b("jo", "962", "Jordan", f37072f));
        arrayList.add(new b("jp", "81", "Japan", f37072f));
        arrayList.add(new b("ke", "254", "Kenya", f37072f));
        arrayList.add(new b("kg", "996", "Kyrgyzstan", f37072f));
        arrayList.add(new b("kh", "855", "Cambodia", f37072f));
        arrayList.add(new b("ki", "686", "Kiribati", f37072f));
        arrayList.add(new b("km", "269", "Comoros", f37072f));
        arrayList.add(new b("kn", "1", "Saint Kitts and Nevis", f37072f));
        arrayList.add(new b("kp", "850", "North Korea", f37072f));
        arrayList.add(new b("kr", "82", "South Korea", f37072f));
        arrayList.add(new b("kw", "965", "Kuwait", f37072f));
        arrayList.add(new b("ky", "1", "Cayman Islands", f37072f));
        arrayList.add(new b("kz", g5.h.f67842f, "Kazakhstan", f37072f));
        arrayList.add(new b("la", "856", "Lao People's Democratic Republic", f37072f));
        arrayList.add(new b("lb", "961", "Lebanon", f37072f));
        arrayList.add(new b("lc", "1", "Saint Lucia", f37072f));
        arrayList.add(new b("li", "423", "Liechtenstein", f37072f));
        arrayList.add(new b("lk", "94", "Sri Lanka", f37072f));
        arrayList.add(new b("lr", "231", "Liberia", f37072f));
        arrayList.add(new b("ls", "266", "Lesotho", f37072f));
        arrayList.add(new b("lt", "370", "Lithuania", f37072f));
        arrayList.add(new b("lu", "352", "Luxembourg", f37072f));
        arrayList.add(new b("lv", "371", "Latvia", f37072f));
        arrayList.add(new b("ly", "218", "Libya", f37072f));
        arrayList.add(new b("ma", "212", "Morocco", f37072f));
        arrayList.add(new b("mc", "377", "Monaco", f37072f));
        arrayList.add(new b("md", "373", "Moldova, Republic Of", f37072f));
        arrayList.add(new b("me", "382", "Montenegro", f37072f));
        arrayList.add(new b("mf", "590", "Saint Martin", f37072f));
        arrayList.add(new b("mg", "261", "Madagascar", f37072f));
        arrayList.add(new b("mh", "692", "Marshall Islands", f37072f));
        arrayList.add(new b("mk", "389", "Macedonia (FYROM)", f37072f));
        arrayList.add(new b("ml", "223", "Mali", f37072f));
        arrayList.add(new b("mm", "95", "Myanmar", f37072f));
        arrayList.add(new b("mn", "976", "Mongolia", f37072f));
        arrayList.add(new b("mo", "853", "Macau", f37072f));
        arrayList.add(new b("mp", "1", "Northern Mariana Islands", f37072f));
        arrayList.add(new b("mq", "596", "Martinique", f37072f));
        arrayList.add(new b("mr", "222", "Mauritania", f37072f));
        arrayList.add(new b("ms", "1", "Montserrat", f37072f));
        arrayList.add(new b("mt", "356", "Malta", f37072f));
        arrayList.add(new b("mu", "230", "Mauritius", f37072f));
        arrayList.add(new b("mv", "960", "Maldives", f37072f));
        arrayList.add(new b("mw", "265", "Malawi", f37072f));
        arrayList.add(new b("mx", "52", "Mexico", f37072f));
        arrayList.add(new b("my", "60", "Malaysia", f37072f));
        arrayList.add(new b("mz", "258", "Mozambique", f37072f));
        arrayList.add(new b("na", "264", "Namibia", f37072f));
        arrayList.add(new b("nc", "687", "New Caledonia", f37072f));
        arrayList.add(new b("ne", "227", "Niger", f37072f));
        arrayList.add(new b("nf", "672", "Norfolk Islands", f37072f));
        arrayList.add(new b("ng", "234", "Nigeria", f37072f));
        arrayList.add(new b("ni", "505", "Nicaragua", f37072f));
        arrayList.add(new b("nl", "31", "Netherlands", f37072f));
        arrayList.add(new b("no", "47", "Norway", f37072f));
        arrayList.add(new b("np", "977", "Nepal", f37072f));
        arrayList.add(new b("nr", "674", "Nauru", f37072f));
        arrayList.add(new b("nu", "683", "Niue", f37072f));
        arrayList.add(new b("nz", "64", "New Zealand", f37072f));
        arrayList.add(new b("om", "968", "Oman", f37072f));
        arrayList.add(new b("pa", "507", "Panama", f37072f));
        arrayList.add(new b("pe", "51", "Peru", f37072f));
        arrayList.add(new b("pf", "689", "French Polynesia", f37072f));
        arrayList.add(new b("pg", "675", "Papua New Guinea", f37072f));
        arrayList.add(new b("ph", "63", "Philippines", f37072f));
        arrayList.add(new b("pk", "92", "Pakistan", f37072f));
        arrayList.add(new b("pl", "48", "Poland", f37072f));
        arrayList.add(new b("pm", "508", "Saint Pierre And Miquelon", f37072f));
        arrayList.add(new b("pn", "870", "Pitcairn Islands", f37072f));
        arrayList.add(new b("pr", "1", "Puerto Rico", f37072f));
        arrayList.add(new b("ps", "970", "Palestine", f37072f));
        arrayList.add(new b("pt", "351", "Portugal", f37072f));
        arrayList.add(new b("pw", "680", "Palau", f37072f));
        arrayList.add(new b("py", "595", "Paraguay", f37072f));
        arrayList.add(new b("qa", "974", "Qatar", f37072f));
        arrayList.add(new b("re", "262", "Réunion", f37072f));
        arrayList.add(new b("ro", "40", "Romania", f37072f));
        arrayList.add(new b("rs", "381", "Serbia", f37072f));
        arrayList.add(new b("ru", g5.h.f67842f, "Russian Federation", f37072f));
        arrayList.add(new b("rw", "250", "Rwanda", f37072f));
        arrayList.add(new b("sa", "966", "Saudi Arabia", f37072f));
        arrayList.add(new b("sb", "677", "Solomon Islands", f37072f));
        arrayList.add(new b("sc", "248", "Seychelles", f37072f));
        arrayList.add(new b("sd", "249", "Sudan", f37072f));
        arrayList.add(new b("se", "46", "Sweden", f37072f));
        arrayList.add(new b("sg", "65", "Singapore", f37072f));
        arrayList.add(new b("sh", "290", "Saint Helena, Ascension And Tristan Da Cunha", f37072f));
        arrayList.add(new b("si", "386", "Slovenia", f37072f));
        arrayList.add(new b("sk", "421", "Slovakia", f37072f));
        arrayList.add(new b("sl", "232", "Sierra Leone", f37072f));
        arrayList.add(new b("sm", "378", "San Marino", f37072f));
        arrayList.add(new b("sn", "221", "Senegal", f37072f));
        arrayList.add(new b("so", "252", "Somalia", f37072f));
        arrayList.add(new b("sr", "597", "Suriname", f37072f));
        arrayList.add(new b("ss", "211", "South Sudan", f37072f));
        arrayList.add(new b("st", "239", "Sao Tome And Principe", f37072f));
        arrayList.add(new b(p.a.f93056j, "503", "El Salvador", f37072f));
        arrayList.add(new b("sx", "1", "Sint Maarten", f37072f));
        arrayList.add(new b("sy", "963", "Syrian Arab Republic", f37072f));
        arrayList.add(new b("sz", "268", "Swaziland", f37072f));
        arrayList.add(new b("tc", "1", "Turks and Caicos Islands", f37072f));
        arrayList.add(new b("td", "235", "Chad", f37072f));
        arrayList.add(new b("tg", "228", "Togo", f37072f));
        arrayList.add(new b("th", "66", "Thailand", f37072f));
        arrayList.add(new b("tj", "992", "Tajikistan", f37072f));
        arrayList.add(new b("tk", "690", "Tokelau", f37072f));
        arrayList.add(new b("tl", "670", "Timor-leste", f37072f));
        arrayList.add(new b("tm", "993", "Turkmenistan", f37072f));
        arrayList.add(new b("tn", "216", "Tunisia", f37072f));
        arrayList.add(new b(TypedValues.Transition.S_TO, "676", "Tonga", f37072f));
        arrayList.add(new b("tr", "90", "Turkey", f37072f));
        arrayList.add(new b(com.google.android.exoplayer2.text.ttml.d.f25722n, "1", "Trinidad &amp; Tobago", f37072f));
        arrayList.add(new b("tv", "688", "Tuvalu", f37072f));
        arrayList.add(new b("tw", "886", "Taiwan", f37072f));
        arrayList.add(new b("tz", "255", "Tanzania, United Republic Of", f37072f));
        arrayList.add(new b("ua", "380", "Ukraine", f37072f));
        arrayList.add(new b("ug", "256", "Uganda", f37072f));
        arrayList.add(new b("us", "1", "United States", f37072f));
        arrayList.add(new b("uy", "598", "Uruguay", f37072f));
        arrayList.add(new b("uz", "998", "Uzbekistan", f37072f));
        arrayList.add(new b("va", "379", "Holy See (vatican City State)", f37072f));
        arrayList.add(new b("vc", "1", "Saint Vincent &amp; The Grenadines", f37072f));
        arrayList.add(new b("ve", "58", "Venezuela, Bolivarian Republic Of", f37072f));
        arrayList.add(new b("vg", "1", "British Virgin Islands", f37072f));
        arrayList.add(new b("vi", "1", "US Virgin Islands", f37072f));
        arrayList.add(new b("vn", "84", "Vietnam", f37072f));
        arrayList.add(new b("vu", "678", "Vanuatu", f37072f));
        arrayList.add(new b("wf", "681", "Wallis And Futuna", f37072f));
        arrayList.add(new b("ws", "685", "Samoa", f37072f));
        arrayList.add(new b("xk", "383", "Kosovo", f37072f));
        arrayList.add(new b("ye", "967", "Yemen", f37072f));
        arrayList.add(new b("yt", "262", "Mayotte", f37072f));
        arrayList.add(new b("za", "27", "South Africa", f37072f));
        arrayList.add(new b("zm", "260", "Zambia", f37072f));
        arrayList.add(new b("zw", "263", "Zimbabwe", f37072f));
        return arrayList;
    }

    public static List<b> s(Context context, CountryCodePicker.Language language) {
        List<b> list;
        CountryCodePicker.Language language2 = f37074h;
        if (language2 == null || language != language2 || (list = f37078l) == null || list.size() == 0) {
            A(context, language);
        }
        return f37078l;
    }

    static CountryCodePicker.Language t() {
        return f37074h;
    }

    public static List<b> u() {
        return f37078l;
    }

    public static String w(Context context, CountryCodePicker.Language language) {
        String str;
        CountryCodePicker.Language language2 = f37074h;
        if (language2 == null || language2 != language || (str = f37077k) == null || str.length() == 0) {
            A(context, language);
        }
        return f37077k;
    }

    public static String y(Context context, CountryCodePicker.Language language) {
        String str;
        CountryCodePicker.Language language2 = f37074h;
        if (language2 == null || language2 != language || (str = f37076j) == null || str.length() == 0) {
            A(context, language);
        }
        return f37076j;
    }

    public void B() {
        try {
            String str = f37073g;
            Log.d(str, "Country->" + this.f37093a + ":" + this.f37094b + ":" + this.f37095c);
        } catch (NullPointerException unused) {
            Log.d(f37073g, "Null");
        }
    }

    String C() {
        return this.f37093a.toUpperCase() + " +" + this.f37094b + "(" + this.f37095c + ")";
    }

    public void E(String englishName) {
        this.f37096d = englishName;
    }

    public void I(String name) {
        this.f37095c = name;
    }

    public void J(String nameCode) {
        this.f37093a = nameCode;
    }

    public void L(String phoneCode) {
        this.f37094b = phoneCode;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(@NonNull b o9) {
        return Collator.getInstance().compare(getName(), o9.getName());
    }

    public String getName() {
        return this.f37095c;
    }

    public String n() {
        return this.f37096d;
    }

    public int p() {
        if (this.f37097e == -99) {
            this.f37097e = q(this);
        }
        return this.f37097e;
    }

    public String v() {
        return this.f37093a;
    }

    public String x() {
        return this.f37094b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean z(String query) {
        String lowerCase = query.toLowerCase();
        return b("Name", getName(), lowerCase) || b("NameCode", v(), lowerCase) || b("PhoneCode", x(), lowerCase) || b("EnglishName", n(), lowerCase);
    }

    public b(String nameCode, String phoneCode, String name, int flagResID) {
        this.f37097e = f37072f;
        this.f37093a = nameCode.toUpperCase(Locale.ROOT);
        this.f37094b = phoneCode;
        this.f37095c = name;
        this.f37097e = flagResID;
    }
}
