package io.michaelrocks.libphonenumber.android;

import io.michaelrocks.libphonenumber.android.Phonemetadata;
import io.michaelrocks.libphonenumber.android.Phonenumber;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class ShortNumberInfo {

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f70984d = Logger.getLogger(ShortNumberInfo.class.getName());

    /* renamed from: e  reason: collision with root package name */
    private static final Set<String> f70985e;

    /* renamed from: a  reason: collision with root package name */
    private final h f70986a;

    /* renamed from: b  reason: collision with root package name */
    private final io.michaelrocks.libphonenumber.android.internal.a f70987b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Integer, List<String>> f70988c = e.a();

    /* loaded from: classes3.dex */
    public enum ShortNumberCost {
        TOLL_FREE,
        STANDARD_RATE,
        PREMIUM_RATE,
        UNKNOWN_COST
    }

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f70990a;

        static {
            int[] iArr = new int[ShortNumberCost.values().length];
            f70990a = iArr;
            try {
                iArr[ShortNumberCost.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70990a[ShortNumberCost.UNKNOWN_COST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f70990a[ShortNumberCost.STANDARD_RATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f70990a[ShortNumberCost.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f70985e = hashSet;
        hashSet.add("BR");
        hashSet.add("CL");
        hashSet.add("NI");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShortNumberInfo(h metadataSource, io.michaelrocks.libphonenumber.android.internal.a matcherApi) {
        this.f70986a = metadataSource;
        this.f70987b = matcherApi;
    }

    private static String f(Phonenumber.PhoneNumber number) {
        StringBuilder sb = new StringBuilder();
        if (number.isItalianLeadingZero()) {
            char[] cArr = new char[number.getNumberOfLeadingZeros()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(number.getNationalNumber());
        return sb.toString();
    }

    private String g(Phonenumber.PhoneNumber number, List<String> regionCodes) {
        if (regionCodes.size() == 0) {
            return null;
        }
        if (regionCodes.size() == 1) {
            return regionCodes.get(0);
        }
        String f10 = f(number);
        for (String str : regionCodes) {
            Phonemetadata.PhoneMetadata d4 = this.f70986a.d(str);
            if (d4 != null && s(f10, d4.getShortCode())) {
                return str;
            }
        }
        return null;
    }

    private List<String> h(int countryCallingCode) {
        List<String> list = this.f70988c.get(Integer.valueOf(countryCallingCode));
        if (list == null) {
            list = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list);
    }

    private boolean r(CharSequence number, String regionCode, boolean allowPrefixMatch) {
        Phonemetadata.PhoneMetadata d4;
        CharSequence n9 = PhoneNumberUtil.n(number);
        boolean z9 = false;
        if (PhoneNumberUtil.J.matcher(n9).lookingAt() || (d4 = this.f70986a.d(regionCode)) == null || !d4.hasEmergency()) {
            return false;
        }
        String M0 = PhoneNumberUtil.M0(n9);
        if (allowPrefixMatch && !f70985e.contains(regionCode)) {
            z9 = true;
        }
        return this.f70987b.a(M0, d4.getEmergency(), z9);
    }

    private boolean s(String number, Phonemetadata.PhoneNumberDesc numberDesc) {
        if (numberDesc.getPossibleLengthCount() <= 0 || numberDesc.getPossibleLengthList().contains(Integer.valueOf(number.length()))) {
            return this.f70987b.a(number, numberDesc, false);
        }
        return false;
    }

    private boolean t(Phonenumber.PhoneNumber number, String regionDialingFrom) {
        return h(number.getCountryCode()).contains(regionDialingFrom);
    }

    public boolean a(String number, String regionCode) {
        return r(number, regionCode, true);
    }

    String b(String regionCode) {
        Phonemetadata.PhoneMetadata d4 = this.f70986a.d(regionCode);
        if (d4 == null) {
            return "";
        }
        Phonemetadata.PhoneNumberDesc shortCode = d4.getShortCode();
        return shortCode.hasExampleNumber() ? shortCode.getExampleNumber() : "";
    }

    String c(String regionCode, ShortNumberCost cost) {
        Phonemetadata.PhoneMetadata d4 = this.f70986a.d(regionCode);
        if (d4 == null) {
            return "";
        }
        Phonemetadata.PhoneNumberDesc phoneNumberDesc = null;
        int i4 = a.f70990a[cost.ordinal()];
        if (i4 == 1) {
            phoneNumberDesc = d4.getPremiumRate();
        } else if (i4 == 3) {
            phoneNumberDesc = d4.getStandardRate();
        } else if (i4 == 4) {
            phoneNumberDesc = d4.getTollFree();
        }
        return (phoneNumberDesc == null || !phoneNumberDesc.hasExampleNumber()) ? "" : phoneNumberDesc.getExampleNumber();
    }

    public ShortNumberCost d(Phonenumber.PhoneNumber number) {
        List<String> h4 = h(number.getCountryCode());
        if (h4.size() == 0) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        if (h4.size() == 1) {
            return e(number, h4.get(0));
        }
        ShortNumberCost shortNumberCost = ShortNumberCost.TOLL_FREE;
        for (String str : h4) {
            ShortNumberCost e4 = e(number, str);
            int i4 = a.f70990a[e4.ordinal()];
            if (i4 == 1) {
                return ShortNumberCost.PREMIUM_RATE;
            }
            if (i4 == 2) {
                shortNumberCost = ShortNumberCost.UNKNOWN_COST;
            } else if (i4 != 3) {
                if (i4 != 4) {
                    Logger logger = f70984d;
                    Level level = Level.SEVERE;
                    logger.log(level, "Unrecognised cost for region: " + e4);
                }
            } else if (shortNumberCost != ShortNumberCost.UNKNOWN_COST) {
                shortNumberCost = ShortNumberCost.STANDARD_RATE;
            }
        }
        return shortNumberCost;
    }

    public ShortNumberCost e(Phonenumber.PhoneNumber number, String regionDialingFrom) {
        if (!t(number, regionDialingFrom)) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        Phonemetadata.PhoneMetadata d4 = this.f70986a.d(regionDialingFrom);
        if (d4 == null) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        String f10 = f(number);
        if (!d4.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(f10.length()))) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        if (s(f10, d4.getPremiumRate())) {
            return ShortNumberCost.PREMIUM_RATE;
        }
        if (s(f10, d4.getStandardRate())) {
            return ShortNumberCost.STANDARD_RATE;
        }
        if (s(f10, d4.getTollFree())) {
            return ShortNumberCost.TOLL_FREE;
        }
        if (l(f10, regionDialingFrom)) {
            return ShortNumberCost.TOLL_FREE;
        }
        return ShortNumberCost.UNKNOWN_COST;
    }

    Set<String> i() {
        return Collections.emptySet();
    }

    public boolean j(Phonenumber.PhoneNumber number) {
        String g4 = g(number, h(number.getCountryCode()));
        String f10 = f(number);
        Phonemetadata.PhoneMetadata d4 = this.f70986a.d(g4);
        return d4 != null && s(f10, d4.getCarrierSpecific());
    }

    public boolean k(Phonenumber.PhoneNumber number, String regionDialingFrom) {
        if (t(number, regionDialingFrom)) {
            String f10 = f(number);
            Phonemetadata.PhoneMetadata d4 = this.f70986a.d(regionDialingFrom);
            return d4 != null && s(f10, d4.getCarrierSpecific());
        }
        return false;
    }

    public boolean l(CharSequence number, String regionCode) {
        return r(number, regionCode, false);
    }

    public boolean m(Phonenumber.PhoneNumber number) {
        List<String> h4 = h(number.getCountryCode());
        int length = f(number).length();
        for (String str : h4) {
            Phonemetadata.PhoneMetadata d4 = this.f70986a.d(str);
            if (d4 != null && d4.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(length))) {
                return true;
            }
        }
        return false;
    }

    public boolean n(Phonenumber.PhoneNumber number, String regionDialingFrom) {
        Phonemetadata.PhoneMetadata d4;
        if (t(number, regionDialingFrom) && (d4 = this.f70986a.d(regionDialingFrom)) != null) {
            return d4.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(f(number).length()));
        }
        return false;
    }

    public boolean o(Phonenumber.PhoneNumber number, String regionDialingFrom) {
        Phonemetadata.PhoneMetadata d4;
        return t(number, regionDialingFrom) && (d4 = this.f70986a.d(regionDialingFrom)) != null && s(f(number), d4.getSmsServices());
    }

    public boolean p(Phonenumber.PhoneNumber number) {
        List<String> h4 = h(number.getCountryCode());
        String g4 = g(number, h4);
        if (h4.size() <= 1 || g4 == null) {
            return q(number, g4);
        }
        return true;
    }

    public boolean q(Phonenumber.PhoneNumber number, String regionDialingFrom) {
        Phonemetadata.PhoneMetadata d4;
        if (t(number, regionDialingFrom) && (d4 = this.f70986a.d(regionDialingFrom)) != null) {
            String f10 = f(number);
            if (s(f10, d4.getGeneralDesc())) {
                return s(f10, d4.getShortCode());
            }
            return false;
        }
        return false;
    }
}
