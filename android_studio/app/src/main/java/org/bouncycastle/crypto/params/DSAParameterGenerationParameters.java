package org.bouncycastle.crypto.params;

import java.security.SecureRandom;

/* loaded from: classes4.dex */
public class DSAParameterGenerationParameters {
    public static final int DIGITAL_SIGNATURE_USAGE = 1;
    public static final int KEY_ESTABLISHMENT_USAGE = 2;
    private final int certainty;

    /* renamed from: l  reason: collision with root package name */
    private final int f91316l;

    /* renamed from: n  reason: collision with root package name */
    private final int f91317n;
    private final SecureRandom random;
    private final int usageIndex;

    public DSAParameterGenerationParameters(int i4, int i10, int i11, SecureRandom secureRandom) {
        this(i4, i10, i11, secureRandom, -1);
    }

    public DSAParameterGenerationParameters(int i4, int i10, int i11, SecureRandom secureRandom, int i12) {
        this.f91316l = i4;
        this.f91317n = i10;
        this.certainty = i11;
        this.usageIndex = i12;
        this.random = secureRandom;
    }

    public int getCertainty() {
        return this.certainty;
    }

    public int getL() {
        return this.f91316l;
    }

    public int getN() {
        return this.f91317n;
    }

    public SecureRandom getRandom() {
        return this.random;
    }

    public int getUsageIndex() {
        return this.usageIndex;
    }
}
