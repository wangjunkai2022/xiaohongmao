package org.bouncycastle.crypto.engines;

import java.io.PrintStream;
import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.NaccacheSternKeyParameters;
import org.bouncycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class NaccacheSternEngine implements AsymmetricBlockCipher {
    private boolean forEncryption;
    private NaccacheSternKeyParameters key;
    private static BigInteger ZERO = BigInteger.valueOf(0);
    private static BigInteger ONE = BigInteger.valueOf(1);
    private Vector[] lookup = null;
    private boolean debug = false;

    private static BigInteger chineseRemainder(Vector vector, Vector vector2) {
        BigInteger bigInteger = ZERO;
        BigInteger bigInteger2 = ONE;
        for (int i4 = 0; i4 < vector2.size(); i4++) {
            bigInteger2 = bigInteger2.multiply((BigInteger) vector2.elementAt(i4));
        }
        for (int i10 = 0; i10 < vector2.size(); i10++) {
            BigInteger bigInteger3 = (BigInteger) vector2.elementAt(i10);
            BigInteger divide = bigInteger2.divide(bigInteger3);
            bigInteger = bigInteger.add(divide.multiply(divide.modInverse(bigInteger3)).multiply((BigInteger) vector.elementAt(i10)));
        }
        return bigInteger.mod(bigInteger2);
    }

    public byte[] addCryptedBlocks(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        if (this.forEncryption) {
            if (bArr.length > getOutputBlockSize() || bArr2.length > getOutputBlockSize()) {
                throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
            }
        } else if (bArr.length > getInputBlockSize() || bArr2.length > getInputBlockSize()) {
            throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        BigInteger bigInteger2 = new BigInteger(1, bArr2);
        BigInteger mod = bigInteger.multiply(bigInteger2).mod(this.key.getModulus());
        if (this.debug) {
            PrintStream printStream = System.out;
            printStream.println("c(m1) as BigInteger:....... " + bigInteger);
            PrintStream printStream2 = System.out;
            printStream2.println("c(m2) as BigInteger:....... " + bigInteger2);
            PrintStream printStream3 = System.out;
            printStream3.println("c(m1)*c(m2)%n = c(m1+m2)%n: " + mod);
        }
        byte[] byteArray = this.key.getModulus().toByteArray();
        Arrays.fill(byteArray, (byte) 0);
        System.arraycopy(mod.toByteArray(), 0, byteArray, byteArray.length - mod.toByteArray().length, mod.toByteArray().length);
        return byteArray;
    }

    public byte[] encrypt(BigInteger bigInteger) {
        byte[] byteArray = this.key.getModulus().toByteArray();
        Arrays.fill(byteArray, (byte) 0);
        byte[] byteArray2 = this.key.getG().modPow(bigInteger, this.key.getModulus()).toByteArray();
        System.arraycopy(byteArray2, 0, byteArray, byteArray.length - byteArray2.length, byteArray2.length);
        if (this.debug) {
            PrintStream printStream = System.out;
            printStream.println("Encrypted value is:  " + new BigInteger(byteArray));
        }
        return byteArray;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.forEncryption ? ((this.key.getLowerSigmaBound() + 7) / 8) - 1 : this.key.getModulus().toByteArray().length;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.forEncryption ? this.key.getModulus().toByteArray().length : ((this.key.getLowerSigmaBound() + 7) / 8) - 1;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        this.forEncryption = z9;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        this.key = (NaccacheSternKeyParameters) cipherParameters;
        if (this.forEncryption) {
            return;
        }
        if (this.debug) {
            System.out.println("Constructing lookup Array");
        }
        NaccacheSternPrivateKeyParameters naccacheSternPrivateKeyParameters = (NaccacheSternPrivateKeyParameters) this.key;
        Vector smallPrimes = naccacheSternPrivateKeyParameters.getSmallPrimes();
        this.lookup = new Vector[smallPrimes.size()];
        for (int i4 = 0; i4 < smallPrimes.size(); i4++) {
            BigInteger bigInteger = (BigInteger) smallPrimes.elementAt(i4);
            int intValue = bigInteger.intValue();
            this.lookup[i4] = new Vector();
            this.lookup[i4].addElement(ONE);
            if (this.debug) {
                PrintStream printStream = System.out;
                printStream.println("Constructing lookup ArrayList for " + intValue);
            }
            BigInteger bigInteger2 = ZERO;
            for (int i10 = 1; i10 < intValue; i10++) {
                bigInteger2 = bigInteger2.add(naccacheSternPrivateKeyParameters.getPhi_n());
                this.lookup[i4].addElement(naccacheSternPrivateKeyParameters.getG().modPow(bigInteger2.divide(bigInteger), naccacheSternPrivateKeyParameters.getModulus()));
            }
        }
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i4, int i10) throws InvalidCipherTextException {
        if (this.key != null) {
            if (i10 <= getInputBlockSize() + 1) {
                if (this.forEncryption || i10 >= getInputBlockSize()) {
                    if (i4 != 0 || i10 != bArr.length) {
                        byte[] bArr2 = new byte[i10];
                        System.arraycopy(bArr, i4, bArr2, 0, i10);
                        bArr = bArr2;
                    }
                    BigInteger bigInteger = new BigInteger(1, bArr);
                    if (this.debug) {
                        PrintStream printStream = System.out;
                        printStream.println("input as BigInteger: " + bigInteger);
                    }
                    if (this.forEncryption) {
                        return encrypt(bigInteger);
                    }
                    Vector vector = new Vector();
                    NaccacheSternPrivateKeyParameters naccacheSternPrivateKeyParameters = (NaccacheSternPrivateKeyParameters) this.key;
                    Vector smallPrimes = naccacheSternPrivateKeyParameters.getSmallPrimes();
                    for (int i11 = 0; i11 < smallPrimes.size(); i11++) {
                        BigInteger modPow = bigInteger.modPow(naccacheSternPrivateKeyParameters.getPhi_n().divide((BigInteger) smallPrimes.elementAt(i11)), naccacheSternPrivateKeyParameters.getModulus());
                        Vector[] vectorArr = this.lookup;
                        Vector vector2 = vectorArr[i11];
                        if (vectorArr[i11].size() != ((BigInteger) smallPrimes.elementAt(i11)).intValue()) {
                            if (this.debug) {
                                PrintStream printStream2 = System.out;
                                printStream2.println("Prime is " + smallPrimes.elementAt(i11) + ", lookup table has size " + vector2.size());
                            }
                            throw new InvalidCipherTextException("Error in lookup Array for " + ((BigInteger) smallPrimes.elementAt(i11)).intValue() + ": Size mismatch. Expected ArrayList with length " + ((BigInteger) smallPrimes.elementAt(i11)).intValue() + " but found ArrayList of length " + this.lookup[i11].size());
                        }
                        int indexOf = vector2.indexOf(modPow);
                        if (indexOf == -1) {
                            if (this.debug) {
                                PrintStream printStream3 = System.out;
                                printStream3.println("Actual prime is " + smallPrimes.elementAt(i11));
                                PrintStream printStream4 = System.out;
                                printStream4.println("Decrypted value is " + modPow);
                                PrintStream printStream5 = System.out;
                                printStream5.println("LookupList for " + smallPrimes.elementAt(i11) + " with size " + this.lookup[i11].size() + " is: ");
                                for (int i12 = 0; i12 < this.lookup[i11].size(); i12++) {
                                    System.out.println(this.lookup[i11].elementAt(i12));
                                }
                            }
                            throw new InvalidCipherTextException("Lookup failed");
                        }
                        vector.addElement(BigInteger.valueOf(indexOf));
                    }
                    return chineseRemainder(vector, smallPrimes).toByteArray();
                }
                throw new InvalidCipherTextException("BlockLength does not match modulus for Naccache-Stern cipher.\n");
            }
            throw new DataLengthException("input too large for Naccache-Stern cipher.\n");
        }
        throw new IllegalStateException("NaccacheStern engine not initialised");
    }

    public byte[] processData(byte[] bArr) throws InvalidCipherTextException {
        byte[] processBlock;
        if (this.debug) {
            System.out.println();
        }
        if (bArr.length <= getInputBlockSize()) {
            if (this.debug) {
                System.out.println("data size is less then input block size, processing directly");
            }
            return processBlock(bArr, 0, bArr.length);
        }
        int inputBlockSize = getInputBlockSize();
        int outputBlockSize = getOutputBlockSize();
        if (this.debug) {
            PrintStream printStream = System.out;
            printStream.println("Input blocksize is:  " + inputBlockSize + " bytes");
            PrintStream printStream2 = System.out;
            printStream2.println("Output blocksize is: " + outputBlockSize + " bytes");
            PrintStream printStream3 = System.out;
            printStream3.println("Data has length:.... " + bArr.length + " bytes");
        }
        byte[] bArr2 = new byte[((bArr.length / inputBlockSize) + 1) * outputBlockSize];
        int i4 = 0;
        int i10 = 0;
        while (i4 < bArr.length) {
            int i11 = i4 + inputBlockSize;
            if (i11 < bArr.length) {
                processBlock = processBlock(bArr, i4, inputBlockSize);
                i4 = i11;
            } else {
                processBlock = processBlock(bArr, i4, bArr.length - i4);
                i4 += bArr.length - i4;
            }
            if (this.debug) {
                PrintStream printStream4 = System.out;
                printStream4.println("new datapos is " + i4);
            }
            if (processBlock == null) {
                if (this.debug) {
                    System.out.println("cipher returned null");
                }
                throw new InvalidCipherTextException("cipher returned null");
            }
            System.arraycopy(processBlock, 0, bArr2, i10, processBlock.length);
            i10 += processBlock.length;
        }
        byte[] bArr3 = new byte[i10];
        System.arraycopy(bArr2, 0, bArr3, 0, i10);
        if (this.debug) {
            PrintStream printStream5 = System.out;
            printStream5.println("returning " + i10 + " bytes");
        }
        return bArr3;
    }

    public void setDebug(boolean z9) {
        this.debug = z9;
    }
}
