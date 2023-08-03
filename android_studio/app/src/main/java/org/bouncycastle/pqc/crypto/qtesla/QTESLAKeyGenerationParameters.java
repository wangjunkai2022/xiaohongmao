package org.bouncycastle.pqc.crypto.qtesla;

import java.security.SecureRandom;
import org.bouncycastle.crypto.KeyGenerationParameters;

/* loaded from: classes5.dex */
public class QTESLAKeyGenerationParameters extends KeyGenerationParameters {
    private final int securityCategory;

    public QTESLAKeyGenerationParameters(int i4, SecureRandom secureRandom) {
        super(secureRandom, -1);
        QTESLASecurityCategory.getPrivateSize(i4);
        this.securityCategory = i4;
    }

    public int getSecurityCategory() {
        return this.securityCategory;
    }
}
