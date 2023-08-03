package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: DocumentDataParser.java */
/* loaded from: classes.dex */
public class h implements k0<DocumentData> {

    /* renamed from: a  reason: collision with root package name */
    public static final h f4635a = new h();

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f4636b = JsonReader.a.a("t", "f", "s", "j", "tr", "lh", "ls", "fc", "sc", com.ksyun.media.player.d.d.ap, "of");

    private h() {
    }

    @Override // com.airbnb.lottie.parser.k0
    /* renamed from: b */
    public DocumentData a(JsonReader jsonReader, float f10) throws IOException {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        jsonReader.d();
        DocumentData.Justification justification2 = justification;
        String str = null;
        String str2 = null;
        double d4 = 0.0d;
        double d10 = 0.0d;
        double d11 = 0.0d;
        double d12 = 0.0d;
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        boolean z9 = true;
        while (jsonReader.k()) {
            switch (jsonReader.G(f4636b)) {
                case 0:
                    str = jsonReader.y();
                    break;
                case 1:
                    str2 = jsonReader.y();
                    break;
                case 2:
                    d4 = jsonReader.q();
                    break;
                case 3:
                    int r9 = jsonReader.r();
                    justification2 = DocumentData.Justification.CENTER;
                    if (r9 <= justification2.ordinal() && r9 >= 0) {
                        justification2 = DocumentData.Justification.values()[r9];
                        break;
                    }
                    break;
                case 4:
                    i4 = jsonReader.r();
                    break;
                case 5:
                    d10 = jsonReader.q();
                    break;
                case 6:
                    d11 = jsonReader.q();
                    break;
                case 7:
                    i10 = p.d(jsonReader);
                    break;
                case 8:
                    i11 = p.d(jsonReader);
                    break;
                case 9:
                    d12 = jsonReader.q();
                    break;
                case 10:
                    z9 = jsonReader.p();
                    break;
                default:
                    jsonReader.H();
                    jsonReader.I();
                    break;
            }
        }
        jsonReader.i();
        return new DocumentData(str, str2, d4, justification2, i4, d10, d11, i10, i11, d12, z9);
    }
}
