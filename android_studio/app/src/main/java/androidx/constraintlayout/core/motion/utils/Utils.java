package androidx.constraintlayout.core.motion.utils;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.Socket;

/* loaded from: classes.dex */
public class Utils {
    private static int clamp(int i4) {
        int i10 = (i4 & (~(i4 >> 31))) - 255;
        return (i10 & (i10 >> 31)) + 255;
    }

    public static void log(String str, String str2) {
        PrintStream printStream = System.out;
        printStream.println(str + " : " + str2);
    }

    public static void logStack(String str, int i4) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(i4, stackTrace.length - 1);
        String str2 = " ";
        for (int i10 = 1; i10 <= min; i10++) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            str2 = str2 + " ";
            PrintStream printStream = System.out;
            printStream.println(str + str2 + (".(" + stackTrace[i10].getFileName() + ":" + stackTrace[i10].getLineNumber() + ") " + stackTrace[i10].getMethodName()) + str2);
        }
    }

    public static void loge(String str, String str2) {
        PrintStream printStream = System.err;
        printStream.println(str + " : " + str2);
    }

    public static int rgbaTocColor(float f10, float f11, float f12, float f13) {
        int clamp = clamp((int) (f10 * 255.0f));
        int clamp2 = clamp((int) (f11 * 255.0f));
        return (clamp << 16) | (clamp((int) (f13 * 255.0f)) << 24) | (clamp2 << 8) | clamp((int) (f12 * 255.0f));
    }

    public static void socketSend(String str) {
        try {
            OutputStream outputStream = new Socket("127.0.0.1", 5327).getOutputStream();
            outputStream.write(str.getBytes());
            outputStream.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public int getInterpolatedColor(float[] fArr) {
        int clamp = clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
        int clamp2 = clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
        return (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp << 16) | (clamp2 << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }

    public static void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String substring = (stackTraceElement.getMethodName() + "                  ").substring(0, 17);
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")" + "    ".substring(Integer.toString(stackTraceElement.getLineNumber()).length()) + substring;
        System.out.println(str2 + " " + str);
    }
}
