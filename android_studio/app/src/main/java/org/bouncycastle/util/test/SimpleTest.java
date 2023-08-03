package org.bouncycastle.util.test;

import java.io.PrintStream;
import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.util.Arrays;

/* loaded from: classes5.dex */
public abstract class SimpleTest implements Test {
    public static void runTest(Test test) {
        runTest(test, System.out);
    }

    public static void runTest(Test test, PrintStream printStream) {
        TestResult perform = test.perform();
        if (perform.getException() != null) {
            perform.getException().printStackTrace(printStream);
        }
        printStream.println(perform);
    }

    public static void runTests(Test[] testArr) {
        runTests(testArr, System.out);
    }

    public static void runTests(Test[] testArr, PrintStream printStream) {
        Vector vector = new Vector();
        for (int i4 = 0; i4 != testArr.length; i4++) {
            TestResult perform = testArr[i4].perform();
            if (!perform.isSuccessful()) {
                vector.addElement(perform);
            }
            if (perform.getException() != null) {
                perform.getException().printStackTrace(printStream);
            }
            printStream.println(perform);
        }
        printStream.println("-----");
        if (vector.isEmpty()) {
            printStream.println("All tests successful.");
            return;
        }
        printStream.println("Completed with " + vector.size() + " FAILURES:");
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            PrintStream printStream2 = System.out;
            printStream2.println("=>  " + ((TestResult) elements.nextElement()));
        }
    }

    private TestResult success() {
        return SimpleTestResult.successful(this, "Okay");
    }

    protected boolean areEqual(byte[] bArr, int i4, int i10, byte[] bArr2, int i11, int i12) {
        return Arrays.areEqual(bArr, i4, i10, bArr2, i11, i12);
    }

    protected boolean areEqual(byte[] bArr, byte[] bArr2) {
        return Arrays.areEqual(bArr, bArr2);
    }

    protected boolean areEqual(byte[][] bArr, byte[][] bArr2) {
        if (bArr == null && bArr2 == null) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i4 = 0; i4 < bArr.length; i4++) {
            if (!areEqual(bArr[i4], bArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    protected void fail(String str) {
        throw new TestFailedException(SimpleTestResult.failed(this, str));
    }

    protected void fail(String str, Object obj, Object obj2) {
        throw new TestFailedException(SimpleTestResult.failed(this, str, obj, obj2));
    }

    protected void fail(String str, Throwable th) {
        throw new TestFailedException(SimpleTestResult.failed(this, str, th));
    }

    @Override // org.bouncycastle.util.test.Test
    public abstract String getName();

    protected void isEquals(int i4, int i10) {
        if (i4 != i10) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    protected void isEquals(long j4, long j10) {
        if (j4 != j10) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    protected void isEquals(Object obj, Object obj2) {
        if (!obj.equals(obj2)) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    protected void isEquals(String str, long j4, long j10) {
        if (j4 != j10) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    protected void isEquals(String str, Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return;
        }
        if (obj == null) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
        if (obj2 == null) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
        if (!obj.equals(obj2)) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    protected void isEquals(String str, boolean z9, boolean z10) {
        if (z9 != z10) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    protected void isTrue(String str, boolean z9) {
        if (!z9) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    protected void isTrue(boolean z9) {
        if (!z9) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    @Override // org.bouncycastle.util.test.Test
    public TestResult perform() {
        try {
            performTest();
            return success();
        } catch (TestFailedException e4) {
            return e4.getResult();
        } catch (Exception e10) {
            return SimpleTestResult.failed(this, "Exception: " + e10, e10);
        }
    }

    public abstract void performTest() throws Exception;
}
