package androidx.core.os;

import android.os.Build;
import android.os.UserHandle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(17)
/* loaded from: classes.dex */
public class UserHandleCompat {
    @Nullable
    private static Method sGetUserIdMethod;
    @Nullable
    private static Constructor<UserHandle> sUserHandleConstructor;

    @RequiresApi(24)
    /* loaded from: classes.dex */
    private static class Api24Impl {
        private Api24Impl() {
        }

        @NonNull
        static UserHandle getUserHandleForUid(int i4) {
            return UserHandle.getUserHandleForUid(i4);
        }
    }

    private UserHandleCompat() {
    }

    private static Method getGetUserIdMethod() throws NoSuchMethodException {
        if (sGetUserIdMethod == null) {
            Method declaredMethod = UserHandle.class.getDeclaredMethod("getUserId", Integer.TYPE);
            sGetUserIdMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return sGetUserIdMethod;
    }

    private static Constructor<UserHandle> getUserHandleConstructor() throws NoSuchMethodException {
        if (sUserHandleConstructor == null) {
            Constructor<UserHandle> declaredConstructor = UserHandle.class.getDeclaredConstructor(Integer.TYPE);
            sUserHandleConstructor = declaredConstructor;
            declaredConstructor.setAccessible(true);
        }
        return sUserHandleConstructor;
    }

    @NonNull
    public static UserHandle getUserHandleForUid(int i4) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.getUserHandleForUid(i4);
        }
        try {
            return getUserHandleConstructor().newInstance((Integer) getGetUserIdMethod().invoke(null, Integer.valueOf(i4)));
        } catch (IllegalAccessException e4) {
            IllegalAccessError illegalAccessError = new IllegalAccessError();
            illegalAccessError.initCause(e4);
            throw illegalAccessError;
        } catch (InstantiationException e10) {
            InstantiationError instantiationError = new InstantiationError();
            instantiationError.initCause(e10);
            throw instantiationError;
        } catch (NoSuchMethodException e11) {
            NoSuchMethodError noSuchMethodError = new NoSuchMethodError();
            noSuchMethodError.initCause(e11);
            throw noSuchMethodError;
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(e12);
        }
    }
}
