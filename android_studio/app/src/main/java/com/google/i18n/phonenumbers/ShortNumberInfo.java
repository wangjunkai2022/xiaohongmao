package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.Phonenumber;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class ShortNumberInfo {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35640c = Logger.getLogger(ShortNumberInfo.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static final ShortNumberInfo f35641d = new ShortNumberInfo(com.google.i18n.phonenumbers.internal.b.b());

    /* renamed from: e  reason: collision with root package name */
    private static final Set<String> f35642e;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.i18n.phonenumbers.internal.a f35643a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, List<String>> f35644b = c.a();

    /* loaded from: classes2.dex */
    public enum ShortNumberCost {
        TOLL_FREE,
        STANDARD_RATE,
        PREMIUM_RATE,
        UNKNOWN_COST
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f35646a;

        static {
            int[] iArr = new int[ShortNumberCost.values().length];
            f35646a = iArr;
            try {
                iArr[ShortNumberCost.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35646a[ShortNumberCost.UNKNOWN_COST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35646a[ShortNumberCost.STANDARD_RATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35646a[ShortNumberCost.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f35642e = hashSet;
        hashSet.add("BR");
        hashSet.add("CL");
        hashSet.add("NI");
    }

    ShortNumberInfo(com.google.i18n.phonenumbers.internal.a aVar) {
        this.f35643a = aVar;
    }

    public static ShortNumberInfo f() {
        return f35641d;
    }

    private static String g(Phonenumber.PhoneNumber phoneNumber) {
        StringBuilder sb = new StringBuilder();
        if (phoneNumber.isItalianLeadingZero()) {
            char[] cArr = new char[phoneNumber.getNumberOfLeadingZeros()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(phoneNumber.getNationalNumber());
        return sb.toString();
    }

    private String h(Phonenumber.PhoneNumber phoneNumber, List<String> list) {
        if (list.size() == 0) {
            return null;
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        String g4 = g(phoneNumber);
        for (String str : list) {
            Phonemetadata.PhoneMetadata e4 = e.e(str);
            if (e4 != null && t(g4, e4.getShortCode())) {
                return str;
            }
        }
        return null;
    }

    private List<String> i(int i4) {
        List<String> list = this.f35644b.get(Integer.valueOf(i4));
        if (list == null) {
            list = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list);
    }

    private boolean s(CharSequence charSequence, String str, boolean z9) {
        Phonemetadata.PhoneMetadata e4;
        CharSequence n9 = PhoneNumberUtil.n(charSequence);
        boolean z10 = false;
        if (PhoneNumberUtil.I.matcher(n9).lookingAt() || (e4 = e.e(str)) == null || !e4.hasEmergency()) {
            return false;
        }
        String L0 = PhoneNumberUtil.L0(n9);
        if (z9 && !f35642e.contains(str)) {
            z10 = true;
        }
        return this.f35643a.a(L0, e4.getEmergency(), z10);
    }

    private boolean t(String str, Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        if (phoneNumberDesc.getPossibleLengthCount() <= 0 || phoneNumberDesc.getPossibleLengthList().contains(Integer.valueOf(str.length()))) {
            return this.f35643a.a(str, phoneNumberDesc, false);
        }
        return false;
    }

    private boolean u(Phonenumber.PhoneNumber phoneNumber, String str) {
        return i(phoneNumber.getCountryCode()).contains(str);
    }

    public boolean a(String str, String str2) {
        return s(str, str2, true);
    }

    String b(String str) {
        Phonemetadata.PhoneMetadata e4 = e.e(str);
        if (e4 == null) {
            return "";
        }
        Phonemetadata.PhoneNumberDesc shortCode = e4.getShortCode();
        return shortCode.hasExampleNumber() ? shortCode.getExampleNumber() : "";
    }

    String c(String str, ShortNumberCost shortNumberCost) {
        Phonemetadata.PhoneMetadata e4 = e.e(str);
        if (e4 == null) {
            return "";
        }
        Phonemetadata.PhoneNumberDesc phoneNumberDesc = null;
        int i4 = a.f35646a[shortNumberCost.ordinal()];
        if (i4 == 1) {
            phoneNumberDesc = e4.getPremiumRate();
        } else if (i4 == 3) {
            phoneNumberDesc = e4.getStandardRate();
        } else if (i4 == 4) {
            phoneNumberDesc = e4.getTollFree();
        }
        return (phoneNumberDesc == null || !phoneNumberDesc.hasExampleNumber()) ? "" : phoneNumberDesc.getExampleNumber();
    }

    public ShortNumberCost d(Phonenumber.PhoneNumber phoneNumber) {
        List<String> i4 = i(phoneNumber.getCountryCode());
        if (i4.size() == 0) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        if (i4.size() == 1) {
            return e(phoneNumber, i4.get(0));
        }
        ShortNumberCost shortNumberCost = ShortNumberCost.TOLL_FREE;
        for (String str : i4) {
            ShortNumberCost e4 = e(phoneNumber, str);
            int i10 = a.f35646a[e4.ordinal()];
            if (i10 == 1) {
                return ShortNumberCost.PREMIUM_RATE;
            }
            if (i10 == 2) {
                shortNumberCost = ShortNumberCost.UNKNOWN_COST;
            } else if (i10 != 3) {
                if (i10 != 4) {
                    Logger logger = f35640c;
                    Level level = Level.SEVERE;
                    logger.log(level, "Unrecognised cost for region: " + e4);
                }
            } else if (shortNumberCost != ShortNumberCost.UNKNOWN_COST) {
                shortNumberCost = ShortNumberCost.STANDARD_RATE;
            }
        }
        return shortNumberCost;
    }

    public ShortNumberCost e(Phonenumber.PhoneNumber phoneNumber, String str) {
        if (!u(phoneNumber, str)) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        Phonemetadata.PhoneMetadata e4 = e.e(str);
        if (e4 == null) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        String g4 = g(phoneNumber);
        if (!e4.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(g4.length()))) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        if (t(g4, e4.getPremiumRate())) {
            return ShortNumberCost.PREMIUM_RATE;
        }
        if (t(g4, e4.getStandardRate())) {
            return ShortNumberCost.STANDARD_RATE;
        }
        if (t(g4, e4.getTollFree())) {
            return ShortNumberCost.TOLL_FREE;
        }
        if (m(g4, str)) {
            return ShortNumberCost.TOLL_FREE;
        }
        return ShortNumberCost.UNKNOWN_COST;
    }

    Set<String> j() {
        return e.g();
    }

    public boolean k(Phonenumber.PhoneNumber phoneNumber) {
        String h4 = h(phoneNumber, i(phoneNumber.getCountryCode()));
        String g4 = g(phoneNumber);
        Phonemetadata.PhoneMetadata e4 = e.e(h4);
        return e4 != null && t(g4, e4.getCarrierSpecific());
    }

    public boolean l(Phonenumber.PhoneNumber phoneNumber, String str) {
        if (u(phoneNumber, str)) {
            String g4 = g(phoneNumber);
            Phonemetadata.PhoneMetadata e4 = e.e(str);
            return e4 != null && t(g4, e4.getCarrierSpecific());
        }
        return false;
    }

    public boolean m(CharSequence charSequence, String str) {
        return s(charSequence, str, false);
    }

    public boolean n(Phonenumber.PhoneNumber phoneNumber) {
        List<String> i4 = i(phoneNumber.getCountryCode());
        int length = g(phoneNumber).length();
        for (String str : i4) {
            Phonemetadata.PhoneMetadata e4 = e.e(str);
            if (e4 != null && e4.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(length))) {
                return true;
            }
        }
        return false;
    }

    public boolean o(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata e4;
        if (u(phoneNumber, str) && (e4 = e.e(str)) != null) {
            return e4.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(g(phoneNumber).length()));
        }
        return false;
    }

    public boolean p(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata e4;
        return u(phoneNumber, str) && (e4 = e.e(str)) != null && t(g(phoneNumber), e4.getSmsServices());
    }

    public boolean q(Phonenumber.PhoneNumber phoneNumber) {
        List<String> i4 = i(phoneNumber.getCountryCode());
        String h4 = h(phoneNumber, i4);
        if (i4.size() <= 1 || h4 == null) {
            return r(phoneNumber, h4);
        }
        return true;
    }

    public boolean r(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata e4;
        if (u(phoneNumber, str) && (e4 = e.e(str)) != null) {
            String g4 = g(phoneNumber);
            if (t(g4, e4.getGeneralDesc())) {
                return t(g4, e4.getShortCode());
            }
            return false;
        }
        return false;
    }
}
