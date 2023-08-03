package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.math.BigDecimal;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class h implements i<BigDecimal> {
    @Override // com.google.android.gms.common.server.response.i
    @Nullable
    public final /* synthetic */ BigDecimal a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        BigDecimal u9;
        u9 = fastParser.u(bufferedReader);
        return u9;
    }
}
