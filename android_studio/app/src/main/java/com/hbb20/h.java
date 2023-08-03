package com.hbb20;

import android.content.Context;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import io.michaelrocks.libphonenumber.android.PhoneNumberUtil;

/* compiled from: InternationalPhoneTextWatcher.java */
/* loaded from: classes2.dex */
public class h implements TextWatcher {

    /* renamed from: j  reason: collision with root package name */
    private static final String f37132j = "Int'l Phone TextWatcher";

    /* renamed from: a  reason: collision with root package name */
    PhoneNumberUtil f37133a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f37134b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f37135c;

    /* renamed from: d  reason: collision with root package name */
    private io.michaelrocks.libphonenumber.android.b f37136d;

    /* renamed from: e  reason: collision with root package name */
    private String f37137e;

    /* renamed from: f  reason: collision with root package name */
    Editable f37138f;

    /* renamed from: g  reason: collision with root package name */
    private int f37139g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f37140h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f37141i;

    public h(Context context, String countryNameCode, int countryPhoneCode) {
        this(context, countryNameCode, countryPhoneCode, true);
    }

    private boolean a(final CharSequence s9, final int start, final int count) {
        for (int i4 = start; i4 < start + count; i4++) {
            if (!PhoneNumberUtils.isNonSeparator(s9.charAt(i4))) {
                return true;
            }
        }
        return false;
    }

    private String b(CharSequence s9) {
        this.f37136d.h();
        String str = "+" + this.f37139g;
        if (this.f37141i || (s9.length() > 0 && s9.charAt(0) != '0')) {
            s9 = str + ((Object) s9);
        }
        int length = s9.length();
        String str2 = "";
        char c10 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = s9.charAt(i4);
            if (PhoneNumberUtils.isNonSeparator(charAt)) {
                if (c10 != 0) {
                    str2 = this.f37136d.p(c10);
                }
                c10 = charAt;
            }
        }
        if (c10 != 0) {
            str2 = this.f37136d.p(c10);
        }
        String trim = str2.trim();
        if (this.f37141i || s9.length() == 0 || s9.charAt(0) != '0') {
            if (trim.length() <= str.length()) {
                trim = "";
            } else if (trim.charAt(str.length()) == ' ') {
                trim = trim.substring(str.length() + 1);
            } else {
                trim = trim.substring(str.length());
            }
        }
        return TextUtils.isEmpty(trim) ? "" : trim;
    }

    private void c() {
        this.f37135c = true;
        this.f37136d.h();
    }

    @Override // android.text.TextWatcher
    public synchronized void afterTextChanged(Editable s9) {
        boolean z9 = true;
        if (this.f37135c) {
            if (s9.length() == 0) {
                z9 = false;
            }
            this.f37135c = z9;
        } else if (!this.f37134b) {
            int selectionEnd = Selection.getSelectionEnd(s9);
            boolean z10 = selectionEnd == s9.length();
            String b10 = b(s9);
            if (!b10.equals(s9.toString())) {
                if (z10) {
                    selectionEnd = b10.length();
                } else {
                    int i4 = 0;
                    for (int i10 = 0; i10 < s9.length() && i10 < selectionEnd; i10++) {
                        if (PhoneNumberUtils.isNonSeparator(s9.charAt(i10))) {
                            i4++;
                        }
                    }
                    selectionEnd = 0;
                    int i11 = 0;
                    while (true) {
                        if (selectionEnd >= b10.length()) {
                            selectionEnd = 0;
                            break;
                        } else if (i11 == i4) {
                            break;
                        } else {
                            if (PhoneNumberUtils.isNonSeparator(b10.charAt(selectionEnd))) {
                                i11++;
                            }
                            selectionEnd++;
                        }
                    }
                }
            }
            if (!z10) {
                while (true) {
                    int i12 = selectionEnd - 1;
                    if (i12 > 0 && !PhoneNumberUtils.isNonSeparator(b10.charAt(i12))) {
                        selectionEnd--;
                    }
                }
            }
            try {
                this.f37134b = true;
                s9.replace(0, s9.length(), b10, 0, b10.length());
                this.f37134b = false;
                this.f37138f = s9;
                Selection.setSelection(s9, selectionEnd);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence s9, int start, int count, int after) {
        if (this.f37134b || this.f37135c || count <= 0 || !a(s9, start, count) || this.f37140h) {
            return;
        }
        c();
    }

    public void d(String countryNameCode, int countryPhoneCode) {
        this.f37137e = countryNameCode;
        this.f37139g = countryPhoneCode;
        io.michaelrocks.libphonenumber.android.b E = this.f37133a.E(countryNameCode);
        this.f37136d = E;
        E.h();
        Editable editable = this.f37138f;
        if (editable != null) {
            this.f37140h = true;
            String M0 = PhoneNumberUtil.M0(editable);
            Editable editable2 = this.f37138f;
            editable2.replace(0, editable2.length(), M0, 0, M0.length());
            this.f37140h = false;
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence s9, int start, int before, int count) {
        if (this.f37134b || this.f37135c || count <= 0 || !a(s9, start, count)) {
            return;
        }
        c();
    }

    public h(Context context, String countryNameCode, int countryPhoneCode, boolean internationalOnly) {
        this.f37134b = false;
        this.f37138f = null;
        this.f37140h = false;
        if (countryNameCode != null && countryNameCode.length() != 0) {
            this.f37133a = PhoneNumberUtil.h(context);
            d(countryNameCode, countryPhoneCode);
            this.f37141i = internationalOnly;
            return;
        }
        throw new IllegalArgumentException();
    }
}
