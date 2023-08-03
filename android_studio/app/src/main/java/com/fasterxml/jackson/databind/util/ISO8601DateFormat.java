package com.fasterxml.jackson.databind.util;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;

@Deprecated
/* loaded from: classes2.dex */
public class ISO8601DateFormat extends DateFormat {

    /* renamed from: a  reason: collision with root package name */
    private static final long f15955a = 1;

    public ISO8601DateFormat() {
        ((DateFormat) this).numberFormat = new DecimalFormat();
        ((DateFormat) this).calendar = new GregorianCalendar();
    }

    @Override // java.text.DateFormat, java.text.Format
    public Object clone() {
        return this;
    }

    @Override // java.text.DateFormat
    public StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        stringBuffer.append(i.b(date));
        return stringBuffer;
    }

    @Override // java.text.DateFormat
    public Date parse(String str, ParsePosition parsePosition) {
        try {
            return i.g(str, parsePosition);
        } catch (ParseException unused) {
            return null;
        }
    }

    @Override // java.text.DateFormat
    public Date parse(String str) throws ParseException {
        return i.g(str, new ParsePosition(0));
    }
}
