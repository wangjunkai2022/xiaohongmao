package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.util.Map;

/* loaded from: classes.dex */
class ResourcesFlusher {
    private static final String TAG = "ResourcesFlusher";
    private static Field sDrawableCacheField;
    private static boolean sDrawableCacheFieldFetched;
    private static Field sResourcesImplField;
    private static boolean sResourcesImplFieldFetched;
    private static Class<?> sThemedResourceCacheClazz;
    private static boolean sThemedResourceCacheClazzFetched;
    private static Field sThemedResourceCache_mUnthemedEntriesField;
    private static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;

    private ResourcesFlusher() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void flush(@NonNull Resources resources) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 28) {
            return;
        }
        if (i4 >= 24) {
            flushNougats(resources);
        } else if (i4 >= 23) {
            flushMarshmallows(resources);
        } else {
            flushLollipops(resources);
        }
    }

    @RequiresApi(21)
    private static void flushLollipops(@NonNull Resources resources) {
        if (!sDrawableCacheFieldFetched) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                sDrawableCacheField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e4) {
                Log.e(TAG, "Could not retrieve Resources#mDrawableCache field", e4);
            }
            sDrawableCacheFieldFetched = true;
        }
        Field field = sDrawableCacheField;
        if (field != null) {
            Map map = null;
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e10) {
                Log.e(TAG, "Could not retrieve value from Resources#mDrawableCache", e10);
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    @RequiresApi(23)
    private static void flushMarshmallows(@NonNull Resources resources) {
        if (!sDrawableCacheFieldFetched) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                sDrawableCacheField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e4) {
                Log.e(TAG, "Could not retrieve Resources#mDrawableCache field", e4);
            }
            sDrawableCacheFieldFetched = true;
        }
        Object obj = null;
        Field field = sDrawableCacheField;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e10) {
                Log.e(TAG, "Could not retrieve value from Resources#mDrawableCache", e10);
            }
        }
        if (obj == null) {
            return;
        }
        flushThemedResourcesCache(obj);
    }

    @RequiresApi(24)
    private static void flushNougats(@NonNull Resources resources) {
        Object obj;
        if (!sResourcesImplFieldFetched) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                sResourcesImplField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e4) {
                Log.e(TAG, "Could not retrieve Resources#mResourcesImpl field", e4);
            }
            sResourcesImplFieldFetched = true;
        }
        Field field = sResourcesImplField;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e10) {
            Log.e(TAG, "Could not retrieve value from Resources#mResourcesImpl", e10);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!sDrawableCacheFieldFetched) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                sDrawableCacheField = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e11) {
                Log.e(TAG, "Could not retrieve ResourcesImpl#mDrawableCache field", e11);
            }
            sDrawableCacheFieldFetched = true;
        }
        Field field2 = sDrawableCacheField;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e12) {
                Log.e(TAG, "Could not retrieve value from ResourcesImpl#mDrawableCache", e12);
            }
        }
        if (obj2 != null) {
            flushThemedResourcesCache(obj2);
        }
    }

    @RequiresApi(16)
    private static void flushThemedResourcesCache(@NonNull Object obj) {
        if (!sThemedResourceCacheClazzFetched) {
            try {
                sThemedResourceCacheClazz = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e4) {
                Log.e(TAG, "Could not find ThemedResourceCache class", e4);
            }
            sThemedResourceCacheClazzFetched = true;
        }
        Class<?> cls = sThemedResourceCacheClazz;
        if (cls == null) {
            return;
        }
        if (!sThemedResourceCache_mUnthemedEntriesFieldFetched) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                sThemedResourceCache_mUnthemedEntriesField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                Log.e(TAG, "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e10);
            }
            sThemedResourceCache_mUnthemedEntriesFieldFetched = true;
        }
        Field field = sThemedResourceCache_mUnthemedEntriesField;
        if (field == null) {
            return;
        }
        LongSparseArray longSparseArray = null;
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e11) {
            Log.e(TAG, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e11);
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}
