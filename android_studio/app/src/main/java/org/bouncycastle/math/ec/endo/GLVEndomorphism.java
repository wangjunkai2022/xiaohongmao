package org.bouncycastle.math.ec.endo;

import java.math.BigInteger;

/* loaded from: classes5.dex */
public interface GLVEndomorphism extends ECEndomorphism {
    BigInteger[] decomposeScalar(BigInteger bigInteger);
}
