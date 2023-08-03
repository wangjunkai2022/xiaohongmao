package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: XmlPullParserUtil.java */
/* loaded from: classes2.dex */
public final class a1 {
    private a1() {
    }

    @Nullable
    public static String a(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i4 = 0; i4 < attributeCount; i4++) {
            if (xmlPullParser.getAttributeName(i4).equals(str)) {
                return xmlPullParser.getAttributeValue(i4);
            }
        }
        return null;
    }

    @Nullable
    public static String b(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i4 = 0; i4 < attributeCount; i4++) {
            if (h(xmlPullParser.getAttributeName(i4)).equals(str)) {
                return xmlPullParser.getAttributeValue(i4);
            }
        }
        return null;
    }

    public static boolean c(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 3;
    }

    public static boolean d(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return c(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    public static boolean e(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 2;
    }

    public static boolean f(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return e(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    public static boolean g(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return e(xmlPullParser) && h(xmlPullParser.getName()).equals(str);
    }

    private static String h(String str) {
        int indexOf = str.indexOf(58);
        return indexOf == -1 ? str : str.substring(indexOf + 1);
    }
}
