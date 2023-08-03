package com.google.android.play.core.splitinstall;

import android.util.Log;
import androidx.annotation.Nullable;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class p0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static final y0 a(XmlPullParser xmlPullParser, w0 w0Var) {
        while (xmlPullParser.next() != 1) {
            try {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("splits")) {
                        while (xmlPullParser.next() != 3) {
                            if (xmlPullParser.getEventType() == 2) {
                                if (xmlPullParser.getName().equals("module")) {
                                    String b10 = b("name", xmlPullParser, w0Var);
                                    if (b10 != null) {
                                        while (xmlPullParser.next() != 3) {
                                            if (xmlPullParser.getEventType() == 2) {
                                                if (xmlPullParser.getName().equals("language")) {
                                                    while (xmlPullParser.next() != 3) {
                                                        if (xmlPullParser.getEventType() == 2) {
                                                            if (xmlPullParser.getName().equals("entry")) {
                                                                String b11 = b("key", xmlPullParser, w0Var);
                                                                String b12 = b("split", xmlPullParser, w0Var);
                                                                c(xmlPullParser, w0Var);
                                                                if (b11 != null && b12 != null) {
                                                                    w0Var.a(b10, b11, b12);
                                                                }
                                                            } else {
                                                                c(xmlPullParser, w0Var);
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    c(xmlPullParser, w0Var);
                                                }
                                            }
                                        }
                                    } else {
                                        c(xmlPullParser, w0Var);
                                    }
                                } else {
                                    c(xmlPullParser, w0Var);
                                }
                            }
                        }
                    } else {
                        c(xmlPullParser, w0Var);
                    }
                }
            } catch (IOException | IllegalStateException | XmlPullParserException e4) {
                Log.e("SplitInstall", "Error while parsing splits.xml", e4);
                return null;
            }
        }
        return w0Var.b();
    }

    @Nullable
    private static final String b(String str, XmlPullParser xmlPullParser, w0 w0Var) {
        for (int i4 = 0; i4 < xmlPullParser.getAttributeCount(); i4++) {
            if (xmlPullParser.getAttributeName(i4).equals(str)) {
                return xmlPullParser.getAttributeValue(i4);
            }
        }
        return null;
    }

    private static final void c(XmlPullParser xmlPullParser, w0 w0Var) throws IOException, XmlPullParserException {
        int i4 = 1;
        while (i4 != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i4++;
            } else if (next == 3) {
                i4--;
            }
        }
    }
}
