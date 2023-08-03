package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Migration.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\u0010\tJ\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0007H\u0016R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Landroidx/room/migration/MigrationImpl;", "Landroidx/room/migration/Migration;", "startVersion", "", "endVersion", "migrateCallback", "Lkotlin/Function1;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "", "(IILkotlin/jvm/functions/Function1;)V", "getMigrateCallback", "()Lkotlin/jvm/functions/Function1;", "migrate", "database", "room-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
final class MigrationImpl extends Migration {
    @g
    private final Function1<SupportSQLiteDatabase, Unit> migrateCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MigrationImpl(int i4, int i10, @g Function1<? super SupportSQLiteDatabase, Unit> migrateCallback) {
        super(i4, i10);
        Intrinsics.checkNotNullParameter(migrateCallback, "migrateCallback");
        this.migrateCallback = migrateCallback;
    }

    @g
    public final Function1<SupportSQLiteDatabase, Unit> getMigrateCallback() {
        return this.migrateCallback;
    }

    @Override // androidx.room.migration.Migration
    public void migrate(@g SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        this.migrateCallback.invoke(database);
    }
}
