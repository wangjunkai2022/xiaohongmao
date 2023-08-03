package androidx.room;

import androidx.arch.core.util.Function;
import androidx.room.AutoClosingRoomOpenHelper;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Function {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ d f580a = new d();

    private /* synthetic */ d() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        Boolean lambda$isWriteAheadLoggingEnabled$13;
        lambda$isWriteAheadLoggingEnabled$13 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$isWriteAheadLoggingEnabled$13((SupportSQLiteDatabase) obj);
        return lambda$isWriteAheadLoggingEnabled$13;
    }
}
