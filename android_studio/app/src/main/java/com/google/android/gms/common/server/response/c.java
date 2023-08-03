package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class c implements i<Float> {
    @Override // com.google.android.gms.common.server.response.i
    @Nullable
    public final /* synthetic */ Float a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        float m9;
        m9 = fastParser.m(bufferedReader);
        return Float.valueOf(m9);
    }
}
