package com.google.android.exoplayer2.extractor.jpeg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.jpeg.b;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.a1;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: XmpMotionPhotoDescriptionParser.java */
/* loaded from: classes2.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f22327a = "MotionPhotoXmpParser";

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f22328b = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f22329c = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f22330d = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    private e() {
    }

    @Nullable
    public static b a(String str) throws IOException {
        try {
            return b(str);
        } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
            w.n(f22327a, "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    @Nullable
    private static b b(String str) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new StringReader(str));
        newPullParser.next();
        if (a1.f(newPullParser, "x:xmpmeta")) {
            long j4 = i.f23649b;
            ImmutableList<b.a> of = ImmutableList.of();
            do {
                newPullParser.next();
                if (a1.f(newPullParser, "rdf:Description")) {
                    if (!d(newPullParser)) {
                        return null;
                    }
                    j4 = e(newPullParser);
                    of = c(newPullParser);
                } else if (a1.f(newPullParser, "Container:Directory")) {
                    of = f(newPullParser, "Container", "Item");
                } else if (a1.f(newPullParser, "GContainer:Directory")) {
                    of = f(newPullParser, "GContainer", "GContainerItem");
                }
            } while (!a1.d(newPullParser, "x:xmpmeta"));
            if (of.isEmpty()) {
                return null;
            }
            return new b(j4, of);
        }
        throw new ParserException("Couldn't find xmp metadata");
    }

    private static ImmutableList<b.a> c(XmlPullParser xmlPullParser) {
        for (String str : f22330d) {
            String a10 = a1.a(xmlPullParser, str);
            if (a10 != null) {
                return ImmutableList.of(new b.a(a0.F0, "Primary", 0L, 0L), new b.a(a0.f27441f, "MotionPhoto", Long.parseLong(a10), 0L));
            }
        }
        return ImmutableList.of();
    }

    private static boolean d(XmlPullParser xmlPullParser) {
        for (String str : f22328b) {
            String a10 = a1.a(xmlPullParser, str);
            if (a10 != null) {
                return Integer.parseInt(a10) == 1;
            }
        }
        return false;
    }

    private static long e(XmlPullParser xmlPullParser) {
        for (String str : f22329c) {
            String a10 = a1.a(xmlPullParser, str);
            if (a10 != null) {
                long parseLong = Long.parseLong(a10);
                return parseLong == -1 ? i.f23649b : parseLong;
            }
        }
        return i.f23649b;
    }

    private static ImmutableList<b.a> f(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        ImmutableList.a builder = ImmutableList.builder();
        String concat = String.valueOf(str).concat(":Item");
        String concat2 = String.valueOf(str).concat(":Directory");
        do {
            xmlPullParser.next();
            if (a1.f(xmlPullParser, concat)) {
                String concat3 = String.valueOf(str2).concat(":Mime");
                String concat4 = String.valueOf(str2).concat(":Semantic");
                String concat5 = String.valueOf(str2).concat(":Length");
                String concat6 = String.valueOf(str2).concat(":Padding");
                String a10 = a1.a(xmlPullParser, concat3);
                String a11 = a1.a(xmlPullParser, concat4);
                String a12 = a1.a(xmlPullParser, concat5);
                String a13 = a1.a(xmlPullParser, concat6);
                if (a10 != null && a11 != null) {
                    builder.g(new b.a(a10, a11, a12 != null ? Long.parseLong(a12) : 0L, a13 != null ? Long.parseLong(a13) : 0L));
                } else {
                    return ImmutableList.of();
                }
            }
        } while (!a1.d(xmlPullParser, concat2));
        return builder.e();
    }
}
