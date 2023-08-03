package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteStatement;
import io.sentry.SpanStatus;
import io.sentry.c3;
import io.sentry.v0;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FrameworkSQLiteStatement extends FrameworkSQLiteProgram implements SupportSQLiteStatement {
    private final SQLiteStatement mDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteStatement(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.mDelegate = sQLiteStatement;
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public void execute() {
        this.mDelegate.execute();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long executeInsert() {
        String sQLiteStatement = this.mDelegate.toString();
        String substring = sQLiteStatement.substring(sQLiteStatement.indexOf(58) + 2);
        v0 D = c3.D();
        v0 H = D != null ? D.H("db.sql.query", substring) : null;
        try {
            try {
                long executeInsert = this.mDelegate.executeInsert();
                if (H != null) {
                    H.c(SpanStatus.OK);
                }
                return executeInsert;
            } catch (Exception e4) {
                if (H != null) {
                    H.c(SpanStatus.INTERNAL_ERROR);
                    H.s(e4);
                }
                throw e4;
            }
        } finally {
            if (H != null) {
                H.h();
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public int executeUpdateDelete() {
        String sQLiteStatement = this.mDelegate.toString();
        String substring = sQLiteStatement.substring(sQLiteStatement.indexOf(58) + 2);
        v0 D = c3.D();
        v0 H = D != null ? D.H("db.sql.query", substring) : null;
        try {
            try {
                int executeUpdateDelete = this.mDelegate.executeUpdateDelete();
                if (H != null) {
                    H.c(SpanStatus.OK);
                }
                return executeUpdateDelete;
            } catch (Exception e4) {
                if (H != null) {
                    H.c(SpanStatus.INTERNAL_ERROR);
                    H.s(e4);
                }
                throw e4;
            }
        } finally {
            if (H != null) {
                H.h();
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long simpleQueryForLong() {
        return this.mDelegate.simpleQueryForLong();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public String simpleQueryForString() {
        return this.mDelegate.simpleQueryForString();
    }
}
