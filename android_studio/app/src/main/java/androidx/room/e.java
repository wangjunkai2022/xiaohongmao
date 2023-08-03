package androidx.room;

import androidx.arch.core.util.Function;
import androidx.room.AutoClosingRoomOpenHelper;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Function {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ e f582a = new e();

    private /* synthetic */ e() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        Object lambda$pokeOpen$0;
        lambda$pokeOpen$0 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$pokeOpen$0((SupportSQLiteDatabase) obj);
        return lambda$pokeOpen$0;
    }
}
