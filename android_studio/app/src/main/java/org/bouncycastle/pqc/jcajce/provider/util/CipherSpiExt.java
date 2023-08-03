package org.bouncycastle.pqc.jcajce.provider.util;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;

/* loaded from: classes5.dex */
public abstract class CipherSpiExt extends CipherSpi {
    public static final int DECRYPT_MODE = 2;
    public static final int ENCRYPT_MODE = 1;
    protected int opMode;

    public abstract int doFinal(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException;

    public final byte[] doFinal() throws IllegalBlockSizeException, BadPaddingException {
        return doFinal(null, 0, 0);
    }

    public final byte[] doFinal(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException {
        return doFinal(bArr, 0, bArr.length);
    }

    public abstract byte[] doFinal(byte[] bArr, int i4, int i10) throws IllegalBlockSizeException, BadPaddingException;

    @Override // javax.crypto.CipherSpi
    protected final int engineDoFinal(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        return doFinal(bArr, i4, i10, bArr2, i11);
    }

    @Override // javax.crypto.CipherSpi
    protected final byte[] engineDoFinal(byte[] bArr, int i4, int i10) throws IllegalBlockSizeException, BadPaddingException {
        return doFinal(bArr, i4, i10);
    }

    @Override // javax.crypto.CipherSpi
    protected final int engineGetBlockSize() {
        return getBlockSize();
    }

    @Override // javax.crypto.CipherSpi
    protected final byte[] engineGetIV() {
        return getIV();
    }

    @Override // javax.crypto.CipherSpi
    protected final int engineGetKeySize(Key key) throws InvalidKeyException {
        if (key instanceof Key) {
            return getKeySize(key);
        }
        throw new InvalidKeyException("Unsupported key.");
    }

    @Override // javax.crypto.CipherSpi
    protected final int engineGetOutputSize(int i4) {
        return getOutputSize(i4);
    }

    @Override // javax.crypto.CipherSpi
    protected final AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineInit(int i4, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameters == null) {
            engineInit(i4, key, secureRandom);
        } else {
            engineInit(i4, key, (AlgorithmParameterSpec) null, secureRandom);
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineInit(int i4, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i4, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e4) {
            throw new InvalidParameterException(e4.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    protected void engineInit(int i4, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (key == null) {
            throw new InvalidKeyException();
        }
        this.opMode = i4;
        if (i4 == 1) {
            initEncrypt(key, algorithmParameterSpec, secureRandom);
        } else if (i4 == 2) {
            initDecrypt(key, algorithmParameterSpec);
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineSetMode(String str) throws NoSuchAlgorithmException {
        setMode(str);
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineSetPadding(String str) throws NoSuchPaddingException {
        setPadding(str);
    }

    @Override // javax.crypto.CipherSpi
    protected final int engineUpdate(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws ShortBufferException {
        return update(bArr, i4, i10, bArr2, i11);
    }

    @Override // javax.crypto.CipherSpi
    protected final byte[] engineUpdate(byte[] bArr, int i4, int i10) {
        return update(bArr, i4, i10);
    }

    public abstract int getBlockSize();

    public abstract byte[] getIV();

    public abstract int getKeySize(Key key) throws InvalidKeyException;

    public abstract String getName();

    public abstract int getOutputSize(int i4);

    public abstract AlgorithmParameterSpec getParameters();

    public abstract void initDecrypt(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException;

    public abstract void initEncrypt(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException;

    protected abstract void setMode(String str) throws NoSuchAlgorithmException;

    protected abstract void setPadding(String str) throws NoSuchPaddingException;

    public abstract int update(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws ShortBufferException;

    public final byte[] update(byte[] bArr) {
        return update(bArr, 0, bArr.length);
    }

    public abstract byte[] update(byte[] bArr, int i4, int i10);
}
