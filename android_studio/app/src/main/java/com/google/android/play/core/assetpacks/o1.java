package com.google.android.play.core.assetpacks;

import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class o1 {

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31491g = new com.google.android.play.core.internal.h("ExtractChunkTaskHandler");

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f31492a = new byte[8192];

    /* renamed from: b  reason: collision with root package name */
    private final p0 f31493b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31494c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31495d;

    /* renamed from: e  reason: collision with root package name */
    private final x1 f31496e;

    /* renamed from: f  reason: collision with root package name */
    private final m3 f31497f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o1(p0 p0Var, com.google.android.play.core.internal.n1 n1Var, com.google.android.play.core.internal.n1 n1Var2, x1 x1Var, m3 m3Var) {
        this.f31493b = p0Var;
        this.f31494c = n1Var;
        this.f31495d = n1Var2;
        this.f31496e = x1Var;
        this.f31497f = m3Var;
    }

    private final File b(n1 n1Var) {
        File G = this.f31493b.G(n1Var.f31538b, n1Var.f31472c, n1Var.f31473d, n1Var.f31475f);
        if (!G.exists()) {
            G.mkdirs();
        }
        return G;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:1|(1:3)|4|5|6|(1:8)(2:125|126)|9|10|11|(2:13|(12:15|(1:(1:(2:19|(1:21)(2:85|86))(2:87|88))(2:89|(10:91|(7:24|(4:25|(2:29|(1:38)(4:33|(1:35)|36|37))|39|(1:41)(1:65))|43|44|(1:46)|47|(2:49|(1:51)(2:52|(1:54)(3:55|(2:57|(1:59)(2:61|62))(1:64)|60))))|66|67|(2:79|80)|69|70|71|72|(2:74|75)(1:76))(2:92|93)))(2:94|(4:96|(4:97|(1:99)|100|(1:103)(1:111))|106|(3:108|109|110))(2:112|113))|22|(0)|66|67|(0)|69|70|71|72|(0)(0))(2:114|115))|116|(0)|66|67|(0)|69|70|71|72|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0302, code lost:
        com.google.android.play.core.assetpacks.o1.f31491g.e("Could not close file for chunk %s of slice %s of pack %s.", java.lang.Integer.valueOf(r23.f31477h), r23.f31475f, r23.f31538b);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0189 A[Catch: all -> 0x029a, TryCatch #3 {all -> 0x029a, blocks: (B:54:0x0189, B:55:0x0192, B:57:0x019c, B:59:0x01a2, B:61:0x01a8, B:63:0x01ae, B:65:0x01d6, B:66:0x01e2, B:67:0x01e7, B:68:0x01ee, B:70:0x01f4, B:72:0x01fa, B:74:0x0200, B:75:0x0210, B:77:0x0216, B:79:0x021c, B:80:0x022f, B:82:0x0235, B:83:0x0244, B:85:0x024a, B:91:0x028b, B:88:0x0272, B:89:0x0279, B:90:0x027a, B:47:0x0154, B:48:0x0159, B:49:0x0163, B:50:0x0164, B:51:0x0184), top: B:124:0x0043 }] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.play.core.assetpacks.p0] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v20, types: [java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(com.google.android.play.core.assetpacks.n1 r23) {
        /*
            Method dump skipped, instructions count: 908
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.assetpacks.o1.a(com.google.android.play.core.assetpacks.n1):void");
    }
}
