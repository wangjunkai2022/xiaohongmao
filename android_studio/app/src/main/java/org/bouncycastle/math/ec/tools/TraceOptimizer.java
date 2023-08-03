package org.bouncycastle.math.ec.tools;

import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.TreeSet;
import org.bouncycastle.asn1.x9.ECNamedCurveTable;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.crypto.ec.CustomNamedCurves;
import org.bouncycastle.math.ec.ECAlgorithms;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.util.Integers;

/* loaded from: classes5.dex */
public class TraceOptimizer {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final SecureRandom R = new SecureRandom();

    private static int calculateTrace(ECFieldElement eCFieldElement) {
        int fieldSize = eCFieldElement.getFieldSize();
        int numberOfLeadingZeros = 31 - Integers.numberOfLeadingZeros(fieldSize);
        int i4 = 1;
        ECFieldElement eCFieldElement2 = eCFieldElement;
        while (numberOfLeadingZeros > 0) {
            eCFieldElement2 = eCFieldElement2.squarePow(i4).add(eCFieldElement2);
            numberOfLeadingZeros--;
            i4 = fieldSize >>> numberOfLeadingZeros;
            if ((i4 & 1) != 0) {
                eCFieldElement2 = eCFieldElement2.square().add(eCFieldElement);
            }
        }
        if (eCFieldElement2.isZero()) {
            return 0;
        }
        if (eCFieldElement2.isOne()) {
            return 1;
        }
        throw new IllegalStateException("Internal error in trace calculation");
    }

    private static ArrayList enumToList(Enumeration enumeration) {
        ArrayList arrayList = new ArrayList();
        while (enumeration.hasMoreElements()) {
            arrayList.add(enumeration.nextElement());
        }
        return arrayList;
    }

    public static void implPrintNonZeroTraceBits(X9ECParameters x9ECParameters) {
        PrintStream printStream;
        StringBuilder sb;
        ECCurve curve = x9ECParameters.getCurve();
        int fieldSize = curve.getFieldSize();
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < fieldSize; i4++) {
            if ((i4 & 1) != 0 || i4 == 0) {
                if (calculateTrace(curve.fromBigInteger(ONE.shiftLeft(i4))) != 0) {
                    arrayList.add(Integers.valueOf(i4));
                    printStream = System.out;
                    sb = new StringBuilder();
                    sb.append(" ");
                    sb.append(i4);
                    printStream.print(sb.toString());
                }
            } else if (arrayList.contains(Integers.valueOf(i4 >>> 1))) {
                arrayList.add(Integers.valueOf(i4));
                printStream = System.out;
                sb = new StringBuilder();
                sb.append(" ");
                sb.append(i4);
                printStream.print(sb.toString());
            }
        }
        System.out.println();
        for (int i10 = 0; i10 < 1000; i10++) {
            BigInteger bigInteger = new BigInteger(fieldSize, R);
            int calculateTrace = calculateTrace(curve.fromBigInteger(bigInteger));
            int i11 = 0;
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                if (bigInteger.testBit(((Integer) arrayList.get(i12)).intValue())) {
                    i11 ^= 1;
                }
            }
            if (calculateTrace != i11) {
                throw new IllegalStateException("Optimized-trace sanity check failed");
            }
        }
    }

    public static void main(String[] strArr) {
        TreeSet<String> treeSet = new TreeSet(enumToList(ECNamedCurveTable.getNames()));
        treeSet.addAll(enumToList(CustomNamedCurves.getNames()));
        for (String str : treeSet) {
            X9ECParameters byName = CustomNamedCurves.getByName(str);
            if (byName == null) {
                byName = ECNamedCurveTable.getByName(str);
            }
            if (byName != null && ECAlgorithms.isF2mCurve(byName.getCurve())) {
                PrintStream printStream = System.out;
                printStream.print(str + ":");
                implPrintNonZeroTraceBits(byName);
            }
        }
    }

    public static void printNonZeroTraceBits(X9ECParameters x9ECParameters) {
        if (!ECAlgorithms.isF2mCurve(x9ECParameters.getCurve())) {
            throw new IllegalArgumentException("Trace only defined over characteristic-2 fields");
        }
        implPrintNonZeroTraceBits(x9ECParameters);
    }
}
