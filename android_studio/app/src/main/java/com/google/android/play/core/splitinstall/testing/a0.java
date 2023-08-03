package com.google.android.play.core.splitinstall.testing;

import java.io.File;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31951c = new com.google.android.play.core.internal.h("LocalTestingConfigParser");

    /* renamed from: a  reason: collision with root package name */
    private final XmlPullParser f31952a;

    /* renamed from: b  reason: collision with root package name */
    private final u f31953b = v.c();

    a0(XmlPullParser xmlPullParser) {
        this.f31952a = xmlPullParser;
    }

    public static v a(File file) {
        File file2 = new File(file, "local_testing_config.xml");
        if (!file2.exists()) {
            return v.f31998a;
        }
        try {
            io.sentry.instrumentation.file.m mVar = new io.sentry.instrumentation.file.m(file2);
            try {
                XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                newPullParser.setInput(mVar);
                final a0 a0Var = new a0(newPullParser);
                a0Var.e("local-testing-config", new z() { // from class: com.google.android.play.core.splitinstall.testing.w
                    @Override // com.google.android.play.core.splitinstall.testing.z
                    public final void zza() {
                        a0.this.d();
                    }
                });
                v e4 = a0Var.f31953b.e();
                mVar.close();
                return e4;
            } catch (Throwable th) {
                try {
                    mVar.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        } catch (IOException | RuntimeException | XmlPullParserException e10) {
            f31951c.e("%s can not be parsed, using default. Error: %s", "local_testing_config.xml", e10.getMessage());
            return v.f31998a;
        }
    }

    public static /* synthetic */ void b(final a0 a0Var) {
        for (int i4 = 0; i4 < a0Var.f31952a.getAttributeCount(); i4++) {
            if ("defaultErrorCode".equals(a0Var.f31952a.getAttributeName(i4))) {
                a0Var.f31953b.a(g3.c.a(a0Var.f31952a.getAttributeValue(i4)));
            }
        }
        a0Var.e("split-install-error", new z() { // from class: com.google.android.play.core.splitinstall.testing.y
            @Override // com.google.android.play.core.splitinstall.testing.z
            public final void zza() {
                a0.c(a0.this);
            }
        });
    }

    public static /* synthetic */ void c(a0 a0Var) {
        String str = null;
        String str2 = null;
        for (int i4 = 0; i4 < a0Var.f31952a.getAttributeCount(); i4++) {
            if ("module".equals(a0Var.f31952a.getAttributeName(i4))) {
                str = a0Var.f31952a.getAttributeValue(i4);
            }
            if ("errorCode".equals(a0Var.f31952a.getAttributeName(i4))) {
                str2 = a0Var.f31952a.getAttributeValue(i4);
            }
        }
        if (str != null && str2 != null) {
            a0Var.f31953b.d().put(str, Integer.valueOf(g3.c.a(str2)));
            do {
            } while (a0Var.f31952a.next() != 3);
            return;
        }
        throw new XmlPullParserException(String.format("'%s' element does not contain 'module'/'errorCode' attributes.", "split-install-error"), a0Var.f31952a, null);
    }

    private final void e(String str, z zVar) throws IOException, XmlPullParserException {
        while (true) {
            int next = this.f31952a.next();
            if (next == 3 || next == 1) {
                return;
            }
            if (this.f31952a.getEventType() == 2) {
                if (this.f31952a.getName().equals(str)) {
                    zVar.zza();
                } else {
                    throw new XmlPullParserException(String.format("Expected '%s' tag but found '%s'.", str, this.f31952a.getName()), this.f31952a, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void d() throws IOException, XmlPullParserException {
        e("split-install-errors", new z() { // from class: com.google.android.play.core.splitinstall.testing.x
            @Override // com.google.android.play.core.splitinstall.testing.z
            public final void zza() {
                a0.b(a0.this);
            }
        });
    }
}
