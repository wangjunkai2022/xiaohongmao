package com.hbb20;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import com.hbb20.i;
import io.michaelrocks.libphonenumber.android.NumberParseException;
import io.michaelrocks.libphonenumber.android.PhoneNumberUtil;
import io.michaelrocks.libphonenumber.android.Phonenumber;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class CountryCodePicker extends RelativeLayout {

    /* renamed from: e3  reason: collision with root package name */
    static final int f37007e3 = -99;

    /* renamed from: f3  reason: collision with root package name */
    static String f37008f3 = "CCP";

    /* renamed from: g3  reason: collision with root package name */
    static String f37009g3 = "selectedCode";

    /* renamed from: h3  reason: collision with root package name */
    static int f37010h3 = 91;

    /* renamed from: i3  reason: collision with root package name */
    private static int f37011i3 = -1;

    /* renamed from: j3  reason: collision with root package name */
    private static int f37012j3 = 1;

    /* renamed from: k3  reason: collision with root package name */
    private static int f37013k3 = 0;

    /* renamed from: l3  reason: collision with root package name */
    private static String f37014l3 = "http://schemas.android.com/apk/res/android";
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    boolean E2;
    boolean F;
    boolean F2;
    boolean G;
    String G2;
    boolean H;
    TextWatcher H2;
    boolean I;
    com.hbb20.h I2;
    boolean J;
    boolean J2;
    boolean K;
    TextWatcher K2;
    boolean L;
    boolean L2;
    boolean M;
    String M2;
    boolean N;
    int N2;
    boolean O;
    boolean O2;
    PhoneNumberType P;
    private h P2;
    String Q;
    private i Q2;
    int R;
    private g R2;
    int S;
    private f S2;
    int T;
    String T1;
    private e T2;
    Typeface U;
    private int U2;
    int V;
    Language V1;
    private int V2;
    List<com.hbb20.b> W;
    private int W2;
    private int X2;
    private int Y2;
    private int Z2;

    /* renamed from: a  reason: collision with root package name */
    private com.hbb20.d f37015a;

    /* renamed from: a3  reason: collision with root package name */
    private float f37016a3;

    /* renamed from: b  reason: collision with root package name */
    String f37017b;

    /* renamed from: b1  reason: collision with root package name */
    int f37018b1;

    /* renamed from: b2  reason: collision with root package name */
    Language f37019b2;

    /* renamed from: b3  reason: collision with root package name */
    private com.hbb20.c f37020b3;

    /* renamed from: c  reason: collision with root package name */
    int f37021c;

    /* renamed from: c3  reason: collision with root package name */
    private View.OnClickListener f37022c3;

    /* renamed from: d  reason: collision with root package name */
    String f37023d;

    /* renamed from: d3  reason: collision with root package name */
    View.OnClickListener f37024d3;

    /* renamed from: e  reason: collision with root package name */
    Context f37025e;

    /* renamed from: f  reason: collision with root package name */
    View f37026f;

    /* renamed from: g  reason: collision with root package name */
    LayoutInflater f37027g;

    /* renamed from: g1  reason: collision with root package name */
    String f37028g1;

    /* renamed from: g2  reason: collision with root package name */
    boolean f37029g2;

    /* renamed from: h  reason: collision with root package name */
    TextView f37030h;

    /* renamed from: i  reason: collision with root package name */
    EditText f37031i;

    /* renamed from: j  reason: collision with root package name */
    RelativeLayout f37032j;

    /* renamed from: k  reason: collision with root package name */
    ImageView f37033k;

    /* renamed from: l  reason: collision with root package name */
    ImageView f37034l;

    /* renamed from: m  reason: collision with root package name */
    LinearLayout f37035m;

    /* renamed from: n  reason: collision with root package name */
    LinearLayout f37036n;

    /* renamed from: o  reason: collision with root package name */
    com.hbb20.b f37037o;

    /* renamed from: p  reason: collision with root package name */
    com.hbb20.b f37038p;

    /* renamed from: p1  reason: collision with root package name */
    int f37039p1;

    /* renamed from: p2  reason: collision with root package name */
    boolean f37040p2;

    /* renamed from: q  reason: collision with root package name */
    RelativeLayout f37041q;

    /* renamed from: r  reason: collision with root package name */
    CountryCodePicker f37042r;

    /* renamed from: s  reason: collision with root package name */
    TextGravity f37043s;

    /* renamed from: t  reason: collision with root package name */
    String f37044t;

    /* renamed from: u  reason: collision with root package name */
    int f37045u;

    /* renamed from: v  reason: collision with root package name */
    AutoDetectionPref f37046v;

    /* renamed from: w  reason: collision with root package name */
    PhoneNumberUtil f37047w;

    /* renamed from: x  reason: collision with root package name */
    boolean f37048x;

    /* renamed from: x1  reason: collision with root package name */
    List<com.hbb20.b> f37049x1;

    /* renamed from: x2  reason: collision with root package name */
    boolean f37050x2;

    /* renamed from: y  reason: collision with root package name */
    boolean f37051y;

    /* renamed from: y1  reason: collision with root package name */
    String f37052y1;

    /* renamed from: y2  reason: collision with root package name */
    boolean f37053y2;

    /* renamed from: z  reason: collision with root package name */
    boolean f37054z;

    /* loaded from: classes2.dex */
    public enum AutoDetectionPref {
        SIM_ONLY("1"),
        NETWORK_ONLY("2"),
        LOCALE_ONLY("3"),
        SIM_NETWORK("12"),
        NETWORK_SIM("21"),
        SIM_LOCALE("13"),
        LOCALE_SIM("31"),
        NETWORK_LOCALE("23"),
        LOCALE_NETWORK("32"),
        SIM_NETWORK_LOCALE("123"),
        SIM_LOCALE_NETWORK("132"),
        NETWORK_SIM_LOCALE("213"),
        NETWORK_LOCALE_SIM("231"),
        LOCALE_SIM_NETWORK("312"),
        LOCALE_NETWORK_SIM("321");
        

        /* renamed from: a  reason: collision with root package name */
        String f37056a;

        AutoDetectionPref(String representation) {
            this.f37056a = representation;
        }

        public static AutoDetectionPref getPrefForValue(String value) {
            AutoDetectionPref[] values;
            for (AutoDetectionPref autoDetectionPref : values()) {
                if (autoDetectionPref.f37056a.equals(value)) {
                    return autoDetectionPref;
                }
            }
            return SIM_NETWORK_LOCALE;
        }
    }

    /* loaded from: classes2.dex */
    public enum PhoneNumberType {
        MOBILE,
        FIXED_LINE,
        FIXED_LINE_OR_MOBILE,
        TOLL_FREE,
        PREMIUM_RATE,
        SHARED_COST,
        VOIP,
        PERSONAL_NUMBER,
        PAGER,
        UAN,
        VOICEMAIL,
        UNKNOWN
    }

    /* loaded from: classes2.dex */
    public enum TextGravity {
        LEFT(-1),
        CENTER(0),
        RIGHT(1);
        

        /* renamed from: a  reason: collision with root package name */
        int f37063a;

        TextGravity(int i4) {
            this.f37063a = i4;
        }
    }

    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v9) {
            if (CountryCodePicker.this.f37022c3 == null) {
                if (CountryCodePicker.this.s()) {
                    CountryCodePicker countryCodePicker = CountryCodePicker.this;
                    if (countryCodePicker.L) {
                        countryCodePicker.F(countryCodePicker.getSelectedCountryNameCode());
                        return;
                    } else {
                        countryCodePicker.E();
                        return;
                    }
                }
                return;
            }
            CountryCodePicker.this.f37022c3.onClick(v9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        String f37065a = null;

        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s9) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s9, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s9, int start, int before, int count) {
            com.hbb20.b selectedCountry = CountryCodePicker.this.getSelectedCountry();
            if (selectedCountry != null) {
                String str = this.f37065a;
                if (str == null || !str.equals(s9.toString())) {
                    CountryCodePicker countryCodePicker = CountryCodePicker.this;
                    if (countryCodePicker.L2) {
                        if (countryCodePicker.f37020b3 != null) {
                            String obj = CountryCodePicker.this.getEditText_registeredCarrierNumber().getText().toString();
                            if (obj.length() >= CountryCodePicker.this.f37020b3.f37100b) {
                                String M0 = PhoneNumberUtil.M0(obj);
                                if (M0.length() >= CountryCodePicker.this.f37020b3.f37100b) {
                                    String substring = M0.substring(0, CountryCodePicker.this.f37020b3.f37100b);
                                    if (!substring.equals(CountryCodePicker.this.M2)) {
                                        com.hbb20.c cVar = CountryCodePicker.this.f37020b3;
                                        CountryCodePicker countryCodePicker2 = CountryCodePicker.this;
                                        com.hbb20.b d4 = cVar.d(countryCodePicker2.f37025e, countryCodePicker2.getLanguageToApply(), substring);
                                        if (!d4.equals(selectedCountry)) {
                                            CountryCodePicker countryCodePicker3 = CountryCodePicker.this;
                                            countryCodePicker3.O2 = true;
                                            countryCodePicker3.N2 = Selection.getSelectionEnd(s9);
                                            CountryCodePicker.this.setSelectedCountry(d4);
                                        }
                                        CountryCodePicker.this.M2 = substring;
                                    }
                                }
                            }
                        }
                        this.f37065a = s9.toString();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s9) {
            if (CountryCodePicker.this.Q2 != null) {
                boolean D = CountryCodePicker.this.D();
                CountryCodePicker countryCodePicker = CountryCodePicker.this;
                if (D != countryCodePicker.J2) {
                    countryCodePicker.J2 = D;
                    countryCodePicker.Q2.a(CountryCodePicker.this.J2);
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s9, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s9, int start, int before, int count) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f37068a;

        static {
            int[] iArr = new int[PhoneNumberType.values().length];
            f37068a = iArr;
            try {
                iArr[PhoneNumberType.MOBILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37068a[PhoneNumberType.FIXED_LINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37068a[PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37068a[PhoneNumberType.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37068a[PhoneNumberType.PREMIUM_RATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f37068a[PhoneNumberType.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f37068a[PhoneNumberType.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f37068a[PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f37068a[PhoneNumberType.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f37068a[PhoneNumberType.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f37068a[PhoneNumberType.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f37068a[PhoneNumberType.UNKNOWN.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        String a(Language language, String defaultNoResultACK);

        String b(Language language, String defaultSearchHintText);

        String c(Language language, String defaultTitle);
    }

    /* loaded from: classes2.dex */
    public interface f {
        void a(DialogInterface dialogInterface);

        void b(Dialog dialog);

        void c(DialogInterface dialogInterface);
    }

    /* loaded from: classes2.dex */
    public interface g {
        void a();
    }

    /* loaded from: classes2.dex */
    public interface h {
        void a();
    }

    /* loaded from: classes2.dex */
    public interface i {
        void a(boolean isValidNumber);
    }

    public CountryCodePicker(Context context) {
        super(context);
        this.f37015a = new com.hbb20.g();
        this.f37017b = "CCP_PREF_FILE";
        this.f37044t = "";
        this.f37046v = AutoDetectionPref.SIM_NETWORK_LOCALE;
        this.f37048x = true;
        this.f37051y = true;
        this.f37054z = true;
        this.A = true;
        this.B = false;
        this.C = true;
        this.D = true;
        this.E = true;
        this.F = true;
        this.G = true;
        this.H = false;
        this.I = false;
        this.J = true;
        this.K = true;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = true;
        this.P = PhoneNumberType.MOBILE;
        this.Q = "ccp_last_selection";
        this.R = f37007e3;
        this.S = f37007e3;
        this.f37018b1 = f37013k3;
        this.f37039p1 = 0;
        Language language = Language.ENGLISH;
        this.V1 = language;
        this.f37019b2 = language;
        this.f37029g2 = true;
        this.f37040p2 = true;
        this.f37050x2 = false;
        this.f37053y2 = false;
        this.E2 = true;
        this.F2 = false;
        this.G2 = "notSet";
        this.M2 = null;
        this.N2 = 0;
        this.O2 = false;
        this.U2 = 0;
        this.Z2 = 0;
        this.f37024d3 = new a();
        this.f37025e = context;
        o(null);
    }

    private void G() {
        String string = this.f37025e.getSharedPreferences(this.f37017b, 0).getString(this.Q, null);
        if (string != null) {
            setCountryForNameCode(string);
        }
    }

    private void J() {
        if (this.G) {
            this.f37033k.setVisibility(0);
        } else {
            this.f37033k.setVisibility(8);
        }
    }

    private void L() {
        if (this.A) {
            if (this.M) {
                this.f37036n.setVisibility(8);
                return;
            } else {
                this.f37036n.setVisibility(0);
                return;
            }
        }
        this.f37036n.setVisibility(8);
    }

    private void X() {
        this.f37020b3 = com.hbb20.c.e(getSelectedCountryCodeAsInt());
    }

    private void Y() {
        EditText editText = this.f37031i;
        if (editText == null || this.f37037o == null) {
            if (editText == null) {
                String str = f37008f3;
                Log.v(str, "updateFormattingTextWatcher: EditText not registered " + this.Q);
                return;
            }
            String str2 = f37008f3;
            Log.v(str2, "updateFormattingTextWatcher: selected country is null " + this.Q);
            return;
        }
        String M0 = PhoneNumberUtil.M0(getEditText_registeredCarrierNumber().getText().toString());
        com.hbb20.h hVar = this.I2;
        if (hVar != null) {
            this.f37031i.removeTextChangedListener(hVar);
        }
        TextWatcher textWatcher = this.K2;
        if (textWatcher != null) {
            this.f37031i.removeTextChangedListener(textWatcher);
        }
        if (this.E2) {
            com.hbb20.h hVar2 = new com.hbb20.h(this.f37025e, getSelectedCountryNameCode(), getSelectedCountryCodeAsInt(), this.O);
            this.I2 = hVar2;
            this.f37031i.addTextChangedListener(hVar2);
        }
        if (this.J) {
            TextWatcher countryDetectorTextWatcher = getCountryDetectorTextWatcher();
            this.K2 = countryDetectorTextWatcher;
            this.f37031i.addTextChangedListener(countryDetectorTextWatcher);
        }
        this.f37031i.setText("");
        this.f37031i.setText(M0);
        EditText editText2 = this.f37031i;
        editText2.setSelection(editText2.getText().length());
    }

    private void Z() {
        Phonenumber.PhoneNumber L;
        if (this.f37031i == null || !this.F2) {
            return;
        }
        String str = "";
        if (getPhoneUtil().L(getSelectedCountryNameCode(), getSelectedHintNumberType()) != null) {
            str = PhoneNumberUtils.formatNumber(getSelectedCountryCodeWithPlus() + (L.getNationalNumber() + ""), getSelectedCountryNameCode());
            if (str != null) {
                str = str.substring(getSelectedCountryCodeWithPlus().length()).trim();
            }
        }
        if (str == null) {
            str = this.f37044t;
        }
        this.f37031i.setHint(str);
    }

    private void a0() {
        if (isInEditMode()) {
            Language language = this.V1;
            if (language != null) {
                this.f37019b2 = language;
            } else {
                this.f37019b2 = Language.ENGLISH;
            }
        } else if (r()) {
            Language cCPLanguageFromLocale = getCCPLanguageFromLocale();
            if (cCPLanguageFromLocale == null) {
                if (getCustomDefaultLanguage() != null) {
                    this.f37019b2 = getCustomDefaultLanguage();
                    return;
                } else {
                    this.f37019b2 = Language.ENGLISH;
                    return;
                }
            }
            this.f37019b2 = cCPLanguageFromLocale;
        } else if (getCustomDefaultLanguage() != null) {
            this.f37019b2 = this.V1;
        } else {
            this.f37019b2 = Language.ENGLISH;
        }
    }

    private void b0() {
        try {
            this.f37031i.removeTextChangedListener(this.H2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        boolean D = D();
        this.J2 = D;
        i iVar = this.Q2;
        if (iVar != null) {
            iVar.a(D);
        }
        c cVar = new c();
        this.H2 = cVar;
        this.f37031i.addTextChangedListener(cVar);
    }

    private void e(AttributeSet attrs) {
        boolean z9;
        int color;
        int color2;
        TypedArray obtainStyledAttributes = this.f37025e.getTheme().obtainStyledAttributes(attrs, i.o.i4, 0, 0);
        try {
            try {
                this.f37048x = obtainStyledAttributes.getBoolean(i.o.Z4, true);
                this.E2 = obtainStyledAttributes.getBoolean(i.o.F4, true);
                boolean z10 = obtainStyledAttributes.getBoolean(i.o.f38061a5, true);
                this.f37051y = z10;
                this.f37054z = obtainStyledAttributes.getBoolean(i.o.f38296x4, z10);
                this.K = obtainStyledAttributes.getBoolean(i.o.f38286w4, true);
                this.D = obtainStyledAttributes.getBoolean(i.o.f38306y4, true);
                this.M = obtainStyledAttributes.getBoolean(i.o.f38103e5, false);
                this.N = obtainStyledAttributes.getBoolean(i.o.f38093d5, false);
                this.E = obtainStyledAttributes.getBoolean(i.o.f38276v4, true);
                this.L = obtainStyledAttributes.getBoolean(i.o.f38226q4, false);
                this.B = obtainStyledAttributes.getBoolean(i.o.Y4, false);
                this.C = obtainStyledAttributes.getBoolean(i.o.f38266u4, true);
                this.f37039p1 = obtainStyledAttributes.getColor(i.o.f38196n4, 0);
                this.U2 = obtainStyledAttributes.getColor(i.o.f38216p4, 0);
                this.Z2 = obtainStyledAttributes.getResourceId(i.o.f38206o4, 0);
                this.f37050x2 = obtainStyledAttributes.getBoolean(i.o.E4, false);
                this.J = obtainStyledAttributes.getBoolean(i.o.A4, true);
                this.I = obtainStyledAttributes.getBoolean(i.o.U4, false);
                this.F2 = obtainStyledAttributes.getBoolean(i.o.Q4, false);
                this.O = obtainStyledAttributes.getBoolean(i.o.S4, true);
                int dimension = (int) obtainStyledAttributes.getDimension(i.o.T4, this.f37025e.getResources().getDimension(i.f.G0));
                this.f37045u = dimension;
                this.f37041q.setPadding(dimension, dimension, dimension, dimension);
                this.P = PhoneNumberType.values()[obtainStyledAttributes.getInt(i.o.R4, 0)];
                String string = obtainStyledAttributes.getString(i.o.V4);
                this.Q = string;
                if (string == null) {
                    this.Q = "CCP_last_selection";
                }
                this.f37046v = AutoDetectionPref.getPrefForValue(String.valueOf(obtainStyledAttributes.getInt(i.o.I4, 123)));
                this.f37053y2 = obtainStyledAttributes.getBoolean(i.o.D4, false);
                this.G = obtainStyledAttributes.getBoolean(i.o.W4, true);
                J();
                this.H = obtainStyledAttributes.getBoolean(i.o.f38256t4, false);
                T(obtainStyledAttributes.getBoolean(i.o.X4, true));
                setDialogKeyboardAutoPopup(obtainStyledAttributes.getBoolean(i.o.f38236r4, true));
                this.V1 = n(obtainStyledAttributes.getInt(i.o.L4, Language.ENGLISH.ordinal()));
                a0();
                this.f37052y1 = obtainStyledAttributes.getString(i.o.K4);
                this.T1 = obtainStyledAttributes.getString(i.o.O4);
                if (!isInEditMode()) {
                    K();
                }
                this.f37028g1 = obtainStyledAttributes.getString(i.o.J4);
                if (!isInEditMode()) {
                    M();
                }
                int i4 = i.o.f38072b5;
                if (obtainStyledAttributes.hasValue(i4)) {
                    this.f37018b1 = obtainStyledAttributes.getInt(i4, f37013k3);
                }
                f(this.f37018b1);
                String string2 = obtainStyledAttributes.getString(i.o.M4);
                this.f37023d = string2;
                if (string2 == null || string2.length() == 0) {
                    z9 = false;
                } else {
                    if (!isInEditMode()) {
                        if (com.hbb20.b.h(getContext(), getLanguageToApply(), this.f37023d) != null) {
                            setDefaultCountry(com.hbb20.b.h(getContext(), getLanguageToApply(), this.f37023d));
                            setSelectedCountry(this.f37038p);
                            z9 = true;
                        }
                        z9 = false;
                    } else {
                        if (com.hbb20.b.g(this.f37023d) != null) {
                            setDefaultCountry(com.hbb20.b.g(this.f37023d));
                            setSelectedCountry(this.f37038p);
                            z9 = true;
                        }
                        z9 = false;
                    }
                    if (!z9) {
                        setDefaultCountry(com.hbb20.b.g("IN"));
                        setSelectedCountry(this.f37038p);
                        z9 = true;
                    }
                }
                int integer = obtainStyledAttributes.getInteger(i.o.N4, -1);
                if (!z9 && integer != -1) {
                    if (!isInEditMode()) {
                        if (integer != -1 && com.hbb20.b.c(getContext(), getLanguageToApply(), this.W, integer) == null) {
                            integer = f37010h3;
                        }
                        setDefaultCountryUsingPhoneCode(integer);
                        setSelectedCountry(this.f37038p);
                    } else {
                        com.hbb20.b e4 = com.hbb20.b.e(integer + "");
                        if (e4 == null) {
                            e4 = com.hbb20.b.e(f37010h3 + "");
                        }
                        setDefaultCountry(e4);
                        setSelectedCountry(e4);
                    }
                }
                if (getDefaultCountry() == null) {
                    setDefaultCountry(com.hbb20.b.g("IN"));
                    if (getSelectedCountry() == null) {
                        setSelectedCountry(this.f37038p);
                    }
                }
                if (q() && !isInEditMode()) {
                    setAutoDetectedCountry(true);
                }
                if (this.I && !isInEditMode()) {
                    G();
                }
                setArrowColor(obtainStyledAttributes.getColor(i.o.B4, f37007e3));
                if (isInEditMode()) {
                    color = obtainStyledAttributes.getColor(i.o.H4, f37007e3);
                } else {
                    color = obtainStyledAttributes.getColor(i.o.H4, this.f37025e.getResources().getColor(i.e.U));
                }
                if (color != f37007e3) {
                    setContentColor(color);
                }
                if (isInEditMode()) {
                    color2 = obtainStyledAttributes.getColor(i.o.P4, 0);
                } else {
                    color2 = obtainStyledAttributes.getColor(i.o.P4, this.f37025e.getResources().getColor(i.e.T));
                }
                if (color2 != 0) {
                    setFlagBorderColor(color2);
                }
                setDialogBackgroundColor(obtainStyledAttributes.getColor(i.o.f38175l4, 0));
                setDialogBackground(obtainStyledAttributes.getResourceId(i.o.f38164k4, 0));
                setDialogTextColor(obtainStyledAttributes.getColor(i.o.f38316z4, 0));
                setDialogSearchEditTextTintColor(obtainStyledAttributes.getColor(i.o.f38246s4, 0));
                setDialogCornerRaius(obtainStyledAttributes.getDimension(i.o.f38186m4, 0.0f));
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(i.o.f38083c5, 0);
                if (dimensionPixelSize > 0) {
                    this.f37030h.setTextSize(0, dimensionPixelSize);
                    setFlagSize(dimensionPixelSize);
                    setArrowSize(dimensionPixelSize);
                }
                int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(i.o.C4, 0);
                if (dimensionPixelSize2 > 0) {
                    setArrowSize(dimensionPixelSize2);
                }
                this.F = obtainStyledAttributes.getBoolean(i.o.j4, true);
                setCcpClickable(obtainStyledAttributes.getBoolean(i.o.G4, true));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void f(int enumIndex) {
        if (enumIndex == TextGravity.LEFT.f37063a) {
            this.f37030h.setGravity(3);
        } else if (enumIndex == TextGravity.CENTER.f37063a) {
            this.f37030h.setGravity(17);
        } else {
            this.f37030h.setGravity(5);
        }
    }

    private Language getCCPLanguageFromLocale() {
        Language[] values;
        Locale locale = this.f37025e.getResources().getConfiguration().locale;
        for (Language language : Language.values()) {
            if (language.getCode().equalsIgnoreCase(locale.getLanguage()) && (language.getCountry() == null || language.getCountry().equalsIgnoreCase(locale.getCountry()) || language.getScript() == null || language.getScript().equalsIgnoreCase(locale.getScript()))) {
                return language;
            }
        }
        return null;
    }

    private View.OnClickListener getCountryCodeHolderClickListener() {
        return this.f37024d3;
    }

    private TextWatcher getCountryDetectorTextWatcher() {
        if (this.f37031i != null && this.K2 == null) {
            this.K2 = new b();
        }
        return this.K2;
    }

    private com.hbb20.b getDefaultCountry() {
        return this.f37038p;
    }

    private Phonenumber.PhoneNumber getEnteredPhoneNumber() throws NumberParseException {
        EditText editText = this.f37031i;
        return getPhoneUtil().O0(editText != null ? PhoneNumberUtil.M0(editText.getText().toString()) : "", getSelectedCountryNameCode());
    }

    private View getHolderView() {
        return this.f37026f;
    }

    private PhoneNumberUtil getPhoneUtil() {
        if (this.f37047w == null) {
            this.f37047w = PhoneNumberUtil.h(this.f37025e);
        }
        return this.f37047w;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.hbb20.b getSelectedCountry() {
        if (this.f37037o == null) {
            setSelectedCountry(getDefaultCountry());
        }
        return this.f37037o;
    }

    private PhoneNumberUtil.PhoneNumberType getSelectedHintNumberType() {
        switch (d.f37068a[this.P.ordinal()]) {
            case 1:
                return PhoneNumberUtil.PhoneNumberType.MOBILE;
            case 2:
                return PhoneNumberUtil.PhoneNumberType.FIXED_LINE;
            case 3:
                return PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE;
            case 4:
                return PhoneNumberUtil.PhoneNumberType.TOLL_FREE;
            case 5:
                return PhoneNumberUtil.PhoneNumberType.PREMIUM_RATE;
            case 6:
                return PhoneNumberUtil.PhoneNumberType.SHARED_COST;
            case 7:
                return PhoneNumberUtil.PhoneNumberType.VOIP;
            case 8:
                return PhoneNumberUtil.PhoneNumberType.PERSONAL_NUMBER;
            case 9:
                return PhoneNumberUtil.PhoneNumberType.PAGER;
            case 10:
                return PhoneNumberUtil.PhoneNumberType.UAN;
            case 11:
                return PhoneNumberUtil.PhoneNumberType.VOICEMAIL;
            case 12:
                return PhoneNumberUtil.PhoneNumberType.UNKNOWN;
            default:
                return PhoneNumberUtil.PhoneNumberType.MOBILE;
        }
    }

    private LayoutInflater getmInflater() {
        return this.f37027g;
    }

    private String i(String fullNumber, com.hbb20.b CCPCountry) {
        int indexOf;
        return (CCPCountry == null || fullNumber == null || fullNumber.isEmpty() || (indexOf = fullNumber.indexOf(CCPCountry.x())) == -1) ? fullNumber : fullNumber.substring(indexOf + CCPCountry.x().length());
    }

    private Language n(int index) {
        if (index < Language.values().length) {
            return Language.values()[index];
        }
        return Language.ENGLISH;
    }

    private void o(AttributeSet attrs) {
        String str;
        this.f37027g = LayoutInflater.from(this.f37025e);
        if (attrs != null) {
            this.G2 = attrs.getAttributeValue(f37014l3, "layout_width");
        }
        removeAllViewsInLayout();
        if (attrs != null && (str = this.G2) != null && (str.equals("-1") || this.G2.equals("-1") || this.G2.equals("fill_parent") || this.G2.equals("match_parent"))) {
            this.f37026f = this.f37027g.inflate(i.k.F, (ViewGroup) this, true);
        } else {
            this.f37026f = this.f37027g.inflate(i.k.E, (ViewGroup) this, true);
        }
        this.f37030h = (TextView) this.f37026f.findViewById(i.h.f37753s3);
        this.f37032j = (RelativeLayout) this.f37026f.findViewById(i.h.A1);
        this.f37033k = (ImageView) this.f37026f.findViewById(i.h.S1);
        this.f37034l = (ImageView) this.f37026f.findViewById(i.h.T1);
        this.f37036n = (LinearLayout) this.f37026f.findViewById(i.h.f37672c2);
        this.f37035m = (LinearLayout) this.f37026f.findViewById(i.h.f37667b2);
        this.f37041q = (RelativeLayout) this.f37026f.findViewById(i.h.f37772w2);
        this.f37042r = this;
        if (attrs != null) {
            e(attrs);
        }
        this.f37041q.setOnClickListener(this.f37024d3);
    }

    private boolean p(com.hbb20.b CCPCountry, List<com.hbb20.b> CCPCountryList) {
        if (CCPCountry == null || CCPCountryList == null) {
            return false;
        }
        for (com.hbb20.b bVar : CCPCountryList) {
            if (bVar.v().equalsIgnoreCase(CCPCountry.v())) {
                return true;
            }
        }
        return false;
    }

    private void setCustomDefaultLanguage(Language customDefaultLanguage) {
        com.hbb20.b h4;
        this.V1 = customDefaultLanguage;
        a0();
        if (this.f37037o == null || (h4 = com.hbb20.b.h(this.f37025e, getLanguageToApply(), this.f37037o.v())) == null) {
            return;
        }
        setSelectedCountry(h4);
    }

    private void setDefaultCountry(com.hbb20.b defaultCCPCountry) {
        this.f37038p = defaultCCPCountry;
    }

    private void setHolder(RelativeLayout holder) {
        this.f37032j = holder;
    }

    private void setHolderView(View holderView) {
        this.f37026f = holderView;
    }

    private boolean w() {
        return this.O;
    }

    private boolean x(String nameCode) {
        for (com.hbb20.b bVar : com.hbb20.b.l(this.f37025e, this)) {
            if (bVar.f37093a.equalsIgnoreCase(nameCode)) {
                return true;
            }
        }
        return false;
    }

    private boolean y() {
        return this.E2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean A() {
        return this.H;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B() {
        return this.C;
    }

    boolean C() {
        return this.f37051y;
    }

    public boolean D() {
        if (getEditText_registeredCarrierNumber() != null && getEditText_registeredCarrierNumber().getText().length() != 0) {
            PhoneNumberUtil phoneUtil = getPhoneUtil();
            return getPhoneUtil().A0(phoneUtil.O0("+" + this.f37037o.x() + getEditText_registeredCarrierNumber().getText().toString(), this.f37037o.v()));
        }
        if (getEditText_registeredCarrierNumber() == null) {
            Toast.makeText(this.f37025e, "No editText for Carrier number found.", 0).show();
        }
        return false;
    }

    public void E() {
        F(null);
    }

    public void F(final String countryNameCode) {
        com.hbb20.f.f(this.f37042r, countryNameCode);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void H(com.hbb20.b CCPCountry) {
        CountryCodePicker countryCodePicker = this.f37042r;
        if (countryCodePicker.I) {
            countryCodePicker.W(CCPCountry.v());
        }
        setSelectedCountry(CCPCountry);
    }

    public void I(View.OnClickListener clickListener) {
        this.f37022c3 = clickListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K() {
        String str = this.f37052y1;
        if (str != null && str.length() != 0) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : this.f37052y1.split(",")) {
                com.hbb20.b h4 = com.hbb20.b.h(getContext(), getLanguageToApply(), str2);
                if (h4 != null && !p(h4, arrayList)) {
                    arrayList.add(h4);
                }
            }
            if (arrayList.size() == 0) {
                this.f37049x1 = null;
            } else {
                this.f37049x1 = arrayList;
            }
        } else {
            String str3 = this.T1;
            if (str3 != null && str3.length() != 0) {
                this.T1 = this.T1.toLowerCase();
                List<com.hbb20.b> s9 = com.hbb20.b.s(this.f37025e, getLanguageToApply());
                ArrayList arrayList2 = new ArrayList();
                for (com.hbb20.b bVar : s9) {
                    if (!this.T1.contains(bVar.v().toLowerCase())) {
                        arrayList2.add(bVar);
                    }
                }
                if (arrayList2.size() > 0) {
                    this.f37049x1 = arrayList2;
                } else {
                    this.f37049x1 = null;
                }
            } else {
                this.f37049x1 = null;
            }
        }
        List<com.hbb20.b> list = this.f37049x1;
        if (list != null) {
            for (com.hbb20.b bVar2 : list) {
                bVar2.B();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M() {
        String str = this.f37028g1;
        if (str != null && str.length() != 0) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : this.f37028g1.split(",")) {
                com.hbb20.b f10 = com.hbb20.b.f(getContext(), this.f37049x1, getLanguageToApply(), str2);
                if (f10 != null && !p(f10, arrayList)) {
                    arrayList.add(f10);
                }
            }
            if (arrayList.size() == 0) {
                this.W = null;
            } else {
                this.W = arrayList;
            }
        } else {
            this.W = null;
        }
        List<com.hbb20.b> list = this.W;
        if (list != null) {
            for (com.hbb20.b bVar : list) {
                bVar.B();
            }
        }
    }

    public void N(EditText editTextCarrierNumber) {
        setEditText_registeredCarrierNumber(editTextCarrierNumber);
    }

    public void O() {
        com.hbb20.b h4 = com.hbb20.b.h(getContext(), getLanguageToApply(), getDefaultCountryNameCode());
        this.f37038p = h4;
        setSelectedCountry(h4);
    }

    public void P(Typeface typeFace, int style) {
        try {
            this.U = typeFace;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void Q(Typeface typeFace, int style) {
        try {
            this.f37030h.setTypeface(typeFace, style);
            P(typeFace, style);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void R(boolean showArrow) {
        this.G = showArrow;
        J();
    }

    public void S(boolean showCloseIcon) {
        this.H = showCloseIcon;
    }

    public void T(boolean showFlag) {
        this.A = showFlag;
        L();
        if (isInEditMode()) {
            return;
        }
        setSelectedCountry(this.f37037o);
    }

    public void U(boolean showFullName) {
        this.B = showFullName;
        setSelectedCountry(this.f37037o);
    }

    public void V(boolean showNameCode) {
        this.f37048x = showNameCode;
        setSelectedCountry(this.f37037o);
    }

    void W(String selectedCountryNameCode) {
        SharedPreferences.Editor edit = this.f37025e.getSharedPreferences(this.f37017b, 0).edit();
        edit.putString(this.Q, selectedCountryNameCode);
        edit.apply();
    }

    public void c0(boolean useFlagEmoji) {
        this.M = useFlagEmoji;
        L();
        setSelectedCountry(this.f37037o);
    }

    public void g(Language language) {
        setCustomDefaultLanguage(language);
    }

    public boolean getCcpDialogShowFlag() {
        return this.E;
    }

    public boolean getCcpDialogShowNameCode() {
        return this.K;
    }

    public boolean getCcpDialogShowTitle() {
        return this.D;
    }

    public int getContentColor() {
        return this.R;
    }

    TextGravity getCurrentTextGravity() {
        return this.f37043s;
    }

    Language getCustomDefaultLanguage() {
        return this.V1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.hbb20.b> getCustomMasterCountriesList() {
        return this.f37049x1;
    }

    String getCustomMasterCountriesParam() {
        return this.f37052y1;
    }

    public String getDefaultCountryCode() {
        return this.f37038p.f37094b;
    }

    public int getDefaultCountryCodeAsInt() {
        try {
            return Integer.parseInt(getDefaultCountryCode());
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public String getDefaultCountryCodeWithPlus() {
        return "+" + getDefaultCountryCode();
    }

    public String getDefaultCountryName() {
        com.hbb20.b defaultCountry = getDefaultCountry();
        return defaultCountry == null ? "" : defaultCountry.f37095c;
    }

    public String getDefaultCountryNameCode() {
        com.hbb20.b defaultCountry = getDefaultCountry();
        return defaultCountry == null ? "" : defaultCountry.f37093a.toUpperCase();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDialogBackgroundColor() {
        return this.W2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDialogBackgroundResId() {
        return this.V2;
    }

    public float getDialogCornerRadius() {
        return this.f37016a3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f getDialogEventsListener() {
        return this.S2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDialogSearchEditTextTintColor() {
        return this.Y2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDialogTextColor() {
        return this.X2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getDialogTitle() {
        String m9 = com.hbb20.b.m(this.f37025e, getLanguageToApply());
        e eVar = this.T2;
        return eVar != null ? eVar.c(getLanguageToApply(), m9) : m9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Typeface getDialogTypeFace() {
        return this.U;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDialogTypeFaceStyle() {
        return this.V;
    }

    EditText getEditText_registeredCarrierNumber() {
        return this.f37031i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFastScrollerBubbleColor() {
        return this.f37039p1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFastScrollerBubbleTextAppearance() {
        return this.Z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFastScrollerHandleColor() {
        return this.U2;
    }

    public String getFormattedFullNumber() {
        try {
            Phonenumber.PhoneNumber enteredPhoneNumber = getEnteredPhoneNumber();
            return "+" + getPhoneUtil().q(enteredPhoneNumber, PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL).substring(1);
        } catch (NumberParseException unused) {
            Log.e(f37008f3, "getFullNumber: Could not parse number");
            return getFullNumberWithPlus();
        }
    }

    public String getFullNumber() {
        try {
            return getPhoneUtil().q(getEnteredPhoneNumber(), PhoneNumberUtil.PhoneNumberFormat.E164).substring(1);
        } catch (NumberParseException unused) {
            Log.e(f37008f3, "getFullNumber: Could not parse number");
            return getSelectedCountryCode() + PhoneNumberUtil.M0(this.f37031i.getText().toString());
        }
    }

    public String getFullNumberWithPlus() {
        return "+" + getFullNumber();
    }

    public RelativeLayout getHolder() {
        return this.f37032j;
    }

    public ImageView getImageViewFlag() {
        return this.f37034l;
    }

    public Language getLanguageToApply() {
        if (this.f37019b2 == null) {
            a0();
        }
        return this.f37019b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNoResultACK() {
        String w9 = com.hbb20.b.w(this.f37025e, getLanguageToApply());
        e eVar = this.T2;
        return eVar != null ? eVar.a(getLanguageToApply(), w9) : w9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getSearchHintText() {
        String y9 = com.hbb20.b.y(this.f37025e, getLanguageToApply());
        e eVar = this.T2;
        return eVar != null ? eVar.b(getLanguageToApply(), y9) : y9;
    }

    public String getSelectedCountryCode() {
        return getSelectedCountry().f37094b;
    }

    public int getSelectedCountryCodeAsInt() {
        try {
            return Integer.parseInt(getSelectedCountryCode());
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public String getSelectedCountryCodeWithPlus() {
        return "+" + getSelectedCountryCode();
    }

    public String getSelectedCountryEnglishName() {
        return getSelectedCountry().n();
    }

    @DrawableRes
    public int getSelectedCountryFlagResourceId() {
        return getSelectedCountry().f37097e;
    }

    public String getSelectedCountryName() {
        return getSelectedCountry().f37095c;
    }

    public String getSelectedCountryNameCode() {
        return getSelectedCountry().f37093a.toUpperCase();
    }

    public TextView getTextView_selectedCountry() {
        return this.f37030h;
    }

    public void h() {
        EditText editText = this.f37031i;
        if (editText != null) {
            try {
                editText.removeTextChangedListener(this.H2);
            } catch (Exception unused) {
            }
            try {
                this.f37031i.removeTextChangedListener(this.I2);
            } catch (Exception unused2) {
            }
            this.f37031i.setHint("");
            this.f37031i = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        O();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean j(boolean r5) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = r4.f37025e     // Catch: java.lang.Exception -> L37
            android.content.res.Resources r1 = r1.getResources()     // Catch: java.lang.Exception -> L37
            android.content.res.Configuration r1 = r1.getConfiguration()     // Catch: java.lang.Exception -> L37
            java.util.Locale r1 = r1.locale     // Catch: java.lang.Exception -> L37
            java.lang.String r1 = r1.getCountry()     // Catch: java.lang.Exception -> L37
            if (r1 == 0) goto L31
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Exception -> L37
            if (r2 != 0) goto L31
            boolean r2 = r4.x(r1)     // Catch: java.lang.Exception -> L37
            if (r2 != 0) goto L20
            goto L31
        L20:
            android.content.Context r2 = r4.getContext()     // Catch: java.lang.Exception -> L37
            com.hbb20.CountryCodePicker$Language r3 = r4.getLanguageToApply()     // Catch: java.lang.Exception -> L37
            com.hbb20.b r1 = com.hbb20.b.h(r2, r3, r1)     // Catch: java.lang.Exception -> L37
            r4.setSelectedCountry(r1)     // Catch: java.lang.Exception -> L37
            r5 = 1
            return r5
        L31:
            if (r5 == 0) goto L36
            r4.O()     // Catch: java.lang.Exception -> L37
        L36:
            return r0
        L37:
            r1 = move-exception
            r1.printStackTrace()
            if (r5 == 0) goto L40
            r4.O()
        L40:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.CountryCodePicker.j(boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        O();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean k(boolean r5) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = r4.f37025e     // Catch: java.lang.Exception -> L35
            java.lang.String r2 = "phone"
            java.lang.Object r1 = r1.getSystemService(r2)     // Catch: java.lang.Exception -> L35
            android.telephony.TelephonyManager r1 = (android.telephony.TelephonyManager) r1     // Catch: java.lang.Exception -> L35
            java.lang.String r1 = r1.getNetworkCountryIso()     // Catch: java.lang.Exception -> L35
            if (r1 == 0) goto L2f
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Exception -> L35
            if (r2 != 0) goto L2f
            boolean r2 = r4.x(r1)     // Catch: java.lang.Exception -> L35
            if (r2 != 0) goto L1e
            goto L2f
        L1e:
            android.content.Context r2 = r4.getContext()     // Catch: java.lang.Exception -> L35
            com.hbb20.CountryCodePicker$Language r3 = r4.getLanguageToApply()     // Catch: java.lang.Exception -> L35
            com.hbb20.b r1 = com.hbb20.b.h(r2, r3, r1)     // Catch: java.lang.Exception -> L35
            r4.setSelectedCountry(r1)     // Catch: java.lang.Exception -> L35
            r5 = 1
            return r5
        L2f:
            if (r5 == 0) goto L34
            r4.O()     // Catch: java.lang.Exception -> L35
        L34:
            return r0
        L35:
            r1 = move-exception
            r1.printStackTrace()
            if (r5 == 0) goto L3e
            r4.O()
        L3e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.CountryCodePicker.k(boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        O();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean l(boolean r5) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = r4.f37025e     // Catch: java.lang.Exception -> L35
            java.lang.String r2 = "phone"
            java.lang.Object r1 = r1.getSystemService(r2)     // Catch: java.lang.Exception -> L35
            android.telephony.TelephonyManager r1 = (android.telephony.TelephonyManager) r1     // Catch: java.lang.Exception -> L35
            java.lang.String r1 = r1.getSimCountryIso()     // Catch: java.lang.Exception -> L35
            if (r1 == 0) goto L2f
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Exception -> L35
            if (r2 != 0) goto L2f
            boolean r2 = r4.x(r1)     // Catch: java.lang.Exception -> L35
            if (r2 != 0) goto L1e
            goto L2f
        L1e:
            android.content.Context r2 = r4.getContext()     // Catch: java.lang.Exception -> L35
            com.hbb20.CountryCodePicker$Language r3 = r4.getLanguageToApply()     // Catch: java.lang.Exception -> L35
            com.hbb20.b r1 = com.hbb20.b.h(r2, r3, r1)     // Catch: java.lang.Exception -> L35
            r4.setSelectedCountry(r1)     // Catch: java.lang.Exception -> L35
            r5 = 1
            return r5
        L2f:
            if (r5 == 0) goto L34
            r4.O()     // Catch: java.lang.Exception -> L35
        L34:
            return r0
        L35:
            r1 = move-exception
            r1.printStackTrace()
            if (r5 == 0) goto L3e
            r4.O()
        L3e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.CountryCodePicker.l(boolean):boolean");
    }

    public void m(boolean initialScrollToSelection) {
        this.L = this.L;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        com.hbb20.f.b();
        super.onDetachedFromWindow();
    }

    boolean q() {
        return this.f37053y2;
    }

    boolean r() {
        return this.f37050x2;
    }

    boolean s() {
        return this.f37040p2;
    }

    public void setArrowColor(int arrowColor) {
        this.S = arrowColor;
        if (arrowColor == f37007e3) {
            int i4 = this.R;
            if (i4 != f37007e3) {
                this.f37033k.setColorFilter(i4, PorterDuff.Mode.SRC_IN);
                return;
            }
            return;
        }
        this.f37033k.setColorFilter(arrowColor, PorterDuff.Mode.SRC_IN);
    }

    public void setArrowSize(int arrowSize) {
        if (arrowSize > 0) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f37033k.getLayoutParams();
            layoutParams.width = arrowSize;
            layoutParams.height = arrowSize;
            this.f37033k.setLayoutParams(layoutParams);
        }
    }

    public void setAutoDetectedCountry(boolean loadDefaultWhenFails) {
        boolean z9 = false;
        for (int i4 = 0; i4 < this.f37046v.f37056a.length(); i4++) {
            try {
                switch (this.f37046v.f37056a.charAt(i4)) {
                    case '1':
                        z9 = l(false);
                        break;
                    case '2':
                        z9 = k(false);
                        break;
                    case '3':
                        z9 = j(false);
                        break;
                }
                if (z9) {
                    if (z9 && loadDefaultWhenFails) {
                        O();
                        return;
                    }
                }
                g gVar = this.R2;
                if (gVar != null) {
                    gVar.a();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                String str = f37008f3;
                Log.w(str, "setAutoDetectCountry: Exception" + e4.getMessage());
                if (loadDefaultWhenFails) {
                    O();
                    return;
                }
                return;
            }
        }
        if (z9) {
        }
    }

    public void setAutoDetectionFailureListener(g failureListener) {
        this.R2 = failureListener;
    }

    public void setCcpClickable(boolean ccpClickable) {
        this.f37040p2 = ccpClickable;
        if (!ccpClickable) {
            this.f37041q.setOnClickListener(null);
            this.f37041q.setClickable(false);
            this.f37041q.setEnabled(false);
            return;
        }
        this.f37041q.setOnClickListener(this.f37024d3);
        this.f37041q.setClickable(true);
        this.f37041q.setEnabled(true);
    }

    public void setCcpDialogShowFlag(boolean ccpDialogShowFlag) {
        this.E = ccpDialogShowFlag;
    }

    public void setCcpDialogShowNameCode(boolean ccpDialogShowNameCode) {
        this.K = ccpDialogShowNameCode;
    }

    public void setCcpDialogShowPhoneCode(boolean ccpDialogShowPhoneCode) {
        this.f37054z = ccpDialogShowPhoneCode;
    }

    public void setCcpDialogShowTitle(boolean ccpDialogShowTitle) {
        this.D = ccpDialogShowTitle;
    }

    public void setContentColor(int contentColor) {
        this.R = contentColor;
        this.f37030h.setTextColor(contentColor);
        if (this.S == f37007e3) {
            this.f37033k.setColorFilter(this.R, PorterDuff.Mode.SRC_IN);
        }
    }

    public void setCountryAutoDetectionPref(AutoDetectionPref selectedAutoDetectionPref) {
        this.f37046v = selectedAutoDetectionPref;
    }

    public void setCountryForNameCode(String countryNameCode) {
        com.hbb20.b h4 = com.hbb20.b.h(getContext(), getLanguageToApply(), countryNameCode);
        if (h4 == null) {
            if (this.f37038p == null) {
                this.f37038p = com.hbb20.b.c(getContext(), getLanguageToApply(), this.W, this.f37021c);
            }
            setSelectedCountry(this.f37038p);
            return;
        }
        setSelectedCountry(h4);
    }

    public void setCountryForPhoneCode(int countryCode) {
        com.hbb20.b c10 = com.hbb20.b.c(getContext(), getLanguageToApply(), this.W, countryCode);
        if (c10 == null) {
            if (this.f37038p == null) {
                this.f37038p = com.hbb20.b.c(getContext(), getLanguageToApply(), this.W, this.f37021c);
            }
            setSelectedCountry(this.f37038p);
            return;
        }
        setSelectedCountry(c10);
    }

    public void setCountryPreference(String countryPreference) {
        this.f37028g1 = countryPreference;
    }

    public void setCurrentTextGravity(TextGravity textGravity) {
        this.f37043s = textGravity;
        f(textGravity.f37063a);
    }

    public void setCustomDialogTextProvider(e customDialogTextProvider) {
        this.T2 = customDialogTextProvider;
    }

    public void setCustomMasterCountries(String customMasterCountriesParam) {
        this.f37052y1 = customMasterCountriesParam;
    }

    void setCustomMasterCountriesList(List<com.hbb20.b> customMasterCountriesList) {
        this.f37049x1 = customMasterCountriesList;
    }

    public void setDefaultCountryUsingNameCode(String defaultCountryNameCode) {
        com.hbb20.b h4 = com.hbb20.b.h(getContext(), getLanguageToApply(), defaultCountryNameCode);
        if (h4 == null) {
            return;
        }
        this.f37023d = h4.v();
        setDefaultCountry(h4);
    }

    @Deprecated
    public void setDefaultCountryUsingPhoneCode(int defaultCountryCode) {
        com.hbb20.b c10 = com.hbb20.b.c(getContext(), getLanguageToApply(), this.W, defaultCountryCode);
        if (c10 == null) {
            return;
        }
        this.f37021c = defaultCountryCode;
        setDefaultCountry(c10);
    }

    public void setDetectCountryWithAreaCode(boolean detectCountryWithAreaCode) {
        this.J = detectCountryWithAreaCode;
        Y();
    }

    public void setDialogBackground(@IdRes int dialogBackgroundResId) {
        this.V2 = dialogBackgroundResId;
    }

    public void setDialogBackgroundColor(int dialogBackgroundColor) {
        this.W2 = dialogBackgroundColor;
    }

    public void setDialogCornerRaius(float dialogCornerRadius) {
        this.f37016a3 = dialogCornerRadius;
    }

    public void setDialogEventsListener(f dialogEventsListener) {
        this.S2 = dialogEventsListener;
    }

    public void setDialogKeyboardAutoPopup(boolean dialogKeyboardAutoPopup) {
        this.f37029g2 = dialogKeyboardAutoPopup;
    }

    public void setDialogSearchEditTextTintColor(int dialogSearchEditTextTintColor) {
        this.Y2 = dialogSearchEditTextTintColor;
    }

    public void setDialogTextColor(int dialogTextColor) {
        this.X2 = dialogTextColor;
    }

    public void setDialogTypeFace(Typeface typeFace) {
        try {
            this.U = typeFace;
            this.V = f37007e3;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void setEditText_registeredCarrierNumber(EditText editText_registeredCarrierNumber) {
        this.f37031i = editText_registeredCarrierNumber;
        if (editText_registeredCarrierNumber.getHint() != null) {
            this.f37044t = this.f37031i.getHint().toString();
        }
        b0();
        Y();
        Z();
    }

    public void setExcludedCountries(String excludedCountries) {
        this.T1 = excludedCountries;
        K();
    }

    public void setFastScrollerBubbleColor(int fastScrollerBubbleColor) {
        this.f37039p1 = fastScrollerBubbleColor;
    }

    public void setFastScrollerBubbleTextAppearance(int fastScrollerBubbleTextAppearance) {
        this.Z2 = fastScrollerBubbleTextAppearance;
    }

    public void setFastScrollerHandleColor(int fastScrollerHandleColor) {
        this.U2 = fastScrollerHandleColor;
    }

    public void setFlagBorderColor(int borderFlagColor) {
        this.T = borderFlagColor;
        this.f37035m.setBackgroundColor(borderFlagColor);
    }

    public void setFlagSize(int flagSize) {
        this.f37034l.getLayoutParams().height = flagSize;
        this.f37034l.requestLayout();
    }

    public void setFullNumber(String fullNumber) {
        com.hbb20.b k10 = com.hbb20.b.k(getContext(), getLanguageToApply(), this.W, fullNumber);
        if (k10 == null) {
            k10 = getDefaultCountry();
        }
        setSelectedCountry(k10);
        String i4 = i(fullNumber, k10);
        if (getEditText_registeredCarrierNumber() != null) {
            getEditText_registeredCarrierNumber().setText(i4);
            Y();
            return;
        }
        Log.w(f37008f3, "EditText for carrier number is not registered. Register it using registerCarrierNumberEditText() before getFullNumber() or setFullNumber().");
    }

    public void setHintExampleNumberEnabled(boolean hintExampleNumberEnabled) {
        this.F2 = hintExampleNumberEnabled;
        Z();
    }

    public void setHintExampleNumberType(PhoneNumberType hintExampleNumberType) {
        this.P = hintExampleNumberType;
        Z();
    }

    public void setImageViewFlag(ImageView imageViewFlag) {
        this.f37034l = imageViewFlag;
    }

    public void setInternationalFormattingOnly(boolean internationalFormattingOnly) {
        this.O = internationalFormattingOnly;
        if (this.f37031i != null) {
            Y();
        }
    }

    void setLanguageToApply(Language languageToApply) {
        this.f37019b2 = languageToApply;
    }

    public void setNumberAutoFormattingEnabled(boolean numberAutoFormattingEnabled) {
        this.E2 = numberAutoFormattingEnabled;
        if (this.f37031i != null) {
            Y();
        }
    }

    public void setOnCountryChangeListener(h onCountryChangeListener) {
        this.P2 = onCountryChangeListener;
    }

    public void setPhoneNumberValidityChangeListener(i phoneNumberValidityChangeListener) {
        this.Q2 = phoneNumberValidityChangeListener;
        if (this.f37031i == null || phoneNumberValidityChangeListener == null) {
            return;
        }
        boolean D = D();
        this.J2 = D;
        phoneNumberValidityChangeListener.a(D);
    }

    public void setSearchAllowed(boolean searchAllowed) {
        this.F = searchAllowed;
    }

    void setSelectedCountry(com.hbb20.b selectedCCPCountry) {
        com.hbb20.d dVar = this.f37015a;
        if (dVar != null && dVar.a(selectedCCPCountry) != null) {
            this.f37030h.setContentDescription(this.f37015a.a(selectedCCPCountry));
        }
        this.L2 = false;
        String str = "";
        this.M2 = "";
        if (selectedCCPCountry == null && (selectedCCPCountry = com.hbb20.b.c(getContext(), getLanguageToApply(), this.W, this.f37021c)) == null) {
            return;
        }
        this.f37037o = selectedCCPCountry;
        if (this.A && this.M) {
            if (isInEditMode()) {
                if (this.N) {
                    str = "🏁\u200b ";
                } else {
                    str = "" + com.hbb20.b.o(selectedCCPCountry) + "\u200b ";
                }
            } else {
                str = "" + com.hbb20.b.o(selectedCCPCountry) + "  ";
            }
        }
        if (this.B) {
            str = str + selectedCCPCountry.getName();
        }
        if (this.f37048x) {
            if (this.B) {
                str = str + " (" + selectedCCPCountry.v().toUpperCase() + ")";
            } else {
                str = str + " " + selectedCCPCountry.v().toUpperCase();
            }
        }
        if (this.f37051y) {
            if (str.length() > 0) {
                str = str + "  ";
            }
            str = str + "+" + selectedCCPCountry.x();
        }
        this.f37030h.setText(str);
        if (!this.A && str.length() == 0) {
            this.f37030h.setText(str + "+" + selectedCCPCountry.x());
        }
        this.f37034l.setImageResource(selectedCCPCountry.p());
        h hVar = this.P2;
        if (hVar != null) {
            hVar.a();
        }
        Y();
        Z();
        if (this.f37031i != null && this.Q2 != null) {
            boolean D = D();
            this.J2 = D;
            this.Q2.a(D);
        }
        this.L2 = true;
        if (this.O2) {
            try {
                this.f37031i.setSelection(this.N2);
                this.O2 = false;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        X();
    }

    public void setShowFastScroller(boolean showFastScroller) {
        this.C = showFastScroller;
    }

    public void setShowPhoneCode(boolean showPhoneCode) {
        this.f37051y = showPhoneCode;
        setSelectedCountry(this.f37037o);
    }

    public void setTalkBackTextProvider(com.hbb20.d talkBackTextProvider) {
        this.f37015a = talkBackTextProvider;
        setSelectedCountry(this.f37037o);
    }

    public void setTextSize(int textSize) {
        if (textSize > 0) {
            this.f37030h.setTextSize(0, textSize);
            setArrowSize(textSize);
            setFlagSize(textSize);
        }
    }

    public void setTextView_selectedCountry(TextView textView_selectedCountry) {
        this.f37030h = textView_selectedCountry;
    }

    public void setTypeFace(Typeface typeFace) {
        try {
            this.f37030h.setTypeface(typeFace);
            setDialogTypeFace(typeFace);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t() {
        return this.f37054z;
    }

    public boolean u() {
        return this.L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean v() {
        return this.f37029g2;
    }

    public boolean z() {
        return this.F;
    }

    /* loaded from: classes2.dex */
    public enum Language {
        AFRIKAANS("af"),
        ARABIC("ar"),
        BENGALI("bn"),
        CHINESE_SIMPLIFIED("zh", "CN", "Hans"),
        CHINESE_TRADITIONAL("zh", "TW", "Hant"),
        CZECH("cs"),
        DANISH("da"),
        DUTCH("nl"),
        ENGLISH("en"),
        FARSI("fa"),
        FRENCH("fr"),
        GERMAN("de"),
        GREEK("el"),
        GUJARATI("gu"),
        HEBREW("iw"),
        HINDI("hi"),
        INDONESIA("in"),
        ITALIAN("it"),
        JAPANESE("ja"),
        KAZAKH("kk"),
        KOREAN("ko"),
        MARATHI("mr"),
        POLISH("pl"),
        PORTUGUESE("pt"),
        PUNJABI("pa"),
        RUSSIAN("ru"),
        SLOVAK("sk"),
        SLOVENIAN("si"),
        SPANISH("es"),
        SWEDISH(p.a.f93056j),
        TAGALOG("tl"),
        THAI("th"),
        TURKISH("tr"),
        UKRAINIAN("uk"),
        URDU("ur"),
        UZBEK("uz"),
        VIETNAMESE("vi");
        

        /* renamed from: a  reason: collision with root package name */
        private String f37058a;

        /* renamed from: b  reason: collision with root package name */
        private String f37059b;

        /* renamed from: c  reason: collision with root package name */
        private String f37060c;

        Language(String code, String country, String script) {
            this.f37058a = code;
            this.f37059b = country;
            this.f37060c = script;
        }

        public static Language forCountryNameCode(String code) {
            Language[] values;
            Language language = ENGLISH;
            for (Language language2 : values()) {
                if (language2.f37058a.equals(code)) {
                    language = language2;
                }
            }
            return language;
        }

        public String getCode() {
            return this.f37058a;
        }

        public String getCountry() {
            return this.f37059b;
        }

        public String getScript() {
            return this.f37060c;
        }

        public void setCode(String code) {
            this.f37058a = code;
        }

        public void setCountry(String country) {
            this.f37059b = country;
        }

        public void setScript(String script) {
            this.f37060c = script;
        }

        Language(String code) {
            this.f37058a = code;
        }
    }

    public CountryCodePicker(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f37015a = new com.hbb20.g();
        this.f37017b = "CCP_PREF_FILE";
        this.f37044t = "";
        this.f37046v = AutoDetectionPref.SIM_NETWORK_LOCALE;
        this.f37048x = true;
        this.f37051y = true;
        this.f37054z = true;
        this.A = true;
        this.B = false;
        this.C = true;
        this.D = true;
        this.E = true;
        this.F = true;
        this.G = true;
        this.H = false;
        this.I = false;
        this.J = true;
        this.K = true;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = true;
        this.P = PhoneNumberType.MOBILE;
        this.Q = "ccp_last_selection";
        this.R = f37007e3;
        this.S = f37007e3;
        this.f37018b1 = f37013k3;
        this.f37039p1 = 0;
        Language language = Language.ENGLISH;
        this.V1 = language;
        this.f37019b2 = language;
        this.f37029g2 = true;
        this.f37040p2 = true;
        this.f37050x2 = false;
        this.f37053y2 = false;
        this.E2 = true;
        this.F2 = false;
        this.G2 = "notSet";
        this.M2 = null;
        this.N2 = 0;
        this.O2 = false;
        this.U2 = 0;
        this.Z2 = 0;
        this.f37024d3 = new a();
        this.f37025e = context;
        o(attrs);
    }

    public CountryCodePicker(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f37015a = new com.hbb20.g();
        this.f37017b = "CCP_PREF_FILE";
        this.f37044t = "";
        this.f37046v = AutoDetectionPref.SIM_NETWORK_LOCALE;
        this.f37048x = true;
        this.f37051y = true;
        this.f37054z = true;
        this.A = true;
        this.B = false;
        this.C = true;
        this.D = true;
        this.E = true;
        this.F = true;
        this.G = true;
        this.H = false;
        this.I = false;
        this.J = true;
        this.K = true;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = true;
        this.P = PhoneNumberType.MOBILE;
        this.Q = "ccp_last_selection";
        this.R = f37007e3;
        this.S = f37007e3;
        this.f37018b1 = f37013k3;
        this.f37039p1 = 0;
        Language language = Language.ENGLISH;
        this.V1 = language;
        this.f37019b2 = language;
        this.f37029g2 = true;
        this.f37040p2 = true;
        this.f37050x2 = false;
        this.f37053y2 = false;
        this.E2 = true;
        this.F2 = false;
        this.G2 = "notSet";
        this.M2 = null;
        this.N2 = 0;
        this.O2 = false;
        this.U2 = 0;
        this.Z2 = 0;
        this.f37024d3 = new a();
        this.f37025e = context;
        o(attrs);
    }
}
