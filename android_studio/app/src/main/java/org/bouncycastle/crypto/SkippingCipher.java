package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public interface SkippingCipher {
    long getPosition();

    long seekTo(long j4);

    long skip(long j4);
}
