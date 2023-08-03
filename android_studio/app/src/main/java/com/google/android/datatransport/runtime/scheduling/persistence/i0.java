package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;

/* compiled from: SchemaManager.java */
/* loaded from: classes2.dex */
final class i0 extends SQLiteOpenHelper {

    /* renamed from: c  reason: collision with root package name */
    static final String f20609c = "com.google.android.datatransport.events";

    /* renamed from: d  reason: collision with root package name */
    private static final String f20610d = "CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)";

    /* renamed from: e  reason: collision with root package name */
    private static final String f20611e = "CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)";

    /* renamed from: f  reason: collision with root package name */
    private static final String f20612f = "CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)";

    /* renamed from: g  reason: collision with root package name */
    private static final String f20613g = "CREATE INDEX events_backend_id on events(context_id)";

    /* renamed from: h  reason: collision with root package name */
    private static final String f20614h = "CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)";

    /* renamed from: i  reason: collision with root package name */
    private static final String f20615i = "DROP TABLE events";

    /* renamed from: j  reason: collision with root package name */
    private static final String f20616j = "DROP TABLE event_metadata";

    /* renamed from: k  reason: collision with root package name */
    private static final String f20617k = "DROP TABLE transport_contexts";

    /* renamed from: l  reason: collision with root package name */
    private static final String f20618l = "CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))";

    /* renamed from: m  reason: collision with root package name */
    private static final String f20619m = "DROP TABLE IF EXISTS event_payloads";

    /* renamed from: n  reason: collision with root package name */
    static int f20620n = 4;

    /* renamed from: o  reason: collision with root package name */
    private static final a f20621o;

    /* renamed from: p  reason: collision with root package name */
    private static final a f20622p;

    /* renamed from: q  reason: collision with root package name */
    private static final a f20623q;

    /* renamed from: r  reason: collision with root package name */
    private static final a f20624r;

    /* renamed from: s  reason: collision with root package name */
    private static final List<a> f20625s;

    /* renamed from: a  reason: collision with root package name */
    private final int f20626a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f20627b;

    /* compiled from: SchemaManager.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        a b10 = e0.b();
        f20621o = b10;
        a b11 = f0.b();
        f20622p = b11;
        a b12 = g0.b();
        f20623q = b12;
        a b13 = h0.b();
        f20624r = b13;
        f20625s = Arrays.asList(b10, b11, b12, b13);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.a
    public i0(Context context, @u7.b("SQLITE_DB_NAME") String str, @u7.b("SCHEMA_VERSION") int i4) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i4);
        this.f20627b = false;
        this.f20626a = i4;
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        if (this.f20627b) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(f20610d);
        sQLiteDatabase.execSQL(f20611e);
        sQLiteDatabase.execSQL(f20612f);
        sQLiteDatabase.execSQL(f20613g);
        sQLiteDatabase.execSQL(f20614h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void i(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL(f20619m);
        sQLiteDatabase.execSQL(f20618l);
    }

    private void k(SQLiteDatabase sQLiteDatabase, int i4) {
        a(sQLiteDatabase);
        p(sQLiteDatabase, 0, i4);
    }

    private void p(SQLiteDatabase sQLiteDatabase, int i4, int i10) {
        List<a> list = f20625s;
        if (i10 <= list.size()) {
            while (i4 < i10) {
                f20625s.get(i4).a(sQLiteDatabase);
                i4++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i4 + " to " + i10 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f20627b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        k(sQLiteDatabase, this.f20626a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i4, int i10) {
        sQLiteDatabase.execSQL(f20615i);
        sQLiteDatabase.execSQL(f20616j);
        sQLiteDatabase.execSQL(f20617k);
        sQLiteDatabase.execSQL(f20619m);
        k(sQLiteDatabase, i10);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i4, int i10) {
        a(sQLiteDatabase);
        p(sQLiteDatabase, i4, i10);
    }
}
