package x2;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.CursorWrapper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class a extends CursorWrapper implements CrossProcessCursor {

    /* renamed from: a  reason: collision with root package name */
    private AbstractWindowedCursor f94656a;

    @u2.a
    public a(@NonNull Cursor cursor) {
        super(cursor);
        for (int i4 = 0; i4 < 10 && (cursor instanceof CursorWrapper); i4++) {
            cursor = ((CursorWrapper) cursor).getWrappedCursor();
        }
        if (!(cursor instanceof AbstractWindowedCursor)) {
            String name = cursor.getClass().getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unknown type: ".concat(name) : new String("Unknown type: "));
        }
        this.f94656a = (AbstractWindowedCursor) cursor;
    }

    @u2.a
    public void a(@Nullable CursorWindow cursorWindow) {
        this.f94656a.setWindow(cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    @u2.a
    public void fillWindow(int i4, @NonNull CursorWindow cursorWindow) {
        this.f94656a.fillWindow(i4, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    @Nullable
    @u2.a
    public CursorWindow getWindow() {
        return this.f94656a.getWindow();
    }

    @Override // android.database.CursorWrapper
    @NonNull
    public final /* synthetic */ Cursor getWrappedCursor() {
        return this.f94656a;
    }

    @Override // android.database.CrossProcessCursor
    public final boolean onMove(int i4, int i10) {
        return this.f94656a.onMove(i4, i10);
    }
}
