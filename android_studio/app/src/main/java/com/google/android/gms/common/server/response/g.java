package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.math.BigInteger;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class g implements i<BigInteger> {
    @Override // com.google.android.gms.common.server.response.i
    @Nullable
    public final /* synthetic */ BigInteger a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        BigInteger v9;
        v9 = fastParser.v(bufferedReader);
        return v9;
    }
}
