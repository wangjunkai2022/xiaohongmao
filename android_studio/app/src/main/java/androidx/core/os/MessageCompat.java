package androidx.core.os;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Message;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class MessageCompat {
    private static boolean sTryIsAsynchronous = true;
    private static boolean sTrySetAsynchronous = true;

    @RequiresApi(22)
    /* loaded from: classes.dex */
    static class Api22Impl {
        private Api22Impl() {
        }

        @DoNotInline
        static boolean isAsynchronous(Message message) {
            return message.isAsynchronous();
        }

        @DoNotInline
        static void setAsynchronous(Message message, boolean z9) {
            message.setAsynchronous(z9);
        }
    }

    private MessageCompat() {
    }

    @SuppressLint({"NewApi"})
    public static boolean isAsynchronous(@NonNull Message message) {
        if (Build.VERSION.SDK_INT >= 22) {
            return Api22Impl.isAsynchronous(message);
        }
        if (sTryIsAsynchronous) {
            try {
                return Api22Impl.isAsynchronous(message);
            } catch (NoSuchMethodError unused) {
                sTryIsAsynchronous = false;
            }
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    public static void setAsynchronous(@NonNull Message message, boolean z9) {
        if (Build.VERSION.SDK_INT >= 22) {
            Api22Impl.setAsynchronous(message, z9);
        } else if (sTrySetAsynchronous) {
            try {
                Api22Impl.setAsynchronous(message, z9);
            } catch (NoSuchMethodError unused) {
                sTrySetAsynchronous = false;
            }
        }
    }
}
