package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class e implements i<Boolean> {
    @Override // com.google.android.gms.common.server.response.i
    @Nullable
    public final /* bridge */ /* synthetic */ Boolean a(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        boolean A;
        A = fastParser.A(bufferedReader, false);
        return Boolean.valueOf(A);
    }
}
