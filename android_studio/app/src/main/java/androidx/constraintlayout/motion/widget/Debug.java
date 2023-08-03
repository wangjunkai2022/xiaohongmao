package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.nio.CharBuffer;

@SuppressLint({"LogConditional"})
/* loaded from: classes.dex */
public class Debug {
    public static void dumpLayoutParams(ViewGroup layout, String str) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 18 + String.valueOf(str).length());
        sb.append(".(");
        sb.append(fileName);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(") ");
        sb.append(str);
        sb.append("  ");
        String sb2 = sb.toString();
        int childCount = layout.getChildCount();
        PrintStream printStream = System.out;
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 21);
        sb3.append(str);
        sb3.append(" children ");
        sb3.append(childCount);
        printStream.println(sb3.toString());
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = layout.getChildAt(i4);
            PrintStream printStream2 = System.out;
            String name = getName(childAt);
            StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 5 + String.valueOf(name).length());
            sb4.append(sb2);
            sb4.append("     ");
            sb4.append(name);
            printStream2.println(sb4.toString());
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            for (Field field : layoutParams.getClass().getFields()) {
                try {
                    Object obj = field.get(layoutParams);
                    if (field.getName().contains("To") && !obj.toString().equals("-1")) {
                        PrintStream printStream3 = System.out;
                        String name2 = field.getName();
                        String valueOf = String.valueOf(obj);
                        StringBuilder sb5 = new StringBuilder(String.valueOf(sb2).length() + 8 + String.valueOf(name2).length() + valueOf.length());
                        sb5.append(sb2);
                        sb5.append("       ");
                        sb5.append(name2);
                        sb5.append(" ");
                        sb5.append(valueOf);
                        printStream3.println(sb5.toString());
                    }
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public static void dumpPoc(Object obj) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 15);
        sb.append(".(");
        sb.append(fileName);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(")");
        String sb2 = sb.toString();
        Class<?> cls = obj.getClass();
        PrintStream printStream = System.out;
        String name = cls.getName();
        StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 35 + name.length());
        sb3.append(sb2);
        sb3.append("------------- ");
        sb3.append(name);
        sb3.append(" --------------------");
        printStream.println(sb3.toString());
        for (Field field : cls.getFields()) {
            try {
                Object obj2 = field.get(obj);
                if (field.getName().startsWith("layout_constraint") && ((!(obj2 instanceof Integer) || !obj2.toString().equals("-1")) && ((!(obj2 instanceof Integer) || !obj2.toString().equals("0")) && ((!(obj2 instanceof Float) || !obj2.toString().equals("1.0")) && (!(obj2 instanceof Float) || !obj2.toString().equals("0.5")))))) {
                    PrintStream printStream2 = System.out;
                    String name2 = field.getName();
                    String valueOf = String.valueOf(obj2);
                    StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 5 + String.valueOf(name2).length() + valueOf.length());
                    sb4.append(sb2);
                    sb4.append("    ");
                    sb4.append(name2);
                    sb4.append(" ");
                    sb4.append(valueOf);
                    printStream2.println(sb4.toString());
                }
            } catch (IllegalAccessException unused) {
            }
        }
        PrintStream printStream3 = System.out;
        String simpleName = cls.getSimpleName();
        StringBuilder sb5 = new StringBuilder(String.valueOf(sb2).length() + 35 + simpleName.length());
        sb5.append(sb2);
        sb5.append("------------- ");
        sb5.append(simpleName);
        sb5.append(" --------------------");
        printStream3.println(sb5.toString());
    }

    public static String getActionType(MotionEvent event) {
        Field[] fields;
        int action = event.getAction();
        for (Field field : MotionEvent.class.getFields()) {
            try {
                if (Modifier.isStatic(field.getModifiers()) && field.getType().equals(Integer.TYPE) && field.getInt(null) == action) {
                    return field.getName();
                }
            } catch (IllegalAccessException unused) {
            }
        }
        return "---";
    }

    public static String getCallFrom(int n9) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[n9 + 2];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 15);
        sb.append(".(");
        sb.append(fileName);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(")");
        return sb.toString();
    }

    public static String getLoc() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        String methodName = stackTraceElement.getMethodName();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 18 + String.valueOf(methodName).length());
        sb.append(".(");
        sb.append(fileName);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(") ");
        sb.append(methodName);
        sb.append("()");
        return sb.toString();
    }

    public static String getLocation() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 15);
        sb.append(".(");
        sb.append(fileName);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(")");
        return sb.toString();
    }

    public static String getLocation2() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 15);
        sb.append(".(");
        sb.append(fileName);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(")");
        return sb.toString();
    }

    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }

    public static String getState(MotionLayout layout, int stateId) {
        return getState(layout, stateId, -1);
    }

    public static void logStack(String tag, String msg, int n9) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(n9, stackTrace.length - 1);
        String str = " ";
        for (int i4 = 1; i4 <= min; i4++) {
            StackTraceElement stackTraceElement = stackTrace[i4];
            String fileName = stackTrace[i4].getFileName();
            int lineNumber = stackTrace[i4].getLineNumber();
            String methodName = stackTrace[i4].getMethodName();
            StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 16 + String.valueOf(methodName).length());
            sb.append(".(");
            sb.append(fileName);
            sb.append(":");
            sb.append(lineNumber);
            sb.append(") ");
            sb.append(methodName);
            String sb2 = sb.toString();
            str = String.valueOf(str).concat(" ");
            StringBuilder sb3 = new StringBuilder(String.valueOf(msg).length() + String.valueOf(str).length() + String.valueOf(sb2).length() + String.valueOf(str).length());
            sb3.append(msg);
            sb3.append(str);
            sb3.append(sb2);
            sb3.append(str);
            Log.v(tag, sb3.toString());
        }
    }

    public static void printStack(String msg, int n9) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(n9, stackTrace.length - 1);
        String str = " ";
        for (int i4 = 1; i4 <= min; i4++) {
            StackTraceElement stackTraceElement = stackTrace[i4];
            String fileName = stackTrace[i4].getFileName();
            int lineNumber = stackTrace[i4].getLineNumber();
            StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 16);
            sb.append(".(");
            sb.append(fileName);
            sb.append(":");
            sb.append(lineNumber);
            sb.append(") ");
            String sb2 = sb.toString();
            str = String.valueOf(str).concat(" ");
            PrintStream printStream = System.out;
            StringBuilder sb3 = new StringBuilder(String.valueOf(msg).length() + String.valueOf(str).length() + String.valueOf(sb2).length() + String.valueOf(str).length());
            sb3.append(msg);
            sb3.append(str);
            sb3.append(sb2);
            sb3.append(str);
            printStream.println(sb3.toString());
        }
    }

    public static String getState(MotionLayout layout, int stateId, int len) {
        int length;
        if (stateId == -1) {
            return "UNDEFINED";
        }
        String resourceEntryName = layout.getContext().getResources().getResourceEntryName(stateId);
        if (len != -1) {
            if (resourceEntryName.length() > len) {
                resourceEntryName = resourceEntryName.replaceAll("([^_])[aeiou]+", "$1");
            }
            return (resourceEntryName.length() <= len || (length = resourceEntryName.replaceAll("[^_]", "").length()) <= 0) ? resourceEntryName : resourceEntryName.replaceAll(String.valueOf(CharBuffer.allocate((resourceEntryName.length() - len) / length).toString().replace((char) 0, '.')).concat("_"), "_");
        }
        return resourceEntryName;
    }

    public static String getName(Context context, int id) {
        if (id != -1) {
            try {
                return context.getResources().getResourceEntryName(id);
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder(12);
                sb.append("?");
                sb.append(id);
                return sb.toString();
            }
        }
        return "UNKNOWN";
    }

    public static String getName(Context context, int[] id) {
        String sb;
        try {
            int length = id.length;
            StringBuilder sb2 = new StringBuilder(12);
            sb2.append(length);
            sb2.append("[");
            String sb3 = sb2.toString();
            int i4 = 0;
            while (i4 < id.length) {
                String valueOf = String.valueOf(sb3);
                String str = i4 == 0 ? "" : " ";
                String concat = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
                try {
                    sb = context.getResources().getResourceEntryName(id[i4]);
                } catch (Resources.NotFoundException unused) {
                    int i10 = id[i4];
                    StringBuilder sb4 = new StringBuilder(14);
                    sb4.append("? ");
                    sb4.append(i10);
                    sb4.append(" ");
                    sb = sb4.toString();
                }
                String valueOf2 = String.valueOf(concat);
                String valueOf3 = String.valueOf(sb);
                sb3 = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
                i4++;
            }
            return String.valueOf(sb3).concat("]");
        } catch (Exception e4) {
            Log.v("DEBUG", e4.toString());
            return "UNKNOWN";
        }
    }

    public static void dumpLayoutParams(ViewGroup.LayoutParams param, String str) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 18 + String.valueOf(str).length());
        sb.append(".(");
        sb.append(fileName);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(") ");
        sb.append(str);
        sb.append("  ");
        String sb2 = sb.toString();
        PrintStream printStream = System.out;
        String name = param.getClass().getName();
        StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 28 + name.length());
        sb3.append(" >>>>>>>>>>>>>>>>>>. dump ");
        sb3.append(sb2);
        sb3.append("  ");
        sb3.append(name);
        printStream.println(sb3.toString());
        for (Field field : param.getClass().getFields()) {
            try {
                Object obj = field.get(param);
                String name2 = field.getName();
                if (name2.contains("To") && !obj.toString().equals("-1")) {
                    PrintStream printStream2 = System.out;
                    String valueOf = String.valueOf(obj);
                    StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 8 + name2.length() + valueOf.length());
                    sb4.append(sb2);
                    sb4.append("       ");
                    sb4.append(name2);
                    sb4.append(" ");
                    sb4.append(valueOf);
                    printStream2.println(sb4.toString());
                }
            } catch (IllegalAccessException unused) {
            }
        }
        PrintStream printStream3 = System.out;
        String valueOf2 = String.valueOf(sb2);
        printStream3.println(valueOf2.length() != 0 ? " <<<<<<<<<<<<<<<<< dump ".concat(valueOf2) : new String(" <<<<<<<<<<<<<<<<< dump "));
    }
}
