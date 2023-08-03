package org.bouncycastle.jcajce.provider.symmetric.util;

import java.security.AlgorithmParameters;
import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes5.dex */
class SpecUtil {
    SpecUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AlgorithmParameterSpec extractSpec(AlgorithmParameters algorithmParameters, Class[] clsArr) {
        try {
            return algorithmParameters.getParameterSpec(AlgorithmParameterSpec.class);
        } catch (Exception unused) {
            for (int i4 = 0; i4 != clsArr.length; i4++) {
                if (clsArr[i4] != null) {
                    try {
                        return algorithmParameters.getParameterSpec(clsArr[i4]);
                    } catch (Exception unused2) {
                    }
                }
            }
            return null;
        }
    }
}
