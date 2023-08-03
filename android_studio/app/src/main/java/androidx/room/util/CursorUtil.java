package androidx.room.util;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class CursorUtil {
    private CursorUtil() {
    }

    @NonNull
    public static Cursor copyAndClose(@NonNull Cursor cursor) {
        try {
            MatrixCursor matrixCursor = new MatrixCursor(cursor.getColumnNames(), cursor.getCount());
            while (cursor.moveToNext()) {
                Object[] objArr = new Object[cursor.getColumnCount()];
                for (int i4 = 0; i4 < cursor.getColumnCount(); i4++) {
                    int type = cursor.getType(i4);
                    if (type == 0) {
                        objArr[i4] = null;
                    } else if (type == 1) {
                        objArr[i4] = Long.valueOf(cursor.getLong(i4));
                    } else if (type == 2) {
                        objArr[i4] = Double.valueOf(cursor.getDouble(i4));
                    } else if (type == 3) {
                        objArr[i4] = cursor.getString(i4);
                    } else if (type == 4) {
                        objArr[i4] = cursor.getBlob(i4);
                    } else {
                        throw new IllegalStateException();
                    }
                }
                matrixCursor.addRow(objArr);
            }
            return matrixCursor;
        } finally {
            cursor.close();
        }
    }

    private static int findColumnIndexBySuffix(@NonNull Cursor cursor, @NonNull String str) {
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            return findColumnIndexBySuffix(cursor.getColumnNames(), str);
        }
        return -1;
    }

    public static int getColumnIndex(@NonNull Cursor cursor, @NonNull String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = cursor.getColumnIndex("`" + str + "`");
        return columnIndex2 >= 0 ? columnIndex2 : findColumnIndexBySuffix(cursor, str);
    }

    public static int getColumnIndexOrThrow(@NonNull Cursor cursor, @NonNull String str) {
        String str2;
        int columnIndex = getColumnIndex(cursor, str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            str2 = Arrays.toString(cursor.getColumnNames());
        } catch (Exception e4) {
            Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e4);
            str2 = "";
        }
        throw new IllegalArgumentException("column '" + str + "' does not exist. Available columns: " + str2);
    }

    @VisibleForTesting(otherwise = 2)
    static int findColumnIndexBySuffix(String[] strArr, String str) {
        String str2 = "." + str;
        String str3 = "." + str + "`";
        for (int i4 = 0; i4 < strArr.length; i4++) {
            String str4 = strArr[i4];
            if (str4.length() >= str.length() + 2) {
                if (str4.endsWith(str2)) {
                    return i4;
                }
                if (str4.charAt(0) == '`' && str4.endsWith(str3)) {
                    return i4;
                }
            }
        }
        return -1;
    }
}
